// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemsPublic {

/// data
@JsonKey(name: ItemsPublic.dataKey) List<ItemPublic> get data;/// count
@JsonKey(name: ItemsPublic.countKey) int get count;
/// Create a copy of ItemsPublic
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemsPublicCopyWith<ItemsPublic> get copyWith => _$ItemsPublicCopyWithImpl<ItemsPublic>(this as ItemsPublic, _$identity);

  /// Serializes this ItemsPublic to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemsPublic&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),count);

@override
String toString() {
  return 'ItemsPublic(data: $data, count: $count)';
}


}

/// @nodoc
abstract mixin class $ItemsPublicCopyWith<$Res>  {
  factory $ItemsPublicCopyWith(ItemsPublic value, $Res Function(ItemsPublic) _then) = _$ItemsPublicCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: ItemsPublic.dataKey) List<ItemPublic> data,@JsonKey(name: ItemsPublic.countKey) int count
});




}
/// @nodoc
class _$ItemsPublicCopyWithImpl<$Res>
    implements $ItemsPublicCopyWith<$Res> {
  _$ItemsPublicCopyWithImpl(this._self, this._then);

  final ItemsPublic _self;
  final $Res Function(ItemsPublic) _then;

/// Create a copy of ItemsPublic
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? count = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ItemPublic>,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _ItemsPublic extends ItemsPublic {
  const _ItemsPublic({@JsonKey(name: ItemsPublic.dataKey) required final  List<ItemPublic> data, @JsonKey(name: ItemsPublic.countKey) required this.count}): _data = data,super._();
  factory _ItemsPublic.fromJson(Map<String, dynamic> json) => _$ItemsPublicFromJson(json);

/// data
 final  List<ItemPublic> _data;
/// data
@override@JsonKey(name: ItemsPublic.dataKey) List<ItemPublic> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

/// count
@override@JsonKey(name: ItemsPublic.countKey) final  int count;

/// Create a copy of ItemsPublic
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemsPublicCopyWith<_ItemsPublic> get copyWith => __$ItemsPublicCopyWithImpl<_ItemsPublic>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemsPublicToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemsPublic&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),count);

@override
String toString() {
  return 'ItemsPublic(data: $data, count: $count)';
}


}

/// @nodoc
abstract mixin class _$ItemsPublicCopyWith<$Res> implements $ItemsPublicCopyWith<$Res> {
  factory _$ItemsPublicCopyWith(_ItemsPublic value, $Res Function(_ItemsPublic) _then) = __$ItemsPublicCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: ItemsPublic.dataKey) List<ItemPublic> data,@JsonKey(name: ItemsPublic.countKey) int count
});




}
/// @nodoc
class __$ItemsPublicCopyWithImpl<$Res>
    implements _$ItemsPublicCopyWith<$Res> {
  __$ItemsPublicCopyWithImpl(this._self, this._then);

  final _ItemsPublic _self;
  final $Res Function(_ItemsPublic) _then;

/// Create a copy of ItemsPublic
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? count = null,}) {
  return _then(_ItemsPublic(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ItemPublic>,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
