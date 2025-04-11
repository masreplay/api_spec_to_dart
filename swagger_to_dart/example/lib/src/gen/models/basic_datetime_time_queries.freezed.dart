// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_datetime_time_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BasicDatetimeTimeQueries {

/// t
@JsonKey(name: BasicDatetimeTimeQueries.tKey) String get t;
/// Create a copy of BasicDatetimeTimeQueries
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BasicDatetimeTimeQueriesCopyWith<BasicDatetimeTimeQueries> get copyWith => _$BasicDatetimeTimeQueriesCopyWithImpl<BasicDatetimeTimeQueries>(this as BasicDatetimeTimeQueries, _$identity);

  /// Serializes this BasicDatetimeTimeQueries to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasicDatetimeTimeQueries&&(identical(other.t, t) || other.t == t));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,t);

@override
String toString() {
  return 'BasicDatetimeTimeQueries(t: $t)';
}


}

/// @nodoc
abstract mixin class $BasicDatetimeTimeQueriesCopyWith<$Res>  {
  factory $BasicDatetimeTimeQueriesCopyWith(BasicDatetimeTimeQueries value, $Res Function(BasicDatetimeTimeQueries) _then) = _$BasicDatetimeTimeQueriesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: BasicDatetimeTimeQueries.tKey) String t
});




}
/// @nodoc
class _$BasicDatetimeTimeQueriesCopyWithImpl<$Res>
    implements $BasicDatetimeTimeQueriesCopyWith<$Res> {
  _$BasicDatetimeTimeQueriesCopyWithImpl(this._self, this._then);

  final BasicDatetimeTimeQueries _self;
  final $Res Function(BasicDatetimeTimeQueries) _then;

/// Create a copy of BasicDatetimeTimeQueries
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? t = null,}) {
  return _then(_self.copyWith(
t: null == t ? _self.t : t // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _BasicDatetimeTimeQueries extends BasicDatetimeTimeQueries {
  const _BasicDatetimeTimeQueries({@JsonKey(name: BasicDatetimeTimeQueries.tKey) required this.t}): super._();
  factory _BasicDatetimeTimeQueries.fromJson(Map<String, dynamic> json) => _$BasicDatetimeTimeQueriesFromJson(json);

/// t
@override@JsonKey(name: BasicDatetimeTimeQueries.tKey) final  String t;

/// Create a copy of BasicDatetimeTimeQueries
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BasicDatetimeTimeQueriesCopyWith<_BasicDatetimeTimeQueries> get copyWith => __$BasicDatetimeTimeQueriesCopyWithImpl<_BasicDatetimeTimeQueries>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BasicDatetimeTimeQueriesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BasicDatetimeTimeQueries&&(identical(other.t, t) || other.t == t));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,t);

@override
String toString() {
  return 'BasicDatetimeTimeQueries(t: $t)';
}


}

/// @nodoc
abstract mixin class _$BasicDatetimeTimeQueriesCopyWith<$Res> implements $BasicDatetimeTimeQueriesCopyWith<$Res> {
  factory _$BasicDatetimeTimeQueriesCopyWith(_BasicDatetimeTimeQueries value, $Res Function(_BasicDatetimeTimeQueries) _then) = __$BasicDatetimeTimeQueriesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: BasicDatetimeTimeQueries.tKey) String t
});




}
/// @nodoc
class __$BasicDatetimeTimeQueriesCopyWithImpl<$Res>
    implements _$BasicDatetimeTimeQueriesCopyWith<$Res> {
  __$BasicDatetimeTimeQueriesCopyWithImpl(this._self, this._then);

  final _BasicDatetimeTimeQueries _self;
  final $Res Function(_BasicDatetimeTimeQueries) _then;

/// Create a copy of BasicDatetimeTimeQueries
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? t = null,}) {
  return _then(_BasicDatetimeTimeQueries(
t: null == t ? _self.t : t // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
