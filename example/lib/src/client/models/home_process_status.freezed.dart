// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_process_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeProcessStatus _$HomeProcessStatusFromJson(Map<String, dynamic> json) {
  return _HomeProcessStatus.fromJson(json);
}

/// @nodoc
mixin _$HomeProcessStatus {
  /// Serializes this HomeProcessStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeProcessStatusCopyWith<$Res> {
  factory $HomeProcessStatusCopyWith(
          HomeProcessStatus value, $Res Function(HomeProcessStatus) then) =
      _$HomeProcessStatusCopyWithImpl<$Res, HomeProcessStatus>;
}

/// @nodoc
class _$HomeProcessStatusCopyWithImpl<$Res, $Val extends HomeProcessStatus>
    implements $HomeProcessStatusCopyWith<$Res> {
  _$HomeProcessStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeProcessStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeProcessStatusImplCopyWith<$Res> {
  factory _$$HomeProcessStatusImplCopyWith(_$HomeProcessStatusImpl value,
          $Res Function(_$HomeProcessStatusImpl) then) =
      __$$HomeProcessStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeProcessStatusImplCopyWithImpl<$Res>
    extends _$HomeProcessStatusCopyWithImpl<$Res, _$HomeProcessStatusImpl>
    implements _$$HomeProcessStatusImplCopyWith<$Res> {
  __$$HomeProcessStatusImplCopyWithImpl(_$HomeProcessStatusImpl _value,
      $Res Function(_$HomeProcessStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeProcessStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$HomeProcessStatusImpl extends _HomeProcessStatus {
  const _$HomeProcessStatusImpl() : super._();

  factory _$HomeProcessStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeProcessStatusImplFromJson(json);

  @override
  String toString() {
    return 'HomeProcessStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeProcessStatusImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeProcessStatusImplToJson(
      this,
    );
  }
}

abstract class _HomeProcessStatus extends HomeProcessStatus {
  const factory _HomeProcessStatus() = _$HomeProcessStatusImpl;
  const _HomeProcessStatus._() : super._();

  factory _HomeProcessStatus.fromJson(Map<String, dynamic> json) =
      _$HomeProcessStatusImpl.fromJson;
}
