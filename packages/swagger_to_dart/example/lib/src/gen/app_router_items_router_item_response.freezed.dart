// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_router_items_router_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppRouterItemsRouterItemResponse {

/// id
@JsonKey(name: AppRouterItemsRouterItemResponse.idKey) int get id;/// name
@JsonKey(name: AppRouterItemsRouterItemResponse.nameKey) String get name;/// description
@JsonKey(name: AppRouterItemsRouterItemResponse.descriptionKey) String? get description;/// price
@JsonKey(name: AppRouterItemsRouterItemResponse.priceKey) double get price;/// tax
@JsonKey(name: AppRouterItemsRouterItemResponse.taxKey) double? get tax;
/// Create a copy of AppRouterItemsRouterItemResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppRouterItemsRouterItemResponseCopyWith<AppRouterItemsRouterItemResponse> get copyWith => _$AppRouterItemsRouterItemResponseCopyWithImpl<AppRouterItemsRouterItemResponse>(this as AppRouterItemsRouterItemResponse, _$identity);

  /// Serializes this AppRouterItemsRouterItemResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppRouterItemsRouterItemResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.tax, tax) || other.tax == tax));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,price,tax);

@override
String toString() {
  return 'AppRouterItemsRouterItemResponse(id: $id, name: $name, description: $description, price: $price, tax: $tax)';
}


}

/// @nodoc
abstract mixin class $AppRouterItemsRouterItemResponseCopyWith<$Res>  {
  factory $AppRouterItemsRouterItemResponseCopyWith(AppRouterItemsRouterItemResponse value, $Res Function(AppRouterItemsRouterItemResponse) _then) = _$AppRouterItemsRouterItemResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: AppRouterItemsRouterItemResponse.idKey) int id,@JsonKey(name: AppRouterItemsRouterItemResponse.nameKey) String name,@JsonKey(name: AppRouterItemsRouterItemResponse.descriptionKey) String? description,@JsonKey(name: AppRouterItemsRouterItemResponse.priceKey) double price,@JsonKey(name: AppRouterItemsRouterItemResponse.taxKey) double? tax
});




}
/// @nodoc
class _$AppRouterItemsRouterItemResponseCopyWithImpl<$Res>
    implements $AppRouterItemsRouterItemResponseCopyWith<$Res> {
  _$AppRouterItemsRouterItemResponseCopyWithImpl(this._self, this._then);

  final AppRouterItemsRouterItemResponse _self;
  final $Res Function(AppRouterItemsRouterItemResponse) _then;

/// Create a copy of AppRouterItemsRouterItemResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? price = null,Object? tax = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,tax: freezed == tax ? _self.tax : tax // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// @nodoc

@jsonSerializable
class _AppRouterItemsRouterItemResponse extends AppRouterItemsRouterItemResponse {
  const _AppRouterItemsRouterItemResponse({@JsonKey(name: AppRouterItemsRouterItemResponse.idKey) required this.id, @JsonKey(name: AppRouterItemsRouterItemResponse.nameKey) required this.name, @JsonKey(name: AppRouterItemsRouterItemResponse.descriptionKey) required this.description, @JsonKey(name: AppRouterItemsRouterItemResponse.priceKey) required this.price, @JsonKey(name: AppRouterItemsRouterItemResponse.taxKey) required this.tax}): super._();
  factory _AppRouterItemsRouterItemResponse.fromJson(Map<String, dynamic> json) => _$AppRouterItemsRouterItemResponseFromJson(json);

/// id
@override@JsonKey(name: AppRouterItemsRouterItemResponse.idKey) final  int id;
/// name
@override@JsonKey(name: AppRouterItemsRouterItemResponse.nameKey) final  String name;
/// description
@override@JsonKey(name: AppRouterItemsRouterItemResponse.descriptionKey) final  String? description;
/// price
@override@JsonKey(name: AppRouterItemsRouterItemResponse.priceKey) final  double price;
/// tax
@override@JsonKey(name: AppRouterItemsRouterItemResponse.taxKey) final  double? tax;

/// Create a copy of AppRouterItemsRouterItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppRouterItemsRouterItemResponseCopyWith<_AppRouterItemsRouterItemResponse> get copyWith => __$AppRouterItemsRouterItemResponseCopyWithImpl<_AppRouterItemsRouterItemResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppRouterItemsRouterItemResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppRouterItemsRouterItemResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.tax, tax) || other.tax == tax));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,price,tax);

@override
String toString() {
  return 'AppRouterItemsRouterItemResponse(id: $id, name: $name, description: $description, price: $price, tax: $tax)';
}


}

/// @nodoc
abstract mixin class _$AppRouterItemsRouterItemResponseCopyWith<$Res> implements $AppRouterItemsRouterItemResponseCopyWith<$Res> {
  factory _$AppRouterItemsRouterItemResponseCopyWith(_AppRouterItemsRouterItemResponse value, $Res Function(_AppRouterItemsRouterItemResponse) _then) = __$AppRouterItemsRouterItemResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: AppRouterItemsRouterItemResponse.idKey) int id,@JsonKey(name: AppRouterItemsRouterItemResponse.nameKey) String name,@JsonKey(name: AppRouterItemsRouterItemResponse.descriptionKey) String? description,@JsonKey(name: AppRouterItemsRouterItemResponse.priceKey) double price,@JsonKey(name: AppRouterItemsRouterItemResponse.taxKey) double? tax
});




}
/// @nodoc
class __$AppRouterItemsRouterItemResponseCopyWithImpl<$Res>
    implements _$AppRouterItemsRouterItemResponseCopyWith<$Res> {
  __$AppRouterItemsRouterItemResponseCopyWithImpl(this._self, this._then);

  final _AppRouterItemsRouterItemResponse _self;
  final $Res Function(_AppRouterItemsRouterItemResponse) _then;

/// Create a copy of AppRouterItemsRouterItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? price = null,Object? tax = freezed,}) {
  return _then(_AppRouterItemsRouterItemResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,tax: freezed == tax ? _self.tax : tax // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
