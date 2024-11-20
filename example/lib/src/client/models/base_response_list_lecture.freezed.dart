// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_list_lecture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseListLecture _$BaseResponseListLectureFromJson(
    Map<String, dynamic> json) {
  return _BaseResponseListLecture.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseListLecture {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Data
  @JsonKey(name: 'data')
  List<AppApiRoutesV1StudentAttendanceRouteLecture> get data =>
      throw _privateConstructorUsedError;

  /// Serializes this BaseResponseListLecture to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseListLecture
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseListLectureCopyWith<BaseResponseListLecture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseListLectureCopyWith<$Res> {
  factory $BaseResponseListLectureCopyWith(BaseResponseListLecture value,
          $Res Function(BaseResponseListLecture) then) =
      _$BaseResponseListLectureCopyWithImpl<$Res, BaseResponseListLecture>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data')
      List<AppApiRoutesV1StudentAttendanceRouteLecture> data});
}

/// @nodoc
class _$BaseResponseListLectureCopyWithImpl<$Res,
        $Val extends BaseResponseListLecture>
    implements $BaseResponseListLectureCopyWith<$Res> {
  _$BaseResponseListLectureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseListLecture
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
              as List<AppApiRoutesV1StudentAttendanceRouteLecture>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseListLectureImplCopyWith<$Res>
    implements $BaseResponseListLectureCopyWith<$Res> {
  factory _$$BaseResponseListLectureImplCopyWith(
          _$BaseResponseListLectureImpl value,
          $Res Function(_$BaseResponseListLectureImpl) then) =
      __$$BaseResponseListLectureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data')
      List<AppApiRoutesV1StudentAttendanceRouteLecture> data});
}

/// @nodoc
class __$$BaseResponseListLectureImplCopyWithImpl<$Res>
    extends _$BaseResponseListLectureCopyWithImpl<$Res,
        _$BaseResponseListLectureImpl>
    implements _$$BaseResponseListLectureImplCopyWith<$Res> {
  __$$BaseResponseListLectureImplCopyWithImpl(
      _$BaseResponseListLectureImpl _value,
      $Res Function(_$BaseResponseListLectureImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseListLecture
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseListLectureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AppApiRoutesV1StudentAttendanceRouteLecture>,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseListLectureImpl extends _BaseResponseListLecture {
  const _$BaseResponseListLectureImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data')
      required final List<AppApiRoutesV1StudentAttendanceRouteLecture> data})
      : _data = data,
        super._();

  factory _$BaseResponseListLectureImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseResponseListLectureImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Data
  final List<AppApiRoutesV1StudentAttendanceRouteLecture> _data;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<AppApiRoutesV1StudentAttendanceRouteLecture> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BaseResponseListLecture(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseListLectureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseListLecture
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseListLectureImplCopyWith<_$BaseResponseListLectureImpl>
      get copyWith => __$$BaseResponseListLectureImplCopyWithImpl<
          _$BaseResponseListLectureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseListLectureImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseListLecture extends BaseResponseListLecture {
  const factory _BaseResponseListLecture(
      {@JsonKey(name: 'message') required final String? message,
      @JsonKey(name: 'data')
      required final List<AppApiRoutesV1StudentAttendanceRouteLecture>
          data}) = _$BaseResponseListLectureImpl;
  const _BaseResponseListLecture._() : super._();

  factory _BaseResponseListLecture.fromJson(Map<String, dynamic> json) =
      _$BaseResponseListLectureImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<AppApiRoutesV1StudentAttendanceRouteLecture> get data;

  /// Create a copy of BaseResponseListLecture
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseListLectureImplCopyWith<_$BaseResponseListLectureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
