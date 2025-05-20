// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BaseResponseCategoryResponse {

/// data
@JsonKey(name: BaseResponseCategoryResponse.dataKey) CategoryResponse get data;/// message
@JsonKey(name: BaseResponseCategoryResponse.messageKey) String get message;/// code
@JsonKey(name: BaseResponseCategoryResponse.codeKey) int get code;
/// Create a copy of BaseResponseCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseResponseCategoryResponseCopyWith<BaseResponseCategoryResponse> get copyWith => _$BaseResponseCategoryResponseCopyWithImpl<BaseResponseCategoryResponse>(this as BaseResponseCategoryResponse, _$identity);

  /// Serializes this BaseResponseCategoryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseResponseCategoryResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,code);

@override
String toString() {
  return 'BaseResponseCategoryResponse(data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $BaseResponseCategoryResponseCopyWith<$Res>  {
  factory $BaseResponseCategoryResponseCopyWith(BaseResponseCategoryResponse value, $Res Function(BaseResponseCategoryResponse) _then) = _$BaseResponseCategoryResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: BaseResponseCategoryResponse.dataKey) CategoryResponse data,@JsonKey(name: BaseResponseCategoryResponse.messageKey) String message,@JsonKey(name: BaseResponseCategoryResponse.codeKey) int code
});


$CategoryResponseCopyWith<$Res> get data;

}
/// @nodoc
class _$BaseResponseCategoryResponseCopyWithImpl<$Res>
    implements $BaseResponseCategoryResponseCopyWith<$Res> {
  _$BaseResponseCategoryResponseCopyWithImpl(this._self, this._then);

  final BaseResponseCategoryResponse _self;
  final $Res Function(BaseResponseCategoryResponse) _then;

/// Create a copy of BaseResponseCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? message = null,Object? code = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CategoryResponse,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of BaseResponseCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryResponseCopyWith<$Res> get data {
  
  return $CategoryResponseCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc

@jsonSerializable
class _BaseResponseCategoryResponse extends BaseResponseCategoryResponse {
  const _BaseResponseCategoryResponse({@JsonKey(name: BaseResponseCategoryResponse.dataKey) this.data = const CategoryResponse(), @JsonKey(name: BaseResponseCategoryResponse.messageKey) required this.message, @JsonKey(name: BaseResponseCategoryResponse.codeKey) required this.code}): super._();
  factory _BaseResponseCategoryResponse.fromJson(Map<String, dynamic> json) => _$BaseResponseCategoryResponseFromJson(json);

/// data
@override@JsonKey(name: BaseResponseCategoryResponse.dataKey) final  CategoryResponse data;
/// message
@override@JsonKey(name: BaseResponseCategoryResponse.messageKey) final  String message;
/// code
@override@JsonKey(name: BaseResponseCategoryResponse.codeKey) final  int code;

/// Create a copy of BaseResponseCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseResponseCategoryResponseCopyWith<_BaseResponseCategoryResponse> get copyWith => __$BaseResponseCategoryResponseCopyWithImpl<_BaseResponseCategoryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BaseResponseCategoryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseResponseCategoryResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,code);

@override
String toString() {
  return 'BaseResponseCategoryResponse(data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$BaseResponseCategoryResponseCopyWith<$Res> implements $BaseResponseCategoryResponseCopyWith<$Res> {
  factory _$BaseResponseCategoryResponseCopyWith(_BaseResponseCategoryResponse value, $Res Function(_BaseResponseCategoryResponse) _then) = __$BaseResponseCategoryResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: BaseResponseCategoryResponse.dataKey) CategoryResponse data,@JsonKey(name: BaseResponseCategoryResponse.messageKey) String message,@JsonKey(name: BaseResponseCategoryResponse.codeKey) int code
});


@override $CategoryResponseCopyWith<$Res> get data;

}
/// @nodoc
class __$BaseResponseCategoryResponseCopyWithImpl<$Res>
    implements _$BaseResponseCategoryResponseCopyWith<$Res> {
  __$BaseResponseCategoryResponseCopyWithImpl(this._self, this._then);

  final _BaseResponseCategoryResponse _self;
  final $Res Function(_BaseResponseCategoryResponse) _then;

/// Create a copy of BaseResponseCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? message = null,Object? code = null,}) {
  return _then(_BaseResponseCategoryResponse(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CategoryResponse,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of BaseResponseCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryResponseCopyWith<$Res> get data {
  
  return $CategoryResponseCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
