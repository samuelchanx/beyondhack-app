// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:beyondhack/data/model/graphql/graphql_mapper.dart';
part 'user.graphql.g.dart';

mixin AppUserMixin {
  late String id;
  String? name;
  String? gender;
  @JsonKey(
      fromJson: fromGraphQLTimestampNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLTimestampNullable)
  DateTime? createdAt;
  String? spaceLocation;
  String? loginProvider;
  @JsonKey(
      fromJson: fromGraphQLTimestampNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLTimestampNullable)
  DateTime? lastOnline;
}

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
class AddUser$MutationRoot$AppUser extends JsonSerializable
    with EquatableMixin, AppUserMixin {
  AddUser$MutationRoot$AppUser();

  factory AddUser$MutationRoot$AppUser.fromJson(Map<String, dynamic> json) =>
      _$AddUser$MutationRoot$AppUserFromJson(json);

  @override
  List<Object?> get props =>
      [id, name, gender, createdAt, spaceLocation, loginProvider, lastOnline];
  @override
  Map<String, dynamic> toJson() => _$AddUser$MutationRoot$AppUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddUser$MutationRoot extends JsonSerializable with EquatableMixin {
  AddUser$MutationRoot();

  factory AddUser$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$AddUser$MutationRootFromJson(json);

  @JsonKey(name: 'insert_app_user_one')
  AddUser$MutationRoot$AppUser? insertAppUserOne;

  @override
  List<Object?> get props => [insertAppUserOne];
  @override
  Map<String, dynamic> toJson() => _$AddUser$MutationRootToJson(this);
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
  FragmentDefinitionNode(
      name: NameNode(value: 'AppUser'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'app_user'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'spaceLocation'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'loginProvider'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'lastOnline'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
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

@JsonSerializable(explicitToJson: true)
class AddUserArguments extends JsonSerializable with EquatableMixin {
  AddUserArguments({required this.id});

  @override
  factory AddUserArguments.fromJson(Map<String, dynamic> json) =>
      _$AddUserArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$AddUserArgumentsToJson(this);
}

final ADD_USER_MUTATION_DOCUMENT = DocumentNode(definitions: [
  FragmentDefinitionNode(
      name: NameNode(value: 'AppUser'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'app_user'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'spaceLocation'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'loginProvider'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'lastOnline'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddUser'),
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
            name: NameNode(value: 'insert_app_user_one'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'object'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'id'),
                        value: VariableNode(name: NameNode(value: 'id'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'loginProvider'),
                        value: StringValueNode(value: 'email', isBlock: false))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'AppUser'), directives: [])
            ]))
      ]))
]);

class AddUserMutation
    extends GraphQLQuery<AddUser$MutationRoot, AddUserArguments> {
  AddUserMutation({required this.variables});

  @override
  final DocumentNode document = ADD_USER_MUTATION_DOCUMENT;

  @override
  final String operationName = 'AddUser';

  @override
  final AddUserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AddUser$MutationRoot parse(Map<String, dynamic> json) =>
      AddUser$MutationRoot.fromJson(json);
}
