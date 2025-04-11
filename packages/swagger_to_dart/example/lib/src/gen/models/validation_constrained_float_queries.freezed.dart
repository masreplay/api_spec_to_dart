// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_constrained_float_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidationConstrainedFloatQueries {

/// value, Float between 0.0 and 1.0
@JsonKey(name: ValidationConstrainedFloatQueries.valueKey) double get value;
/// Create a copy of ValidationConstrainedFloatQueries
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidationConstrainedFloatQueriesCopyWith<ValidationConstrainedFloatQueries> get copyWith => _$ValidationConstrainedFloatQueriesCopyWithImpl<ValidationConstrainedFloatQueries>(this as ValidationConstrainedFloatQueries, _$identity);

  /// Serializes this ValidationConstrainedFloatQueries to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidationConstrainedFloatQueries&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'ValidationConstrainedFloatQueries(value: $value)';
}


}

/// @nodoc
abstract mixin class $ValidationConstrainedFloatQueriesCopyWith<$Res>  {
  factory $ValidationConstrainedFloatQueriesCopyWith(ValidationConstrainedFloatQueries value, $Res Function(ValidationConstrainedFloatQueries) _then) = _$ValidationConstrainedFloatQueriesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: ValidationConstrainedFloatQueries.valueKey) double value
});




}
/// @nodoc
class _$ValidationConstrainedFloatQueriesCopyWithImpl<$Res>
    implements $ValidationConstrainedFloatQueriesCopyWith<$Res> {
  _$ValidationConstrainedFloatQueriesCopyWithImpl(this._self, this._then);

  final ValidationConstrainedFloatQueries _self;
  final $Res Function(ValidationConstrainedFloatQueries) _then;

/// Create a copy of ValidationConstrainedFloatQueries
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _ValidationConstrainedFloatQueries extends ValidationConstrainedFloatQueries {
  const _ValidationConstrainedFloatQueries({@JsonKey(name: ValidationConstrainedFloatQueries.valueKey) required this.value}): super._();
  factory _ValidationConstrainedFloatQueries.fromJson(Map<String, dynamic> json) => _$ValidationConstrainedFloatQueriesFromJson(json);

/// value, Float between 0.0 and 1.0
@override@JsonKey(name: ValidationConstrainedFloatQueries.valueKey) final  double value;

/// Create a copy of ValidationConstrainedFloatQueries
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValidationConstrainedFloatQueriesCopyWith<_ValidationConstrainedFloatQueries> get copyWith => __$ValidationConstrainedFloatQueriesCopyWithImpl<_ValidationConstrainedFloatQueries>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ValidationConstrainedFloatQueriesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ValidationConstrainedFloatQueries&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'ValidationConstrainedFloatQueries(value: $value)';
}


}

/// @nodoc
abstract mixin class _$ValidationConstrainedFloatQueriesCopyWith<$Res> implements $ValidationConstrainedFloatQueriesCopyWith<$Res> {
  factory _$ValidationConstrainedFloatQueriesCopyWith(_ValidationConstrainedFloatQueries value, $Res Function(_ValidationConstrainedFloatQueries) _then) = __$ValidationConstrainedFloatQueriesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: ValidationConstrainedFloatQueries.valueKey) double value
});




}
/// @nodoc
class __$ValidationConstrainedFloatQueriesCopyWithImpl<$Res>
    implements _$ValidationConstrainedFloatQueriesCopyWith<$Res> {
  __$ValidationConstrainedFloatQueriesCopyWithImpl(this._self, this._then);

  final _ValidationConstrainedFloatQueries _self;
  final $Res Function(_ValidationConstrainedFloatQueries) _then;

/// Create a copy of ValidationConstrainedFloatQueries
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_ValidationConstrainedFloatQueries(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
