// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_request_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentRequestStatus _$StudentRequestStatusFromJson(Map<String, dynamic> json) {
  return _StudentRequestStatus.fromJson(json);
}

/// @nodoc
mixin _$StudentRequestStatus {
  /// Serializes this StudentRequestStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentRequestStatusCopyWith<$Res> {
  factory $StudentRequestStatusCopyWith(StudentRequestStatus value,
          $Res Function(StudentRequestStatus) then) =
      _$StudentRequestStatusCopyWithImpl<$Res, StudentRequestStatus>;
}

/// @nodoc
class _$StudentRequestStatusCopyWithImpl<$Res,
        $Val extends StudentRequestStatus>
    implements $StudentRequestStatusCopyWith<$Res> {
  _$StudentRequestStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentRequestStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StudentRequestStatusImplCopyWith<$Res> {
  factory _$$StudentRequestStatusImplCopyWith(_$StudentRequestStatusImpl value,
          $Res Function(_$StudentRequestStatusImpl) then) =
      __$$StudentRequestStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StudentRequestStatusImplCopyWithImpl<$Res>
    extends _$StudentRequestStatusCopyWithImpl<$Res, _$StudentRequestStatusImpl>
    implements _$$StudentRequestStatusImplCopyWith<$Res> {
  __$$StudentRequestStatusImplCopyWithImpl(_$StudentRequestStatusImpl _value,
      $Res Function(_$StudentRequestStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentRequestStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$StudentRequestStatusImpl extends _StudentRequestStatus {
  const _$StudentRequestStatusImpl() : super._();

  factory _$StudentRequestStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentRequestStatusImplFromJson(json);

  @override
  String toString() {
    return 'StudentRequestStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentRequestStatusImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentRequestStatusImplToJson(
      this,
    );
  }
}

abstract class _StudentRequestStatus extends StudentRequestStatus {
  const factory _StudentRequestStatus() = _$StudentRequestStatusImpl;
  const _StudentRequestStatus._() : super._();

  factory _StudentRequestStatus.fromJson(Map<String, dynamic> json) =
      _$StudentRequestStatusImpl.fromJson;
}
