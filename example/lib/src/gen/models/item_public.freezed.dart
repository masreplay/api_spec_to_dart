// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemPublic {

/// title
@JsonKey(name: ItemPublic.titleKey) String get title;/// Description
@JsonKey(name: ItemPublic.descriptionKey) Stringdynamic? get description;/// id
@JsonKey(name: ItemPublic.idKey) String get id;/// owner_id
@JsonKey(name: ItemPublic.ownerIdKey) String get ownerId;
/// Create a copy of ItemPublic
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemPublicCopyWith<ItemPublic> get copyWith => _$ItemPublicCopyWithImpl<ItemPublic>(this as ItemPublic, _$identity);

  /// Serializes this ItemPublic to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemPublic&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.description, description)&&(identical(other.id, id) || other.id == id)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(description),id,ownerId);

@override
String toString() {
  return 'ItemPublic(title: $title, description: $description, id: $id, ownerId: $ownerId)';
}


}

/// @nodoc
abstract mixin class $ItemPublicCopyWith<$Res>  {
  factory $ItemPublicCopyWith(ItemPublic value, $Res Function(ItemPublic) _then) = _$ItemPublicCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: ItemPublic.titleKey) String title,@JsonKey(name: ItemPublic.descriptionKey) Stringdynamic? description,@JsonKey(name: ItemPublic.idKey) String id,@JsonKey(name: ItemPublic.ownerIdKey) String ownerId
});




}
/// @nodoc
class _$ItemPublicCopyWithImpl<$Res>
    implements $ItemPublicCopyWith<$Res> {
  _$ItemPublicCopyWithImpl(this._self, this._then);

  final ItemPublic _self;
  final $Res Function(ItemPublic) _then;

/// Create a copy of ItemPublic
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = freezed,Object? id = null,Object? ownerId = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as Stringdynamic?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _ItemPublic extends ItemPublic {
  const _ItemPublic({@JsonKey(name: ItemPublic.titleKey) required this.title, @JsonKey(name: ItemPublic.descriptionKey) required this.description, @JsonKey(name: ItemPublic.idKey) required this.id, @JsonKey(name: ItemPublic.ownerIdKey) required this.ownerId}): super._();
  factory _ItemPublic.fromJson(Map<String, dynamic> json) => _$ItemPublicFromJson(json);

/// title
@override@JsonKey(name: ItemPublic.titleKey) final  String title;
/// Description
@override@JsonKey(name: ItemPublic.descriptionKey) final  Stringdynamic? description;
/// id
@override@JsonKey(name: ItemPublic.idKey) final  String id;
/// owner_id
@override@JsonKey(name: ItemPublic.ownerIdKey) final  String ownerId;

/// Create a copy of ItemPublic
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemPublicCopyWith<_ItemPublic> get copyWith => __$ItemPublicCopyWithImpl<_ItemPublic>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemPublicToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemPublic&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.description, description)&&(identical(other.id, id) || other.id == id)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(description),id,ownerId);

@override
String toString() {
  return 'ItemPublic(title: $title, description: $description, id: $id, ownerId: $ownerId)';
}


}

/// @nodoc
abstract mixin class _$ItemPublicCopyWith<$Res> implements $ItemPublicCopyWith<$Res> {
  factory _$ItemPublicCopyWith(_ItemPublic value, $Res Function(_ItemPublic) _then) = __$ItemPublicCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: ItemPublic.titleKey) String title,@JsonKey(name: ItemPublic.descriptionKey) Stringdynamic? description,@JsonKey(name: ItemPublic.idKey) String id,@JsonKey(name: ItemPublic.ownerIdKey) String ownerId
});




}
/// @nodoc
class __$ItemPublicCopyWithImpl<$Res>
    implements _$ItemPublicCopyWith<$Res> {
  __$ItemPublicCopyWithImpl(this._self, this._then);

  final _ItemPublic _self;
  final $Res Function(_ItemPublic) _then;

/// Create a copy of ItemPublic
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = freezed,Object? id = null,Object? ownerId = null,}) {
  return _then(_ItemPublic(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as Stringdynamic?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
