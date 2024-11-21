// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_create_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentCreatePublic _$CommentCreatePublicFromJson(Map<String, dynamic> json) {
  return _CommentCreatePublic.fromJson(json);
}

/// @nodoc
mixin _$CommentCreatePublic {
  /// Content
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;

  /// Serializes this CommentCreatePublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentCreatePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentCreatePublicCopyWith<CommentCreatePublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCreatePublicCopyWith<$Res> {
  factory $CommentCreatePublicCopyWith(
          CommentCreatePublic value, $Res Function(CommentCreatePublic) then) =
      _$CommentCreatePublicCopyWithImpl<$Res, CommentCreatePublic>;
  @useResult
  $Res call({@JsonKey(name: 'content') String content});
}

/// @nodoc
class _$CommentCreatePublicCopyWithImpl<$Res, $Val extends CommentCreatePublic>
    implements $CommentCreatePublicCopyWith<$Res> {
  _$CommentCreatePublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentCreatePublic
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
abstract class _$$CommentCreatePublicImplCopyWith<$Res>
    implements $CommentCreatePublicCopyWith<$Res> {
  factory _$$CommentCreatePublicImplCopyWith(_$CommentCreatePublicImpl value,
          $Res Function(_$CommentCreatePublicImpl) then) =
      __$$CommentCreatePublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'content') String content});
}

/// @nodoc
class __$$CommentCreatePublicImplCopyWithImpl<$Res>
    extends _$CommentCreatePublicCopyWithImpl<$Res, _$CommentCreatePublicImpl>
    implements _$$CommentCreatePublicImplCopyWith<$Res> {
  __$$CommentCreatePublicImplCopyWithImpl(_$CommentCreatePublicImpl _value,
      $Res Function(_$CommentCreatePublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentCreatePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$CommentCreatePublicImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$CommentCreatePublicImpl extends _CommentCreatePublic {
  const _$CommentCreatePublicImpl(
      {@JsonKey(name: 'content') required this.content})
      : super._();

  factory _$CommentCreatePublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentCreatePublicImplFromJson(json);

  /// Content
  @override
  @JsonKey(name: 'content')
  final String content;

  @override
  String toString() {
    return 'CommentCreatePublic(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentCreatePublicImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  /// Create a copy of CommentCreatePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentCreatePublicImplCopyWith<_$CommentCreatePublicImpl> get copyWith =>
      __$$CommentCreatePublicImplCopyWithImpl<_$CommentCreatePublicImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentCreatePublicImplToJson(
      this,
    );
  }
}

abstract class _CommentCreatePublic extends CommentCreatePublic {
  const factory _CommentCreatePublic(
          {@JsonKey(name: 'content') required final String content}) =
      _$CommentCreatePublicImpl;
  const _CommentCreatePublic._() : super._();

  factory _CommentCreatePublic.fromJson(Map<String, dynamic> json) =
      _$CommentCreatePublicImpl.fromJson;

  /// Content
  @override
  @JsonKey(name: 'content')
  String get content;

  /// Create a copy of CommentCreatePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentCreatePublicImplCopyWith<_$CommentCreatePublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
