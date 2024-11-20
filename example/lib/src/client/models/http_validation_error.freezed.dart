// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_validation_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HttpValidationError _$HttpValidationErrorFromJson(Map<String, dynamic> json) {
  return _HttpValidationError.fromJson(json);
}

/// @nodoc
mixin _$HttpValidationError {
  @JsonKey(name: 'detail')
  List<dynamic> get detail => throw _privateConstructorUsedError;

  /// Serializes this HttpValidationError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HttpValidationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HttpValidationErrorCopyWith<HttpValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpValidationErrorCopyWith<$Res> {
  factory $HttpValidationErrorCopyWith(
          HttpValidationError value, $Res Function(HttpValidationError) then) =
      _$HttpValidationErrorCopyWithImpl<$Res, HttpValidationError>;
  @useResult
  $Res call({@JsonKey(name: 'detail') List<dynamic> detail});
}

/// @nodoc
class _$HttpValidationErrorCopyWithImpl<$Res, $Val extends HttpValidationError>
    implements $HttpValidationErrorCopyWith<$Res> {
  _$HttpValidationErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HttpValidationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
  }) {
    return _then(_value.copyWith(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HttpValidationErrorImplCopyWith<$Res>
    implements $HttpValidationErrorCopyWith<$Res> {
  factory _$$HttpValidationErrorImplCopyWith(_$HttpValidationErrorImpl value,
          $Res Function(_$HttpValidationErrorImpl) then) =
      __$$HttpValidationErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'detail') List<dynamic> detail});
}

/// @nodoc
class __$$HttpValidationErrorImplCopyWithImpl<$Res>
    extends _$HttpValidationErrorCopyWithImpl<$Res, _$HttpValidationErrorImpl>
    implements _$$HttpValidationErrorImplCopyWith<$Res> {
  __$$HttpValidationErrorImplCopyWithImpl(_$HttpValidationErrorImpl _value,
      $Res Function(_$HttpValidationErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HttpValidationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
  }) {
    return _then(_$HttpValidationErrorImpl(
      detail: null == detail
          ? _value._detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$HttpValidationErrorImpl extends _HttpValidationError {
  const _$HttpValidationErrorImpl(
      {@JsonKey(name: 'detail') required final List<dynamic> detail})
      : _detail = detail,
        super._();

  factory _$HttpValidationErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$HttpValidationErrorImplFromJson(json);

  final List<dynamic> _detail;
  @override
  @JsonKey(name: 'detail')
  List<dynamic> get detail {
    if (_detail is EqualUnmodifiableListView) return _detail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_detail);
  }

  @override
  String toString() {
    return 'HttpValidationError(detail: $detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpValidationErrorImpl &&
            const DeepCollectionEquality().equals(other._detail, _detail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_detail));

  /// Create a copy of HttpValidationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpValidationErrorImplCopyWith<_$HttpValidationErrorImpl> get copyWith =>
      __$$HttpValidationErrorImplCopyWithImpl<_$HttpValidationErrorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HttpValidationErrorImplToJson(
      this,
    );
  }
}

abstract class _HttpValidationError extends HttpValidationError {
  const factory _HttpValidationError(
          {@JsonKey(name: 'detail') required final List<dynamic> detail}) =
      _$HttpValidationErrorImpl;
  const _HttpValidationError._() : super._();

  factory _HttpValidationError.fromJson(Map<String, dynamic> json) =
      _$HttpValidationErrorImpl.fromJson;

  @override
  @JsonKey(name: 'detail')
  List<dynamic> get detail;

  /// Create a copy of HttpValidationError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HttpValidationErrorImplCopyWith<_$HttpValidationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
