// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wardrobe_item.f.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WardrobeItem _$WardrobeItemFromJson(Map<String, dynamic> json) {
  return _WardrobeItem.fromJson(json);
}

/// @nodoc
class _$WardrobeItemTearOff {
  const _$WardrobeItemTearOff();

  _WardrobeItem call(int id, String imageId) {
    return _WardrobeItem(
      id,
      imageId,
    );
  }

  WardrobeItem fromJson(Map<String, Object?> json) {
    return WardrobeItem.fromJson(json);
  }
}

/// @nodoc
const $WardrobeItem = _$WardrobeItemTearOff();

/// @nodoc
mixin _$WardrobeItem {
  int get id => throw _privateConstructorUsedError;
  String get imageId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WardrobeItemCopyWith<WardrobeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WardrobeItemCopyWith<$Res> {
  factory $WardrobeItemCopyWith(
          WardrobeItem value, $Res Function(WardrobeItem) then) =
      _$WardrobeItemCopyWithImpl<$Res>;
  $Res call({int id, String imageId});
}

/// @nodoc
class _$WardrobeItemCopyWithImpl<$Res> implements $WardrobeItemCopyWith<$Res> {
  _$WardrobeItemCopyWithImpl(this._value, this._then);

  final WardrobeItem _value;
  // ignore: unused_field
  final $Res Function(WardrobeItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageId: imageId == freezed
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WardrobeItemCopyWith<$Res>
    implements $WardrobeItemCopyWith<$Res> {
  factory _$WardrobeItemCopyWith(
          _WardrobeItem value, $Res Function(_WardrobeItem) then) =
      __$WardrobeItemCopyWithImpl<$Res>;
  @override
  $Res call({int id, String imageId});
}

/// @nodoc
class __$WardrobeItemCopyWithImpl<$Res> extends _$WardrobeItemCopyWithImpl<$Res>
    implements _$WardrobeItemCopyWith<$Res> {
  __$WardrobeItemCopyWithImpl(
      _WardrobeItem _value, $Res Function(_WardrobeItem) _then)
      : super(_value, (v) => _then(v as _WardrobeItem));

  @override
  _WardrobeItem get _value => super._value as _WardrobeItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageId = freezed,
  }) {
    return _then(_WardrobeItem(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageId == freezed
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WardrobeItem extends _WardrobeItem {
  _$_WardrobeItem(this.id, this.imageId) : super._();

  factory _$_WardrobeItem.fromJson(Map<String, dynamic> json) =>
      _$$_WardrobeItemFromJson(json);

  @override
  final int id;
  @override
  final String imageId;

  @override
  String toString() {
    return 'WardrobeItem(id: $id, imageId: $imageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WardrobeItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageId, imageId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageId));

  @JsonKey(ignore: true)
  @override
  _$WardrobeItemCopyWith<_WardrobeItem> get copyWith =>
      __$WardrobeItemCopyWithImpl<_WardrobeItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WardrobeItemToJson(this);
  }
}

abstract class _WardrobeItem extends WardrobeItem {
  factory _WardrobeItem(int id, String imageId) = _$_WardrobeItem;
  _WardrobeItem._() : super._();

  factory _WardrobeItem.fromJson(Map<String, dynamic> json) =
      _$_WardrobeItem.fromJson;

  @override
  int get id;
  @override
  String get imageId;
  @override
  @JsonKey(ignore: true)
  _$WardrobeItemCopyWith<_WardrobeItem> get copyWith =>
      throw _privateConstructorUsedError;
}
