// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_student_personal_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseStudentPersonalInfoResponse
    _$BaseResponseStudentPersonalInfoResponseFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseStudentPersonalInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseStudentPersonalInfoResponse {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  StudentPersonalInfoResponse get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseStudentPersonalInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseStudentPersonalInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseStudentPersonalInfoResponseCopyWith<
          BaseResponseStudentPersonalInfoResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseStudentPersonalInfoResponseCopyWith<$Res> {
  factory $BaseResponseStudentPersonalInfoResponseCopyWith(
          BaseResponseStudentPersonalInfoResponse value,
          $Res Function(BaseResponseStudentPersonalInfoResponse) then) =
      _$BaseResponseStudentPersonalInfoResponseCopyWithImpl<$Res,
          BaseResponseStudentPersonalInfoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentPersonalInfoResponse data});

  $StudentPersonalInfoResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$BaseResponseStudentPersonalInfoResponseCopyWithImpl<$Res,
        $Val extends BaseResponseStudentPersonalInfoResponse>
    implements $BaseResponseStudentPersonalInfoResponseCopyWith<$Res> {
  _$BaseResponseStudentPersonalInfoResponseCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseStudentPersonalInfoResponse
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
              as StudentPersonalInfoResponse,
    ) as $Val);
  }

  /// Create a copy of BaseResponseStudentPersonalInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentPersonalInfoResponseCopyWith<$Res> get data {
    return $StudentPersonalInfoResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseStudentPersonalInfoResponseImplCopyWith<$Res>
    implements $BaseResponseStudentPersonalInfoResponseCopyWith<$Res> {
  factory _$$BaseResponseStudentPersonalInfoResponseImplCopyWith(
          _$BaseResponseStudentPersonalInfoResponseImpl value,
          $Res Function(_$BaseResponseStudentPersonalInfoResponseImpl) then) =
      __$$BaseResponseStudentPersonalInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentPersonalInfoResponse data});

  @override
  $StudentPersonalInfoResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$BaseResponseStudentPersonalInfoResponseImplCopyWithImpl<$Res>
    extends _$BaseResponseStudentPersonalInfoResponseCopyWithImpl<$Res,
        _$BaseResponseStudentPersonalInfoResponseImpl>
    implements _$$BaseResponseStudentPersonalInfoResponseImplCopyWith<$Res> {
  __$$BaseResponseStudentPersonalInfoResponseImplCopyWithImpl(
      _$BaseResponseStudentPersonalInfoResponseImpl _value,
      $Res Function(_$BaseResponseStudentPersonalInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseStudentPersonalInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseStudentPersonalInfoResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StudentPersonalInfoResponse,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseStudentPersonalInfoResponseImpl
    extends _BaseResponseStudentPersonalInfoResponse {
  const _$BaseResponseStudentPersonalInfoResponseImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseStudentPersonalInfoResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseStudentPersonalInfoResponseImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final StudentPersonalInfoResponse data;

  @override
  String toString() {
    return 'BaseResponseStudentPersonalInfoResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseStudentPersonalInfoResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseStudentPersonalInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseStudentPersonalInfoResponseImplCopyWith<
          _$BaseResponseStudentPersonalInfoResponseImpl>
      get copyWith =>
          __$$BaseResponseStudentPersonalInfoResponseImplCopyWithImpl<
              _$BaseResponseStudentPersonalInfoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseStudentPersonalInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseStudentPersonalInfoResponse
    extends BaseResponseStudentPersonalInfoResponse {
  const factory _BaseResponseStudentPersonalInfoResponse(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final StudentPersonalInfoResponse data}) =
      _$BaseResponseStudentPersonalInfoResponseImpl;
  const _BaseResponseStudentPersonalInfoResponse._() : super._();

  factory _BaseResponseStudentPersonalInfoResponse.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseStudentPersonalInfoResponseImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  StudentPersonalInfoResponse get data;

  /// Create a copy of BaseResponseStudentPersonalInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseStudentPersonalInfoResponseImplCopyWith<
          _$BaseResponseStudentPersonalInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
