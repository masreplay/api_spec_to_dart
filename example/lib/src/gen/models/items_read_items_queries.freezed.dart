// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_read_items_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemsReadItemsQueries {

/// skip
@JsonKey(name: ItemsReadItemsQueries.skipKey) int get skip;/// limit
@JsonKey(name: ItemsReadItemsQueries.limitKey) int get limit;
/// Create a copy of ItemsReadItemsQueries
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemsReadItemsQueriesCopyWith<ItemsReadItemsQueries> get copyWith => _$ItemsReadItemsQueriesCopyWithImpl<ItemsReadItemsQueries>(this as ItemsReadItemsQueries, _$identity);

  /// Serializes this ItemsReadItemsQueries to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemsReadItemsQueries&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,skip,limit);

@override
String toString() {
  return 'ItemsReadItemsQueries(skip: $skip, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $ItemsReadItemsQueriesCopyWith<$Res>  {
  factory $ItemsReadItemsQueriesCopyWith(ItemsReadItemsQueries value, $Res Function(ItemsReadItemsQueries) _then) = _$ItemsReadItemsQueriesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: ItemsReadItemsQueries.skipKey) int skip,@JsonKey(name: ItemsReadItemsQueries.limitKey) int limit
});




}
/// @nodoc
class _$ItemsReadItemsQueriesCopyWithImpl<$Res>
    implements $ItemsReadItemsQueriesCopyWith<$Res> {
  _$ItemsReadItemsQueriesCopyWithImpl(this._self, this._then);

  final ItemsReadItemsQueries _self;
  final $Res Function(ItemsReadItemsQueries) _then;

/// Create a copy of ItemsReadItemsQueries
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
class _ItemsReadItemsQueries extends ItemsReadItemsQueries {
  const _ItemsReadItemsQueries({@JsonKey(name: ItemsReadItemsQueries.skipKey) this.skip = 0, @JsonKey(name: ItemsReadItemsQueries.limitKey) this.limit = 100}): super._();
  factory _ItemsReadItemsQueries.fromJson(Map<String, dynamic> json) => _$ItemsReadItemsQueriesFromJson(json);

/// skip
@override@JsonKey(name: ItemsReadItemsQueries.skipKey) final  int skip;
/// limit
@override@JsonKey(name: ItemsReadItemsQueries.limitKey) final  int limit;

/// Create a copy of ItemsReadItemsQueries
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemsReadItemsQueriesCopyWith<_ItemsReadItemsQueries> get copyWith => __$ItemsReadItemsQueriesCopyWithImpl<_ItemsReadItemsQueries>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemsReadItemsQueriesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemsReadItemsQueries&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,skip,limit);

@override
String toString() {
  return 'ItemsReadItemsQueries(skip: $skip, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$ItemsReadItemsQueriesCopyWith<$Res> implements $ItemsReadItemsQueriesCopyWith<$Res> {
  factory _$ItemsReadItemsQueriesCopyWith(_ItemsReadItemsQueries value, $Res Function(_ItemsReadItemsQueries) _then) = __$ItemsReadItemsQueriesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: ItemsReadItemsQueries.skipKey) int skip,@JsonKey(name: ItemsReadItemsQueries.limitKey) int limit
});




}
/// @nodoc
class __$ItemsReadItemsQueriesCopyWithImpl<$Res>
    implements _$ItemsReadItemsQueriesCopyWith<$Res> {
  __$ItemsReadItemsQueriesCopyWithImpl(this._self, this._then);

  final _ItemsReadItemsQueries _self;
  final $Res Function(_ItemsReadItemsQueries) _then;

/// Create a copy of ItemsReadItemsQueries
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? skip = null,Object? limit = null,}) {
  return _then(_ItemsReadItemsQueries(
skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
