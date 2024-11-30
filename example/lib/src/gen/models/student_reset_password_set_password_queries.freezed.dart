// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_reset_password_set_password_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentResetPasswordSetPasswordQueries
    _$StudentResetPasswordSetPasswordQueriesFromJson(
        Map<String, dynamic> json) {
  return _StudentResetPasswordSetPasswordQueries.fromJson(json);
}

/// @nodoc
mixin _$StudentResetPasswordSetPasswordQueries {
  /// Password 1
  @JsonKey(name: 'password1')
  String get password1 => throw _privateConstructorUsedError;

  /// Method
  @JsonKey(name: 'method')
  String get method => throw _privateConstructorUsedError;

  /// Input
  @JsonKey(name: 'input')
  String get input => throw _privateConstructorUsedError;

  /// Serializes this StudentResetPasswordSetPasswordQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentResetPasswordSetPasswordQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentResetPasswordSetPasswordQueriesCopyWith<
          StudentResetPasswordSetPasswordQueries>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentResetPasswordSetPasswordQueriesCopyWith<$Res> {
  factory $StudentResetPasswordSetPasswordQueriesCopyWith(
          StudentResetPasswordSetPasswordQueries value,
          $Res Function(StudentResetPasswordSetPasswordQueries) then) =
      _$StudentResetPasswordSetPasswordQueriesCopyWithImpl<$Res,
          StudentResetPasswordSetPasswordQueries>;
  @useResult
  $Res call(
      {@JsonKey(name: 'password1') String password1,
      @JsonKey(name: 'method') String method,
      @JsonKey(name: 'input') String input});
}

/// @nodoc
class _$StudentResetPasswordSetPasswordQueriesCopyWithImpl<$Res,
        $Val extends StudentResetPasswordSetPasswordQueries>
    implements $StudentResetPasswordSetPasswordQueriesCopyWith<$Res> {
  _$StudentResetPasswordSetPasswordQueriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentResetPasswordSetPasswordQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password1 = null,
    Object? method = null,
    Object? input = null,
  }) {
    return _then(_value.copyWith(
      password1: null == password1
          ? _value.password1
          : password1 // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentResetPasswordSetPasswordQueriesImplCopyWith<$Res>
    implements $StudentResetPasswordSetPasswordQueriesCopyWith<$Res> {
  factory _$$StudentResetPasswordSetPasswordQueriesImplCopyWith(
          _$StudentResetPasswordSetPasswordQueriesImpl value,
          $Res Function(_$StudentResetPasswordSetPasswordQueriesImpl) then) =
      __$$StudentResetPasswordSetPasswordQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'password1') String password1,
      @JsonKey(name: 'method') String method,
      @JsonKey(name: 'input') String input});
}

/// @nodoc
class __$$StudentResetPasswordSetPasswordQueriesImplCopyWithImpl<$Res>
    extends _$StudentResetPasswordSetPasswordQueriesCopyWithImpl<$Res,
        _$StudentResetPasswordSetPasswordQueriesImpl>
    implements _$$StudentResetPasswordSetPasswordQueriesImplCopyWith<$Res> {
  __$$StudentResetPasswordSetPasswordQueriesImplCopyWithImpl(
      _$StudentResetPasswordSetPasswordQueriesImpl _value,
      $Res Function(_$StudentResetPasswordSetPasswordQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentResetPasswordSetPasswordQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password1 = null,
    Object? method = null,
    Object? input = null,
  }) {
    return _then(_$StudentResetPasswordSetPasswordQueriesImpl(
      password1: null == password1
          ? _value.password1
          : password1 // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$StudentResetPasswordSetPasswordQueriesImpl
    extends _StudentResetPasswordSetPasswordQueries {
  const _$StudentResetPasswordSetPasswordQueriesImpl(
      {@JsonKey(name: 'password1') required this.password1,
      @JsonKey(name: 'method') this.method = 'sms',
      @JsonKey(name: 'input') required this.input})
      : super._();

  factory _$StudentResetPasswordSetPasswordQueriesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StudentResetPasswordSetPasswordQueriesImplFromJson(json);

  /// Password 1
  @override
  @JsonKey(name: 'password1')
  final String password1;

  /// Method
  @override
  @JsonKey(name: 'method')
  final String method;

  /// Input
  @override
  @JsonKey(name: 'input')
  final String input;

  @override
  String toString() {
    return 'StudentResetPasswordSetPasswordQueries(password1: $password1, method: $method, input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentResetPasswordSetPasswordQueriesImpl &&
            (identical(other.password1, password1) ||
                other.password1 == password1) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.input, input) || other.input == input));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, password1, method, input);

  /// Create a copy of StudentResetPasswordSetPasswordQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentResetPasswordSetPasswordQueriesImplCopyWith<
          _$StudentResetPasswordSetPasswordQueriesImpl>
      get copyWith =>
          __$$StudentResetPasswordSetPasswordQueriesImplCopyWithImpl<
              _$StudentResetPasswordSetPasswordQueriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentResetPasswordSetPasswordQueriesImplToJson(
      this,
    );
  }
}

abstract class _StudentResetPasswordSetPasswordQueries
    extends StudentResetPasswordSetPasswordQueries {
  const factory _StudentResetPasswordSetPasswordQueries(
          {@JsonKey(name: 'password1') required final String password1,
          @JsonKey(name: 'method') final String method,
          @JsonKey(name: 'input') required final String input}) =
      _$StudentResetPasswordSetPasswordQueriesImpl;
  const _StudentResetPasswordSetPasswordQueries._() : super._();

  factory _StudentResetPasswordSetPasswordQueries.fromJson(
          Map<String, dynamic> json) =
      _$StudentResetPasswordSetPasswordQueriesImpl.fromJson;

  /// Password 1
  @override
  @JsonKey(name: 'password1')
  String get password1;

  /// Method
  @override
  @JsonKey(name: 'method')
  String get method;

  /// Input
  @override
  @JsonKey(name: 'input')
  String get input;

  /// Create a copy of StudentResetPasswordSetPasswordQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentResetPasswordSetPasswordQueriesImplCopyWith<
          _$StudentResetPasswordSetPasswordQueriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
