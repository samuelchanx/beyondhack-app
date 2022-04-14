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

GetUserArguments _$GetUserArgumentsFromJson(Map<String, dynamic> json) =>
    GetUserArguments(
      id: json['id'] as String,
    );

Map<String, dynamic> _$GetUserArgumentsToJson(GetUserArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
