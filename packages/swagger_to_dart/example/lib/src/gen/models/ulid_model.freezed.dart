// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ulid_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
UlidModel _$UlidModelFromJson(Map<String, dynamic> json) {
  return UlidModelFallback.fromJson(json);
}

/// @nodoc
mixin _$UlidModel {
  /// Serializes this UlidModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UlidModel);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UlidModel()';
  }
}

/// @nodoc
class $UlidModelCopyWith<$Res> {
  $UlidModelCopyWith(UlidModel _, $Res Function(UlidModel) __);
}

/// @nodoc
@JsonSerializable()
class UlidModelFallback implements UlidModel {
  const UlidModelFallback();
  factory UlidModelFallback.fromJson(Map<String, dynamic> json) =>
      _$UlidModelFallbackFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return _$UlidModelFallbackToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UlidModelFallback);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UlidModel.fallback()';
  }
}

// dart format on
