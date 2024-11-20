// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_student_auth_swagger_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BodyStudentAuthSwaggerLogin _$BodyStudentAuthSwaggerLoginFromJson(
    Map<String, dynamic> json) {
  return _BodyStudentAuthSwaggerLogin.fromJson(json);
}

/// @nodoc
mixin _$BodyStudentAuthSwaggerLogin {
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;

  /// Serializes this BodyStudentAuthSwaggerLogin to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyStudentAuthSwaggerLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyStudentAuthSwaggerLoginCopyWith<BodyStudentAuthSwaggerLogin>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyStudentAuthSwaggerLoginCopyWith<$Res> {
  factory $BodyStudentAuthSwaggerLoginCopyWith(
          BodyStudentAuthSwaggerLogin value,
          $Res Function(BodyStudentAuthSwaggerLogin) then) =
      _$BodyStudentAuthSwaggerLoginCopyWithImpl<$Res,
          BodyStudentAuthSwaggerLogin>;
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class _$BodyStudentAuthSwaggerLoginCopyWithImpl<$Res,
        $Val extends BodyStudentAuthSwaggerLogin>
    implements $BodyStudentAuthSwaggerLoginCopyWith<$Res> {
  _$BodyStudentAuthSwaggerLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyStudentAuthSwaggerLogin
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
abstract class _$$BodyStudentAuthSwaggerLoginImplCopyWith<$Res>
    implements $BodyStudentAuthSwaggerLoginCopyWith<$Res> {
  factory _$$BodyStudentAuthSwaggerLoginImplCopyWith(
          _$BodyStudentAuthSwaggerLoginImpl value,
          $Res Function(_$BodyStudentAuthSwaggerLoginImpl) then) =
      __$$BodyStudentAuthSwaggerLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$$BodyStudentAuthSwaggerLoginImplCopyWithImpl<$Res>
    extends _$BodyStudentAuthSwaggerLoginCopyWithImpl<$Res,
        _$BodyStudentAuthSwaggerLoginImpl>
    implements _$$BodyStudentAuthSwaggerLoginImplCopyWith<$Res> {
  __$$BodyStudentAuthSwaggerLoginImplCopyWithImpl(
      _$BodyStudentAuthSwaggerLoginImpl _value,
      $Res Function(_$BodyStudentAuthSwaggerLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodyStudentAuthSwaggerLogin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$BodyStudentAuthSwaggerLoginImpl(
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
class _$BodyStudentAuthSwaggerLoginImpl
    implements _BodyStudentAuthSwaggerLogin {
  const _$BodyStudentAuthSwaggerLoginImpl(
      {@JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'password') required this.password});

  factory _$BodyStudentAuthSwaggerLoginImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BodyStudentAuthSwaggerLoginImplFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'password')
  final String password;

  @override
  String toString() {
    return 'BodyStudentAuthSwaggerLogin(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyStudentAuthSwaggerLoginImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  /// Create a copy of BodyStudentAuthSwaggerLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyStudentAuthSwaggerLoginImplCopyWith<_$BodyStudentAuthSwaggerLoginImpl>
      get copyWith => __$$BodyStudentAuthSwaggerLoginImplCopyWithImpl<
          _$BodyStudentAuthSwaggerLoginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyStudentAuthSwaggerLoginImplToJson(
      this,
    );
  }
}

abstract class _BodyStudentAuthSwaggerLogin
    implements BodyStudentAuthSwaggerLogin {
  const factory _BodyStudentAuthSwaggerLogin(
          {@JsonKey(name: 'username') required final String username,
          @JsonKey(name: 'password') required final String password}) =
      _$BodyStudentAuthSwaggerLoginImpl;

  factory _BodyStudentAuthSwaggerLogin.fromJson(Map<String, dynamic> json) =
      _$BodyStudentAuthSwaggerLoginImpl.fromJson;

  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'password')
  String get password;

  /// Create a copy of BodyStudentAuthSwaggerLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyStudentAuthSwaggerLoginImplCopyWith<_$BodyStudentAuthSwaggerLoginImpl>
      get copyWith => throw _privateConstructorUsedError;
}
