import 'dart:async';
import 'package:json_annotation/json_annotation.dart';
import 'package:graphql/client.dart' hide JsonSerializable;
import 'package:nhost_sdk/nhost_sdk.dart';
import 'package:nhost_graphql_adapter/nhost_graphql_adapter.dart';
import 'package:artemis/artemis.dart';
import 'package:taxieasy_app/data/model/graphql/district/district.graphql.dart';
import 'package:taxieasy_app/data/utils/data_utils.dart';
import 'package:taxieasy_app/services/auth_service.dart';
import 'package:taxieasy_app/utils/globals.dart';

class ApiClient {
  static Map<String, String> get apiHeaders {
    return {
      'Authorization': 'Bearer ${AuthService.instance.client.auth.accessToken}',
    };
  }

  ApiClient() {
    final nhostLink = combinedLinkForNhost(AuthService.instance.client);

    final loggingMiddleware = Link.function((request, [nextLink]) {
      return nextLink!(request).transform(
        StreamTransformer.fromHandlers(
          handleData: (data, sink) {
            sink.add(data);
          },
        ),
      );
    });

    _client = GraphQLClient(
      link: loggingMiddleware.concat(nhostLink),
      cache: GraphQLCache(),
    );
  }

  late GraphQLClient _client;

  GraphQLClient get apiClient => _client;

  Future<T> generalFetch<T>(GraphQLQuery<T, JsonSerializable> query) async {
    logger.d('Fetching ${query.operationName ?? query.document} ${query.getVariablesMap()}');
    final results = await _client.query(
      QueryOptions(
        document: query.document,
        variables: query.getVariablesMap(),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    if (results.hasException) {
      throw results.exception!;
    }
    return query.parse(results.data!);
  }

  Future<T> generalMutation<T>(
    GraphQLQuery<T, JsonSerializable> mutation, {
    Map<String, dynamic>? customVariables,
  }) async {
    logger.d(
      'Mutating ${mutation.operationName ?? mutation.document} ${customVariables ?? mutation.getVariablesMap().withNullCleaned}',
    );
    final results = await _client.mutate(
      MutationOptions(
        document: mutation.document,
        variables: customVariables ?? mutation.getVariablesMap().withNullCleaned,
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    if (results.hasException) {
      throw results.exception!;
    }

    return mutation.parse(results.data!);
  }

  Stream<QueryResult> generalSubscribe(GraphQLQuery query) {
    return apiClient.subscribe(SubscriptionOptions(
      document: query.document,
      variables: query.getVariablesMap(),
      fetchPolicy: FetchPolicy.noCache,
    ));
  }
}
