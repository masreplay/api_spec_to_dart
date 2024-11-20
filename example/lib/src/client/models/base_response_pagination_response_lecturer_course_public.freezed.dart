// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_pagination_response_lecturer_course_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponsePaginationResponseLecturerCoursePublic
    _$BaseResponsePaginationResponseLecturerCoursePublicFromJson(
        Map<String, dynamic> json) {
  return _BaseResponsePaginationResponseLecturerCoursePublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponsePaginationResponseLecturerCoursePublic {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  PaginationResponseLecturerCoursePublic get data =>
      throw _privateConstructorUsedError;

  /// Serializes this BaseResponsePaginationResponseLecturerCoursePublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponsePaginationResponseLecturerCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponsePaginationResponseLecturerCoursePublicCopyWith<
          BaseResponsePaginationResponseLecturerCoursePublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponsePaginationResponseLecturerCoursePublicCopyWith<
    $Res> {
  factory $BaseResponsePaginationResponseLecturerCoursePublicCopyWith(
          BaseResponsePaginationResponseLecturerCoursePublic value,
          $Res Function(BaseResponsePaginationResponseLecturerCoursePublic)
              then) =
      _$BaseResponsePaginationResponseLecturerCoursePublicCopyWithImpl<$Res,
          BaseResponsePaginationResponseLecturerCoursePublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') PaginationResponseLecturerCoursePublic data});

  $PaginationResponseLecturerCoursePublicCopyWith<$Res> get data;
}

/// @nodoc
class _$BaseResponsePaginationResponseLecturerCoursePublicCopyWithImpl<$Res,
        $Val extends BaseResponsePaginationResponseLecturerCoursePublic>
    implements
        $BaseResponsePaginationResponseLecturerCoursePublicCopyWith<$Res> {
  _$BaseResponsePaginationResponseLecturerCoursePublicCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponsePaginationResponseLecturerCoursePublic
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
              as PaginationResponseLecturerCoursePublic,
    ) as $Val);
  }

  /// Create a copy of BaseResponsePaginationResponseLecturerCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationResponseLecturerCoursePublicCopyWith<$Res> get data {
    return $PaginationResponseLecturerCoursePublicCopyWith<$Res>(_value.data,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponsePaginationResponseLecturerCoursePublicImplCopyWith<
        $Res>
    implements
        $BaseResponsePaginationResponseLecturerCoursePublicCopyWith<$Res> {
  factory _$$BaseResponsePaginationResponseLecturerCoursePublicImplCopyWith(
          _$BaseResponsePaginationResponseLecturerCoursePublicImpl value,
          $Res Function(
                  _$BaseResponsePaginationResponseLecturerCoursePublicImpl)
              then) =
      __$$BaseResponsePaginationResponseLecturerCoursePublicImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') PaginationResponseLecturerCoursePublic data});

  @override
  $PaginationResponseLecturerCoursePublicCopyWith<$Res> get data;
}

/// @nodoc
class __$$BaseResponsePaginationResponseLecturerCoursePublicImplCopyWithImpl<
        $Res>
    extends _$BaseResponsePaginationResponseLecturerCoursePublicCopyWithImpl<
        $Res, _$BaseResponsePaginationResponseLecturerCoursePublicImpl>
    implements
        _$$BaseResponsePaginationResponseLecturerCoursePublicImplCopyWith<
            $Res> {
  __$$BaseResponsePaginationResponseLecturerCoursePublicImplCopyWithImpl(
      _$BaseResponsePaginationResponseLecturerCoursePublicImpl _value,
      $Res Function(_$BaseResponsePaginationResponseLecturerCoursePublicImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of BaseResponsePaginationResponseLecturerCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponsePaginationResponseLecturerCoursePublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaginationResponseLecturerCoursePublic,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponsePaginationResponseLecturerCoursePublicImpl
    extends _BaseResponsePaginationResponseLecturerCoursePublic {
  const _$BaseResponsePaginationResponseLecturerCoursePublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponsePaginationResponseLecturerCoursePublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponsePaginationResponseLecturerCoursePublicImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final PaginationResponseLecturerCoursePublic data;

  @override
  String toString() {
    return 'BaseResponsePaginationResponseLecturerCoursePublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponsePaginationResponseLecturerCoursePublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponsePaginationResponseLecturerCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponsePaginationResponseLecturerCoursePublicImplCopyWith<
          _$BaseResponsePaginationResponseLecturerCoursePublicImpl>
      get copyWith =>
          __$$BaseResponsePaginationResponseLecturerCoursePublicImplCopyWithImpl<
                  _$BaseResponsePaginationResponseLecturerCoursePublicImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponsePaginationResponseLecturerCoursePublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponsePaginationResponseLecturerCoursePublic
    extends BaseResponsePaginationResponseLecturerCoursePublic {
  const factory _BaseResponsePaginationResponseLecturerCoursePublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final PaginationResponseLecturerCoursePublic data}) =
      _$BaseResponsePaginationResponseLecturerCoursePublicImpl;
  const _BaseResponsePaginationResponseLecturerCoursePublic._() : super._();

  factory _BaseResponsePaginationResponseLecturerCoursePublic.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponsePaginationResponseLecturerCoursePublicImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  PaginationResponseLecturerCoursePublic get data;

  /// Create a copy of BaseResponsePaginationResponseLecturerCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponsePaginationResponseLecturerCoursePublicImplCopyWith<
          _$BaseResponsePaginationResponseLecturerCoursePublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
