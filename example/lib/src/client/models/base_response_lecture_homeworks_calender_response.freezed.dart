// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_lecture_homeworks_calender_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseLectureHomeworksCalenderResponse
    _$BaseResponseLectureHomeworksCalenderResponseFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseLectureHomeworksCalenderResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseLectureHomeworksCalenderResponse {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  LectureHomeworksCalenderResponse get data =>
      throw _privateConstructorUsedError;

  /// Serializes this BaseResponseLectureHomeworksCalenderResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseLectureHomeworksCalenderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseLectureHomeworksCalenderResponseCopyWith<
          BaseResponseLectureHomeworksCalenderResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseLectureHomeworksCalenderResponseCopyWith<$Res> {
  factory $BaseResponseLectureHomeworksCalenderResponseCopyWith(
          BaseResponseLectureHomeworksCalenderResponse value,
          $Res Function(BaseResponseLectureHomeworksCalenderResponse) then) =
      _$BaseResponseLectureHomeworksCalenderResponseCopyWithImpl<$Res,
          BaseResponseLectureHomeworksCalenderResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') LectureHomeworksCalenderResponse data});

  $LectureHomeworksCalenderResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$BaseResponseLectureHomeworksCalenderResponseCopyWithImpl<$Res,
        $Val extends BaseResponseLectureHomeworksCalenderResponse>
    implements $BaseResponseLectureHomeworksCalenderResponseCopyWith<$Res> {
  _$BaseResponseLectureHomeworksCalenderResponseCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseLectureHomeworksCalenderResponse
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
              as LectureHomeworksCalenderResponse,
    ) as $Val);
  }

  /// Create a copy of BaseResponseLectureHomeworksCalenderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LectureHomeworksCalenderResponseCopyWith<$Res> get data {
    return $LectureHomeworksCalenderResponseCopyWith<$Res>(_value.data,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseLectureHomeworksCalenderResponseImplCopyWith<$Res>
    implements $BaseResponseLectureHomeworksCalenderResponseCopyWith<$Res> {
  factory _$$BaseResponseLectureHomeworksCalenderResponseImplCopyWith(
          _$BaseResponseLectureHomeworksCalenderResponseImpl value,
          $Res Function(_$BaseResponseLectureHomeworksCalenderResponseImpl)
              then) =
      __$$BaseResponseLectureHomeworksCalenderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') LectureHomeworksCalenderResponse data});

  @override
  $LectureHomeworksCalenderResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$BaseResponseLectureHomeworksCalenderResponseImplCopyWithImpl<$Res>
    extends _$BaseResponseLectureHomeworksCalenderResponseCopyWithImpl<$Res,
        _$BaseResponseLectureHomeworksCalenderResponseImpl>
    implements
        _$$BaseResponseLectureHomeworksCalenderResponseImplCopyWith<$Res> {
  __$$BaseResponseLectureHomeworksCalenderResponseImplCopyWithImpl(
      _$BaseResponseLectureHomeworksCalenderResponseImpl _value,
      $Res Function(_$BaseResponseLectureHomeworksCalenderResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseLectureHomeworksCalenderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseLectureHomeworksCalenderResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LectureHomeworksCalenderResponse,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseLectureHomeworksCalenderResponseImpl
    extends _BaseResponseLectureHomeworksCalenderResponse {
  const _$BaseResponseLectureHomeworksCalenderResponseImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseLectureHomeworksCalenderResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseLectureHomeworksCalenderResponseImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final LectureHomeworksCalenderResponse data;

  @override
  String toString() {
    return 'BaseResponseLectureHomeworksCalenderResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseLectureHomeworksCalenderResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseLectureHomeworksCalenderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseLectureHomeworksCalenderResponseImplCopyWith<
          _$BaseResponseLectureHomeworksCalenderResponseImpl>
      get copyWith =>
          __$$BaseResponseLectureHomeworksCalenderResponseImplCopyWithImpl<
                  _$BaseResponseLectureHomeworksCalenderResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseLectureHomeworksCalenderResponseImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseLectureHomeworksCalenderResponse
    extends BaseResponseLectureHomeworksCalenderResponse {
  const factory _BaseResponseLectureHomeworksCalenderResponse(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final LectureHomeworksCalenderResponse data}) =
      _$BaseResponseLectureHomeworksCalenderResponseImpl;
  const _BaseResponseLectureHomeworksCalenderResponse._() : super._();

  factory _BaseResponseLectureHomeworksCalenderResponse.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseLectureHomeworksCalenderResponseImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  LectureHomeworksCalenderResponse get data;

  /// Create a copy of BaseResponseLectureHomeworksCalenderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseLectureHomeworksCalenderResponseImplCopyWith<
          _$BaseResponseLectureHomeworksCalenderResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
