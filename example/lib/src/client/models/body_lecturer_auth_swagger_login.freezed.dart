// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_lecturer_auth_swagger_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BodyLecturerAuthSwaggerLogin _$BodyLecturerAuthSwaggerLoginFromJson(
    Map<String, dynamic> json) {
  return _BodyLecturerAuthSwaggerLogin.fromJson(json);
}

/// @nodoc
mixin _$BodyLecturerAuthSwaggerLogin {
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;

  /// Serializes this BodyLecturerAuthSwaggerLogin to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyLecturerAuthSwaggerLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyLecturerAuthSwaggerLoginCopyWith<BodyLecturerAuthSwaggerLogin>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyLecturerAuthSwaggerLoginCopyWith<$Res> {
  factory $BodyLecturerAuthSwaggerLoginCopyWith(
          BodyLecturerAuthSwaggerLogin value,
          $Res Function(BodyLecturerAuthSwaggerLogin) then) =
      _$BodyLecturerAuthSwaggerLoginCopyWithImpl<$Res,
          BodyLecturerAuthSwaggerLogin>;
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class _$BodyLecturerAuthSwaggerLoginCopyWithImpl<$Res,
        $Val extends BodyLecturerAuthSwaggerLogin>
    implements $BodyLecturerAuthSwaggerLoginCopyWith<$Res> {
  _$BodyLecturerAuthSwaggerLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyLecturerAuthSwaggerLogin
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
abstract class _$$BodyLecturerAuthSwaggerLoginImplCopyWith<$Res>
    implements $BodyLecturerAuthSwaggerLoginCopyWith<$Res> {
  factory _$$BodyLecturerAuthSwaggerLoginImplCopyWith(
          _$BodyLecturerAuthSwaggerLoginImpl value,
          $Res Function(_$BodyLecturerAuthSwaggerLoginImpl) then) =
      __$$BodyLecturerAuthSwaggerLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$$BodyLecturerAuthSwaggerLoginImplCopyWithImpl<$Res>
    extends _$BodyLecturerAuthSwaggerLoginCopyWithImpl<$Res,
        _$BodyLecturerAuthSwaggerLoginImpl>
    implements _$$BodyLecturerAuthSwaggerLoginImplCopyWith<$Res> {
  __$$BodyLecturerAuthSwaggerLoginImplCopyWithImpl(
      _$BodyLecturerAuthSwaggerLoginImpl _value,
      $Res Function(_$BodyLecturerAuthSwaggerLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodyLecturerAuthSwaggerLogin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$BodyLecturerAuthSwaggerLoginImpl(
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
@JsonSerializable()
class _$BodyLecturerAuthSwaggerLoginImpl
    implements _BodyLecturerAuthSwaggerLogin {
  const _$BodyLecturerAuthSwaggerLoginImpl(
      {@JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'password') required this.password});

  factory _$BodyLecturerAuthSwaggerLoginImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BodyLecturerAuthSwaggerLoginImplFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'password')
  final String password;

  @override
  String toString() {
    return 'BodyLecturerAuthSwaggerLogin(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyLecturerAuthSwaggerLoginImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  /// Create a copy of BodyLecturerAuthSwaggerLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyLecturerAuthSwaggerLoginImplCopyWith<
          _$BodyLecturerAuthSwaggerLoginImpl>
      get copyWith => __$$BodyLecturerAuthSwaggerLoginImplCopyWithImpl<
          _$BodyLecturerAuthSwaggerLoginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyLecturerAuthSwaggerLoginImplToJson(
      this,
    );
  }
}

abstract class _BodyLecturerAuthSwaggerLogin
    implements BodyLecturerAuthSwaggerLogin {
  const factory _BodyLecturerAuthSwaggerLogin(
          {@JsonKey(name: 'username') required final String username,
          @JsonKey(name: 'password') required final String password}) =
      _$BodyLecturerAuthSwaggerLoginImpl;

  factory _BodyLecturerAuthSwaggerLogin.fromJson(Map<String, dynamic> json) =
      _$BodyLecturerAuthSwaggerLoginImpl.fromJson;

  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'password')
  String get password;

  /// Create a copy of BodyLecturerAuthSwaggerLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyLecturerAuthSwaggerLoginImplCopyWith<
          _$BodyLecturerAuthSwaggerLoginImpl>
      get copyWith => throw _privateConstructorUsedError;
}
