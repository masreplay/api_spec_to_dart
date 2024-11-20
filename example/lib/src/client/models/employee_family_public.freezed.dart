// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_family_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmployeeFamilyPublic _$EmployeeFamilyPublicFromJson(Map<String, dynamic> json) {
  return _EmployeeFamilyPublic.fromJson(json);
}

/// @nodoc
mixin _$EmployeeFamilyPublic {
  /// Serializes this EmployeeFamilyPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeFamilyPublicCopyWith<$Res> {
  factory $EmployeeFamilyPublicCopyWith(EmployeeFamilyPublic value,
          $Res Function(EmployeeFamilyPublic) then) =
      _$EmployeeFamilyPublicCopyWithImpl<$Res, EmployeeFamilyPublic>;
}

/// @nodoc
class _$EmployeeFamilyPublicCopyWithImpl<$Res,
        $Val extends EmployeeFamilyPublic>
    implements $EmployeeFamilyPublicCopyWith<$Res> {
  _$EmployeeFamilyPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeeFamilyPublic
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EmployeeFamilyPublicImplCopyWith<$Res> {
  factory _$$EmployeeFamilyPublicImplCopyWith(_$EmployeeFamilyPublicImpl value,
          $Res Function(_$EmployeeFamilyPublicImpl) then) =
      __$$EmployeeFamilyPublicImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmployeeFamilyPublicImplCopyWithImpl<$Res>
    extends _$EmployeeFamilyPublicCopyWithImpl<$Res, _$EmployeeFamilyPublicImpl>
    implements _$$EmployeeFamilyPublicImplCopyWith<$Res> {
  __$$EmployeeFamilyPublicImplCopyWithImpl(_$EmployeeFamilyPublicImpl _value,
      $Res Function(_$EmployeeFamilyPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeFamilyPublic
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$EmployeeFamilyPublicImpl implements _EmployeeFamilyPublic {
  const _$EmployeeFamilyPublicImpl();

  factory _$EmployeeFamilyPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeFamilyPublicImplFromJson(json);

  @override
  String toString() {
    return 'EmployeeFamilyPublic()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeFamilyPublicImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeFamilyPublicImplToJson(
      this,
    );
  }
}

abstract class _EmployeeFamilyPublic implements EmployeeFamilyPublic {
  const factory _EmployeeFamilyPublic() = _$EmployeeFamilyPublicImpl;

  factory _EmployeeFamilyPublic.fromJson(Map<String, dynamic> json) =
      _$EmployeeFamilyPublicImpl.fromJson;
}
