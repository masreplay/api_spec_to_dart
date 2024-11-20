// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_list_course_subject_public_none_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionListCourseSubjectPublicNoneType
    _$BaseResponseUnionListCourseSubjectPublicNoneTypeFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseUnionListCourseSubjectPublicNoneType.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionListCourseSubjectPublicNoneType {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<dynamic>? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionListCourseSubjectPublicNoneType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionListCourseSubjectPublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionListCourseSubjectPublicNoneTypeCopyWith<
          BaseResponseUnionListCourseSubjectPublicNoneType>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionListCourseSubjectPublicNoneTypeCopyWith<$Res> {
  factory $BaseResponseUnionListCourseSubjectPublicNoneTypeCopyWith(
          BaseResponseUnionListCourseSubjectPublicNoneType value,
          $Res Function(BaseResponseUnionListCourseSubjectPublicNoneType)
              then) =
      _$BaseResponseUnionListCourseSubjectPublicNoneTypeCopyWithImpl<$Res,
          BaseResponseUnionListCourseSubjectPublicNoneType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<dynamic>? data});
}

/// @nodoc
class _$BaseResponseUnionListCourseSubjectPublicNoneTypeCopyWithImpl<$Res,
        $Val extends BaseResponseUnionListCourseSubjectPublicNoneType>
    implements $BaseResponseUnionListCourseSubjectPublicNoneTypeCopyWith<$Res> {
  _$BaseResponseUnionListCourseSubjectPublicNoneTypeCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionListCourseSubjectPublicNoneType
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
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseUnionListCourseSubjectPublicNoneTypeImplCopyWith<
        $Res>
    implements $BaseResponseUnionListCourseSubjectPublicNoneTypeCopyWith<$Res> {
  factory _$$BaseResponseUnionListCourseSubjectPublicNoneTypeImplCopyWith(
          _$BaseResponseUnionListCourseSubjectPublicNoneTypeImpl value,
          $Res Function(_$BaseResponseUnionListCourseSubjectPublicNoneTypeImpl)
              then) =
      __$$BaseResponseUnionListCourseSubjectPublicNoneTypeImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<dynamic>? data});
}

/// @nodoc
class __$$BaseResponseUnionListCourseSubjectPublicNoneTypeImplCopyWithImpl<$Res>
    extends _$BaseResponseUnionListCourseSubjectPublicNoneTypeCopyWithImpl<$Res,
        _$BaseResponseUnionListCourseSubjectPublicNoneTypeImpl>
    implements
        _$$BaseResponseUnionListCourseSubjectPublicNoneTypeImplCopyWith<$Res> {
  __$$BaseResponseUnionListCourseSubjectPublicNoneTypeImplCopyWithImpl(
      _$BaseResponseUnionListCourseSubjectPublicNoneTypeImpl _value,
      $Res Function(_$BaseResponseUnionListCourseSubjectPublicNoneTypeImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionListCourseSubjectPublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionListCourseSubjectPublicNoneTypeImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseUnionListCourseSubjectPublicNoneTypeImpl
    extends _BaseResponseUnionListCourseSubjectPublicNoneType {
  const _$BaseResponseUnionListCourseSubjectPublicNoneTypeImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required final List<dynamic>? data})
      : _data = data,
        super._();

  factory _$BaseResponseUnionListCourseSubjectPublicNoneTypeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionListCourseSubjectPublicNoneTypeImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<dynamic>? _data;
  @override
  @JsonKey(name: 'data')
  List<dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BaseResponseUnionListCourseSubjectPublicNoneType(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseUnionListCourseSubjectPublicNoneTypeImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseUnionListCourseSubjectPublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionListCourseSubjectPublicNoneTypeImplCopyWith<
          _$BaseResponseUnionListCourseSubjectPublicNoneTypeImpl>
      get copyWith =>
          __$$BaseResponseUnionListCourseSubjectPublicNoneTypeImplCopyWithImpl<
                  _$BaseResponseUnionListCourseSubjectPublicNoneTypeImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionListCourseSubjectPublicNoneTypeImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionListCourseSubjectPublicNoneType
    extends BaseResponseUnionListCourseSubjectPublicNoneType {
  const factory _BaseResponseUnionListCourseSubjectPublicNoneType(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final List<dynamic>? data}) =
      _$BaseResponseUnionListCourseSubjectPublicNoneTypeImpl;
  const _BaseResponseUnionListCourseSubjectPublicNoneType._() : super._();

  factory _BaseResponseUnionListCourseSubjectPublicNoneType.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionListCourseSubjectPublicNoneTypeImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<dynamic>? get data;

  /// Create a copy of BaseResponseUnionListCourseSubjectPublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionListCourseSubjectPublicNoneTypeImplCopyWith<
          _$BaseResponseUnionListCourseSubjectPublicNoneTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
