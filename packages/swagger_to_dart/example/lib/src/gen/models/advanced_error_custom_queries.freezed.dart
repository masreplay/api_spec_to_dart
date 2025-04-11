// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_error_custom_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedErrorCustomQueries {

/// code, HTTP error code to simulate
@JsonKey(name: AdvancedErrorCustomQueries.codeKey) int get code;
/// Create a copy of AdvancedErrorCustomQueries
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdvancedErrorCustomQueriesCopyWith<AdvancedErrorCustomQueries> get copyWith => _$AdvancedErrorCustomQueriesCopyWithImpl<AdvancedErrorCustomQueries>(this as AdvancedErrorCustomQueries, _$identity);

  /// Serializes this AdvancedErrorCustomQueries to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdvancedErrorCustomQueries&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code);

@override
String toString() {
  return 'AdvancedErrorCustomQueries(code: $code)';
}


}

/// @nodoc
abstract mixin class $AdvancedErrorCustomQueriesCopyWith<$Res>  {
  factory $AdvancedErrorCustomQueriesCopyWith(AdvancedErrorCustomQueries value, $Res Function(AdvancedErrorCustomQueries) _then) = _$AdvancedErrorCustomQueriesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: AdvancedErrorCustomQueries.codeKey) int code
});




}
/// @nodoc
class _$AdvancedErrorCustomQueriesCopyWithImpl<$Res>
    implements $AdvancedErrorCustomQueriesCopyWith<$Res> {
  _$AdvancedErrorCustomQueriesCopyWithImpl(this._self, this._then);

  final AdvancedErrorCustomQueries _self;
  final $Res Function(AdvancedErrorCustomQueries) _then;

/// Create a copy of AdvancedErrorCustomQueries
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _AdvancedErrorCustomQueries extends AdvancedErrorCustomQueries {
  const _AdvancedErrorCustomQueries({@JsonKey(name: AdvancedErrorCustomQueries.codeKey) required this.code}): super._();
  factory _AdvancedErrorCustomQueries.fromJson(Map<String, dynamic> json) => _$AdvancedErrorCustomQueriesFromJson(json);

/// code, HTTP error code to simulate
@override@JsonKey(name: AdvancedErrorCustomQueries.codeKey) final  int code;

/// Create a copy of AdvancedErrorCustomQueries
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdvancedErrorCustomQueriesCopyWith<_AdvancedErrorCustomQueries> get copyWith => __$AdvancedErrorCustomQueriesCopyWithImpl<_AdvancedErrorCustomQueries>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdvancedErrorCustomQueriesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdvancedErrorCustomQueries&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code);

@override
String toString() {
  return 'AdvancedErrorCustomQueries(code: $code)';
}


}

/// @nodoc
abstract mixin class _$AdvancedErrorCustomQueriesCopyWith<$Res> implements $AdvancedErrorCustomQueriesCopyWith<$Res> {
  factory _$AdvancedErrorCustomQueriesCopyWith(_AdvancedErrorCustomQueries value, $Res Function(_AdvancedErrorCustomQueries) _then) = __$AdvancedErrorCustomQueriesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: AdvancedErrorCustomQueries.codeKey) int code
});




}
/// @nodoc
class __$AdvancedErrorCustomQueriesCopyWithImpl<$Res>
    implements _$AdvancedErrorCustomQueriesCopyWith<$Res> {
  __$AdvancedErrorCustomQueriesCopyWithImpl(this._self, this._then);

  final _AdvancedErrorCustomQueries _self;
  final $Res Function(_AdvancedErrorCustomQueries) _then;

/// Create a copy of AdvancedErrorCustomQueries
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(_AdvancedErrorCustomQueries(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
