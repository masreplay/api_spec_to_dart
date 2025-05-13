// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_pagination_response_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BaseResponsePaginationResponseItemResponse {

/// data
@JsonKey(name: BaseResponsePaginationResponseItemResponse.dataKey) PaginationResponseItemResponse get data;/// message
@JsonKey(name: BaseResponsePaginationResponseItemResponse.messageKey) String get message;/// code
@JsonKey(name: BaseResponsePaginationResponseItemResponse.codeKey) int get code;
/// Create a copy of BaseResponsePaginationResponseItemResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseResponsePaginationResponseItemResponseCopyWith<BaseResponsePaginationResponseItemResponse> get copyWith => _$BaseResponsePaginationResponseItemResponseCopyWithImpl<BaseResponsePaginationResponseItemResponse>(this as BaseResponsePaginationResponseItemResponse, _$identity);

  /// Serializes this BaseResponsePaginationResponseItemResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseResponsePaginationResponseItemResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,code);

@override
String toString() {
  return 'BaseResponsePaginationResponseItemResponse(data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $BaseResponsePaginationResponseItemResponseCopyWith<$Res>  {
  factory $BaseResponsePaginationResponseItemResponseCopyWith(BaseResponsePaginationResponseItemResponse value, $Res Function(BaseResponsePaginationResponseItemResponse) _then) = _$BaseResponsePaginationResponseItemResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: BaseResponsePaginationResponseItemResponse.dataKey) PaginationResponseItemResponse data,@JsonKey(name: BaseResponsePaginationResponseItemResponse.messageKey) String message,@JsonKey(name: BaseResponsePaginationResponseItemResponse.codeKey) int code
});


$PaginationResponseItemResponseCopyWith<$Res> get data;

}
/// @nodoc
class _$BaseResponsePaginationResponseItemResponseCopyWithImpl<$Res>
    implements $BaseResponsePaginationResponseItemResponseCopyWith<$Res> {
  _$BaseResponsePaginationResponseItemResponseCopyWithImpl(this._self, this._then);

  final BaseResponsePaginationResponseItemResponse _self;
  final $Res Function(BaseResponsePaginationResponseItemResponse) _then;

/// Create a copy of BaseResponsePaginationResponseItemResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? message = null,Object? code = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PaginationResponseItemResponse,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of BaseResponsePaginationResponseItemResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationResponseItemResponseCopyWith<$Res> get data {
  
  return $PaginationResponseItemResponseCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _BaseResponsePaginationResponseItemResponse extends BaseResponsePaginationResponseItemResponse {
  const _BaseResponsePaginationResponseItemResponse({@JsonKey(name: BaseResponsePaginationResponseItemResponse.dataKey) required this.data, @JsonKey(name: BaseResponsePaginationResponseItemResponse.messageKey) required this.message, @JsonKey(name: BaseResponsePaginationResponseItemResponse.codeKey) required this.code}): super._();
  factory _BaseResponsePaginationResponseItemResponse.fromJson(Map<String, dynamic> json) => _$BaseResponsePaginationResponseItemResponseFromJson(json);

/// data
@override@JsonKey(name: BaseResponsePaginationResponseItemResponse.dataKey) final  PaginationResponseItemResponse data;
/// message
@override@JsonKey(name: BaseResponsePaginationResponseItemResponse.messageKey) final  String message;
/// code
@override@JsonKey(name: BaseResponsePaginationResponseItemResponse.codeKey) final  int code;

/// Create a copy of BaseResponsePaginationResponseItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseResponsePaginationResponseItemResponseCopyWith<_BaseResponsePaginationResponseItemResponse> get copyWith => __$BaseResponsePaginationResponseItemResponseCopyWithImpl<_BaseResponsePaginationResponseItemResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BaseResponsePaginationResponseItemResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseResponsePaginationResponseItemResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,code);

@override
String toString() {
  return 'BaseResponsePaginationResponseItemResponse(data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$BaseResponsePaginationResponseItemResponseCopyWith<$Res> implements $BaseResponsePaginationResponseItemResponseCopyWith<$Res> {
  factory _$BaseResponsePaginationResponseItemResponseCopyWith(_BaseResponsePaginationResponseItemResponse value, $Res Function(_BaseResponsePaginationResponseItemResponse) _then) = __$BaseResponsePaginationResponseItemResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: BaseResponsePaginationResponseItemResponse.dataKey) PaginationResponseItemResponse data,@JsonKey(name: BaseResponsePaginationResponseItemResponse.messageKey) String message,@JsonKey(name: BaseResponsePaginationResponseItemResponse.codeKey) int code
});


@override $PaginationResponseItemResponseCopyWith<$Res> get data;

}
/// @nodoc
class __$BaseResponsePaginationResponseItemResponseCopyWithImpl<$Res>
    implements _$BaseResponsePaginationResponseItemResponseCopyWith<$Res> {
  __$BaseResponsePaginationResponseItemResponseCopyWithImpl(this._self, this._then);

  final _BaseResponsePaginationResponseItemResponse _self;
  final $Res Function(_BaseResponsePaginationResponseItemResponse) _then;

/// Create a copy of BaseResponsePaginationResponseItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? message = null,Object? code = null,}) {
  return _then(_BaseResponsePaginationResponseItemResponse(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PaginationResponseItemResponse,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of BaseResponsePaginationResponseItemResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationResponseItemResponseCopyWith<$Res> get data {
  
  return $PaginationResponseItemResponseCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
