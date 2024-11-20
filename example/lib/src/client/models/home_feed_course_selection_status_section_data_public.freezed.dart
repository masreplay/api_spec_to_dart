// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_feed_course_selection_status_section_data_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeFeedCourseSelectionStatusSectionDataPublic
    _$HomeFeedCourseSelectionStatusSectionDataPublicFromJson(
        Map<String, dynamic> json) {
  return _HomeFeedCourseSelectionStatusSectionDataPublic.fromJson(json);
}

/// @nodoc
mixin _$HomeFeedCourseSelectionStatusSectionDataPublic {
  @JsonKey(name: 'status')
  CourseSelectionStatusType get status => throw _privateConstructorUsedError;

  /// Serializes this HomeFeedCourseSelectionStatusSectionDataPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeFeedCourseSelectionStatusSectionDataPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeFeedCourseSelectionStatusSectionDataPublicCopyWith<
          HomeFeedCourseSelectionStatusSectionDataPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeFeedCourseSelectionStatusSectionDataPublicCopyWith<$Res> {
  factory $HomeFeedCourseSelectionStatusSectionDataPublicCopyWith(
          HomeFeedCourseSelectionStatusSectionDataPublic value,
          $Res Function(HomeFeedCourseSelectionStatusSectionDataPublic) then) =
      _$HomeFeedCourseSelectionStatusSectionDataPublicCopyWithImpl<$Res,
          HomeFeedCourseSelectionStatusSectionDataPublic>;
  @useResult
  $Res call({@JsonKey(name: 'status') CourseSelectionStatusType status});

  $CourseSelectionStatusTypeCopyWith<$Res> get status;
}

/// @nodoc
class _$HomeFeedCourseSelectionStatusSectionDataPublicCopyWithImpl<$Res,
        $Val extends HomeFeedCourseSelectionStatusSectionDataPublic>
    implements $HomeFeedCourseSelectionStatusSectionDataPublicCopyWith<$Res> {
  _$HomeFeedCourseSelectionStatusSectionDataPublicCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeFeedCourseSelectionStatusSectionDataPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CourseSelectionStatusType,
    ) as $Val);
  }

  /// Create a copy of HomeFeedCourseSelectionStatusSectionDataPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CourseSelectionStatusTypeCopyWith<$Res> get status {
    return $CourseSelectionStatusTypeCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeFeedCourseSelectionStatusSectionDataPublicImplCopyWith<
        $Res>
    implements $HomeFeedCourseSelectionStatusSectionDataPublicCopyWith<$Res> {
  factory _$$HomeFeedCourseSelectionStatusSectionDataPublicImplCopyWith(
          _$HomeFeedCourseSelectionStatusSectionDataPublicImpl value,
          $Res Function(_$HomeFeedCourseSelectionStatusSectionDataPublicImpl)
              then) =
      __$$HomeFeedCourseSelectionStatusSectionDataPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'status') CourseSelectionStatusType status});

  @override
  $CourseSelectionStatusTypeCopyWith<$Res> get status;
}

/// @nodoc
class __$$HomeFeedCourseSelectionStatusSectionDataPublicImplCopyWithImpl<$Res>
    extends _$HomeFeedCourseSelectionStatusSectionDataPublicCopyWithImpl<$Res,
        _$HomeFeedCourseSelectionStatusSectionDataPublicImpl>
    implements
        _$$HomeFeedCourseSelectionStatusSectionDataPublicImplCopyWith<$Res> {
  __$$HomeFeedCourseSelectionStatusSectionDataPublicImplCopyWithImpl(
      _$HomeFeedCourseSelectionStatusSectionDataPublicImpl _value,
      $Res Function(_$HomeFeedCourseSelectionStatusSectionDataPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeFeedCourseSelectionStatusSectionDataPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$HomeFeedCourseSelectionStatusSectionDataPublicImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CourseSelectionStatusType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeFeedCourseSelectionStatusSectionDataPublicImpl
    implements _HomeFeedCourseSelectionStatusSectionDataPublic {
  const _$HomeFeedCourseSelectionStatusSectionDataPublicImpl(
      {@JsonKey(name: 'status') required this.status});

  factory _$HomeFeedCourseSelectionStatusSectionDataPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HomeFeedCourseSelectionStatusSectionDataPublicImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final CourseSelectionStatusType status;

  @override
  String toString() {
    return 'HomeFeedCourseSelectionStatusSectionDataPublic(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeFeedCourseSelectionStatusSectionDataPublicImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of HomeFeedCourseSelectionStatusSectionDataPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeFeedCourseSelectionStatusSectionDataPublicImplCopyWith<
          _$HomeFeedCourseSelectionStatusSectionDataPublicImpl>
      get copyWith =>
          __$$HomeFeedCourseSelectionStatusSectionDataPublicImplCopyWithImpl<
                  _$HomeFeedCourseSelectionStatusSectionDataPublicImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeFeedCourseSelectionStatusSectionDataPublicImplToJson(
      this,
    );
  }
}

abstract class _HomeFeedCourseSelectionStatusSectionDataPublic
    implements HomeFeedCourseSelectionStatusSectionDataPublic {
  const factory _HomeFeedCourseSelectionStatusSectionDataPublic(
          {@JsonKey(name: 'status')
          required final CourseSelectionStatusType status}) =
      _$HomeFeedCourseSelectionStatusSectionDataPublicImpl;

  factory _HomeFeedCourseSelectionStatusSectionDataPublic.fromJson(
          Map<String, dynamic> json) =
      _$HomeFeedCourseSelectionStatusSectionDataPublicImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  CourseSelectionStatusType get status;

  /// Create a copy of HomeFeedCourseSelectionStatusSectionDataPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeFeedCourseSelectionStatusSectionDataPublicImplCopyWith<
          _$HomeFeedCourseSelectionStatusSectionDataPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
