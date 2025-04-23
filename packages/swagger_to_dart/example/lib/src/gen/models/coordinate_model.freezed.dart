// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coordinate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
CoordinateModel _$CoordinateModelFromJson(Map<String, dynamic> json) {
  return CoordinateModelFallback.fromJson(json);
}

/// @nodoc
mixin _$CoordinateModel {
  /// Serializes this CoordinateModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CoordinateModel);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CoordinateModel()';
  }
}

/// @nodoc
class $CoordinateModelCopyWith<$Res> {
  $CoordinateModelCopyWith(
      CoordinateModel _, $Res Function(CoordinateModel) __);
}

/// @nodoc
@JsonSerializable()
class CoordinateModelFallback implements CoordinateModel {
  const CoordinateModelFallback();
  factory CoordinateModelFallback.fromJson(Map<String, dynamic> json) =>
      _$CoordinateModelFallbackFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return _$CoordinateModelFallbackToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CoordinateModelFallback);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CoordinateModel.fallback()';
  }
}

// dart format on
