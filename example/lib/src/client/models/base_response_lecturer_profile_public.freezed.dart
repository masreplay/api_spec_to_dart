// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_lecturer_profile_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseLecturerProfilePublic _$BaseResponseLecturerProfilePublicFromJson(
    Map<String, dynamic> json) {
  return _BaseResponseLecturerProfilePublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseLecturerProfilePublic {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  LecturerProfilePublic get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseLecturerProfilePublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseLecturerProfilePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseLecturerProfilePublicCopyWith<BaseResponseLecturerProfilePublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseLecturerProfilePublicCopyWith<$Res> {
  factory $BaseResponseLecturerProfilePublicCopyWith(
          BaseResponseLecturerProfilePublic value,
          $Res Function(BaseResponseLecturerProfilePublic) then) =
      _$BaseResponseLecturerProfilePublicCopyWithImpl<$Res,
          BaseResponseLecturerProfilePublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') LecturerProfilePublic data});

  $LecturerProfilePublicCopyWith<$Res> get data;
}

/// @nodoc
class _$BaseResponseLecturerProfilePublicCopyWithImpl<$Res,
        $Val extends BaseResponseLecturerProfilePublic>
    implements $BaseResponseLecturerProfilePublicCopyWith<$Res> {
  _$BaseResponseLecturerProfilePublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseLecturerProfilePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LecturerProfilePublic,
    ) as $Val);
  }

  /// Create a copy of BaseResponseLecturerProfilePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LecturerProfilePublicCopyWith<$Res> get data {
    return $LecturerProfilePublicCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseLecturerProfilePublicImplCopyWith<$Res>
    implements $BaseResponseLecturerProfilePublicCopyWith<$Res> {
  factory _$$BaseResponseLecturerProfilePublicImplCopyWith(
          _$BaseResponseLecturerProfilePublicImpl value,
          $Res Function(_$BaseResponseLecturerProfilePublicImpl) then) =
      __$$BaseResponseLecturerProfilePublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') LecturerProfilePublic data});

  @override
  $LecturerProfilePublicCopyWith<$Res> get data;
}

/// @nodoc
class __$$BaseResponseLecturerProfilePublicImplCopyWithImpl<$Res>
    extends _$BaseResponseLecturerProfilePublicCopyWithImpl<$Res,
        _$BaseResponseLecturerProfilePublicImpl>
    implements _$$BaseResponseLecturerProfilePublicImplCopyWith<$Res> {
  __$$BaseResponseLecturerProfilePublicImplCopyWithImpl(
      _$BaseResponseLecturerProfilePublicImpl _value,
      $Res Function(_$BaseResponseLecturerProfilePublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseLecturerProfilePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseLecturerProfilePublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LecturerProfilePublic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseResponseLecturerProfilePublicImpl
    implements _BaseResponseLecturerProfilePublic {
  const _$BaseResponseLecturerProfilePublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data});

  factory _$BaseResponseLecturerProfilePublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseLecturerProfilePublicImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final LecturerProfilePublic data;

  @override
  String toString() {
    return 'BaseResponseLecturerProfilePublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseLecturerProfilePublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseLecturerProfilePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseLecturerProfilePublicImplCopyWith<
          _$BaseResponseLecturerProfilePublicImpl>
      get copyWith => __$$BaseResponseLecturerProfilePublicImplCopyWithImpl<
          _$BaseResponseLecturerProfilePublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseLecturerProfilePublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseLecturerProfilePublic
    implements BaseResponseLecturerProfilePublic {
  const factory _BaseResponseLecturerProfilePublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final LecturerProfilePublic data}) =
      _$BaseResponseLecturerProfilePublicImpl;

  factory _BaseResponseLecturerProfilePublic.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseLecturerProfilePublicImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  LecturerProfilePublic get data;

  /// Create a copy of BaseResponseLecturerProfilePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseLecturerProfilePublicImplCopyWith<
          _$BaseResponseLecturerProfilePublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
