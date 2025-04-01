// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemUpdate {

/// Title
@JsonKey(name: ItemUpdate.titleKey) String? get title;/// Description
@JsonKey(name: ItemUpdate.descriptionKey) String? get description;
/// Create a copy of ItemUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemUpdateCopyWith<ItemUpdate> get copyWith => _$ItemUpdateCopyWithImpl<ItemUpdate>(this as ItemUpdate, _$identity);

  /// Serializes this ItemUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemUpdate&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description);

@override
String toString() {
  return 'ItemUpdate(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $ItemUpdateCopyWith<$Res>  {
  factory $ItemUpdateCopyWith(ItemUpdate value, $Res Function(ItemUpdate) _then) = _$ItemUpdateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: ItemUpdate.titleKey) String? title,@JsonKey(name: ItemUpdate.descriptionKey) String? description
});




}
/// @nodoc
class _$ItemUpdateCopyWithImpl<$Res>
    implements $ItemUpdateCopyWith<$Res> {
  _$ItemUpdateCopyWithImpl(this._self, this._then);

  final ItemUpdate _self;
  final $Res Function(ItemUpdate) _then;

/// Create a copy of ItemUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _ItemUpdate extends ItemUpdate {
  const _ItemUpdate({@JsonKey(name: ItemUpdate.titleKey) required this.title, @JsonKey(name: ItemUpdate.descriptionKey) required this.description}): super._();
  factory _ItemUpdate.fromJson(Map<String, dynamic> json) => _$ItemUpdateFromJson(json);

/// Title
@override@JsonKey(name: ItemUpdate.titleKey) final  String? title;
/// Description
@override@JsonKey(name: ItemUpdate.descriptionKey) final  String? description;

/// Create a copy of ItemUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemUpdateCopyWith<_ItemUpdate> get copyWith => __$ItemUpdateCopyWithImpl<_ItemUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemUpdate&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description);

@override
String toString() {
  return 'ItemUpdate(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$ItemUpdateCopyWith<$Res> implements $ItemUpdateCopyWith<$Res> {
  factory _$ItemUpdateCopyWith(_ItemUpdate value, $Res Function(_ItemUpdate) _then) = __$ItemUpdateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: ItemUpdate.titleKey) String? title,@JsonKey(name: ItemUpdate.descriptionKey) String? description
});




}
/// @nodoc
class __$ItemUpdateCopyWithImpl<$Res>
    implements _$ItemUpdateCopyWith<$Res> {
  __$ItemUpdateCopyWithImpl(this._self, this._then);

  final _ItemUpdate _self;
  final $Res Function(_ItemUpdate) _then;

/// Create a copy of ItemUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? description = freezed,}) {
  return _then(_ItemUpdate(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
