// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_student_auth_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BodyStudentAuthLogin _$BodyStudentAuthLoginFromJson(Map<String, dynamic> json) {
  return _BodyStudentAuthLogin.fromJson(json);
}

/// @nodoc
mixin _$BodyStudentAuthLogin {
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;

  /// Serializes this BodyStudentAuthLogin to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyStudentAuthLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyStudentAuthLoginCopyWith<BodyStudentAuthLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyStudentAuthLoginCopyWith<$Res> {
  factory $BodyStudentAuthLoginCopyWith(BodyStudentAuthLogin value,
          $Res Function(BodyStudentAuthLogin) then) =
      _$BodyStudentAuthLoginCopyWithImpl<$Res, BodyStudentAuthLogin>;
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class _$BodyStudentAuthLoginCopyWithImpl<$Res,
        $Val extends BodyStudentAuthLogin>
    implements $BodyStudentAuthLoginCopyWith<$Res> {
  _$BodyStudentAuthLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyStudentAuthLogin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyStudentAuthLoginImplCopyWith<$Res>
    implements $BodyStudentAuthLoginCopyWith<$Res> {
  factory _$$BodyStudentAuthLoginImplCopyWith(_$BodyStudentAuthLoginImpl value,
          $Res Function(_$BodyStudentAuthLoginImpl) then) =
      __$$BodyStudentAuthLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$$BodyStudentAuthLoginImplCopyWithImpl<$Res>
    extends _$BodyStudentAuthLoginCopyWithImpl<$Res, _$BodyStudentAuthLoginImpl>
    implements _$$BodyStudentAuthLoginImplCopyWith<$Res> {
  __$$BodyStudentAuthLoginImplCopyWithImpl(_$BodyStudentAuthLoginImpl _value,
      $Res Function(_$BodyStudentAuthLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodyStudentAuthLogin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$BodyStudentAuthLoginImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BodyStudentAuthLoginImpl extends _BodyStudentAuthLogin {
  const _$BodyStudentAuthLoginImpl(
      {@JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'password') required this.password})
      : super._();

  factory _$BodyStudentAuthLoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyStudentAuthLoginImplFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'password')
  final String password;

  @override
  String toString() {
    return 'BodyStudentAuthLogin(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyStudentAuthLoginImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  /// Create a copy of BodyStudentAuthLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyStudentAuthLoginImplCopyWith<_$BodyStudentAuthLoginImpl>
      get copyWith =>
          __$$BodyStudentAuthLoginImplCopyWithImpl<_$BodyStudentAuthLoginImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyStudentAuthLoginImplToJson(
      this,
    );
  }
}

abstract class _BodyStudentAuthLogin extends BodyStudentAuthLogin {
  const factory _BodyStudentAuthLogin(
          {@JsonKey(name: 'username') required final String username,
          @JsonKey(name: 'password') required final String password}) =
      _$BodyStudentAuthLoginImpl;
  const _BodyStudentAuthLogin._() : super._();

  factory _BodyStudentAuthLogin.fromJson(Map<String, dynamic> json) =
      _$BodyStudentAuthLoginImpl.fromJson;

  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'password')
  String get password;

  /// Create a copy of BodyStudentAuthLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyStudentAuthLoginImplCopyWith<_$BodyStudentAuthLoginImpl>
      get copyWith => throw _privateConstructorUsedError;
}
