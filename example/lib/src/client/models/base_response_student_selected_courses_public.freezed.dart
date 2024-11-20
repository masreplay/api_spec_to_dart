// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_student_selected_courses_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseStudentSelectedCoursesPublic
    _$BaseResponseStudentSelectedCoursesPublicFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseStudentSelectedCoursesPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseStudentSelectedCoursesPublic {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  StudentSelectedCoursesPublic get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseStudentSelectedCoursesPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseStudentSelectedCoursesPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseStudentSelectedCoursesPublicCopyWith<
          BaseResponseStudentSelectedCoursesPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseStudentSelectedCoursesPublicCopyWith<$Res> {
  factory $BaseResponseStudentSelectedCoursesPublicCopyWith(
          BaseResponseStudentSelectedCoursesPublic value,
          $Res Function(BaseResponseStudentSelectedCoursesPublic) then) =
      _$BaseResponseStudentSelectedCoursesPublicCopyWithImpl<$Res,
          BaseResponseStudentSelectedCoursesPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentSelectedCoursesPublic data});

  $StudentSelectedCoursesPublicCopyWith<$Res> get data;
}

/// @nodoc
class _$BaseResponseStudentSelectedCoursesPublicCopyWithImpl<$Res,
        $Val extends BaseResponseStudentSelectedCoursesPublic>
    implements $BaseResponseStudentSelectedCoursesPublicCopyWith<$Res> {
  _$BaseResponseStudentSelectedCoursesPublicCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseStudentSelectedCoursesPublic
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
              as StudentSelectedCoursesPublic,
    ) as $Val);
  }

  /// Create a copy of BaseResponseStudentSelectedCoursesPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentSelectedCoursesPublicCopyWith<$Res> get data {
    return $StudentSelectedCoursesPublicCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseStudentSelectedCoursesPublicImplCopyWith<$Res>
    implements $BaseResponseStudentSelectedCoursesPublicCopyWith<$Res> {
  factory _$$BaseResponseStudentSelectedCoursesPublicImplCopyWith(
          _$BaseResponseStudentSelectedCoursesPublicImpl value,
          $Res Function(_$BaseResponseStudentSelectedCoursesPublicImpl) then) =
      __$$BaseResponseStudentSelectedCoursesPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentSelectedCoursesPublic data});

  @override
  $StudentSelectedCoursesPublicCopyWith<$Res> get data;
}

/// @nodoc
class __$$BaseResponseStudentSelectedCoursesPublicImplCopyWithImpl<$Res>
    extends _$BaseResponseStudentSelectedCoursesPublicCopyWithImpl<$Res,
        _$BaseResponseStudentSelectedCoursesPublicImpl>
    implements _$$BaseResponseStudentSelectedCoursesPublicImplCopyWith<$Res> {
  __$$BaseResponseStudentSelectedCoursesPublicImplCopyWithImpl(
      _$BaseResponseStudentSelectedCoursesPublicImpl _value,
      $Res Function(_$BaseResponseStudentSelectedCoursesPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseStudentSelectedCoursesPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseStudentSelectedCoursesPublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StudentSelectedCoursesPublic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseResponseStudentSelectedCoursesPublicImpl
    implements _BaseResponseStudentSelectedCoursesPublic {
  const _$BaseResponseStudentSelectedCoursesPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data});

  factory _$BaseResponseStudentSelectedCoursesPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseStudentSelectedCoursesPublicImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final StudentSelectedCoursesPublic data;

  @override
  String toString() {
    return 'BaseResponseStudentSelectedCoursesPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseStudentSelectedCoursesPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseStudentSelectedCoursesPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseStudentSelectedCoursesPublicImplCopyWith<
          _$BaseResponseStudentSelectedCoursesPublicImpl>
      get copyWith =>
          __$$BaseResponseStudentSelectedCoursesPublicImplCopyWithImpl<
              _$BaseResponseStudentSelectedCoursesPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseStudentSelectedCoursesPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseStudentSelectedCoursesPublic
    implements BaseResponseStudentSelectedCoursesPublic {
  const factory _BaseResponseStudentSelectedCoursesPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final StudentSelectedCoursesPublic data}) =
      _$BaseResponseStudentSelectedCoursesPublicImpl;

  factory _BaseResponseStudentSelectedCoursesPublic.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseStudentSelectedCoursesPublicImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  StudentSelectedCoursesPublic get data;

  /// Create a copy of BaseResponseStudentSelectedCoursesPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseStudentSelectedCoursesPublicImplCopyWith<
          _$BaseResponseStudentSelectedCoursesPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
