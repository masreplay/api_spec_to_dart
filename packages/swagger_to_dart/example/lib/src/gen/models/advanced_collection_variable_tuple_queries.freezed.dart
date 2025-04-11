// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_collection_variable_tuple_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedCollectionVariableTupleQueries {

/// items
@JsonKey(name: AdvancedCollectionVariableTupleQueries.itemsKey) List<String> get items;
/// Create a copy of AdvancedCollectionVariableTupleQueries
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdvancedCollectionVariableTupleQueriesCopyWith<AdvancedCollectionVariableTupleQueries> get copyWith => _$AdvancedCollectionVariableTupleQueriesCopyWithImpl<AdvancedCollectionVariableTupleQueries>(this as AdvancedCollectionVariableTupleQueries, _$identity);

  /// Serializes this AdvancedCollectionVariableTupleQueries to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdvancedCollectionVariableTupleQueries&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'AdvancedCollectionVariableTupleQueries(items: $items)';
}


}

/// @nodoc
abstract mixin class $AdvancedCollectionVariableTupleQueriesCopyWith<$Res>  {
  factory $AdvancedCollectionVariableTupleQueriesCopyWith(AdvancedCollectionVariableTupleQueries value, $Res Function(AdvancedCollectionVariableTupleQueries) _then) = _$AdvancedCollectionVariableTupleQueriesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: AdvancedCollectionVariableTupleQueries.itemsKey) List<String> items
});




}
/// @nodoc
class _$AdvancedCollectionVariableTupleQueriesCopyWithImpl<$Res>
    implements $AdvancedCollectionVariableTupleQueriesCopyWith<$Res> {
  _$AdvancedCollectionVariableTupleQueriesCopyWithImpl(this._self, this._then);

  final AdvancedCollectionVariableTupleQueries _self;
  final $Res Function(AdvancedCollectionVariableTupleQueries) _then;

/// Create a copy of AdvancedCollectionVariableTupleQueries
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _AdvancedCollectionVariableTupleQueries extends AdvancedCollectionVariableTupleQueries {
  const _AdvancedCollectionVariableTupleQueries({@JsonKey(name: AdvancedCollectionVariableTupleQueries.itemsKey) required final  List<String> items}): _items = items,super._();
  factory _AdvancedCollectionVariableTupleQueries.fromJson(Map<String, dynamic> json) => _$AdvancedCollectionVariableTupleQueriesFromJson(json);

/// items
 final  List<String> _items;
/// items
@override@JsonKey(name: AdvancedCollectionVariableTupleQueries.itemsKey) List<String> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of AdvancedCollectionVariableTupleQueries
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdvancedCollectionVariableTupleQueriesCopyWith<_AdvancedCollectionVariableTupleQueries> get copyWith => __$AdvancedCollectionVariableTupleQueriesCopyWithImpl<_AdvancedCollectionVariableTupleQueries>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdvancedCollectionVariableTupleQueriesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdvancedCollectionVariableTupleQueries&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'AdvancedCollectionVariableTupleQueries(items: $items)';
}


}

/// @nodoc
abstract mixin class _$AdvancedCollectionVariableTupleQueriesCopyWith<$Res> implements $AdvancedCollectionVariableTupleQueriesCopyWith<$Res> {
  factory _$AdvancedCollectionVariableTupleQueriesCopyWith(_AdvancedCollectionVariableTupleQueries value, $Res Function(_AdvancedCollectionVariableTupleQueries) _then) = __$AdvancedCollectionVariableTupleQueriesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: AdvancedCollectionVariableTupleQueries.itemsKey) List<String> items
});




}
/// @nodoc
class __$AdvancedCollectionVariableTupleQueriesCopyWithImpl<$Res>
    implements _$AdvancedCollectionVariableTupleQueriesCopyWith<$Res> {
  __$AdvancedCollectionVariableTupleQueriesCopyWithImpl(this._self, this._then);

  final _AdvancedCollectionVariableTupleQueries _self;
  final $Res Function(_AdvancedCollectionVariableTupleQueries) _then;

/// Create a copy of AdvancedCollectionVariableTupleQueries
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_AdvancedCollectionVariableTupleQueries(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
