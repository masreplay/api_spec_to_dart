// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_depends_query_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedDependsQueryQueries {

/// Q, Optional search string
@JsonKey(name: AdvancedDependsQueryQueries.qKey) String? get q;/// skip, Number of items to skip
@JsonKey(name: AdvancedDependsQueryQueries.skipKey) int get skip;/// limit, Max items to return
@JsonKey(name: AdvancedDependsQueryQueries.limitKey) int get limit;
/// Create a copy of AdvancedDependsQueryQueries
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdvancedDependsQueryQueriesCopyWith<AdvancedDependsQueryQueries> get copyWith => _$AdvancedDependsQueryQueriesCopyWithImpl<AdvancedDependsQueryQueries>(this as AdvancedDependsQueryQueries, _$identity);

  /// Serializes this AdvancedDependsQueryQueries to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdvancedDependsQueryQueries&&(identical(other.q, q) || other.q == q)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,skip,limit);

@override
String toString() {
  return 'AdvancedDependsQueryQueries(q: $q, skip: $skip, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $AdvancedDependsQueryQueriesCopyWith<$Res>  {
  factory $AdvancedDependsQueryQueriesCopyWith(AdvancedDependsQueryQueries value, $Res Function(AdvancedDependsQueryQueries) _then) = _$AdvancedDependsQueryQueriesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: AdvancedDependsQueryQueries.qKey) String? q,@JsonKey(name: AdvancedDependsQueryQueries.skipKey) int skip,@JsonKey(name: AdvancedDependsQueryQueries.limitKey) int limit
});




}
/// @nodoc
class _$AdvancedDependsQueryQueriesCopyWithImpl<$Res>
    implements $AdvancedDependsQueryQueriesCopyWith<$Res> {
  _$AdvancedDependsQueryQueriesCopyWithImpl(this._self, this._then);

  final AdvancedDependsQueryQueries _self;
  final $Res Function(AdvancedDependsQueryQueries) _then;

/// Create a copy of AdvancedDependsQueryQueries
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
class _AdvancedDependsQueryQueries extends AdvancedDependsQueryQueries {
  const _AdvancedDependsQueryQueries({@JsonKey(name: AdvancedDependsQueryQueries.qKey) required this.q, @JsonKey(name: AdvancedDependsQueryQueries.skipKey) this.skip = 0, @JsonKey(name: AdvancedDependsQueryQueries.limitKey) this.limit = 100}): super._();
  factory _AdvancedDependsQueryQueries.fromJson(Map<String, dynamic> json) => _$AdvancedDependsQueryQueriesFromJson(json);

/// Q, Optional search string
@override@JsonKey(name: AdvancedDependsQueryQueries.qKey) final  String? q;
/// skip, Number of items to skip
@override@JsonKey(name: AdvancedDependsQueryQueries.skipKey) final  int skip;
/// limit, Max items to return
@override@JsonKey(name: AdvancedDependsQueryQueries.limitKey) final  int limit;

/// Create a copy of AdvancedDependsQueryQueries
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdvancedDependsQueryQueriesCopyWith<_AdvancedDependsQueryQueries> get copyWith => __$AdvancedDependsQueryQueriesCopyWithImpl<_AdvancedDependsQueryQueries>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdvancedDependsQueryQueriesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdvancedDependsQueryQueries&&(identical(other.q, q) || other.q == q)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,skip,limit);

@override
String toString() {
  return 'AdvancedDependsQueryQueries(q: $q, skip: $skip, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$AdvancedDependsQueryQueriesCopyWith<$Res> implements $AdvancedDependsQueryQueriesCopyWith<$Res> {
  factory _$AdvancedDependsQueryQueriesCopyWith(_AdvancedDependsQueryQueries value, $Res Function(_AdvancedDependsQueryQueries) _then) = __$AdvancedDependsQueryQueriesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: AdvancedDependsQueryQueries.qKey) String? q,@JsonKey(name: AdvancedDependsQueryQueries.skipKey) int skip,@JsonKey(name: AdvancedDependsQueryQueries.limitKey) int limit
});




}
/// @nodoc
class __$AdvancedDependsQueryQueriesCopyWithImpl<$Res>
    implements _$AdvancedDependsQueryQueriesCopyWith<$Res> {
  __$AdvancedDependsQueryQueriesCopyWithImpl(this._self, this._then);

  final _AdvancedDependsQueryQueries _self;
  final $Res Function(_AdvancedDependsQueryQueries) _then;

/// Create a copy of AdvancedDependsQueryQueries
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? q = freezed,Object? skip = null,Object? limit = null,}) {
  return _then(_AdvancedDependsQueryQueries(
q: freezed == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String?,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
