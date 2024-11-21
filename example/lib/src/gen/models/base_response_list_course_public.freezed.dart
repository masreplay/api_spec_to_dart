// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_list_course_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseListCoursePublic _$BaseResponseListCoursePublicFromJson(
    Map<String, dynamic> json) {
  return _BaseResponseListCoursePublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseListCoursePublic {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Data
  @JsonKey(name: 'data')
  List<CoursePublic> get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseListCoursePublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseListCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseListCoursePublicCopyWith<BaseResponseListCoursePublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseListCoursePublicCopyWith<$Res> {
  factory $BaseResponseListCoursePublicCopyWith(
          BaseResponseListCoursePublic value,
          $Res Function(BaseResponseListCoursePublic) then) =
      _$BaseResponseListCoursePublicCopyWithImpl<$Res,
          BaseResponseListCoursePublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<CoursePublic> data});
}

/// @nodoc
class _$BaseResponseListCoursePublicCopyWithImpl<$Res,
        $Val extends BaseResponseListCoursePublic>
    implements $BaseResponseListCoursePublicCopyWith<$Res> {
  _$BaseResponseListCoursePublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseListCoursePublic
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
              as List<CoursePublic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseListCoursePublicImplCopyWith<$Res>
    implements $BaseResponseListCoursePublicCopyWith<$Res> {
  factory _$$BaseResponseListCoursePublicImplCopyWith(
          _$BaseResponseListCoursePublicImpl value,
          $Res Function(_$BaseResponseListCoursePublicImpl) then) =
      __$$BaseResponseListCoursePublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<CoursePublic> data});
}

/// @nodoc
class __$$BaseResponseListCoursePublicImplCopyWithImpl<$Res>
    extends _$BaseResponseListCoursePublicCopyWithImpl<$Res,
        _$BaseResponseListCoursePublicImpl>
    implements _$$BaseResponseListCoursePublicImplCopyWith<$Res> {
  __$$BaseResponseListCoursePublicImplCopyWithImpl(
      _$BaseResponseListCoursePublicImpl _value,
      $Res Function(_$BaseResponseListCoursePublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseListCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseListCoursePublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CoursePublic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseListCoursePublicImpl extends _BaseResponseListCoursePublic {
  const _$BaseResponseListCoursePublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required final List<CoursePublic> data})
      : _data = data,
        super._();

  factory _$BaseResponseListCoursePublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseListCoursePublicImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Data
  final List<CoursePublic> _data;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<CoursePublic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BaseResponseListCoursePublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseListCoursePublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseListCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseListCoursePublicImplCopyWith<
          _$BaseResponseListCoursePublicImpl>
      get copyWith => __$$BaseResponseListCoursePublicImplCopyWithImpl<
          _$BaseResponseListCoursePublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseListCoursePublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseListCoursePublic
    extends BaseResponseListCoursePublic {
  const factory _BaseResponseListCoursePublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final List<CoursePublic> data}) =
      _$BaseResponseListCoursePublicImpl;
  const _BaseResponseListCoursePublic._() : super._();

  factory _BaseResponseListCoursePublic.fromJson(Map<String, dynamic> json) =
      _$BaseResponseListCoursePublicImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<CoursePublic> get data;

  /// Create a copy of BaseResponseListCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseListCoursePublicImplCopyWith<
          _$BaseResponseListCoursePublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
