// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_error_union_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ValidationErrorUnionType _$ValidationErrorUnionTypeFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'string':
      return ValidationErrorUnionTypeString.fromJson(json);
    case 'int':
      return ValidationErrorUnionTypeInt.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'ValidationErrorUnionType',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ValidationErrorUnionType {
  Object get value;

  /// Serializes this ValidationErrorUnionType to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidationErrorUnionType &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'ValidationErrorUnionType(value: $value)';
  }
}

/// @nodoc
class $ValidationErrorUnionTypeCopyWith<$Res> {
  $ValidationErrorUnionTypeCopyWith(
      ValidationErrorUnionType _, $Res Function(ValidationErrorUnionType) __);
}

/// @nodoc
@JsonSerializable()
class ValidationErrorUnionTypeString implements ValidationErrorUnionType {
  ValidationErrorUnionTypeString(this.value, {final String? $type})
      : $type = $type ?? 'string';
  factory ValidationErrorUnionTypeString.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorUnionTypeStringFromJson(json);

  @override
  final String value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ValidationErrorUnionType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValidationErrorUnionTypeStringCopyWith<ValidationErrorUnionTypeString>
      get copyWith => _$ValidationErrorUnionTypeStringCopyWithImpl<
          ValidationErrorUnionTypeString>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ValidationErrorUnionTypeStringToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidationErrorUnionTypeString &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ValidationErrorUnionType.string(value: $value)';
  }
}

/// @nodoc
abstract mixin class $ValidationErrorUnionTypeStringCopyWith<$Res>
    implements $ValidationErrorUnionTypeCopyWith<$Res> {
  factory $ValidationErrorUnionTypeStringCopyWith(
          ValidationErrorUnionTypeString value,
          $Res Function(ValidationErrorUnionTypeString) _then) =
      _$ValidationErrorUnionTypeStringCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$ValidationErrorUnionTypeStringCopyWithImpl<$Res>
    implements $ValidationErrorUnionTypeStringCopyWith<$Res> {
  _$ValidationErrorUnionTypeStringCopyWithImpl(this._self, this._then);

  final ValidationErrorUnionTypeString _self;
  final $Res Function(ValidationErrorUnionTypeString) _then;

  /// Create a copy of ValidationErrorUnionType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(ValidationErrorUnionTypeString(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class ValidationErrorUnionTypeInt implements ValidationErrorUnionType {
  ValidationErrorUnionTypeInt(this.value, {final String? $type})
      : $type = $type ?? 'int';
  factory ValidationErrorUnionTypeInt.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorUnionTypeIntFromJson(json);

  @override
  final int value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ValidationErrorUnionType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValidationErrorUnionTypeIntCopyWith<ValidationErrorUnionTypeInt>
      get copyWith => _$ValidationErrorUnionTypeIntCopyWithImpl<
          ValidationErrorUnionTypeInt>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ValidationErrorUnionTypeIntToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidationErrorUnionTypeInt &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ValidationErrorUnionType.int(value: $value)';
  }
}

/// @nodoc
abstract mixin class $ValidationErrorUnionTypeIntCopyWith<$Res>
    implements $ValidationErrorUnionTypeCopyWith<$Res> {
  factory $ValidationErrorUnionTypeIntCopyWith(
          ValidationErrorUnionTypeInt value,
          $Res Function(ValidationErrorUnionTypeInt) _then) =
      _$ValidationErrorUnionTypeIntCopyWithImpl;
  @useResult
  $Res call({int value});
}

/// @nodoc
class _$ValidationErrorUnionTypeIntCopyWithImpl<$Res>
    implements $ValidationErrorUnionTypeIntCopyWith<$Res> {
  _$ValidationErrorUnionTypeIntCopyWithImpl(this._self, this._then);

  final ValidationErrorUnionTypeInt _self;
  final $Res Function(ValidationErrorUnionTypeInt) _then;

  /// Create a copy of ValidationErrorUnionType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(ValidationErrorUnionTypeInt(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
