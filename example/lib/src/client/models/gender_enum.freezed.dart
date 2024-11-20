// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gender_enum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenderEnum _$GenderEnumFromJson(Map<String, dynamic> json) {
  return _GenderEnum.fromJson(json);
}

/// @nodoc
mixin _$GenderEnum {
  /// Serializes this GenderEnum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderEnumCopyWith<$Res> {
  factory $GenderEnumCopyWith(
          GenderEnum value, $Res Function(GenderEnum) then) =
      _$GenderEnumCopyWithImpl<$Res, GenderEnum>;
}

/// @nodoc
class _$GenderEnumCopyWithImpl<$Res, $Val extends GenderEnum>
    implements $GenderEnumCopyWith<$Res> {
  _$GenderEnumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenderEnum
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GenderEnumImplCopyWith<$Res> {
  factory _$$GenderEnumImplCopyWith(
          _$GenderEnumImpl value, $Res Function(_$GenderEnumImpl) then) =
      __$$GenderEnumImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GenderEnumImplCopyWithImpl<$Res>
    extends _$GenderEnumCopyWithImpl<$Res, _$GenderEnumImpl>
    implements _$$GenderEnumImplCopyWith<$Res> {
  __$$GenderEnumImplCopyWithImpl(
      _$GenderEnumImpl _value, $Res Function(_$GenderEnumImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenderEnum
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$GenderEnumImpl extends _GenderEnum {
  const _$GenderEnumImpl() : super._();

  factory _$GenderEnumImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenderEnumImplFromJson(json);

  @override
  String toString() {
    return 'GenderEnum()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GenderEnumImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$GenderEnumImplToJson(
      this,
    );
  }
}

abstract class _GenderEnum extends GenderEnum {
  const factory _GenderEnum() = _$GenderEnumImpl;
  const _GenderEnum._() : super._();

  factory _GenderEnum.fromJson(Map<String, dynamic> json) =
      _$GenderEnumImpl.fromJson;
}
