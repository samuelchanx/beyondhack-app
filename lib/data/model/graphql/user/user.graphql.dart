// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:beyondhack/data/model/graphql/graphql_mapper.dart';
part 'user.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class GetUser$QueryRoot$AppUser extends JsonSerializable with EquatableMixin {
  GetUser$QueryRoot$AppUser();

  factory GetUser$QueryRoot$AppUser.fromJson(Map<String, dynamic> json) =>
      _$GetUser$QueryRoot$AppUserFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$GetUser$QueryRoot$AppUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetUser$QueryRoot extends JsonSerializable with EquatableMixin {
  GetUser$QueryRoot();

  factory GetUser$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$GetUser$QueryRootFromJson(json);

  @JsonKey(name: 'app_user_by_pk')
  GetUser$QueryRoot$AppUser? appUserByPk;

  @override
  List<Object?> get props => [appUserByPk];
  @override
  Map<String, dynamic> toJson() => _$GetUser$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetUserArguments extends JsonSerializable with EquatableMixin {
  GetUserArguments({required this.id});

  @override
  factory GetUserArguments.fromJson(Map<String, dynamic> json) =>
      _$GetUserArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$GetUserArgumentsToJson(this);
}

final GET_USER_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetUser'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'app_user_by_pk'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class GetUserQuery extends GraphQLQuery<GetUser$QueryRoot, GetUserArguments> {
  GetUserQuery({required this.variables});

  @override
  final DocumentNode document = GET_USER_QUERY_DOCUMENT;

  @override
  final String operationName = 'GetUser';

  @override
  final GetUserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetUser$QueryRoot parse(Map<String, dynamic> json) =>
      GetUser$QueryRoot.fromJson(json);
}
