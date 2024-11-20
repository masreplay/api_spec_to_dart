// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_lecturer_attendance_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseLecturerAttendanceResponse
    _$BaseResponseLecturerAttendanceResponseFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseLecturerAttendanceResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseLecturerAttendanceResponse {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  LecturerAttendanceResponse get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseLecturerAttendanceResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseLecturerAttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseLecturerAttendanceResponseCopyWith<
          BaseResponseLecturerAttendanceResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseLecturerAttendanceResponseCopyWith<$Res> {
  factory $BaseResponseLecturerAttendanceResponseCopyWith(
          BaseResponseLecturerAttendanceResponse value,
          $Res Function(BaseResponseLecturerAttendanceResponse) then) =
      _$BaseResponseLecturerAttendanceResponseCopyWithImpl<$Res,
          BaseResponseLecturerAttendanceResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') LecturerAttendanceResponse data});

  $LecturerAttendanceResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$BaseResponseLecturerAttendanceResponseCopyWithImpl<$Res,
        $Val extends BaseResponseLecturerAttendanceResponse>
    implements $BaseResponseLecturerAttendanceResponseCopyWith<$Res> {
  _$BaseResponseLecturerAttendanceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseLecturerAttendanceResponse
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
              as LecturerAttendanceResponse,
    ) as $Val);
  }

  /// Create a copy of BaseResponseLecturerAttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LecturerAttendanceResponseCopyWith<$Res> get data {
    return $LecturerAttendanceResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseLecturerAttendanceResponseImplCopyWith<$Res>
    implements $BaseResponseLecturerAttendanceResponseCopyWith<$Res> {
  factory _$$BaseResponseLecturerAttendanceResponseImplCopyWith(
          _$BaseResponseLecturerAttendanceResponseImpl value,
          $Res Function(_$BaseResponseLecturerAttendanceResponseImpl) then) =
      __$$BaseResponseLecturerAttendanceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') LecturerAttendanceResponse data});

  @override
  $LecturerAttendanceResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$BaseResponseLecturerAttendanceResponseImplCopyWithImpl<$Res>
    extends _$BaseResponseLecturerAttendanceResponseCopyWithImpl<$Res,
        _$BaseResponseLecturerAttendanceResponseImpl>
    implements _$$BaseResponseLecturerAttendanceResponseImplCopyWith<$Res> {
  __$$BaseResponseLecturerAttendanceResponseImplCopyWithImpl(
      _$BaseResponseLecturerAttendanceResponseImpl _value,
      $Res Function(_$BaseResponseLecturerAttendanceResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseLecturerAttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseLecturerAttendanceResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LecturerAttendanceResponse,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseLecturerAttendanceResponseImpl
    extends _BaseResponseLecturerAttendanceResponse {
  const _$BaseResponseLecturerAttendanceResponseImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseLecturerAttendanceResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseLecturerAttendanceResponseImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final LecturerAttendanceResponse data;

  @override
  String toString() {
    return 'BaseResponseLecturerAttendanceResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseLecturerAttendanceResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseLecturerAttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseLecturerAttendanceResponseImplCopyWith<
          _$BaseResponseLecturerAttendanceResponseImpl>
      get copyWith =>
          __$$BaseResponseLecturerAttendanceResponseImplCopyWithImpl<
              _$BaseResponseLecturerAttendanceResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseLecturerAttendanceResponseImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseLecturerAttendanceResponse
    extends BaseResponseLecturerAttendanceResponse {
  const factory _BaseResponseLecturerAttendanceResponse(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final LecturerAttendanceResponse data}) =
      _$BaseResponseLecturerAttendanceResponseImpl;
  const _BaseResponseLecturerAttendanceResponse._() : super._();

  factory _BaseResponseLecturerAttendanceResponse.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseLecturerAttendanceResponseImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  LecturerAttendanceResponse get data;

  /// Create a copy of BaseResponseLecturerAttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseLecturerAttendanceResponseImplCopyWith<
          _$BaseResponseLecturerAttendanceResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
