// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'user.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUser$QueryRoot$AppUser _$GetUser$QueryRoot$AppUserFromJson(
        Map<String, dynamic> json) =>
    GetUser$QueryRoot$AppUser()..id = json['id'] as String;

Map<String, dynamic> _$GetUser$QueryRoot$AppUserToJson(
        GetUser$QueryRoot$AppUser instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

GetUser$QueryRoot _$GetUser$QueryRootFromJson(Map<String, dynamic> json) =>
    GetUser$QueryRoot()
      ..appUserByPk = json['app_user_by_pk'] == null
          ? null
          : GetUser$QueryRoot$AppUser.fromJson(
              json['app_user_by_pk'] as Map<String, dynamic>);

Map<String, dynamic> _$GetUser$QueryRootToJson(GetUser$QueryRoot instance) =>
    <String, dynamic>{
      'app_user_by_pk': instance.appUserByPk?.toJson(),
    };

AddUser$MutationRoot$AppUser _$AddUser$MutationRoot$AppUserFromJson(
        Map<String, dynamic> json) =>
    AddUser$MutationRoot$AppUser()
      ..id = json['id'] as String
      ..name = json['name'] as String?
      ..gender = json['gender'] as String?
      ..createdAt = fromGraphQLTimestampNullableToDartDateTimeNullable(
          json['createdAt'] as String?)
      ..spaceLocation = json['spaceLocation'] as String?
      ..loginProvider = json['loginProvider'] as String?
      ..lastOnline = fromGraphQLTimestampNullableToDartDateTimeNullable(
          json['lastOnline'] as String?);

Map<String, dynamic> _$AddUser$MutationRoot$AppUserToJson(
        AddUser$MutationRoot$AppUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': instance.gender,
      'createdAt': fromDartDateTimeNullableToGraphQLTimestampNullable(
          instance.createdAt),
      'spaceLocation': instance.spaceLocation,
      'loginProvider': instance.loginProvider,
      'lastOnline': fromDartDateTimeNullableToGraphQLTimestampNullable(
          instance.lastOnline),
    };

AddUser$MutationRoot _$AddUser$MutationRootFromJson(
        Map<String, dynamic> json) =>
    AddUser$MutationRoot()
      ..insertAppUserOne = json['insert_app_user_one'] == null
          ? null
          : AddUser$MutationRoot$AppUser.fromJson(
              json['insert_app_user_one'] as Map<String, dynamic>);

Map<String, dynamic> _$AddUser$MutationRootToJson(
        AddUser$MutationRoot instance) =>
    <String, dynamic>{
      'insert_app_user_one': instance.insertAppUserOne?.toJson(),
    };

GetUserArguments _$GetUserArgumentsFromJson(Map<String, dynamic> json) =>
    GetUserArguments(
      id: json['id'] as String,
    );

Map<String, dynamic> _$GetUserArgumentsToJson(GetUserArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

AddUserArguments _$AddUserArgumentsFromJson(Map<String, dynamic> json) =>
    AddUserArguments(
      id: json['id'] as String,
    );

Map<String, dynamic> _$AddUserArgumentsToJson(AddUserArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
