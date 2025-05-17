// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_list_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BaseResponseListItemResponse {

/// data
@JsonKey(name: BaseResponseListItemResponse.dataKey) List<AppRouterGenericRouterItemResponse> get data;/// message
@JsonKey(name: BaseResponseListItemResponse.messageKey) String get message;/// code
@JsonKey(name: BaseResponseListItemResponse.codeKey) int get code;
/// Create a copy of BaseResponseListItemResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseResponseListItemResponseCopyWith<BaseResponseListItemResponse> get copyWith => _$BaseResponseListItemResponseCopyWithImpl<BaseResponseListItemResponse>(this as BaseResponseListItemResponse, _$identity);

  /// Serializes this BaseResponseListItemResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseResponseListItemResponse&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),message,code);

@override
String toString() {
  return 'BaseResponseListItemResponse(data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $BaseResponseListItemResponseCopyWith<$Res>  {
  factory $BaseResponseListItemResponseCopyWith(BaseResponseListItemResponse value, $Res Function(BaseResponseListItemResponse) _then) = _$BaseResponseListItemResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: BaseResponseListItemResponse.dataKey) List<AppRouterGenericRouterItemResponse> data,@JsonKey(name: BaseResponseListItemResponse.messageKey) String message,@JsonKey(name: BaseResponseListItemResponse.codeKey) int code
});




}
/// @nodoc
class _$BaseResponseListItemResponseCopyWithImpl<$Res>
    implements $BaseResponseListItemResponseCopyWith<$Res> {
  _$BaseResponseListItemResponseCopyWithImpl(this._self, this._then);

  final BaseResponseListItemResponse _self;
  final $Res Function(BaseResponseListItemResponse) _then;

/// Create a copy of BaseResponseListItemResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? message = null,Object? code = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AppRouterGenericRouterItemResponse>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc

@generationJsonSerializable
class _BaseResponseListItemResponse extends BaseResponseListItemResponse {
  const _BaseResponseListItemResponse({@JsonKey(name: BaseResponseListItemResponse.dataKey) required final  List<AppRouterGenericRouterItemResponse> data, @JsonKey(name: BaseResponseListItemResponse.messageKey) required this.message, @JsonKey(name: BaseResponseListItemResponse.codeKey) required this.code}): _data = data,super._();
  factory _BaseResponseListItemResponse.fromJson(Map<String, dynamic> json) => _$BaseResponseListItemResponseFromJson(json);

/// data
 final  List<AppRouterGenericRouterItemResponse> _data;
/// data
@override@JsonKey(name: BaseResponseListItemResponse.dataKey) List<AppRouterGenericRouterItemResponse> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

/// message
@override@JsonKey(name: BaseResponseListItemResponse.messageKey) final  String message;
/// code
@override@JsonKey(name: BaseResponseListItemResponse.codeKey) final  int code;

/// Create a copy of BaseResponseListItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseResponseListItemResponseCopyWith<_BaseResponseListItemResponse> get copyWith => __$BaseResponseListItemResponseCopyWithImpl<_BaseResponseListItemResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BaseResponseListItemResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseResponseListItemResponse&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),message,code);

@override
String toString() {
  return 'BaseResponseListItemResponse(data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$BaseResponseListItemResponseCopyWith<$Res> implements $BaseResponseListItemResponseCopyWith<$Res> {
  factory _$BaseResponseListItemResponseCopyWith(_BaseResponseListItemResponse value, $Res Function(_BaseResponseListItemResponse) _then) = __$BaseResponseListItemResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: BaseResponseListItemResponse.dataKey) List<AppRouterGenericRouterItemResponse> data,@JsonKey(name: BaseResponseListItemResponse.messageKey) String message,@JsonKey(name: BaseResponseListItemResponse.codeKey) int code
});




}
/// @nodoc
class __$BaseResponseListItemResponseCopyWithImpl<$Res>
    implements _$BaseResponseListItemResponseCopyWith<$Res> {
  __$BaseResponseListItemResponseCopyWithImpl(this._self, this._then);

  final _BaseResponseListItemResponse _self;
  final $Res Function(_BaseResponseListItemResponse) _then;

/// Create a copy of BaseResponseListItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? message = null,Object? code = null,}) {
  return _then(_BaseResponseListItemResponse(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AppRouterGenericRouterItemResponse>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
