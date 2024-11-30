// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_student_school_info_response_.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionStudentSchoolInfoResponse
    _$BaseResponseUnionStudentSchoolInfoResponseFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseUnionStudentSchoolInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionStudentSchoolInfoResponse {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  StudentSchoolInfoResponse? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionStudentSchoolInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionStudentSchoolInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionStudentSchoolInfoResponseCopyWith<
          BaseResponseUnionStudentSchoolInfoResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionStudentSchoolInfoResponseCopyWith<$Res> {
  factory $BaseResponseUnionStudentSchoolInfoResponseCopyWith(
          BaseResponseUnionStudentSchoolInfoResponse value,
          $Res Function(BaseResponseUnionStudentSchoolInfoResponse) then) =
      _$BaseResponseUnionStudentSchoolInfoResponseCopyWithImpl<$Res,
          BaseResponseUnionStudentSchoolInfoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentSchoolInfoResponse? data});

  $StudentSchoolInfoResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$BaseResponseUnionStudentSchoolInfoResponseCopyWithImpl<$Res,
        $Val extends BaseResponseUnionStudentSchoolInfoResponse>
    implements $BaseResponseUnionStudentSchoolInfoResponseCopyWith<$Res> {
  _$BaseResponseUnionStudentSchoolInfoResponseCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionStudentSchoolInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StudentSchoolInfoResponse?,
    ) as $Val);
  }

  /// Create a copy of BaseResponseUnionStudentSchoolInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentSchoolInfoResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $StudentSchoolInfoResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseUnionStudentSchoolInfoResponseImplCopyWith<$Res>
    implements $BaseResponseUnionStudentSchoolInfoResponseCopyWith<$Res> {
  factory _$$BaseResponseUnionStudentSchoolInfoResponseImplCopyWith(
          _$BaseResponseUnionStudentSchoolInfoResponseImpl value,
          $Res Function(_$BaseResponseUnionStudentSchoolInfoResponseImpl)
              then) =
      __$$BaseResponseUnionStudentSchoolInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentSchoolInfoResponse? data});

  @override
  $StudentSchoolInfoResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BaseResponseUnionStudentSchoolInfoResponseImplCopyWithImpl<$Res>
    extends _$BaseResponseUnionStudentSchoolInfoResponseCopyWithImpl<$Res,
        _$BaseResponseUnionStudentSchoolInfoResponseImpl>
    implements _$$BaseResponseUnionStudentSchoolInfoResponseImplCopyWith<$Res> {
  __$$BaseResponseUnionStudentSchoolInfoResponseImplCopyWithImpl(
      _$BaseResponseUnionStudentSchoolInfoResponseImpl _value,
      $Res Function(_$BaseResponseUnionStudentSchoolInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionStudentSchoolInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionStudentSchoolInfoResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StudentSchoolInfoResponse?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseUnionStudentSchoolInfoResponseImpl
    extends _BaseResponseUnionStudentSchoolInfoResponse {
  const _$BaseResponseUnionStudentSchoolInfoResponseImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseUnionStudentSchoolInfoResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionStudentSchoolInfoResponseImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final StudentSchoolInfoResponse? data;

  @override
  String toString() {
    return 'BaseResponseUnionStudentSchoolInfoResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseUnionStudentSchoolInfoResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseUnionStudentSchoolInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionStudentSchoolInfoResponseImplCopyWith<
          _$BaseResponseUnionStudentSchoolInfoResponseImpl>
      get copyWith =>
          __$$BaseResponseUnionStudentSchoolInfoResponseImplCopyWithImpl<
                  _$BaseResponseUnionStudentSchoolInfoResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionStudentSchoolInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionStudentSchoolInfoResponse
    extends BaseResponseUnionStudentSchoolInfoResponse {
  const factory _BaseResponseUnionStudentSchoolInfoResponse(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final StudentSchoolInfoResponse? data}) =
      _$BaseResponseUnionStudentSchoolInfoResponseImpl;
  const _BaseResponseUnionStudentSchoolInfoResponse._() : super._();

  factory _BaseResponseUnionStudentSchoolInfoResponse.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionStudentSchoolInfoResponseImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  StudentSchoolInfoResponse? get data;

  /// Create a copy of BaseResponseUnionStudentSchoolInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionStudentSchoolInfoResponseImplCopyWith<
          _$BaseResponseUnionStudentSchoolInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
