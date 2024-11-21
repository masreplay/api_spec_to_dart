// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecturer_announcement_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LecturerAnnouncementPublic _$LecturerAnnouncementPublicFromJson(
    Map<String, dynamic> json) {
  return _LecturerAnnouncementPublic.fromJson(json);
}

/// @nodoc
mixin _$LecturerAnnouncementPublic {
  /// Title
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;

  /// Description
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  /// Id
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;

  /// Username
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;

  /// Avatar
  @JsonKey(name: 'avatar')
  String? get avatar => throw _privateConstructorUsedError;

  /// Comments Count
  @JsonKey(name: 'comments_count')
  int get commentsCount => throw _privateConstructorUsedError;

  /// Created At
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Created At Formatted
  @JsonKey(name: 'created_at_formatted')
  String get createdAtFormatted => throw _privateConstructorUsedError;

  /// Files
  @JsonKey(name: 'files')
  List<FilePublic> get files => throw _privateConstructorUsedError;

  /// Serializes this LecturerAnnouncementPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LecturerAnnouncementPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LecturerAnnouncementPublicCopyWith<LecturerAnnouncementPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LecturerAnnouncementPublicCopyWith<$Res> {
  factory $LecturerAnnouncementPublicCopyWith(LecturerAnnouncementPublic value,
          $Res Function(LecturerAnnouncementPublic) then) =
      _$LecturerAnnouncementPublicCopyWithImpl<$Res,
          LecturerAnnouncementPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'avatar') String? avatar,
      @JsonKey(name: 'comments_count') int commentsCount,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'created_at_formatted') String createdAtFormatted,
      @JsonKey(name: 'files') List<FilePublic> files});
}

/// @nodoc
class _$LecturerAnnouncementPublicCopyWithImpl<$Res,
        $Val extends LecturerAnnouncementPublic>
    implements $LecturerAnnouncementPublicCopyWith<$Res> {
  _$LecturerAnnouncementPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LecturerAnnouncementPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? id = null,
    Object? username = null,
    Object? avatar = freezed,
    Object? commentsCount = null,
    Object? createdAt = null,
    Object? createdAtFormatted = null,
    Object? files = null,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAtFormatted: null == createdAtFormatted
          ? _value.createdAtFormatted
          : createdAtFormatted // ignore: cast_nullable_to_non_nullable
              as String,
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FilePublic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LecturerAnnouncementPublicImplCopyWith<$Res>
    implements $LecturerAnnouncementPublicCopyWith<$Res> {
  factory _$$LecturerAnnouncementPublicImplCopyWith(
          _$LecturerAnnouncementPublicImpl value,
          $Res Function(_$LecturerAnnouncementPublicImpl) then) =
      __$$LecturerAnnouncementPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'avatar') String? avatar,
      @JsonKey(name: 'comments_count') int commentsCount,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'created_at_formatted') String createdAtFormatted,
      @JsonKey(name: 'files') List<FilePublic> files});
}

/// @nodoc
class __$$LecturerAnnouncementPublicImplCopyWithImpl<$Res>
    extends _$LecturerAnnouncementPublicCopyWithImpl<$Res,
        _$LecturerAnnouncementPublicImpl>
    implements _$$LecturerAnnouncementPublicImplCopyWith<$Res> {
  __$$LecturerAnnouncementPublicImplCopyWithImpl(
      _$LecturerAnnouncementPublicImpl _value,
      $Res Function(_$LecturerAnnouncementPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of LecturerAnnouncementPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? id = null,
    Object? username = null,
    Object? avatar = freezed,
    Object? commentsCount = null,
    Object? createdAt = null,
    Object? createdAtFormatted = null,
    Object? files = null,
  }) {
    return _then(_$LecturerAnnouncementPublicImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAtFormatted: null == createdAtFormatted
          ? _value.createdAtFormatted
          : createdAtFormatted // ignore: cast_nullable_to_non_nullable
              as String,
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FilePublic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$LecturerAnnouncementPublicImpl extends _LecturerAnnouncementPublic {
  const _$LecturerAnnouncementPublicImpl(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'avatar') required this.avatar,
      @JsonKey(name: 'comments_count') required this.commentsCount = 0,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'created_at_formatted') required this.createdAtFormatted,
      @JsonKey(name: 'files') required final List<FilePublic> files})
      : _files = files,
        super._();

  factory _$LecturerAnnouncementPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LecturerAnnouncementPublicImplFromJson(json);

  /// Title
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Description
  @override
  @JsonKey(name: 'description')
  final String? description;

  /// Id
  @override
  @JsonKey(name: 'id')
  final int id;

  /// Username
  @override
  @JsonKey(name: 'username')
  final String username;

  /// Avatar
  @override
  @JsonKey(name: 'avatar')
  final String? avatar;

  /// Comments Count
  @override
  @JsonKey(name: 'comments_count')
  final int commentsCount;

  /// Created At
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// Created At Formatted
  @override
  @JsonKey(name: 'created_at_formatted')
  final String createdAtFormatted;

  /// Files
  final List<FilePublic> _files;

  /// Files
  @override
  @JsonKey(name: 'files')
  List<FilePublic> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  String toString() {
    return 'LecturerAnnouncementPublic(title: $title, description: $description, id: $id, username: $username, avatar: $avatar, commentsCount: $commentsCount, createdAt: $createdAt, createdAtFormatted: $createdAtFormatted, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LecturerAnnouncementPublicImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.commentsCount, commentsCount) ||
                other.commentsCount == commentsCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdAtFormatted, createdAtFormatted) ||
                other.createdAtFormatted == createdAtFormatted) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      id,
      username,
      avatar,
      commentsCount,
      createdAt,
      createdAtFormatted,
      const DeepCollectionEquality().hash(_files));

  /// Create a copy of LecturerAnnouncementPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LecturerAnnouncementPublicImplCopyWith<_$LecturerAnnouncementPublicImpl>
      get copyWith => __$$LecturerAnnouncementPublicImplCopyWithImpl<
          _$LecturerAnnouncementPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LecturerAnnouncementPublicImplToJson(
      this,
    );
  }
}

abstract class _LecturerAnnouncementPublic extends LecturerAnnouncementPublic {
  const factory _LecturerAnnouncementPublic(
          {@JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') required final String? description,
          @JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'username') required final String username,
          @JsonKey(name: 'avatar') required final String? avatar,
          @JsonKey(name: 'comments_count') required final int commentsCount,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'created_at_formatted')
          required final String createdAtFormatted,
          @JsonKey(name: 'files') required final List<FilePublic> files}) =
      _$LecturerAnnouncementPublicImpl;
  const _LecturerAnnouncementPublic._() : super._();

  factory _LecturerAnnouncementPublic.fromJson(Map<String, dynamic> json) =
      _$LecturerAnnouncementPublicImpl.fromJson;

  /// Title
  @override
  @JsonKey(name: 'title')
  String get title;

  /// Description
  @override
  @JsonKey(name: 'description')
  String? get description;

  /// Id
  @override
  @JsonKey(name: 'id')
  int get id;

  /// Username
  @override
  @JsonKey(name: 'username')
  String get username;

  /// Avatar
  @override
  @JsonKey(name: 'avatar')
  String? get avatar;

  /// Comments Count
  @override
  @JsonKey(name: 'comments_count')
  int get commentsCount;

  /// Created At
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// Created At Formatted
  @override
  @JsonKey(name: 'created_at_formatted')
  String get createdAtFormatted;

  /// Files
  @override
  @JsonKey(name: 'files')
  List<FilePublic> get files;

  /// Create a copy of LecturerAnnouncementPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LecturerAnnouncementPublicImplCopyWith<_$LecturerAnnouncementPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
