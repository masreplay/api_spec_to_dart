// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_lecturer_auth_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BodyLecturerAuthLogin _$BodyLecturerAuthLoginFromJson(
    Map<String, dynamic> json) {
  return _BodyLecturerAuthLogin.fromJson(json);
}

/// @nodoc
mixin _$BodyLecturerAuthLogin {
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;

  /// Serializes this BodyLecturerAuthLogin to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyLecturerAuthLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyLecturerAuthLoginCopyWith<BodyLecturerAuthLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyLecturerAuthLoginCopyWith<$Res> {
  factory $BodyLecturerAuthLoginCopyWith(BodyLecturerAuthLogin value,
          $Res Function(BodyLecturerAuthLogin) then) =
      _$BodyLecturerAuthLoginCopyWithImpl<$Res, BodyLecturerAuthLogin>;
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class _$BodyLecturerAuthLoginCopyWithImpl<$Res,
        $Val extends BodyLecturerAuthLogin>
    implements $BodyLecturerAuthLoginCopyWith<$Res> {
  _$BodyLecturerAuthLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyLecturerAuthLogin
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
abstract class _$$BodyLecturerAuthLoginImplCopyWith<$Res>
    implements $BodyLecturerAuthLoginCopyWith<$Res> {
  factory _$$BodyLecturerAuthLoginImplCopyWith(
          _$BodyLecturerAuthLoginImpl value,
          $Res Function(_$BodyLecturerAuthLoginImpl) then) =
      __$$BodyLecturerAuthLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$$BodyLecturerAuthLoginImplCopyWithImpl<$Res>
    extends _$BodyLecturerAuthLoginCopyWithImpl<$Res,
        _$BodyLecturerAuthLoginImpl>
    implements _$$BodyLecturerAuthLoginImplCopyWith<$Res> {
  __$$BodyLecturerAuthLoginImplCopyWithImpl(_$BodyLecturerAuthLoginImpl _value,
      $Res Function(_$BodyLecturerAuthLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodyLecturerAuthLogin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$BodyLecturerAuthLoginImpl(
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
class _$BodyLecturerAuthLoginImpl extends _BodyLecturerAuthLogin {
  const _$BodyLecturerAuthLoginImpl(
      {@JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'password') required this.password})
      : super._();

  factory _$BodyLecturerAuthLoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyLecturerAuthLoginImplFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'password')
  final String password;

  @override
  String toString() {
    return 'BodyLecturerAuthLogin(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyLecturerAuthLoginImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  /// Create a copy of BodyLecturerAuthLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyLecturerAuthLoginImplCopyWith<_$BodyLecturerAuthLoginImpl>
      get copyWith => __$$BodyLecturerAuthLoginImplCopyWithImpl<
          _$BodyLecturerAuthLoginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyLecturerAuthLoginImplToJson(
      this,
    );
  }
}

abstract class _BodyLecturerAuthLogin extends BodyLecturerAuthLogin {
  const factory _BodyLecturerAuthLogin(
          {@JsonKey(name: 'username') required final String username,
          @JsonKey(name: 'password') required final String password}) =
      _$BodyLecturerAuthLoginImpl;
  const _BodyLecturerAuthLogin._() : super._();

  factory _BodyLecturerAuthLogin.fromJson(Map<String, dynamic> json) =
      _$BodyLecturerAuthLoginImpl.fromJson;

  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'password')
  String get password;

  /// Create a copy of BodyLecturerAuthLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyLecturerAuthLoginImplCopyWith<_$BodyLecturerAuthLoginImpl>
      get copyWith => throw _privateConstructorUsedError;
}
