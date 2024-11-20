// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_lecturer_course_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseLecturerCoursePublic _$BaseResponseLecturerCoursePublicFromJson(
    Map<String, dynamic> json) {
  return _BaseResponseLecturerCoursePublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseLecturerCoursePublic {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  LecturerCoursePublic get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseLecturerCoursePublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseLecturerCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseLecturerCoursePublicCopyWith<BaseResponseLecturerCoursePublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseLecturerCoursePublicCopyWith<$Res> {
  factory $BaseResponseLecturerCoursePublicCopyWith(
          BaseResponseLecturerCoursePublic value,
          $Res Function(BaseResponseLecturerCoursePublic) then) =
      _$BaseResponseLecturerCoursePublicCopyWithImpl<$Res,
          BaseResponseLecturerCoursePublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') LecturerCoursePublic data});

  $LecturerCoursePublicCopyWith<$Res> get data;
}

/// @nodoc
class _$BaseResponseLecturerCoursePublicCopyWithImpl<$Res,
        $Val extends BaseResponseLecturerCoursePublic>
    implements $BaseResponseLecturerCoursePublicCopyWith<$Res> {
  _$BaseResponseLecturerCoursePublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseLecturerCoursePublic
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
              as LecturerCoursePublic,
    ) as $Val);
  }

  /// Create a copy of BaseResponseLecturerCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LecturerCoursePublicCopyWith<$Res> get data {
    return $LecturerCoursePublicCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseLecturerCoursePublicImplCopyWith<$Res>
    implements $BaseResponseLecturerCoursePublicCopyWith<$Res> {
  factory _$$BaseResponseLecturerCoursePublicImplCopyWith(
          _$BaseResponseLecturerCoursePublicImpl value,
          $Res Function(_$BaseResponseLecturerCoursePublicImpl) then) =
      __$$BaseResponseLecturerCoursePublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') LecturerCoursePublic data});

  @override
  $LecturerCoursePublicCopyWith<$Res> get data;
}

/// @nodoc
class __$$BaseResponseLecturerCoursePublicImplCopyWithImpl<$Res>
    extends _$BaseResponseLecturerCoursePublicCopyWithImpl<$Res,
        _$BaseResponseLecturerCoursePublicImpl>
    implements _$$BaseResponseLecturerCoursePublicImplCopyWith<$Res> {
  __$$BaseResponseLecturerCoursePublicImplCopyWithImpl(
      _$BaseResponseLecturerCoursePublicImpl _value,
      $Res Function(_$BaseResponseLecturerCoursePublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseLecturerCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseLecturerCoursePublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LecturerCoursePublic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseResponseLecturerCoursePublicImpl
    implements _BaseResponseLecturerCoursePublic {
  const _$BaseResponseLecturerCoursePublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data});

  factory _$BaseResponseLecturerCoursePublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseLecturerCoursePublicImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final LecturerCoursePublic data;

  @override
  String toString() {
    return 'BaseResponseLecturerCoursePublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseLecturerCoursePublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseLecturerCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseLecturerCoursePublicImplCopyWith<
          _$BaseResponseLecturerCoursePublicImpl>
      get copyWith => __$$BaseResponseLecturerCoursePublicImplCopyWithImpl<
          _$BaseResponseLecturerCoursePublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseLecturerCoursePublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseLecturerCoursePublic
    implements BaseResponseLecturerCoursePublic {
  const factory _BaseResponseLecturerCoursePublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final LecturerCoursePublic data}) =
      _$BaseResponseLecturerCoursePublicImpl;

  factory _BaseResponseLecturerCoursePublic.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseLecturerCoursePublicImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  LecturerCoursePublic get data;

  /// Create a copy of BaseResponseLecturerCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseLecturerCoursePublicImplCopyWith<
          _$BaseResponseLecturerCoursePublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
