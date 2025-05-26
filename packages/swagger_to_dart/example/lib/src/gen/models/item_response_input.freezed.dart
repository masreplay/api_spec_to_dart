// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_response_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemResponseInput {
  /// id
  @JsonKey(name: ItemResponseInput.idKey)
  int get id;

  /// name
  @JsonKey(name: ItemResponseInput.nameKey)
  String get name;

  /// Create a copy of ItemResponseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ItemResponseInputCopyWith<ItemResponseInput> get copyWith =>
      _$ItemResponseInputCopyWithImpl<ItemResponseInput>(
          this as ItemResponseInput, _$identity);

  /// Serializes this ItemResponseInput to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ItemResponseInput &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'ItemResponseInput(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $ItemResponseInputCopyWith<$Res> {
  factory $ItemResponseInputCopyWith(
          ItemResponseInput value, $Res Function(ItemResponseInput) _then) =
      _$ItemResponseInputCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ItemResponseInput.idKey) int id,
      @JsonKey(name: ItemResponseInput.nameKey) String name});
}

/// @nodoc
class _$ItemResponseInputCopyWithImpl<$Res>
    implements $ItemResponseInputCopyWith<$Res> {
  _$ItemResponseInputCopyWithImpl(this._self, this._then);

  final ItemResponseInput _self;
  final $Res Function(ItemResponseInput) _then;

  /// Create a copy of ItemResponseInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _ItemResponseInput extends ItemResponseInput {
  const _ItemResponseInput(
      {@JsonKey(name: ItemResponseInput.idKey) required this.id,
      @JsonKey(name: ItemResponseInput.nameKey) required this.name})
      : super._();
  factory _ItemResponseInput.fromJson(Map<String, dynamic> json) =>
      _$ItemResponseInputFromJson(json);

  /// id
  @override
  @JsonKey(name: ItemResponseInput.idKey)
  final int id;

  /// name
  @override
  @JsonKey(name: ItemResponseInput.nameKey)
  final String name;

  /// Create a copy of ItemResponseInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ItemResponseInputCopyWith<_ItemResponseInput> get copyWith =>
      __$ItemResponseInputCopyWithImpl<_ItemResponseInput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ItemResponseInputToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemResponseInput &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'ItemResponseInput(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$ItemResponseInputCopyWith<$Res>
    implements $ItemResponseInputCopyWith<$Res> {
  factory _$ItemResponseInputCopyWith(
          _ItemResponseInput value, $Res Function(_ItemResponseInput) _then) =
      __$ItemResponseInputCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ItemResponseInput.idKey) int id,
      @JsonKey(name: ItemResponseInput.nameKey) String name});
}

/// @nodoc
class __$ItemResponseInputCopyWithImpl<$Res>
    implements _$ItemResponseInputCopyWith<$Res> {
  __$ItemResponseInputCopyWithImpl(this._self, this._then);

  final _ItemResponseInput _self;
  final $Res Function(_ItemResponseInput) _then;

  /// Create a copy of ItemResponseInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_ItemResponseInput(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
