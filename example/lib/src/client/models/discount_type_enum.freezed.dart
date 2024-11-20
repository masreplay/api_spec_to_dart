// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount_type_enum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiscountTypeEnum _$DiscountTypeEnumFromJson(Map<String, dynamic> json) {
  return _DiscountTypeEnum.fromJson(json);
}

/// @nodoc
mixin _$DiscountTypeEnum {
  /// Serializes this DiscountTypeEnum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountTypeEnumCopyWith<$Res> {
  factory $DiscountTypeEnumCopyWith(
          DiscountTypeEnum value, $Res Function(DiscountTypeEnum) then) =
      _$DiscountTypeEnumCopyWithImpl<$Res, DiscountTypeEnum>;
}

/// @nodoc
class _$DiscountTypeEnumCopyWithImpl<$Res, $Val extends DiscountTypeEnum>
    implements $DiscountTypeEnumCopyWith<$Res> {
  _$DiscountTypeEnumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountTypeEnum
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DiscountTypeEnumImplCopyWith<$Res> {
  factory _$$DiscountTypeEnumImplCopyWith(_$DiscountTypeEnumImpl value,
          $Res Function(_$DiscountTypeEnumImpl) then) =
      __$$DiscountTypeEnumImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DiscountTypeEnumImplCopyWithImpl<$Res>
    extends _$DiscountTypeEnumCopyWithImpl<$Res, _$DiscountTypeEnumImpl>
    implements _$$DiscountTypeEnumImplCopyWith<$Res> {
  __$$DiscountTypeEnumImplCopyWithImpl(_$DiscountTypeEnumImpl _value,
      $Res Function(_$DiscountTypeEnumImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscountTypeEnum
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$DiscountTypeEnumImpl implements _DiscountTypeEnum {
  const _$DiscountTypeEnumImpl();

  factory _$DiscountTypeEnumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountTypeEnumImplFromJson(json);

  @override
  String toString() {
    return 'DiscountTypeEnum()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DiscountTypeEnumImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountTypeEnumImplToJson(
      this,
    );
  }
}

abstract class _DiscountTypeEnum implements DiscountTypeEnum {
  const factory _DiscountTypeEnum() = _$DiscountTypeEnumImpl;

  factory _DiscountTypeEnum.fromJson(Map<String, dynamic> json) =
      _$DiscountTypeEnumImpl.fromJson;
}
