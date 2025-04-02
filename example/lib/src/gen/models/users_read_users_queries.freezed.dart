// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_read_users_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UsersReadUsersQueries {

/// skip
@JsonKey(name: UsersReadUsersQueries.skipKey) int get skip;/// limit
@JsonKey(name: UsersReadUsersQueries.limitKey) int get limit;
/// Create a copy of UsersReadUsersQueries
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsersReadUsersQueriesCopyWith<UsersReadUsersQueries> get copyWith => _$UsersReadUsersQueriesCopyWithImpl<UsersReadUsersQueries>(this as UsersReadUsersQueries, _$identity);

  /// Serializes this UsersReadUsersQueries to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsersReadUsersQueries&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,skip,limit);

@override
String toString() {
  return 'UsersReadUsersQueries(skip: $skip, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $UsersReadUsersQueriesCopyWith<$Res>  {
  factory $UsersReadUsersQueriesCopyWith(UsersReadUsersQueries value, $Res Function(UsersReadUsersQueries) _then) = _$UsersReadUsersQueriesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: UsersReadUsersQueries.skipKey) int skip,@JsonKey(name: UsersReadUsersQueries.limitKey) int limit
});




}
/// @nodoc
class _$UsersReadUsersQueriesCopyWithImpl<$Res>
    implements $UsersReadUsersQueriesCopyWith<$Res> {
  _$UsersReadUsersQueriesCopyWithImpl(this._self, this._then);

  final UsersReadUsersQueries _self;
  final $Res Function(UsersReadUsersQueries) _then;

/// Create a copy of UsersReadUsersQueries
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? skip = null,Object? limit = null,}) {
  return _then(_self.copyWith(
skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _UsersReadUsersQueries extends UsersReadUsersQueries {
  const _UsersReadUsersQueries({@JsonKey(name: UsersReadUsersQueries.skipKey) this.skip = 0, @JsonKey(name: UsersReadUsersQueries.limitKey) this.limit = 100}): super._();
  factory _UsersReadUsersQueries.fromJson(Map<String, dynamic> json) => _$UsersReadUsersQueriesFromJson(json);

/// skip
@override@JsonKey(name: UsersReadUsersQueries.skipKey) final  int skip;
/// limit
@override@JsonKey(name: UsersReadUsersQueries.limitKey) final  int limit;

/// Create a copy of UsersReadUsersQueries
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsersReadUsersQueriesCopyWith<_UsersReadUsersQueries> get copyWith => __$UsersReadUsersQueriesCopyWithImpl<_UsersReadUsersQueries>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsersReadUsersQueriesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsersReadUsersQueries&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,skip,limit);

@override
String toString() {
  return 'UsersReadUsersQueries(skip: $skip, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$UsersReadUsersQueriesCopyWith<$Res> implements $UsersReadUsersQueriesCopyWith<$Res> {
  factory _$UsersReadUsersQueriesCopyWith(_UsersReadUsersQueries value, $Res Function(_UsersReadUsersQueries) _then) = __$UsersReadUsersQueriesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: UsersReadUsersQueries.skipKey) int skip,@JsonKey(name: UsersReadUsersQueries.limitKey) int limit
});




}
/// @nodoc
class __$UsersReadUsersQueriesCopyWithImpl<$Res>
    implements _$UsersReadUsersQueriesCopyWith<$Res> {
  __$UsersReadUsersQueriesCopyWithImpl(this._self, this._then);

  final _UsersReadUsersQueries _self;
  final $Res Function(_UsersReadUsersQueries) _then;

/// Create a copy of UsersReadUsersQueries
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? skip = null,Object? limit = null,}) {
  return _then(_UsersReadUsersQueries(
skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
