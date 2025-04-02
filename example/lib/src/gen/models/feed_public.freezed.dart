// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeedPublic {

/// count
@JsonKey(name: FeedPublic.countKey) int get count;/// data
@JsonKey(name: FeedPublic.dataKey) List<DataUnionResponse> get data;
/// Create a copy of FeedPublic
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedPublicCopyWith<FeedPublic> get copyWith => _$FeedPublicCopyWithImpl<FeedPublic>(this as FeedPublic, _$identity);

  /// Serializes this FeedPublic to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedPublic&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'FeedPublic(count: $count, data: $data)';
}


}

/// @nodoc
abstract mixin class $FeedPublicCopyWith<$Res>  {
  factory $FeedPublicCopyWith(FeedPublic value, $Res Function(FeedPublic) _then) = _$FeedPublicCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: FeedPublic.countKey) int count,@JsonKey(name: FeedPublic.dataKey) List<DataUnionResponse> data
});




}
/// @nodoc
class _$FeedPublicCopyWithImpl<$Res>
    implements $FeedPublicCopyWith<$Res> {
  _$FeedPublicCopyWithImpl(this._self, this._then);

  final FeedPublic _self;
  final $Res Function(FeedPublic) _then;

/// Create a copy of FeedPublic
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? data = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<DataUnionResponse>,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _FeedPublic extends FeedPublic {
  const _FeedPublic({@JsonKey(name: FeedPublic.countKey) required this.count, @JsonKey(name: FeedPublic.dataKey) required final  List<DataUnionResponse> data}): _data = data,super._();
  factory _FeedPublic.fromJson(Map<String, dynamic> json) => _$FeedPublicFromJson(json);

/// count
@override@JsonKey(name: FeedPublic.countKey) final  int count;
/// data
 final  List<DataUnionResponse> _data;
/// data
@override@JsonKey(name: FeedPublic.dataKey) List<DataUnionResponse> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of FeedPublic
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedPublicCopyWith<_FeedPublic> get copyWith => __$FeedPublicCopyWithImpl<_FeedPublic>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedPublicToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedPublic&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'FeedPublic(count: $count, data: $data)';
}


}

/// @nodoc
abstract mixin class _$FeedPublicCopyWith<$Res> implements $FeedPublicCopyWith<$Res> {
  factory _$FeedPublicCopyWith(_FeedPublic value, $Res Function(_FeedPublic) _then) = __$FeedPublicCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: FeedPublic.countKey) int count,@JsonKey(name: FeedPublic.dataKey) List<DataUnionResponse> data
});




}
/// @nodoc
class __$FeedPublicCopyWithImpl<$Res>
    implements _$FeedPublicCopyWith<$Res> {
  __$FeedPublicCopyWithImpl(this._self, this._then);

  final _FeedPublic _self;
  final $Res Function(_FeedPublic) _then;

/// Create a copy of FeedPublic
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? data = null,}) {
  return _then(_FeedPublic(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<DataUnionResponse>,
  ));
}


}

// dart format on
