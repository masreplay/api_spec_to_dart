// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_collection_set_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedCollectionSetQueries {

/// items
@JsonKey(name: AdvancedCollectionSetQueries.itemsKey) List<int> get items;
/// Create a copy of AdvancedCollectionSetQueries
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdvancedCollectionSetQueriesCopyWith<AdvancedCollectionSetQueries> get copyWith => _$AdvancedCollectionSetQueriesCopyWithImpl<AdvancedCollectionSetQueries>(this as AdvancedCollectionSetQueries, _$identity);

  /// Serializes this AdvancedCollectionSetQueries to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdvancedCollectionSetQueries&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'AdvancedCollectionSetQueries(items: $items)';
}


}

/// @nodoc
abstract mixin class $AdvancedCollectionSetQueriesCopyWith<$Res>  {
  factory $AdvancedCollectionSetQueriesCopyWith(AdvancedCollectionSetQueries value, $Res Function(AdvancedCollectionSetQueries) _then) = _$AdvancedCollectionSetQueriesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: AdvancedCollectionSetQueries.itemsKey) List<int> items
});




}
/// @nodoc
class _$AdvancedCollectionSetQueriesCopyWithImpl<$Res>
    implements $AdvancedCollectionSetQueriesCopyWith<$Res> {
  _$AdvancedCollectionSetQueriesCopyWithImpl(this._self, this._then);

  final AdvancedCollectionSetQueries _self;
  final $Res Function(AdvancedCollectionSetQueries) _then;

/// Create a copy of AdvancedCollectionSetQueries
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _AdvancedCollectionSetQueries extends AdvancedCollectionSetQueries {
  const _AdvancedCollectionSetQueries({@JsonKey(name: AdvancedCollectionSetQueries.itemsKey) final  List<int> items = const [1, 2, 3]}): _items = items,super._();
  factory _AdvancedCollectionSetQueries.fromJson(Map<String, dynamic> json) => _$AdvancedCollectionSetQueriesFromJson(json);

/// items
 final  List<int> _items;
/// items
@override@JsonKey(name: AdvancedCollectionSetQueries.itemsKey) List<int> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of AdvancedCollectionSetQueries
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdvancedCollectionSetQueriesCopyWith<_AdvancedCollectionSetQueries> get copyWith => __$AdvancedCollectionSetQueriesCopyWithImpl<_AdvancedCollectionSetQueries>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdvancedCollectionSetQueriesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdvancedCollectionSetQueries&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'AdvancedCollectionSetQueries(items: $items)';
}


}

/// @nodoc
abstract mixin class _$AdvancedCollectionSetQueriesCopyWith<$Res> implements $AdvancedCollectionSetQueriesCopyWith<$Res> {
  factory _$AdvancedCollectionSetQueriesCopyWith(_AdvancedCollectionSetQueries value, $Res Function(_AdvancedCollectionSetQueries) _then) = __$AdvancedCollectionSetQueriesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: AdvancedCollectionSetQueries.itemsKey) List<int> items
});




}
/// @nodoc
class __$AdvancedCollectionSetQueriesCopyWithImpl<$Res>
    implements _$AdvancedCollectionSetQueriesCopyWith<$Res> {
  __$AdvancedCollectionSetQueriesCopyWithImpl(this._self, this._then);

  final _AdvancedCollectionSetQueries _self;
  final $Res Function(_AdvancedCollectionSetQueries) _then;

/// Create a copy of AdvancedCollectionSetQueries
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_AdvancedCollectionSetQueries(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
