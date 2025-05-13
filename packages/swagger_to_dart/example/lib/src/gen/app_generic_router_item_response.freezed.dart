// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_generic_router_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppGenericRouterItemResponse {

/// id
@JsonKey(name: AppGenericRouterItemResponse.idKey) int get id;/// name
@JsonKey(name: AppGenericRouterItemResponse.nameKey) String get name;
/// Create a copy of AppGenericRouterItemResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppGenericRouterItemResponseCopyWith<AppGenericRouterItemResponse> get copyWith => _$AppGenericRouterItemResponseCopyWithImpl<AppGenericRouterItemResponse>(this as AppGenericRouterItemResponse, _$identity);

  /// Serializes this AppGenericRouterItemResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppGenericRouterItemResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'AppGenericRouterItemResponse(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $AppGenericRouterItemResponseCopyWith<$Res>  {
  factory $AppGenericRouterItemResponseCopyWith(AppGenericRouterItemResponse value, $Res Function(AppGenericRouterItemResponse) _then) = _$AppGenericRouterItemResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: AppGenericRouterItemResponse.idKey) int id,@JsonKey(name: AppGenericRouterItemResponse.nameKey) String name
});




}
/// @nodoc
class _$AppGenericRouterItemResponseCopyWithImpl<$Res>
    implements $AppGenericRouterItemResponseCopyWith<$Res> {
  _$AppGenericRouterItemResponseCopyWithImpl(this._self, this._then);

  final AppGenericRouterItemResponse _self;
  final $Res Function(AppGenericRouterItemResponse) _then;

/// Create a copy of AppGenericRouterItemResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc

@generationJsonSerializable
class _AppGenericRouterItemResponse extends AppGenericRouterItemResponse {
  const _AppGenericRouterItemResponse({@JsonKey(name: AppGenericRouterItemResponse.idKey) required this.id, @JsonKey(name: AppGenericRouterItemResponse.nameKey) required this.name}): super._();
  factory _AppGenericRouterItemResponse.fromJson(Map<String, dynamic> json) => _$AppGenericRouterItemResponseFromJson(json);

/// id
@override@JsonKey(name: AppGenericRouterItemResponse.idKey) final  int id;
/// name
@override@JsonKey(name: AppGenericRouterItemResponse.nameKey) final  String name;

/// Create a copy of AppGenericRouterItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppGenericRouterItemResponseCopyWith<_AppGenericRouterItemResponse> get copyWith => __$AppGenericRouterItemResponseCopyWithImpl<_AppGenericRouterItemResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppGenericRouterItemResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppGenericRouterItemResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'AppGenericRouterItemResponse(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$AppGenericRouterItemResponseCopyWith<$Res> implements $AppGenericRouterItemResponseCopyWith<$Res> {
  factory _$AppGenericRouterItemResponseCopyWith(_AppGenericRouterItemResponse value, $Res Function(_AppGenericRouterItemResponse) _then) = __$AppGenericRouterItemResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: AppGenericRouterItemResponse.idKey) int id,@JsonKey(name: AppGenericRouterItemResponse.nameKey) String name
});




}
/// @nodoc
class __$AppGenericRouterItemResponseCopyWithImpl<$Res>
    implements _$AppGenericRouterItemResponseCopyWith<$Res> {
  __$AppGenericRouterItemResponseCopyWithImpl(this._self, this._then);

  final _AppGenericRouterItemResponse _self;
  final $Res Function(_AppGenericRouterItemResponse) _then;

/// Create a copy of AppGenericRouterItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_AppGenericRouterItemResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
