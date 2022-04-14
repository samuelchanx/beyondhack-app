// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recognition_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecognitionResult _$RecognitionResultFromJson(Map<String, dynamic> json) {
  return _RecognitionResult.fromJson(json);
}

/// @nodoc
class _$RecognitionResultTearOff {
  const _$RecognitionResultTearOff();

  _RecognitionResult call(bool success, List<String>? results) {
    return _RecognitionResult(
      success,
      results,
    );
  }

  RecognitionResult fromJson(Map<String, Object?> json) {
    return RecognitionResult.fromJson(json);
  }
}

/// @nodoc
const $RecognitionResult = _$RecognitionResultTearOff();

/// @nodoc
mixin _$RecognitionResult {
  bool get success => throw _privateConstructorUsedError;
  List<String>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecognitionResultCopyWith<RecognitionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecognitionResultCopyWith<$Res> {
  factory $RecognitionResultCopyWith(
          RecognitionResult value, $Res Function(RecognitionResult) then) =
      _$RecognitionResultCopyWithImpl<$Res>;
  $Res call({bool success, List<String>? results});
}

/// @nodoc
class _$RecognitionResultCopyWithImpl<$Res>
    implements $RecognitionResultCopyWith<$Res> {
  _$RecognitionResultCopyWithImpl(this._value, this._then);

  final RecognitionResult _value;
  // ignore: unused_field
  final $Res Function(RecognitionResult) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$RecognitionResultCopyWith<$Res>
    implements $RecognitionResultCopyWith<$Res> {
  factory _$RecognitionResultCopyWith(
          _RecognitionResult value, $Res Function(_RecognitionResult) then) =
      __$RecognitionResultCopyWithImpl<$Res>;
  @override
  $Res call({bool success, List<String>? results});
}

/// @nodoc
class __$RecognitionResultCopyWithImpl<$Res>
    extends _$RecognitionResultCopyWithImpl<$Res>
    implements _$RecognitionResultCopyWith<$Res> {
  __$RecognitionResultCopyWithImpl(
      _RecognitionResult _value, $Res Function(_RecognitionResult) _then)
      : super(_value, (v) => _then(v as _RecognitionResult));

  @override
  _RecognitionResult get _value => super._value as _RecognitionResult;

  @override
  $Res call({
    Object? success = freezed,
    Object? results = freezed,
  }) {
    return _then(_RecognitionResult(
      success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecognitionResult extends _RecognitionResult {
  _$_RecognitionResult(this.success, this.results) : super._();

  factory _$_RecognitionResult.fromJson(Map<String, dynamic> json) =>
      _$$_RecognitionResultFromJson(json);

  @override
  final bool success;
  @override
  final List<String>? results;

  @override
  String toString() {
    return 'RecognitionResult(success: $success, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecognitionResult &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$RecognitionResultCopyWith<_RecognitionResult> get copyWith =>
      __$RecognitionResultCopyWithImpl<_RecognitionResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecognitionResultToJson(this);
  }
}

abstract class _RecognitionResult extends RecognitionResult {
  factory _RecognitionResult(bool success, List<String>? results) =
      _$_RecognitionResult;
  _RecognitionResult._() : super._();

  factory _RecognitionResult.fromJson(Map<String, dynamic> json) =
      _$_RecognitionResult.fromJson;

  @override
  bool get success;
  @override
  List<String>? get results;
  @override
  @JsonKey(ignore: true)
  _$RecognitionResultCopyWith<_RecognitionResult> get copyWith =>
      throw _privateConstructorUsedError;
}
