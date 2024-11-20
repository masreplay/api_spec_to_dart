// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_request_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangePasswordRequestPublic _$ChangePasswordRequestPublicFromJson(
    Map<String, dynamic> json) {
  return _ChangePasswordRequestPublic.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordRequestPublic {
  /// Old Password
  @JsonKey(name: 'old_password')
  String get oldPassword => throw _privateConstructorUsedError;

  /// New Password
  @JsonKey(name: 'new_password')
  String get newPassword => throw _privateConstructorUsedError;

  /// Serializes this ChangePasswordRequestPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangePasswordRequestPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangePasswordRequestPublicCopyWith<ChangePasswordRequestPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordRequestPublicCopyWith<$Res> {
  factory $ChangePasswordRequestPublicCopyWith(
          ChangePasswordRequestPublic value,
          $Res Function(ChangePasswordRequestPublic) then) =
      _$ChangePasswordRequestPublicCopyWithImpl<$Res,
          ChangePasswordRequestPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'old_password') String oldPassword,
      @JsonKey(name: 'new_password') String newPassword});
}

/// @nodoc
class _$ChangePasswordRequestPublicCopyWithImpl<$Res,
        $Val extends ChangePasswordRequestPublic>
    implements $ChangePasswordRequestPublicCopyWith<$Res> {
  _$ChangePasswordRequestPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangePasswordRequestPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_value.copyWith(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePasswordRequestPublicImplCopyWith<$Res>
    implements $ChangePasswordRequestPublicCopyWith<$Res> {
  factory _$$ChangePasswordRequestPublicImplCopyWith(
          _$ChangePasswordRequestPublicImpl value,
          $Res Function(_$ChangePasswordRequestPublicImpl) then) =
      __$$ChangePasswordRequestPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'old_password') String oldPassword,
      @JsonKey(name: 'new_password') String newPassword});
}

/// @nodoc
class __$$ChangePasswordRequestPublicImplCopyWithImpl<$Res>
    extends _$ChangePasswordRequestPublicCopyWithImpl<$Res,
        _$ChangePasswordRequestPublicImpl>
    implements _$$ChangePasswordRequestPublicImplCopyWith<$Res> {
  __$$ChangePasswordRequestPublicImplCopyWithImpl(
      _$ChangePasswordRequestPublicImpl _value,
      $Res Function(_$ChangePasswordRequestPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangePasswordRequestPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_$ChangePasswordRequestPublicImpl(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$ChangePasswordRequestPublicImpl extends _ChangePasswordRequestPublic {
  const _$ChangePasswordRequestPublicImpl(
      {@JsonKey(name: 'old_password') required this.oldPassword,
      @JsonKey(name: 'new_password') required this.newPassword})
      : super._();

  factory _$ChangePasswordRequestPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChangePasswordRequestPublicImplFromJson(json);

  /// Old Password
  @override
  @JsonKey(name: 'old_password')
  final String oldPassword;

  /// New Password
  @override
  @JsonKey(name: 'new_password')
  final String newPassword;

  @override
  String toString() {
    return 'ChangePasswordRequestPublic(oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordRequestPublicImpl &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, oldPassword, newPassword);

  /// Create a copy of ChangePasswordRequestPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordRequestPublicImplCopyWith<_$ChangePasswordRequestPublicImpl>
      get copyWith => __$$ChangePasswordRequestPublicImplCopyWithImpl<
          _$ChangePasswordRequestPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePasswordRequestPublicImplToJson(
      this,
    );
  }
}

abstract class _ChangePasswordRequestPublic
    extends ChangePasswordRequestPublic {
  const factory _ChangePasswordRequestPublic(
          {@JsonKey(name: 'old_password') required final String oldPassword,
          @JsonKey(name: 'new_password') required final String newPassword}) =
      _$ChangePasswordRequestPublicImpl;
  const _ChangePasswordRequestPublic._() : super._();

  factory _ChangePasswordRequestPublic.fromJson(Map<String, dynamic> json) =
      _$ChangePasswordRequestPublicImpl.fromJson;

  /// Old Password
  @override
  @JsonKey(name: 'old_password')
  String get oldPassword;

  /// New Password
  @override
  @JsonKey(name: 'new_password')
  String get newPassword;

  /// Create a copy of ChangePasswordRequestPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePasswordRequestPublicImplCopyWith<_$ChangePasswordRequestPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
