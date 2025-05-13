// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_items_router_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppItemsRouterItemResponse {

/// id
@JsonKey(name: AppItemsRouterItemResponse.idKey) int get id;/// name
@JsonKey(name: AppItemsRouterItemResponse.nameKey) String get name;/// description
@JsonKey(name: AppItemsRouterItemResponse.descriptionKey) String? get description;/// price
@JsonKey(name: AppItemsRouterItemResponse.priceKey) double get price;/// tax
@JsonKey(name: AppItemsRouterItemResponse.taxKey) double? get tax;
/// Create a copy of AppItemsRouterItemResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppItemsRouterItemResponseCopyWith<AppItemsRouterItemResponse> get copyWith => _$AppItemsRouterItemResponseCopyWithImpl<AppItemsRouterItemResponse>(this as AppItemsRouterItemResponse, _$identity);

  /// Serializes this AppItemsRouterItemResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppItemsRouterItemResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.tax, tax) || other.tax == tax));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,price,tax);

@override
String toString() {
  return 'AppItemsRouterItemResponse(id: $id, name: $name, description: $description, price: $price, tax: $tax)';
}


}

/// @nodoc
abstract mixin class $AppItemsRouterItemResponseCopyWith<$Res>  {
  factory $AppItemsRouterItemResponseCopyWith(AppItemsRouterItemResponse value, $Res Function(AppItemsRouterItemResponse) _then) = _$AppItemsRouterItemResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: AppItemsRouterItemResponse.idKey) int id,@JsonKey(name: AppItemsRouterItemResponse.nameKey) String name,@JsonKey(name: AppItemsRouterItemResponse.descriptionKey) String? description,@JsonKey(name: AppItemsRouterItemResponse.priceKey) double price,@JsonKey(name: AppItemsRouterItemResponse.taxKey) double? tax
});




}
/// @nodoc
class _$AppItemsRouterItemResponseCopyWithImpl<$Res>
    implements $AppItemsRouterItemResponseCopyWith<$Res> {
  _$AppItemsRouterItemResponseCopyWithImpl(this._self, this._then);

  final AppItemsRouterItemResponse _self;
  final $Res Function(AppItemsRouterItemResponse) _then;

/// Create a copy of AppItemsRouterItemResponse
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
@JsonSerializable()

class _AppItemsRouterItemResponse extends AppItemsRouterItemResponse {
  const _AppItemsRouterItemResponse({@JsonKey(name: AppItemsRouterItemResponse.idKey) required this.id, @JsonKey(name: AppItemsRouterItemResponse.nameKey) required this.name, @JsonKey(name: AppItemsRouterItemResponse.descriptionKey) required this.description, @JsonKey(name: AppItemsRouterItemResponse.priceKey) required this.price, @JsonKey(name: AppItemsRouterItemResponse.taxKey) required this.tax}): super._();
  factory _AppItemsRouterItemResponse.fromJson(Map<String, dynamic> json) => _$AppItemsRouterItemResponseFromJson(json);

/// id
@override@JsonKey(name: AppItemsRouterItemResponse.idKey) final  int id;
/// name
@override@JsonKey(name: AppItemsRouterItemResponse.nameKey) final  String name;
/// description
@override@JsonKey(name: AppItemsRouterItemResponse.descriptionKey) final  String? description;
/// price
@override@JsonKey(name: AppItemsRouterItemResponse.priceKey) final  double price;
/// tax
@override@JsonKey(name: AppItemsRouterItemResponse.taxKey) final  double? tax;

/// Create a copy of AppItemsRouterItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppItemsRouterItemResponseCopyWith<_AppItemsRouterItemResponse> get copyWith => __$AppItemsRouterItemResponseCopyWithImpl<_AppItemsRouterItemResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppItemsRouterItemResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppItemsRouterItemResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.tax, tax) || other.tax == tax));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,price,tax);

@override
String toString() {
  return 'AppItemsRouterItemResponse(id: $id, name: $name, description: $description, price: $price, tax: $tax)';
}


}

/// @nodoc
abstract mixin class _$AppItemsRouterItemResponseCopyWith<$Res> implements $AppItemsRouterItemResponseCopyWith<$Res> {
  factory _$AppItemsRouterItemResponseCopyWith(_AppItemsRouterItemResponse value, $Res Function(_AppItemsRouterItemResponse) _then) = __$AppItemsRouterItemResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: AppItemsRouterItemResponse.idKey) int id,@JsonKey(name: AppItemsRouterItemResponse.nameKey) String name,@JsonKey(name: AppItemsRouterItemResponse.descriptionKey) String? description,@JsonKey(name: AppItemsRouterItemResponse.priceKey) double price,@JsonKey(name: AppItemsRouterItemResponse.taxKey) double? tax
});




}
/// @nodoc
class __$AppItemsRouterItemResponseCopyWithImpl<$Res>
    implements _$AppItemsRouterItemResponseCopyWith<$Res> {
  __$AppItemsRouterItemResponseCopyWithImpl(this._self, this._then);

  final _AppItemsRouterItemResponse _self;
  final $Res Function(_AppItemsRouterItemResponse) _then;

/// Create a copy of AppItemsRouterItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? price = null,Object? tax = freezed,}) {
  return _then(_AppItemsRouterItemResponse(
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
