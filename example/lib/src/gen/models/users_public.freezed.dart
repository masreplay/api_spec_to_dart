// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UsersPublic {

/// data
@JsonKey(name: UsersPublic.dataKey) List<UserPublic> get data;/// count
@JsonKey(name: UsersPublic.countKey) int get count;
/// Create a copy of UsersPublic
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsersPublicCopyWith<UsersPublic> get copyWith => _$UsersPublicCopyWithImpl<UsersPublic>(this as UsersPublic, _$identity);

  /// Serializes this UsersPublic to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsersPublic&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),count);

@override
String toString() {
  return 'UsersPublic(data: $data, count: $count)';
}


}

/// @nodoc
abstract mixin class $UsersPublicCopyWith<$Res>  {
  factory $UsersPublicCopyWith(UsersPublic value, $Res Function(UsersPublic) _then) = _$UsersPublicCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: UsersPublic.dataKey) List<UserPublic> data,@JsonKey(name: UsersPublic.countKey) int count
});




}
/// @nodoc
class _$UsersPublicCopyWithImpl<$Res>
    implements $UsersPublicCopyWith<$Res> {
  _$UsersPublicCopyWithImpl(this._self, this._then);

  final UsersPublic _self;
  final $Res Function(UsersPublic) _then;

/// Create a copy of UsersPublic
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? count = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<UserPublic>,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _UsersPublic extends UsersPublic {
  const _UsersPublic({@JsonKey(name: UsersPublic.dataKey) required final  List<UserPublic> data, @JsonKey(name: UsersPublic.countKey) required this.count}): _data = data,super._();
  factory _UsersPublic.fromJson(Map<String, dynamic> json) => _$UsersPublicFromJson(json);

/// data
 final  List<UserPublic> _data;
/// data
@override@JsonKey(name: UsersPublic.dataKey) List<UserPublic> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

/// count
@override@JsonKey(name: UsersPublic.countKey) final  int count;

/// Create a copy of UsersPublic
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsersPublicCopyWith<_UsersPublic> get copyWith => __$UsersPublicCopyWithImpl<_UsersPublic>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsersPublicToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsersPublic&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),count);

@override
String toString() {
  return 'UsersPublic(data: $data, count: $count)';
}


}

/// @nodoc
abstract mixin class _$UsersPublicCopyWith<$Res> implements $UsersPublicCopyWith<$Res> {
  factory _$UsersPublicCopyWith(_UsersPublic value, $Res Function(_UsersPublic) _then) = __$UsersPublicCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: UsersPublic.dataKey) List<UserPublic> data,@JsonKey(name: UsersPublic.countKey) int count
});




}
/// @nodoc
class __$UsersPublicCopyWithImpl<$Res>
    implements _$UsersPublicCopyWith<$Res> {
  __$UsersPublicCopyWithImpl(this._self, this._then);

  final _UsersPublic _self;
  final $Res Function(_UsersPublic) _then;

/// Create a copy of UsersPublic
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? count = null,}) {
  return _then(_UsersPublic(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<UserPublic>,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
