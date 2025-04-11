// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_param_query_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidationParamQueryQueries {

/// Q, Search query string (alphanumeric with hyphens and underscores)
@JsonKey(name: ValidationParamQueryQueries.qKey) String? get q;/// skip, Number of items to skip
@JsonKey(name: ValidationParamQueryQueries.skipKey) int get skip;/// limit, Maximum number of items to return (1-100)
@JsonKey(name: ValidationParamQueryQueries.limitKey) int get limit;
/// Create a copy of ValidationParamQueryQueries
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidationParamQueryQueriesCopyWith<ValidationParamQueryQueries> get copyWith => _$ValidationParamQueryQueriesCopyWithImpl<ValidationParamQueryQueries>(this as ValidationParamQueryQueries, _$identity);

  /// Serializes this ValidationParamQueryQueries to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidationParamQueryQueries&&(identical(other.q, q) || other.q == q)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,skip,limit);

@override
String toString() {
  return 'ValidationParamQueryQueries(q: $q, skip: $skip, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $ValidationParamQueryQueriesCopyWith<$Res>  {
  factory $ValidationParamQueryQueriesCopyWith(ValidationParamQueryQueries value, $Res Function(ValidationParamQueryQueries) _then) = _$ValidationParamQueryQueriesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: ValidationParamQueryQueries.qKey) String? q,@JsonKey(name: ValidationParamQueryQueries.skipKey) int skip,@JsonKey(name: ValidationParamQueryQueries.limitKey) int limit
});




}
/// @nodoc
class _$ValidationParamQueryQueriesCopyWithImpl<$Res>
    implements $ValidationParamQueryQueriesCopyWith<$Res> {
  _$ValidationParamQueryQueriesCopyWithImpl(this._self, this._then);

  final ValidationParamQueryQueries _self;
  final $Res Function(ValidationParamQueryQueries) _then;

/// Create a copy of ValidationParamQueryQueries
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? q = freezed,Object? skip = null,Object? limit = null,}) {
  return _then(_self.copyWith(
q: freezed == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String?,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _ValidationParamQueryQueries extends ValidationParamQueryQueries {
  const _ValidationParamQueryQueries({@JsonKey(name: ValidationParamQueryQueries.qKey) required this.q, @JsonKey(name: ValidationParamQueryQueries.skipKey) this.skip = 0, @JsonKey(name: ValidationParamQueryQueries.limitKey) this.limit = 10}): super._();
  factory _ValidationParamQueryQueries.fromJson(Map<String, dynamic> json) => _$ValidationParamQueryQueriesFromJson(json);

/// Q, Search query string (alphanumeric with hyphens and underscores)
@override@JsonKey(name: ValidationParamQueryQueries.qKey) final  String? q;
/// skip, Number of items to skip
@override@JsonKey(name: ValidationParamQueryQueries.skipKey) final  int skip;
/// limit, Maximum number of items to return (1-100)
@override@JsonKey(name: ValidationParamQueryQueries.limitKey) final  int limit;

/// Create a copy of ValidationParamQueryQueries
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValidationParamQueryQueriesCopyWith<_ValidationParamQueryQueries> get copyWith => __$ValidationParamQueryQueriesCopyWithImpl<_ValidationParamQueryQueries>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ValidationParamQueryQueriesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ValidationParamQueryQueries&&(identical(other.q, q) || other.q == q)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,skip,limit);

@override
String toString() {
  return 'ValidationParamQueryQueries(q: $q, skip: $skip, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$ValidationParamQueryQueriesCopyWith<$Res> implements $ValidationParamQueryQueriesCopyWith<$Res> {
  factory _$ValidationParamQueryQueriesCopyWith(_ValidationParamQueryQueries value, $Res Function(_ValidationParamQueryQueries) _then) = __$ValidationParamQueryQueriesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: ValidationParamQueryQueries.qKey) String? q,@JsonKey(name: ValidationParamQueryQueries.skipKey) int skip,@JsonKey(name: ValidationParamQueryQueries.limitKey) int limit
});




}
/// @nodoc
class __$ValidationParamQueryQueriesCopyWithImpl<$Res>
    implements _$ValidationParamQueryQueriesCopyWith<$Res> {
  __$ValidationParamQueryQueriesCopyWithImpl(this._self, this._then);

  final _ValidationParamQueryQueries _self;
  final $Res Function(_ValidationParamQueryQueries) _then;

/// Create a copy of ValidationParamQueryQueries
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? q = freezed,Object? skip = null,Object? limit = null,}) {
  return _then(_ValidationParamQueryQueries(
q: freezed == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String?,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
