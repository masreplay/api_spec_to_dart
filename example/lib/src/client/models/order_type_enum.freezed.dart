// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_type_enum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderTypeEnum _$OrderTypeEnumFromJson(Map<String, dynamic> json) {
  return _OrderTypeEnum.fromJson(json);
}

/// @nodoc
mixin _$OrderTypeEnum {
  /// Serializes this OrderTypeEnum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTypeEnumCopyWith<$Res> {
  factory $OrderTypeEnumCopyWith(
          OrderTypeEnum value, $Res Function(OrderTypeEnum) then) =
      _$OrderTypeEnumCopyWithImpl<$Res, OrderTypeEnum>;
}

/// @nodoc
class _$OrderTypeEnumCopyWithImpl<$Res, $Val extends OrderTypeEnum>
    implements $OrderTypeEnumCopyWith<$Res> {
  _$OrderTypeEnumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderTypeEnum
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OrderTypeEnumImplCopyWith<$Res> {
  factory _$$OrderTypeEnumImplCopyWith(
          _$OrderTypeEnumImpl value, $Res Function(_$OrderTypeEnumImpl) then) =
      __$$OrderTypeEnumImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderTypeEnumImplCopyWithImpl<$Res>
    extends _$OrderTypeEnumCopyWithImpl<$Res, _$OrderTypeEnumImpl>
    implements _$$OrderTypeEnumImplCopyWith<$Res> {
  __$$OrderTypeEnumImplCopyWithImpl(
      _$OrderTypeEnumImpl _value, $Res Function(_$OrderTypeEnumImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderTypeEnum
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$OrderTypeEnumImpl extends _OrderTypeEnum {
  const _$OrderTypeEnumImpl() : super._();

  factory _$OrderTypeEnumImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderTypeEnumImplFromJson(json);

  @override
  String toString() {
    return 'OrderTypeEnum()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderTypeEnumImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderTypeEnumImplToJson(
      this,
    );
  }
}

abstract class _OrderTypeEnum extends OrderTypeEnum {
  const factory _OrderTypeEnum() = _$OrderTypeEnumImpl;
  const _OrderTypeEnum._() : super._();

  factory _OrderTypeEnum.fromJson(Map<String, dynamic> json) =
      _$OrderTypeEnumImpl.fromJson;
}
