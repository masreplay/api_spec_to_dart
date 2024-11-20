// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_course_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseCoursePublic _$BaseResponseCoursePublicFromJson(
    Map<String, dynamic> json) {
  return _BaseResponseCoursePublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseCoursePublic {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  CoursePublic get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseCoursePublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseCoursePublicCopyWith<BaseResponseCoursePublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseCoursePublicCopyWith<$Res> {
  factory $BaseResponseCoursePublicCopyWith(BaseResponseCoursePublic value,
          $Res Function(BaseResponseCoursePublic) then) =
      _$BaseResponseCoursePublicCopyWithImpl<$Res, BaseResponseCoursePublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') CoursePublic data});

  $CoursePublicCopyWith<$Res> get data;
}

/// @nodoc
class _$BaseResponseCoursePublicCopyWithImpl<$Res,
        $Val extends BaseResponseCoursePublic>
    implements $BaseResponseCoursePublicCopyWith<$Res> {
  _$BaseResponseCoursePublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseCoursePublic
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
              as CoursePublic,
    ) as $Val);
  }

  /// Create a copy of BaseResponseCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoursePublicCopyWith<$Res> get data {
    return $CoursePublicCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseCoursePublicImplCopyWith<$Res>
    implements $BaseResponseCoursePublicCopyWith<$Res> {
  factory _$$BaseResponseCoursePublicImplCopyWith(
          _$BaseResponseCoursePublicImpl value,
          $Res Function(_$BaseResponseCoursePublicImpl) then) =
      __$$BaseResponseCoursePublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') CoursePublic data});

  @override
  $CoursePublicCopyWith<$Res> get data;
}

/// @nodoc
class __$$BaseResponseCoursePublicImplCopyWithImpl<$Res>
    extends _$BaseResponseCoursePublicCopyWithImpl<$Res,
        _$BaseResponseCoursePublicImpl>
    implements _$$BaseResponseCoursePublicImplCopyWith<$Res> {
  __$$BaseResponseCoursePublicImplCopyWithImpl(
      _$BaseResponseCoursePublicImpl _value,
      $Res Function(_$BaseResponseCoursePublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseCoursePublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CoursePublic,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseCoursePublicImpl extends _BaseResponseCoursePublic {
  const _$BaseResponseCoursePublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseCoursePublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseResponseCoursePublicImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final CoursePublic data;

  @override
  String toString() {
    return 'BaseResponseCoursePublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseCoursePublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseCoursePublicImplCopyWith<_$BaseResponseCoursePublicImpl>
      get copyWith => __$$BaseResponseCoursePublicImplCopyWithImpl<
          _$BaseResponseCoursePublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseCoursePublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseCoursePublic extends BaseResponseCoursePublic {
  const factory _BaseResponseCoursePublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final CoursePublic data}) =
      _$BaseResponseCoursePublicImpl;
  const _BaseResponseCoursePublic._() : super._();

  factory _BaseResponseCoursePublic.fromJson(Map<String, dynamic> json) =
      _$BaseResponseCoursePublicImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  CoursePublic get data;

  /// Create a copy of BaseResponseCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseCoursePublicImplCopyWith<_$BaseResponseCoursePublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
