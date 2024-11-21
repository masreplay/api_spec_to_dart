// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_status_enum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttendanceStatusEnum _$AttendanceStatusEnumFromJson(Map<String, dynamic> json) {
  return _AttendanceStatusEnum.fromJson(json);
}

/// @nodoc
mixin _$AttendanceStatusEnum {
  /// Serializes this AttendanceStatusEnum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceStatusEnumCopyWith<$Res> {
  factory $AttendanceStatusEnumCopyWith(AttendanceStatusEnum value,
          $Res Function(AttendanceStatusEnum) then) =
      _$AttendanceStatusEnumCopyWithImpl<$Res, AttendanceStatusEnum>;
}

/// @nodoc
class _$AttendanceStatusEnumCopyWithImpl<$Res,
        $Val extends AttendanceStatusEnum>
    implements $AttendanceStatusEnumCopyWith<$Res> {
  _$AttendanceStatusEnumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceStatusEnum
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AttendanceStatusEnumImplCopyWith<$Res> {
  factory _$$AttendanceStatusEnumImplCopyWith(_$AttendanceStatusEnumImpl value,
          $Res Function(_$AttendanceStatusEnumImpl) then) =
      __$$AttendanceStatusEnumImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AttendanceStatusEnumImplCopyWithImpl<$Res>
    extends _$AttendanceStatusEnumCopyWithImpl<$Res, _$AttendanceStatusEnumImpl>
    implements _$$AttendanceStatusEnumImplCopyWith<$Res> {
  __$$AttendanceStatusEnumImplCopyWithImpl(_$AttendanceStatusEnumImpl _value,
      $Res Function(_$AttendanceStatusEnumImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceStatusEnum
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$AttendanceStatusEnumImpl extends _AttendanceStatusEnum {
  const _$AttendanceStatusEnumImpl() : super._();

  factory _$AttendanceStatusEnumImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceStatusEnumImplFromJson(json);

  @override
  String toString() {
    return 'AttendanceStatusEnum()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceStatusEnumImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceStatusEnumImplToJson(
      this,
    );
  }
}

abstract class _AttendanceStatusEnum extends AttendanceStatusEnum {
  const factory _AttendanceStatusEnum() = _$AttendanceStatusEnumImpl;
  const _AttendanceStatusEnum._() : super._();

  factory _AttendanceStatusEnum.fromJson(Map<String, dynamic> json) =
      _$AttendanceStatusEnumImpl.fromJson;
}
