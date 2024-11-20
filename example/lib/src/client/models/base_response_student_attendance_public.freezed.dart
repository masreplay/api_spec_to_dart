// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_student_attendance_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseStudentAttendancePublic
    _$BaseResponseStudentAttendancePublicFromJson(Map<String, dynamic> json) {
  return _BaseResponseStudentAttendancePublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseStudentAttendancePublic {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  StudentAttendancePublic get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseStudentAttendancePublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseStudentAttendancePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseStudentAttendancePublicCopyWith<
          BaseResponseStudentAttendancePublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseStudentAttendancePublicCopyWith<$Res> {
  factory $BaseResponseStudentAttendancePublicCopyWith(
          BaseResponseStudentAttendancePublic value,
          $Res Function(BaseResponseStudentAttendancePublic) then) =
      _$BaseResponseStudentAttendancePublicCopyWithImpl<$Res,
          BaseResponseStudentAttendancePublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentAttendancePublic data});

  $StudentAttendancePublicCopyWith<$Res> get data;
}

/// @nodoc
class _$BaseResponseStudentAttendancePublicCopyWithImpl<$Res,
        $Val extends BaseResponseStudentAttendancePublic>
    implements $BaseResponseStudentAttendancePublicCopyWith<$Res> {
  _$BaseResponseStudentAttendancePublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseStudentAttendancePublic
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
              as StudentAttendancePublic,
    ) as $Val);
  }

  /// Create a copy of BaseResponseStudentAttendancePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentAttendancePublicCopyWith<$Res> get data {
    return $StudentAttendancePublicCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseStudentAttendancePublicImplCopyWith<$Res>
    implements $BaseResponseStudentAttendancePublicCopyWith<$Res> {
  factory _$$BaseResponseStudentAttendancePublicImplCopyWith(
          _$BaseResponseStudentAttendancePublicImpl value,
          $Res Function(_$BaseResponseStudentAttendancePublicImpl) then) =
      __$$BaseResponseStudentAttendancePublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentAttendancePublic data});

  @override
  $StudentAttendancePublicCopyWith<$Res> get data;
}

/// @nodoc
class __$$BaseResponseStudentAttendancePublicImplCopyWithImpl<$Res>
    extends _$BaseResponseStudentAttendancePublicCopyWithImpl<$Res,
        _$BaseResponseStudentAttendancePublicImpl>
    implements _$$BaseResponseStudentAttendancePublicImplCopyWith<$Res> {
  __$$BaseResponseStudentAttendancePublicImplCopyWithImpl(
      _$BaseResponseStudentAttendancePublicImpl _value,
      $Res Function(_$BaseResponseStudentAttendancePublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseStudentAttendancePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseStudentAttendancePublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StudentAttendancePublic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseResponseStudentAttendancePublicImpl
    implements _BaseResponseStudentAttendancePublic {
  const _$BaseResponseStudentAttendancePublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data});

  factory _$BaseResponseStudentAttendancePublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseStudentAttendancePublicImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final StudentAttendancePublic data;

  @override
  String toString() {
    return 'BaseResponseStudentAttendancePublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseStudentAttendancePublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseStudentAttendancePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseStudentAttendancePublicImplCopyWith<
          _$BaseResponseStudentAttendancePublicImpl>
      get copyWith => __$$BaseResponseStudentAttendancePublicImplCopyWithImpl<
          _$BaseResponseStudentAttendancePublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseStudentAttendancePublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseStudentAttendancePublic
    implements BaseResponseStudentAttendancePublic {
  const factory _BaseResponseStudentAttendancePublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final StudentAttendancePublic data}) =
      _$BaseResponseStudentAttendancePublicImpl;

  factory _BaseResponseStudentAttendancePublic.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseStudentAttendancePublicImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  StudentAttendancePublic get data;

  /// Create a copy of BaseResponseStudentAttendancePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseStudentAttendancePublicImplCopyWith<
          _$BaseResponseStudentAttendancePublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
