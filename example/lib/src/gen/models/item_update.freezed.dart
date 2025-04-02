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
ItemUpdate _$ItemUpdateFromJson(
  Map<String, dynamic> json
) {
    return ItemUpdateFallback.fromJson(
      json
    );
}

/// @nodoc
mixin _$ItemUpdate {



  /// Serializes this ItemUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemUpdate);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemUpdate()';
}


}

/// @nodoc
class $ItemUpdateCopyWith<$Res>  {
$ItemUpdateCopyWith(ItemUpdate _, $Res Function(ItemUpdate) __);
}


/// @nodoc
@JsonSerializable()

class ItemUpdateFallback implements ItemUpdate {
  const ItemUpdateFallback();
  factory ItemUpdateFallback.fromJson(Map<String, dynamic> json) => _$ItemUpdateFallbackFromJson(json);




@override
Map<String, dynamic> toJson() {
  return _$ItemUpdateFallbackToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemUpdateFallback);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemUpdate.fallback()';
}


}

/// @nodoc
class $ItemUpdateFallbackCopyWith<$Res> implements $ItemUpdateCopyWith<$Res> {
$ItemUpdateFallbackCopyWith(ItemUpdateFallback _, $Res Function(ItemUpdateFallback) __);
}
/// @nodoc
class _$ItemUpdateFallbackCopyWithImpl<$Res>
    implements $ItemUpdateFallbackCopyWith<$Res> {
  _$ItemUpdateFallbackCopyWithImpl(this._self, this._then);

  final ItemUpdateFallback _self;
  final $Res Function(ItemUpdateFallback) _then;




}

// dart format on
