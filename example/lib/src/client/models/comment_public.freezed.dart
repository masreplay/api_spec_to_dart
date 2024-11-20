// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentPublic _$CommentPublicFromJson(Map<String, dynamic> json) {
  return _CommentPublic.fromJson(json);
}

/// @nodoc
mixin _$CommentPublic {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at_formatted')
  String get createdAtFormatted => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  CommentUserPublic get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent')
  CommentPublic? get parent => throw _privateConstructorUsedError;
  @JsonKey(name: 'replies')
  List<dynamic> get replies => throw _privateConstructorUsedError;

  /// Serializes this CommentPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentPublicCopyWith<CommentPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentPublicCopyWith<$Res> {
  factory $CommentPublicCopyWith(
          CommentPublic value, $Res Function(CommentPublic) then) =
      _$CommentPublicCopyWithImpl<$Res, CommentPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'created_at_formatted') String createdAtFormatted,
      @JsonKey(name: 'user') CommentUserPublic user,
      @JsonKey(name: 'parent') CommentPublic? parent,
      @JsonKey(name: 'replies') List<dynamic> replies});

  $CommentUserPublicCopyWith<$Res> get user;
  $CommentPublicCopyWith<$Res>? get parent;
}

/// @nodoc
class _$CommentPublicCopyWithImpl<$Res, $Val extends CommentPublic>
    implements $CommentPublicCopyWith<$Res> {
  _$CommentPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? createdAt = null,
    Object? createdAtFormatted = null,
    Object? user = null,
    Object? parent = freezed,
    Object? replies = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAtFormatted: null == createdAtFormatted
          ? _value.createdAtFormatted
          : createdAtFormatted // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as CommentUserPublic,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as CommentPublic?,
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }

  /// Create a copy of CommentPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentUserPublicCopyWith<$Res> get user {
    return $CommentUserPublicCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of CommentPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentPublicCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $CommentPublicCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentPublicImplCopyWith<$Res>
    implements $CommentPublicCopyWith<$Res> {
  factory _$$CommentPublicImplCopyWith(
          _$CommentPublicImpl value, $Res Function(_$CommentPublicImpl) then) =
      __$$CommentPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'created_at_formatted') String createdAtFormatted,
      @JsonKey(name: 'user') CommentUserPublic user,
      @JsonKey(name: 'parent') CommentPublic? parent,
      @JsonKey(name: 'replies') List<dynamic> replies});

  @override
  $CommentUserPublicCopyWith<$Res> get user;
  @override
  $CommentPublicCopyWith<$Res>? get parent;
}

/// @nodoc
class __$$CommentPublicImplCopyWithImpl<$Res>
    extends _$CommentPublicCopyWithImpl<$Res, _$CommentPublicImpl>
    implements _$$CommentPublicImplCopyWith<$Res> {
  __$$CommentPublicImplCopyWithImpl(
      _$CommentPublicImpl _value, $Res Function(_$CommentPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? createdAt = null,
    Object? createdAtFormatted = null,
    Object? user = null,
    Object? parent = freezed,
    Object? replies = null,
  }) {
    return _then(_$CommentPublicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAtFormatted: null == createdAtFormatted
          ? _value.createdAtFormatted
          : createdAtFormatted // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as CommentUserPublic,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as CommentPublic?,
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$CommentPublicImpl extends _CommentPublic {
  const _$CommentPublicImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'created_at_formatted') required this.createdAtFormatted,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'parent') required this.parent,
      @JsonKey(name: 'replies') required final List<dynamic> replies})
      : _replies = replies,
        super._();

  factory _$CommentPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentPublicImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'created_at_formatted')
  final String createdAtFormatted;
  @override
  @JsonKey(name: 'user')
  final CommentUserPublic user;
  @override
  @JsonKey(name: 'parent')
  final CommentPublic? parent;
  final List<dynamic> _replies;
  @override
  @JsonKey(name: 'replies')
  List<dynamic> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  @override
  String toString() {
    return 'CommentPublic(id: $id, content: $content, createdAt: $createdAt, createdAtFormatted: $createdAtFormatted, user: $user, parent: $parent, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentPublicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdAtFormatted, createdAtFormatted) ||
                other.createdAtFormatted == createdAtFormatted) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      createdAt,
      createdAtFormatted,
      user,
      parent,
      const DeepCollectionEquality().hash(_replies));

  /// Create a copy of CommentPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentPublicImplCopyWith<_$CommentPublicImpl> get copyWith =>
      __$$CommentPublicImplCopyWithImpl<_$CommentPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentPublicImplToJson(
      this,
    );
  }
}

abstract class _CommentPublic extends CommentPublic {
  const factory _CommentPublic(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'content') required final String content,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'created_at_formatted')
          required final String createdAtFormatted,
          @JsonKey(name: 'user') required final CommentUserPublic user,
          @JsonKey(name: 'parent') required final CommentPublic? parent,
          @JsonKey(name: 'replies') required final List<dynamic> replies}) =
      _$CommentPublicImpl;
  const _CommentPublic._() : super._();

  factory _CommentPublic.fromJson(Map<String, dynamic> json) =
      _$CommentPublicImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'created_at_formatted')
  String get createdAtFormatted;
  @override
  @JsonKey(name: 'user')
  CommentUserPublic get user;
  @override
  @JsonKey(name: 'parent')
  CommentPublic? get parent;
  @override
  @JsonKey(name: 'replies')
  List<dynamic> get replies;

  /// Create a copy of CommentPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentPublicImplCopyWith<_$CommentPublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
