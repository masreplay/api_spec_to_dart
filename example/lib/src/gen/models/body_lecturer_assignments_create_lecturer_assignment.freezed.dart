// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_lecturer_assignments_create_lecturer_assignment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BodyLecturerAssignmentsCreateLecturerAssignment
    _$BodyLecturerAssignmentsCreateLecturerAssignmentFromJson(
        Map<String, dynamic> json) {
  return _BodyLecturerAssignmentsCreateLecturerAssignment.fromJson(json);
}

/// @nodoc
mixin _$BodyLecturerAssignmentsCreateLecturerAssignment {
  /// Title
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;

  /// Description
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this BodyLecturerAssignmentsCreateLecturerAssignment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyLecturerAssignmentsCreateLecturerAssignment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyLecturerAssignmentsCreateLecturerAssignmentCopyWith<
          BodyLecturerAssignmentsCreateLecturerAssignment>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyLecturerAssignmentsCreateLecturerAssignmentCopyWith<$Res> {
  factory $BodyLecturerAssignmentsCreateLecturerAssignmentCopyWith(
          BodyLecturerAssignmentsCreateLecturerAssignment value,
          $Res Function(BodyLecturerAssignmentsCreateLecturerAssignment) then) =
      _$BodyLecturerAssignmentsCreateLecturerAssignmentCopyWithImpl<$Res,
          BodyLecturerAssignmentsCreateLecturerAssignment>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$BodyLecturerAssignmentsCreateLecturerAssignmentCopyWithImpl<$Res,
        $Val extends BodyLecturerAssignmentsCreateLecturerAssignment>
    implements $BodyLecturerAssignmentsCreateLecturerAssignmentCopyWith<$Res> {
  _$BodyLecturerAssignmentsCreateLecturerAssignmentCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyLecturerAssignmentsCreateLecturerAssignment
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
abstract class _$$BodyLecturerAssignmentsCreateLecturerAssignmentImplCopyWith<
        $Res>
    implements $BodyLecturerAssignmentsCreateLecturerAssignmentCopyWith<$Res> {
  factory _$$BodyLecturerAssignmentsCreateLecturerAssignmentImplCopyWith(
          _$BodyLecturerAssignmentsCreateLecturerAssignmentImpl value,
          $Res Function(_$BodyLecturerAssignmentsCreateLecturerAssignmentImpl)
              then) =
      __$$BodyLecturerAssignmentsCreateLecturerAssignmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$$BodyLecturerAssignmentsCreateLecturerAssignmentImplCopyWithImpl<$Res>
    extends _$BodyLecturerAssignmentsCreateLecturerAssignmentCopyWithImpl<$Res,
        _$BodyLecturerAssignmentsCreateLecturerAssignmentImpl>
    implements
        _$$BodyLecturerAssignmentsCreateLecturerAssignmentImplCopyWith<$Res> {
  __$$BodyLecturerAssignmentsCreateLecturerAssignmentImplCopyWithImpl(
      _$BodyLecturerAssignmentsCreateLecturerAssignmentImpl _value,
      $Res Function(_$BodyLecturerAssignmentsCreateLecturerAssignmentImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of BodyLecturerAssignmentsCreateLecturerAssignment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_$BodyLecturerAssignmentsCreateLecturerAssignmentImpl(
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
class _$BodyLecturerAssignmentsCreateLecturerAssignmentImpl
    extends _BodyLecturerAssignmentsCreateLecturerAssignment {
  const _$BodyLecturerAssignmentsCreateLecturerAssignmentImpl(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description})
      : super._();

  factory _$BodyLecturerAssignmentsCreateLecturerAssignmentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BodyLecturerAssignmentsCreateLecturerAssignmentImplFromJson(json);

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
    return 'BodyLecturerAssignmentsCreateLecturerAssignment(title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyLecturerAssignmentsCreateLecturerAssignmentImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  /// Create a copy of BodyLecturerAssignmentsCreateLecturerAssignment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyLecturerAssignmentsCreateLecturerAssignmentImplCopyWith<
          _$BodyLecturerAssignmentsCreateLecturerAssignmentImpl>
      get copyWith =>
          __$$BodyLecturerAssignmentsCreateLecturerAssignmentImplCopyWithImpl<
                  _$BodyLecturerAssignmentsCreateLecturerAssignmentImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyLecturerAssignmentsCreateLecturerAssignmentImplToJson(
      this,
    );
  }
}

abstract class _BodyLecturerAssignmentsCreateLecturerAssignment
    extends BodyLecturerAssignmentsCreateLecturerAssignment {
  const factory _BodyLecturerAssignmentsCreateLecturerAssignment(
          {@JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') required final String? description}) =
      _$BodyLecturerAssignmentsCreateLecturerAssignmentImpl;
  const _BodyLecturerAssignmentsCreateLecturerAssignment._() : super._();

  factory _BodyLecturerAssignmentsCreateLecturerAssignment.fromJson(
          Map<String, dynamic> json) =
      _$BodyLecturerAssignmentsCreateLecturerAssignmentImpl.fromJson;

  /// Title
  @override
  @JsonKey(name: 'title')
  String get title;

  /// Description
  @override
  @JsonKey(name: 'description')
  String? get description;

  /// Create a copy of BodyLecturerAssignmentsCreateLecturerAssignment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyLecturerAssignmentsCreateLecturerAssignmentImplCopyWith<
          _$BodyLecturerAssignmentsCreateLecturerAssignmentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
