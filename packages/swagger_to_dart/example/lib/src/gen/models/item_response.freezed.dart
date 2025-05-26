// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemResponse {
  /// id
  @JsonKey(name: ItemResponse.idKey)
  int get id;

  /// name
  @JsonKey(name: ItemResponse.nameKey)
  String get name;

  /// Create a copy of ItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ItemResponseCopyWith<ItemResponse> get copyWith =>
      _$ItemResponseCopyWithImpl<ItemResponse>(
        this as ItemResponse,
        _$identity,
      );

  /// Serializes this ItemResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ItemResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'ItemResponse(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $ItemResponseCopyWith<$Res> {
  factory $ItemResponseCopyWith(
    ItemResponse value,
    $Res Function(ItemResponse) _then,
  ) = _$ItemResponseCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: ItemResponse.idKey) int id,
    @JsonKey(name: ItemResponse.nameKey) String name,
  });
}

/// @nodoc
class _$ItemResponseCopyWithImpl<$Res> implements $ItemResponseCopyWith<$Res> {
  _$ItemResponseCopyWithImpl(this._self, this._then);

  final ItemResponse _self;
  final $Res Function(ItemResponse) _then;

  /// Create a copy of ItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _self.copyWith(
        id:
            null == id
                ? _self.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _self.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

@jsonSerializable
class _ItemResponse extends ItemResponse {
  const _ItemResponse({
    @JsonKey(name: ItemResponse.idKey) required this.id,
    @JsonKey(name: ItemResponse.nameKey) required this.name,
  }) : super._();
  factory _ItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemResponseFromJson(json);

  /// id
  @override
  @JsonKey(name: ItemResponse.idKey)
  final int id;

  /// name
  @override
  @JsonKey(name: ItemResponse.nameKey)
  final String name;

  /// Create a copy of ItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ItemResponseCopyWith<_ItemResponse> get copyWith =>
      __$ItemResponseCopyWithImpl<_ItemResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ItemResponseToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'ItemResponse(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$ItemResponseCopyWith<$Res>
    implements $ItemResponseCopyWith<$Res> {
  factory _$ItemResponseCopyWith(
    _ItemResponse value,
    $Res Function(_ItemResponse) _then,
  ) = __$ItemResponseCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: ItemResponse.idKey) int id,
    @JsonKey(name: ItemResponse.nameKey) String name,
  });
}

/// @nodoc
class __$ItemResponseCopyWithImpl<$Res>
    implements _$ItemResponseCopyWith<$Res> {
  __$ItemResponseCopyWithImpl(this._self, this._then);

  final _ItemResponse _self;
  final $Res Function(_ItemResponse) _then;

  /// Create a copy of ItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _ItemResponse(
        id:
            null == id
                ? _self.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _self.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}
