// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_password_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetPasswordQueries _$SetPasswordQueriesFromJson(Map<String, dynamic> json) {
  return _SetPasswordQueries.fromJson(json);
}

/// @nodoc
mixin _$SetPasswordQueries {
  /// Password 1
  @JsonKey(name: 'password1')
  String get password1 => throw _privateConstructorUsedError;

  /// Method
  @JsonKey(name: 'method')
  String get method => throw _privateConstructorUsedError;

  /// Input
  @JsonKey(name: 'input')
  String get input => throw _privateConstructorUsedError;

  /// Serializes this SetPasswordQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SetPasswordQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetPasswordQueriesCopyWith<SetPasswordQueries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetPasswordQueriesCopyWith<$Res> {
  factory $SetPasswordQueriesCopyWith(
          SetPasswordQueries value, $Res Function(SetPasswordQueries) then) =
      _$SetPasswordQueriesCopyWithImpl<$Res, SetPasswordQueries>;
  @useResult
  $Res call(
      {@JsonKey(name: 'password1') String password1,
      @JsonKey(name: 'method') String method,
      @JsonKey(name: 'input') String input});
}

/// @nodoc
class _$SetPasswordQueriesCopyWithImpl<$Res, $Val extends SetPasswordQueries>
    implements $SetPasswordQueriesCopyWith<$Res> {
  _$SetPasswordQueriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetPasswordQueries
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
abstract class _$$SetPasswordQueriesImplCopyWith<$Res>
    implements $SetPasswordQueriesCopyWith<$Res> {
  factory _$$SetPasswordQueriesImplCopyWith(_$SetPasswordQueriesImpl value,
          $Res Function(_$SetPasswordQueriesImpl) then) =
      __$$SetPasswordQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'password1') String password1,
      @JsonKey(name: 'method') String method,
      @JsonKey(name: 'input') String input});
}

/// @nodoc
class __$$SetPasswordQueriesImplCopyWithImpl<$Res>
    extends _$SetPasswordQueriesCopyWithImpl<$Res, _$SetPasswordQueriesImpl>
    implements _$$SetPasswordQueriesImplCopyWith<$Res> {
  __$$SetPasswordQueriesImplCopyWithImpl(_$SetPasswordQueriesImpl _value,
      $Res Function(_$SetPasswordQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetPasswordQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password1 = null,
    Object? method = null,
    Object? input = null,
  }) {
    return _then(_$SetPasswordQueriesImpl(
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
class _$SetPasswordQueriesImpl extends _SetPasswordQueries {
  const _$SetPasswordQueriesImpl(
      {@JsonKey(name: 'password1') required this.password1,
      @JsonKey(name: 'method') required this.method = 'sms',
      @JsonKey(name: 'input') required this.input})
      : super._();

  factory _$SetPasswordQueriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetPasswordQueriesImplFromJson(json);

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
    return 'SetPasswordQueries(password1: $password1, method: $method, input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPasswordQueriesImpl &&
            (identical(other.password1, password1) ||
                other.password1 == password1) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.input, input) || other.input == input));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, password1, method, input);

  /// Create a copy of SetPasswordQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPasswordQueriesImplCopyWith<_$SetPasswordQueriesImpl> get copyWith =>
      __$$SetPasswordQueriesImplCopyWithImpl<_$SetPasswordQueriesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetPasswordQueriesImplToJson(
      this,
    );
  }
}

abstract class _SetPasswordQueries extends SetPasswordQueries {
  const factory _SetPasswordQueries(
          {@JsonKey(name: 'password1') required final String password1,
          @JsonKey(name: 'method') required final String method,
          @JsonKey(name: 'input') required final String input}) =
      _$SetPasswordQueriesImpl;
  const _SetPasswordQueries._() : super._();

  factory _SetPasswordQueries.fromJson(Map<String, dynamic> json) =
      _$SetPasswordQueriesImpl.fromJson;

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

  /// Create a copy of SetPasswordQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetPasswordQueriesImplCopyWith<_$SetPasswordQueriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
