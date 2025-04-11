// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_collection_tuple_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedCollectionTupleQueries {

/// items
@JsonKey(name: AdvancedCollectionTupleQueries.itemsKey) List<dynamic> get items;
/// Create a copy of AdvancedCollectionTupleQueries
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdvancedCollectionTupleQueriesCopyWith<AdvancedCollectionTupleQueries> get copyWith => _$AdvancedCollectionTupleQueriesCopyWithImpl<AdvancedCollectionTupleQueries>(this as AdvancedCollectionTupleQueries, _$identity);

  /// Serializes this AdvancedCollectionTupleQueries to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdvancedCollectionTupleQueries&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'AdvancedCollectionTupleQueries(items: $items)';
}


}

/// @nodoc
abstract mixin class $AdvancedCollectionTupleQueriesCopyWith<$Res>  {
  factory $AdvancedCollectionTupleQueriesCopyWith(AdvancedCollectionTupleQueries value, $Res Function(AdvancedCollectionTupleQueries) _then) = _$AdvancedCollectionTupleQueriesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: AdvancedCollectionTupleQueries.itemsKey) List<dynamic> items
});




}
/// @nodoc
class _$AdvancedCollectionTupleQueriesCopyWithImpl<$Res>
    implements $AdvancedCollectionTupleQueriesCopyWith<$Res> {
  _$AdvancedCollectionTupleQueriesCopyWithImpl(this._self, this._then);

  final AdvancedCollectionTupleQueries _self;
  final $Res Function(AdvancedCollectionTupleQueries) _then;

/// Create a copy of AdvancedCollectionTupleQueries
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _AdvancedCollectionTupleQueries extends AdvancedCollectionTupleQueries {
  const _AdvancedCollectionTupleQueries({@JsonKey(name: AdvancedCollectionTupleQueries.itemsKey) required final  List<dynamic> items}): _items = items,super._();
  factory _AdvancedCollectionTupleQueries.fromJson(Map<String, dynamic> json) => _$AdvancedCollectionTupleQueriesFromJson(json);

/// items
 final  List<dynamic> _items;
/// items
@override@JsonKey(name: AdvancedCollectionTupleQueries.itemsKey) List<dynamic> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of AdvancedCollectionTupleQueries
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdvancedCollectionTupleQueriesCopyWith<_AdvancedCollectionTupleQueries> get copyWith => __$AdvancedCollectionTupleQueriesCopyWithImpl<_AdvancedCollectionTupleQueries>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdvancedCollectionTupleQueriesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdvancedCollectionTupleQueries&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'AdvancedCollectionTupleQueries(items: $items)';
}


}

/// @nodoc
abstract mixin class _$AdvancedCollectionTupleQueriesCopyWith<$Res> implements $AdvancedCollectionTupleQueriesCopyWith<$Res> {
  factory _$AdvancedCollectionTupleQueriesCopyWith(_AdvancedCollectionTupleQueries value, $Res Function(_AdvancedCollectionTupleQueries) _then) = __$AdvancedCollectionTupleQueriesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: AdvancedCollectionTupleQueries.itemsKey) List<dynamic> items
});




}
/// @nodoc
class __$AdvancedCollectionTupleQueriesCopyWithImpl<$Res>
    implements _$AdvancedCollectionTupleQueriesCopyWith<$Res> {
  __$AdvancedCollectionTupleQueriesCopyWithImpl(this._self, this._then);

  final _AdvancedCollectionTupleQueries _self;
  final $Res Function(_AdvancedCollectionTupleQueries) _then;

/// Create a copy of AdvancedCollectionTupleQueries
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_AdvancedCollectionTupleQueries(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}


}

// dart format on
