// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_lecturer_assignments_update_lecturer_assignment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BodyLecturerAssignmentsUpdateLecturerAssignment
    _$BodyLecturerAssignmentsUpdateLecturerAssignmentFromJson(
        Map<String, dynamic> json) {
  return _BodyLecturerAssignmentsUpdateLecturerAssignment.fromJson(json);
}

/// @nodoc
mixin _$BodyLecturerAssignmentsUpdateLecturerAssignment {
  /// Title
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;

  /// Description
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this BodyLecturerAssignmentsUpdateLecturerAssignment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyLecturerAssignmentsUpdateLecturerAssignment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyLecturerAssignmentsUpdateLecturerAssignmentCopyWith<
          BodyLecturerAssignmentsUpdateLecturerAssignment>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyLecturerAssignmentsUpdateLecturerAssignmentCopyWith<$Res> {
  factory $BodyLecturerAssignmentsUpdateLecturerAssignmentCopyWith(
          BodyLecturerAssignmentsUpdateLecturerAssignment value,
          $Res Function(BodyLecturerAssignmentsUpdateLecturerAssignment) then) =
      _$BodyLecturerAssignmentsUpdateLecturerAssignmentCopyWithImpl<$Res,
          BodyLecturerAssignmentsUpdateLecturerAssignment>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$BodyLecturerAssignmentsUpdateLecturerAssignmentCopyWithImpl<$Res,
        $Val extends BodyLecturerAssignmentsUpdateLecturerAssignment>
    implements $BodyLecturerAssignmentsUpdateLecturerAssignmentCopyWith<$Res> {
  _$BodyLecturerAssignmentsUpdateLecturerAssignmentCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyLecturerAssignmentsUpdateLecturerAssignment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyLecturerAssignmentsUpdateLecturerAssignmentImplCopyWith<
        $Res>
    implements $BodyLecturerAssignmentsUpdateLecturerAssignmentCopyWith<$Res> {
  factory _$$BodyLecturerAssignmentsUpdateLecturerAssignmentImplCopyWith(
          _$BodyLecturerAssignmentsUpdateLecturerAssignmentImpl value,
          $Res Function(_$BodyLecturerAssignmentsUpdateLecturerAssignmentImpl)
              then) =
      __$$BodyLecturerAssignmentsUpdateLecturerAssignmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$$BodyLecturerAssignmentsUpdateLecturerAssignmentImplCopyWithImpl<$Res>
    extends _$BodyLecturerAssignmentsUpdateLecturerAssignmentCopyWithImpl<$Res,
        _$BodyLecturerAssignmentsUpdateLecturerAssignmentImpl>
    implements
        _$$BodyLecturerAssignmentsUpdateLecturerAssignmentImplCopyWith<$Res> {
  __$$BodyLecturerAssignmentsUpdateLecturerAssignmentImplCopyWithImpl(
      _$BodyLecturerAssignmentsUpdateLecturerAssignmentImpl _value,
      $Res Function(_$BodyLecturerAssignmentsUpdateLecturerAssignmentImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of BodyLecturerAssignmentsUpdateLecturerAssignment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_$BodyLecturerAssignmentsUpdateLecturerAssignmentImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BodyLecturerAssignmentsUpdateLecturerAssignmentImpl
    extends _BodyLecturerAssignmentsUpdateLecturerAssignment {
  const _$BodyLecturerAssignmentsUpdateLecturerAssignmentImpl(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description})
      : super._();

  factory _$BodyLecturerAssignmentsUpdateLecturerAssignmentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BodyLecturerAssignmentsUpdateLecturerAssignmentImplFromJson(json);

  /// Title
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Description
  @override
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString() {
    return 'BodyLecturerAssignmentsUpdateLecturerAssignment(title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyLecturerAssignmentsUpdateLecturerAssignmentImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  /// Create a copy of BodyLecturerAssignmentsUpdateLecturerAssignment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyLecturerAssignmentsUpdateLecturerAssignmentImplCopyWith<
          _$BodyLecturerAssignmentsUpdateLecturerAssignmentImpl>
      get copyWith =>
          __$$BodyLecturerAssignmentsUpdateLecturerAssignmentImplCopyWithImpl<
                  _$BodyLecturerAssignmentsUpdateLecturerAssignmentImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyLecturerAssignmentsUpdateLecturerAssignmentImplToJson(
      this,
    );
  }
}

abstract class _BodyLecturerAssignmentsUpdateLecturerAssignment
    extends BodyLecturerAssignmentsUpdateLecturerAssignment {
  const factory _BodyLecturerAssignmentsUpdateLecturerAssignment(
          {@JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') required final String? description}) =
      _$BodyLecturerAssignmentsUpdateLecturerAssignmentImpl;
  const _BodyLecturerAssignmentsUpdateLecturerAssignment._() : super._();

  factory _BodyLecturerAssignmentsUpdateLecturerAssignment.fromJson(
          Map<String, dynamic> json) =
      _$BodyLecturerAssignmentsUpdateLecturerAssignmentImpl.fromJson;

  /// Title
  @override
  @JsonKey(name: 'title')
  String get title;

  /// Description
  @override
  @JsonKey(name: 'description')
  String? get description;

  /// Create a copy of BodyLecturerAssignmentsUpdateLecturerAssignment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyLecturerAssignmentsUpdateLecturerAssignmentImplCopyWith<
          _$BodyLecturerAssignmentsUpdateLecturerAssignmentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
