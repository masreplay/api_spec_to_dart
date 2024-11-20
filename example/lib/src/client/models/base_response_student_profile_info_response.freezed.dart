// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_student_profile_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseStudentProfileInfoResponse
    _$BaseResponseStudentProfileInfoResponseFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseStudentProfileInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseStudentProfileInfoResponse {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  StudentProfileInfoResponse get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseStudentProfileInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseStudentProfileInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseStudentProfileInfoResponseCopyWith<
          BaseResponseStudentProfileInfoResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseStudentProfileInfoResponseCopyWith<$Res> {
  factory $BaseResponseStudentProfileInfoResponseCopyWith(
          BaseResponseStudentProfileInfoResponse value,
          $Res Function(BaseResponseStudentProfileInfoResponse) then) =
      _$BaseResponseStudentProfileInfoResponseCopyWithImpl<$Res,
          BaseResponseStudentProfileInfoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentProfileInfoResponse data});

  $StudentProfileInfoResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$BaseResponseStudentProfileInfoResponseCopyWithImpl<$Res,
        $Val extends BaseResponseStudentProfileInfoResponse>
    implements $BaseResponseStudentProfileInfoResponseCopyWith<$Res> {
  _$BaseResponseStudentProfileInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseStudentProfileInfoResponse
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
              as StudentProfileInfoResponse,
    ) as $Val);
  }

  /// Create a copy of BaseResponseStudentProfileInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentProfileInfoResponseCopyWith<$Res> get data {
    return $StudentProfileInfoResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseStudentProfileInfoResponseImplCopyWith<$Res>
    implements $BaseResponseStudentProfileInfoResponseCopyWith<$Res> {
  factory _$$BaseResponseStudentProfileInfoResponseImplCopyWith(
          _$BaseResponseStudentProfileInfoResponseImpl value,
          $Res Function(_$BaseResponseStudentProfileInfoResponseImpl) then) =
      __$$BaseResponseStudentProfileInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentProfileInfoResponse data});

  @override
  $StudentProfileInfoResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$BaseResponseStudentProfileInfoResponseImplCopyWithImpl<$Res>
    extends _$BaseResponseStudentProfileInfoResponseCopyWithImpl<$Res,
        _$BaseResponseStudentProfileInfoResponseImpl>
    implements _$$BaseResponseStudentProfileInfoResponseImplCopyWith<$Res> {
  __$$BaseResponseStudentProfileInfoResponseImplCopyWithImpl(
      _$BaseResponseStudentProfileInfoResponseImpl _value,
      $Res Function(_$BaseResponseStudentProfileInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseStudentProfileInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseStudentProfileInfoResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StudentProfileInfoResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseResponseStudentProfileInfoResponseImpl
    implements _BaseResponseStudentProfileInfoResponse {
  const _$BaseResponseStudentProfileInfoResponseImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data});

  factory _$BaseResponseStudentProfileInfoResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseStudentProfileInfoResponseImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final StudentProfileInfoResponse data;

  @override
  String toString() {
    return 'BaseResponseStudentProfileInfoResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseStudentProfileInfoResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseStudentProfileInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseStudentProfileInfoResponseImplCopyWith<
          _$BaseResponseStudentProfileInfoResponseImpl>
      get copyWith =>
          __$$BaseResponseStudentProfileInfoResponseImplCopyWithImpl<
              _$BaseResponseStudentProfileInfoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseStudentProfileInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseStudentProfileInfoResponse
    implements BaseResponseStudentProfileInfoResponse {
  const factory _BaseResponseStudentProfileInfoResponse(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final StudentProfileInfoResponse data}) =
      _$BaseResponseStudentProfileInfoResponseImpl;

  factory _BaseResponseStudentProfileInfoResponse.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseStudentProfileInfoResponseImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  StudentProfileInfoResponse get data;

  /// Create a copy of BaseResponseStudentProfileInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseStudentProfileInfoResponseImplCopyWith<
          _$BaseResponseStudentProfileInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
