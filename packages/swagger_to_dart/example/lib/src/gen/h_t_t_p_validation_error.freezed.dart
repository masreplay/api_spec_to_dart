// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'h_t_t_p_validation_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HTTPValidationError {

/// detail
@JsonKey(name: HTTPValidationError.detailKey) List<ValidationError> get detail;
/// Create a copy of HTTPValidationError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HTTPValidationErrorCopyWith<HTTPValidationError> get copyWith => _$HTTPValidationErrorCopyWithImpl<HTTPValidationError>(this as HTTPValidationError, _$identity);

  /// Serializes this HTTPValidationError to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HTTPValidationError&&const DeepCollectionEquality().equals(other.detail, detail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(detail));

@override
String toString() {
  return 'HTTPValidationError(detail: $detail)';
}


}

/// @nodoc
abstract mixin class $HTTPValidationErrorCopyWith<$Res>  {
  factory $HTTPValidationErrorCopyWith(HTTPValidationError value, $Res Function(HTTPValidationError) _then) = _$HTTPValidationErrorCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: HTTPValidationError.detailKey) List<ValidationError> detail
});




}
/// @nodoc
class _$HTTPValidationErrorCopyWithImpl<$Res>
    implements $HTTPValidationErrorCopyWith<$Res> {
  _$HTTPValidationErrorCopyWithImpl(this._self, this._then);

  final HTTPValidationError _self;
  final $Res Function(HTTPValidationError) _then;

/// Create a copy of HTTPValidationError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? detail = null,}) {
  return _then(_self.copyWith(
detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as List<ValidationError>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _HTTPValidationError extends HTTPValidationError {
  const _HTTPValidationError({@JsonKey(name: HTTPValidationError.detailKey) required final  List<ValidationError> detail}): _detail = detail,super._();
  factory _HTTPValidationError.fromJson(Map<String, dynamic> json) => _$HTTPValidationErrorFromJson(json);

/// detail
 final  List<ValidationError> _detail;
/// detail
@override@JsonKey(name: HTTPValidationError.detailKey) List<ValidationError> get detail {
  if (_detail is EqualUnmodifiableListView) return _detail;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_detail);
}


/// Create a copy of HTTPValidationError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HTTPValidationErrorCopyWith<_HTTPValidationError> get copyWith => __$HTTPValidationErrorCopyWithImpl<_HTTPValidationError>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HTTPValidationErrorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HTTPValidationError&&const DeepCollectionEquality().equals(other._detail, _detail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_detail));

@override
String toString() {
  return 'HTTPValidationError(detail: $detail)';
}


}

/// @nodoc
abstract mixin class _$HTTPValidationErrorCopyWith<$Res> implements $HTTPValidationErrorCopyWith<$Res> {
  factory _$HTTPValidationErrorCopyWith(_HTTPValidationError value, $Res Function(_HTTPValidationError) _then) = __$HTTPValidationErrorCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: HTTPValidationError.detailKey) List<ValidationError> detail
});




}
/// @nodoc
class __$HTTPValidationErrorCopyWithImpl<$Res>
    implements _$HTTPValidationErrorCopyWith<$Res> {
  __$HTTPValidationErrorCopyWithImpl(this._self, this._then);

  final _HTTPValidationError _self;
  final $Res Function(_HTTPValidationError) _then;

/// Create a copy of HTTPValidationError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? detail = null,}) {
  return _then(_HTTPValidationError(
detail: null == detail ? _self._detail : detail // ignore: cast_nullable_to_non_nullable
as List<ValidationError>,
  ));
}


}

// dart format on
