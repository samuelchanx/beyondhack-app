// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recognition_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecognitionResult _$$_RecognitionResultFromJson(Map<String, dynamic> json) =>
    _$_RecognitionResult(
      json['success'] as bool,
      (json['results'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_RecognitionResultToJson(
        _$_RecognitionResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'results': instance.results,
    };
