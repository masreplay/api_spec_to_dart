// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BaseResponseItemResponse {

/// data
@JsonKey(name: BaseResponseItemResponse.dataKey) AppRouterGenericRouterItemResponse get data;/// message
@JsonKey(name: BaseResponseItemResponse.messageKey) String get message;/// code
@JsonKey(name: BaseResponseItemResponse.codeKey) int get code;
/// Create a copy of BaseResponseItemResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseResponseItemResponseCopyWith<BaseResponseItemResponse> get copyWith => _$BaseResponseItemResponseCopyWithImpl<BaseResponseItemResponse>(this as BaseResponseItemResponse, _$identity);

  /// Serializes this BaseResponseItemResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseResponseItemResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,code);

@override
String toString() {
  return 'BaseResponseItemResponse(data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $BaseResponseItemResponseCopyWith<$Res>  {
  factory $BaseResponseItemResponseCopyWith(BaseResponseItemResponse value, $Res Function(BaseResponseItemResponse) _then) = _$BaseResponseItemResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: BaseResponseItemResponse.dataKey) AppRouterGenericRouterItemResponse data,@JsonKey(name: BaseResponseItemResponse.messageKey) String message,@JsonKey(name: BaseResponseItemResponse.codeKey) int code
});


$AppRouterGenericRouterItemResponseCopyWith<$Res> get data;

}
/// @nodoc
class _$BaseResponseItemResponseCopyWithImpl<$Res>
    implements $BaseResponseItemResponseCopyWith<$Res> {
  _$BaseResponseItemResponseCopyWithImpl(this._self, this._then);

  final BaseResponseItemResponse _self;
  final $Res Function(BaseResponseItemResponse) _then;

/// Create a copy of BaseResponseItemResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? message = null,Object? code = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AppRouterGenericRouterItemResponse,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of BaseResponseItemResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppRouterGenericRouterItemResponseCopyWith<$Res> get data {
  
  return $AppRouterGenericRouterItemResponseCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc

@jsonSerializable
class _BaseResponseItemResponse extends BaseResponseItemResponse {
  const _BaseResponseItemResponse({@JsonKey(name: BaseResponseItemResponse.dataKey) this.data = const AppRouterGenericRouterItemResponse(), @JsonKey(name: BaseResponseItemResponse.messageKey) required this.message, @JsonKey(name: BaseResponseItemResponse.codeKey) required this.code}): super._();
  factory _BaseResponseItemResponse.fromJson(Map<String, dynamic> json) => _$BaseResponseItemResponseFromJson(json);

/// data
@override@JsonKey(name: BaseResponseItemResponse.dataKey) final  AppRouterGenericRouterItemResponse data;
/// message
@override@JsonKey(name: BaseResponseItemResponse.messageKey) final  String message;
/// code
@override@JsonKey(name: BaseResponseItemResponse.codeKey) final  int code;

/// Create a copy of BaseResponseItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseResponseItemResponseCopyWith<_BaseResponseItemResponse> get copyWith => __$BaseResponseItemResponseCopyWithImpl<_BaseResponseItemResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BaseResponseItemResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseResponseItemResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,code);

@override
String toString() {
  return 'BaseResponseItemResponse(data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$BaseResponseItemResponseCopyWith<$Res> implements $BaseResponseItemResponseCopyWith<$Res> {
  factory _$BaseResponseItemResponseCopyWith(_BaseResponseItemResponse value, $Res Function(_BaseResponseItemResponse) _then) = __$BaseResponseItemResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: BaseResponseItemResponse.dataKey) AppRouterGenericRouterItemResponse data,@JsonKey(name: BaseResponseItemResponse.messageKey) String message,@JsonKey(name: BaseResponseItemResponse.codeKey) int code
});


@override $AppRouterGenericRouterItemResponseCopyWith<$Res> get data;

}
/// @nodoc
class __$BaseResponseItemResponseCopyWithImpl<$Res>
    implements _$BaseResponseItemResponseCopyWith<$Res> {
  __$BaseResponseItemResponseCopyWithImpl(this._self, this._then);

  final _BaseResponseItemResponse _self;
  final $Res Function(_BaseResponseItemResponse) _then;

/// Create a copy of BaseResponseItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? message = null,Object? code = null,}) {
  return _then(_BaseResponseItemResponse(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AppRouterGenericRouterItemResponse,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of BaseResponseItemResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppRouterGenericRouterItemResponseCopyWith<$Res> get data {
  
  return $AppRouterGenericRouterItemResponseCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
