// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_enum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentMethodEnum _$PaymentMethodEnumFromJson(Map<String, dynamic> json) {
  return _PaymentMethodEnum.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethodEnum {
  /// Serializes this PaymentMethodEnum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodEnumCopyWith<$Res> {
  factory $PaymentMethodEnumCopyWith(
          PaymentMethodEnum value, $Res Function(PaymentMethodEnum) then) =
      _$PaymentMethodEnumCopyWithImpl<$Res, PaymentMethodEnum>;
}

/// @nodoc
class _$PaymentMethodEnumCopyWithImpl<$Res, $Val extends PaymentMethodEnum>
    implements $PaymentMethodEnumCopyWith<$Res> {
  _$PaymentMethodEnumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentMethodEnum
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PaymentMethodEnumImplCopyWith<$Res> {
  factory _$$PaymentMethodEnumImplCopyWith(_$PaymentMethodEnumImpl value,
          $Res Function(_$PaymentMethodEnumImpl) then) =
      __$$PaymentMethodEnumImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentMethodEnumImplCopyWithImpl<$Res>
    extends _$PaymentMethodEnumCopyWithImpl<$Res, _$PaymentMethodEnumImpl>
    implements _$$PaymentMethodEnumImplCopyWith<$Res> {
  __$$PaymentMethodEnumImplCopyWithImpl(_$PaymentMethodEnumImpl _value,
      $Res Function(_$PaymentMethodEnumImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentMethodEnum
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$PaymentMethodEnumImpl implements _PaymentMethodEnum {
  const _$PaymentMethodEnumImpl();

  factory _$PaymentMethodEnumImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentMethodEnumImplFromJson(json);

  @override
  String toString() {
    return 'PaymentMethodEnum()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentMethodEnumImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentMethodEnumImplToJson(
      this,
    );
  }
}

abstract class _PaymentMethodEnum implements PaymentMethodEnum {
  const factory _PaymentMethodEnum() = _$PaymentMethodEnumImpl;

  factory _PaymentMethodEnum.fromJson(Map<String, dynamic> json) =
      _$PaymentMethodEnumImpl.fromJson;
}
