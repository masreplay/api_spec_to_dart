// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'citizenship_type_enum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CitizenshipTypeEnum _$CitizenshipTypeEnumFromJson(Map<String, dynamic> json) {
  return _CitizenshipTypeEnum.fromJson(json);
}

/// @nodoc
mixin _$CitizenshipTypeEnum {
  /// Serializes this CitizenshipTypeEnum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitizenshipTypeEnumCopyWith<$Res> {
  factory $CitizenshipTypeEnumCopyWith(
          CitizenshipTypeEnum value, $Res Function(CitizenshipTypeEnum) then) =
      _$CitizenshipTypeEnumCopyWithImpl<$Res, CitizenshipTypeEnum>;
}

/// @nodoc
class _$CitizenshipTypeEnumCopyWithImpl<$Res, $Val extends CitizenshipTypeEnum>
    implements $CitizenshipTypeEnumCopyWith<$Res> {
  _$CitizenshipTypeEnumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CitizenshipTypeEnum
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CitizenshipTypeEnumImplCopyWith<$Res> {
  factory _$$CitizenshipTypeEnumImplCopyWith(_$CitizenshipTypeEnumImpl value,
          $Res Function(_$CitizenshipTypeEnumImpl) then) =
      __$$CitizenshipTypeEnumImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CitizenshipTypeEnumImplCopyWithImpl<$Res>
    extends _$CitizenshipTypeEnumCopyWithImpl<$Res, _$CitizenshipTypeEnumImpl>
    implements _$$CitizenshipTypeEnumImplCopyWith<$Res> {
  __$$CitizenshipTypeEnumImplCopyWithImpl(_$CitizenshipTypeEnumImpl _value,
      $Res Function(_$CitizenshipTypeEnumImpl) _then)
      : super(_value, _then);

  /// Create a copy of CitizenshipTypeEnum
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$CitizenshipTypeEnumImpl implements _CitizenshipTypeEnum {
  const _$CitizenshipTypeEnumImpl();

  factory _$CitizenshipTypeEnumImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitizenshipTypeEnumImplFromJson(json);

  @override
  String toString() {
    return 'CitizenshipTypeEnum()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitizenshipTypeEnumImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$CitizenshipTypeEnumImplToJson(
      this,
    );
  }
}

abstract class _CitizenshipTypeEnum implements CitizenshipTypeEnum {
  const factory _CitizenshipTypeEnum() = _$CitizenshipTypeEnumImpl;

  factory _CitizenshipTypeEnum.fromJson(Map<String, dynamic> json) =
      _$CitizenshipTypeEnumImpl.fromJson;
}
