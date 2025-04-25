// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemResponse {
  int get id;
  String get name;
  String? get description;
  double get price;
  double? get tax;

  /// Create a copy of ItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ItemResponseCopyWith<ItemResponse> get copyWith =>
      _$ItemResponseCopyWithImpl<ItemResponse>(
          this as ItemResponse, _$identity);

  /// Serializes this ItemResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ItemResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.tax, tax) || other.tax == tax));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, price, tax);

  @override
  String toString() {
    return 'ItemResponse(id: $id, name: $name, description: $description, price: $price, tax: $tax)';
  }
}

/// @nodoc
abstract mixin class $ItemResponseCopyWith<$Res> {
  factory $ItemResponseCopyWith(
          ItemResponse value, $Res Function(ItemResponse) _then) =
      _$ItemResponseCopyWithImpl;
  @useResult
  $Res call(
      {int id, String name, String? description, double price, double? tax});
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
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? price = null,
    Object? tax = freezed,
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
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      tax: freezed == tax
          ? _self.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: Convertors.convertors)
class _ItemResponse implements ItemResponse {
  const _ItemResponse(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.tax});
  factory _ItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemResponseFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final double price;
  @override
  final double? tax;

  /// Create a copy of ItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ItemResponseCopyWith<_ItemResponse> get copyWith =>
      __$ItemResponseCopyWithImpl<_ItemResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ItemResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.tax, tax) || other.tax == tax));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, price, tax);

  @override
  String toString() {
    return 'ItemResponse(id: $id, name: $name, description: $description, price: $price, tax: $tax)';
  }
}

/// @nodoc
abstract mixin class _$ItemResponseCopyWith<$Res>
    implements $ItemResponseCopyWith<$Res> {
  factory _$ItemResponseCopyWith(
          _ItemResponse value, $Res Function(_ItemResponse) _then) =
      __$ItemResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id, String name, String? description, double price, double? tax});
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
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? price = null,
    Object? tax = freezed,
  }) {
    return _then(_ItemResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      tax: freezed == tax
          ? _self.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

// dart format on
