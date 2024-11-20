// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_lecturer_assignments_create_lecturer_assignment_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BodyLecturerAssignmentsCreateLecturerAssignmentComment
    _$BodyLecturerAssignmentsCreateLecturerAssignmentCommentFromJson(
        Map<String, dynamic> json) {
  return _BodyLecturerAssignmentsCreateLecturerAssignmentComment.fromJson(json);
}

/// @nodoc
mixin _$BodyLecturerAssignmentsCreateLecturerAssignmentComment {
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;

  /// Serializes this BodyLecturerAssignmentsCreateLecturerAssignmentComment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyLecturerAssignmentsCreateLecturerAssignmentComment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyLecturerAssignmentsCreateLecturerAssignmentCommentCopyWith<
          BodyLecturerAssignmentsCreateLecturerAssignmentComment>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyLecturerAssignmentsCreateLecturerAssignmentCommentCopyWith<
    $Res> {
  factory $BodyLecturerAssignmentsCreateLecturerAssignmentCommentCopyWith(
          BodyLecturerAssignmentsCreateLecturerAssignmentComment value,
          $Res Function(BodyLecturerAssignmentsCreateLecturerAssignmentComment)
              then) =
      _$BodyLecturerAssignmentsCreateLecturerAssignmentCommentCopyWithImpl<$Res,
          BodyLecturerAssignmentsCreateLecturerAssignmentComment>;
  @useResult
  $Res call({@JsonKey(name: 'content') String content});
}

/// @nodoc
class _$BodyLecturerAssignmentsCreateLecturerAssignmentCommentCopyWithImpl<$Res,
        $Val extends BodyLecturerAssignmentsCreateLecturerAssignmentComment>
    implements
        $BodyLecturerAssignmentsCreateLecturerAssignmentCommentCopyWith<$Res> {
  _$BodyLecturerAssignmentsCreateLecturerAssignmentCommentCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyLecturerAssignmentsCreateLecturerAssignmentComment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImplCopyWith<
        $Res>
    implements
        $BodyLecturerAssignmentsCreateLecturerAssignmentCommentCopyWith<$Res> {
  factory _$$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImplCopyWith(
          _$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImpl value,
          $Res Function(
                  _$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImpl)
              then) =
      __$$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'content') String content});
}

/// @nodoc
class __$$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImplCopyWithImpl<
        $Res>
    extends _$BodyLecturerAssignmentsCreateLecturerAssignmentCommentCopyWithImpl<
        $Res, _$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImpl>
    implements
        _$$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImplCopyWith<
            $Res> {
  __$$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImplCopyWithImpl(
      _$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImpl _value,
      $Res Function(
              _$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of BodyLecturerAssignmentsCreateLecturerAssignmentComment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImpl
    extends _BodyLecturerAssignmentsCreateLecturerAssignmentComment {
  const _$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImpl(
      {@JsonKey(name: 'content') required this.content})
      : super._();

  factory _$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImplFromJson(
          json);

  @override
  @JsonKey(name: 'content')
  final String content;

  @override
  String toString() {
    return 'BodyLecturerAssignmentsCreateLecturerAssignmentComment(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  /// Create a copy of BodyLecturerAssignmentsCreateLecturerAssignmentComment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImplCopyWith<
          _$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImpl>
      get copyWith =>
          __$$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImplCopyWithImpl<
                  _$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImplToJson(
      this,
    );
  }
}

abstract class _BodyLecturerAssignmentsCreateLecturerAssignmentComment
    extends BodyLecturerAssignmentsCreateLecturerAssignmentComment {
  const factory _BodyLecturerAssignmentsCreateLecturerAssignmentComment(
          {@JsonKey(name: 'content') required final String content}) =
      _$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImpl;
  const _BodyLecturerAssignmentsCreateLecturerAssignmentComment._() : super._();

  factory _BodyLecturerAssignmentsCreateLecturerAssignmentComment.fromJson(
          Map<String, dynamic> json) =
      _$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImpl.fromJson;

  @override
  @JsonKey(name: 'content')
  String get content;

  /// Create a copy of BodyLecturerAssignmentsCreateLecturerAssignmentComment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImplCopyWith<
          _$BodyLecturerAssignmentsCreateLecturerAssignmentCommentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
