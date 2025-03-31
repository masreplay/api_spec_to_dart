// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemCreate {

/// title
@JsonKey(name: ItemCreate.titleKey) String get title;/// Description
@JsonKey(name: ItemCreate.descriptionKey) Stringdynamic? get description;
/// Create a copy of ItemCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemCreateCopyWith<ItemCreate> get copyWith => _$ItemCreateCopyWithImpl<ItemCreate>(this as ItemCreate, _$identity);

  /// Serializes this ItemCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemCreate&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.description, description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(description));

@override
String toString() {
  return 'ItemCreate(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $ItemCreateCopyWith<$Res>  {
  factory $ItemCreateCopyWith(ItemCreate value, $Res Function(ItemCreate) _then) = _$ItemCreateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: ItemCreate.titleKey) String title,@JsonKey(name: ItemCreate.descriptionKey) Stringdynamic? description
});




}
/// @nodoc
class _$ItemCreateCopyWithImpl<$Res>
    implements $ItemCreateCopyWith<$Res> {
  _$ItemCreateCopyWithImpl(this._self, this._then);

  final ItemCreate _self;
  final $Res Function(ItemCreate) _then;

/// Create a copy of ItemCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as Stringdynamic?,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _ItemCreate extends ItemCreate {
  const _ItemCreate({@JsonKey(name: ItemCreate.titleKey) required this.title, @JsonKey(name: ItemCreate.descriptionKey) required this.description}): super._();
  factory _ItemCreate.fromJson(Map<String, dynamic> json) => _$ItemCreateFromJson(json);

/// title
@override@JsonKey(name: ItemCreate.titleKey) final  String title;
/// Description
@override@JsonKey(name: ItemCreate.descriptionKey) final  Stringdynamic? description;

/// Create a copy of ItemCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemCreateCopyWith<_ItemCreate> get copyWith => __$ItemCreateCopyWithImpl<_ItemCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemCreate&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.description, description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(description));

@override
String toString() {
  return 'ItemCreate(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$ItemCreateCopyWith<$Res> implements $ItemCreateCopyWith<$Res> {
  factory _$ItemCreateCopyWith(_ItemCreate value, $Res Function(_ItemCreate) _then) = __$ItemCreateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: ItemCreate.titleKey) String title,@JsonKey(name: ItemCreate.descriptionKey) Stringdynamic? description
});




}
/// @nodoc
class __$ItemCreateCopyWithImpl<$Res>
    implements _$ItemCreateCopyWith<$Res> {
  __$ItemCreateCopyWithImpl(this._self, this._then);

  final _ItemCreate _self;
  final $Res Function(_ItemCreate) _then;

/// Create a copy of ItemCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = freezed,}) {
  return _then(_ItemCreate(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as Stringdynamic?,
  ));
}


}

// dart format on
