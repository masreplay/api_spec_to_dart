// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_list_course_subject_public_.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionListCourseSubjectPublic
    _$BaseResponseUnionListCourseSubjectPublicFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseUnionListCourseSubjectPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionListCourseSubjectPublic {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Data
  @JsonKey(name: 'data')
  List<CourseSubjectPublic>? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionListCourseSubjectPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionListCourseSubjectPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionListCourseSubjectPublicCopyWith<
          BaseResponseUnionListCourseSubjectPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionListCourseSubjectPublicCopyWith<$Res> {
  factory $BaseResponseUnionListCourseSubjectPublicCopyWith(
          BaseResponseUnionListCourseSubjectPublic value,
          $Res Function(BaseResponseUnionListCourseSubjectPublic) then) =
      _$BaseResponseUnionListCourseSubjectPublicCopyWithImpl<$Res,
          BaseResponseUnionListCourseSubjectPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<CourseSubjectPublic>? data});
}

/// @nodoc
class _$BaseResponseUnionListCourseSubjectPublicCopyWithImpl<$Res,
        $Val extends BaseResponseUnionListCourseSubjectPublic>
    implements $BaseResponseUnionListCourseSubjectPublicCopyWith<$Res> {
  _$BaseResponseUnionListCourseSubjectPublicCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionListCourseSubjectPublic
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
              as List<CourseSubjectPublic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseUnionListCourseSubjectPublicImplCopyWith<$Res>
    implements $BaseResponseUnionListCourseSubjectPublicCopyWith<$Res> {
  factory _$$BaseResponseUnionListCourseSubjectPublicImplCopyWith(
          _$BaseResponseUnionListCourseSubjectPublicImpl value,
          $Res Function(_$BaseResponseUnionListCourseSubjectPublicImpl) then) =
      __$$BaseResponseUnionListCourseSubjectPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<CourseSubjectPublic>? data});
}

/// @nodoc
class __$$BaseResponseUnionListCourseSubjectPublicImplCopyWithImpl<$Res>
    extends _$BaseResponseUnionListCourseSubjectPublicCopyWithImpl<$Res,
        _$BaseResponseUnionListCourseSubjectPublicImpl>
    implements _$$BaseResponseUnionListCourseSubjectPublicImplCopyWith<$Res> {
  __$$BaseResponseUnionListCourseSubjectPublicImplCopyWithImpl(
      _$BaseResponseUnionListCourseSubjectPublicImpl _value,
      $Res Function(_$BaseResponseUnionListCourseSubjectPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionListCourseSubjectPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionListCourseSubjectPublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CourseSubjectPublic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseUnionListCourseSubjectPublicImpl
    extends _BaseResponseUnionListCourseSubjectPublic {
  const _$BaseResponseUnionListCourseSubjectPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required final List<CourseSubjectPublic>? data})
      : _data = data,
        super._();

  factory _$BaseResponseUnionListCourseSubjectPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionListCourseSubjectPublicImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Data
  final List<CourseSubjectPublic>? _data;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<CourseSubjectPublic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BaseResponseUnionListCourseSubjectPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseUnionListCourseSubjectPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseUnionListCourseSubjectPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionListCourseSubjectPublicImplCopyWith<
          _$BaseResponseUnionListCourseSubjectPublicImpl>
      get copyWith =>
          __$$BaseResponseUnionListCourseSubjectPublicImplCopyWithImpl<
              _$BaseResponseUnionListCourseSubjectPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionListCourseSubjectPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionListCourseSubjectPublic
    extends BaseResponseUnionListCourseSubjectPublic {
  const factory _BaseResponseUnionListCourseSubjectPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final List<CourseSubjectPublic>? data}) =
      _$BaseResponseUnionListCourseSubjectPublicImpl;
  const _BaseResponseUnionListCourseSubjectPublic._() : super._();

  factory _BaseResponseUnionListCourseSubjectPublic.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionListCourseSubjectPublicImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<CourseSubjectPublic>? get data;

  /// Create a copy of BaseResponseUnionListCourseSubjectPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionListCourseSubjectPublicImplCopyWith<
          _$BaseResponseUnionListCourseSubjectPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
