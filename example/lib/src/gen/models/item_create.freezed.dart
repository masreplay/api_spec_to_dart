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
ItemCreate _$ItemCreateFromJson(
  Map<String, dynamic> json
) {
    return ItemCreateFallback.fromJson(
      json
    );
}

/// @nodoc
mixin _$ItemCreate {



  /// Serializes this ItemCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemCreate);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemCreate()';
}


}

/// @nodoc
class $ItemCreateCopyWith<$Res>  {
$ItemCreateCopyWith(ItemCreate _, $Res Function(ItemCreate) __);
}


/// @nodoc
@JsonSerializable()

class ItemCreateFallback implements ItemCreate {
  const ItemCreateFallback();
  factory ItemCreateFallback.fromJson(Map<String, dynamic> json) => _$ItemCreateFallbackFromJson(json);




@override
Map<String, dynamic> toJson() {
  return _$ItemCreateFallbackToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemCreateFallback);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemCreate.fallback()';
}


}

/// @nodoc
class $ItemCreateFallbackCopyWith<$Res> implements $ItemCreateCopyWith<$Res> {
$ItemCreateFallbackCopyWith(ItemCreateFallback _, $Res Function(ItemCreateFallback) __);
}
/// @nodoc
class _$ItemCreateFallbackCopyWithImpl<$Res>
    implements $ItemCreateFallbackCopyWith<$Res> {
  _$ItemCreateFallbackCopyWithImpl(this._self, this._then);

  final ItemCreateFallback _self;
  final $Res Function(ItemCreateFallback) _then;




}

// dart format on
