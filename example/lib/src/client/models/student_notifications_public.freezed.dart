// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_notifications_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentNotificationsPublic _$StudentNotificationsPublicFromJson(
    Map<String, dynamic> json) {
  return _StudentNotificationsPublic.fromJson(json);
}

/// @nodoc
mixin _$StudentNotificationsPublic {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  int? get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  Map<dynamic, dynamic> get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  Map<dynamic, dynamic> get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'notification_type')
  String get notificationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_opened')
  bool get isOpened => throw _privateConstructorUsedError;
  @JsonKey(name: 'deep_link')
  String? get deepLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'extra_data')
  Map<dynamic, dynamic>? get extraData => throw _privateConstructorUsedError;
  @JsonKey(name: 'creator_id')
  int get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'creation_time')
  DateTime get creationTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_modifier_id')
  int? get lastModifierId => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_modification_time')
  DateTime? get lastModificationTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_deleted')
  bool get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleter_id')
  int? get deleterId => throw _privateConstructorUsedError;
  @JsonKey(name: 'deletion_time')
  DateTime? get deletionTime => throw _privateConstructorUsedError;

  /// Serializes this StudentNotificationsPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentNotificationsPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentNotificationsPublicCopyWith<StudentNotificationsPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentNotificationsPublicCopyWith<$Res> {
  factory $StudentNotificationsPublicCopyWith(StudentNotificationsPublic value,
          $Res Function(StudentNotificationsPublic) then) =
      _$StudentNotificationsPublicCopyWithImpl<$Res,
          StudentNotificationsPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'student_id') int? studentId,
      @JsonKey(name: 'title') Map<dynamic, dynamic> title,
      @JsonKey(name: 'message') Map<dynamic, dynamic> message,
      @JsonKey(name: 'notification_type') String notificationType,
      @JsonKey(name: 'is_opened') bool isOpened,
      @JsonKey(name: 'deep_link') String? deepLink,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'extra_data') Map<dynamic, dynamic>? extraData,
      @JsonKey(name: 'creator_id') int creatorId,
      @JsonKey(name: 'creation_time') DateTime creationTime,
      @JsonKey(name: 'last_modifier_id') int? lastModifierId,
      @JsonKey(name: 'last_modification_time') DateTime? lastModificationTime,
      @JsonKey(name: 'is_deleted') bool isDeleted,
      @JsonKey(name: 'deleter_id') int? deleterId,
      @JsonKey(name: 'deletion_time') DateTime? deletionTime});
}

/// @nodoc
class _$StudentNotificationsPublicCopyWithImpl<$Res,
        $Val extends StudentNotificationsPublic>
    implements $StudentNotificationsPublicCopyWith<$Res> {
  _$StudentNotificationsPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentNotificationsPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = freezed,
    Object? title = null,
    Object? message = null,
    Object? notificationType = null,
    Object? isOpened = null,
    Object? deepLink = freezed,
    Object? imageUrl = freezed,
    Object? extraData = freezed,
    Object? creatorId = null,
    Object? creationTime = null,
    Object? lastModifierId = freezed,
    Object? lastModificationTime = freezed,
    Object? isDeleted = null,
    Object? deleterId = freezed,
    Object? deletionTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
      isOpened: null == isOpened
          ? _value.isOpened
          : isOpened // ignore: cast_nullable_to_non_nullable
              as bool,
      deepLink: freezed == deepLink
          ? _value.deepLink
          : deepLink // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      extraData: freezed == extraData
          ? _value.extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastModifierId: freezed == lastModifierId
          ? _value.lastModifierId
          : lastModifierId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastModificationTime: freezed == lastModificationTime
          ? _value.lastModificationTime
          : lastModificationTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      deleterId: freezed == deleterId
          ? _value.deleterId
          : deleterId // ignore: cast_nullable_to_non_nullable
              as int?,
      deletionTime: freezed == deletionTime
          ? _value.deletionTime
          : deletionTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentNotificationsPublicImplCopyWith<$Res>
    implements $StudentNotificationsPublicCopyWith<$Res> {
  factory _$$StudentNotificationsPublicImplCopyWith(
          _$StudentNotificationsPublicImpl value,
          $Res Function(_$StudentNotificationsPublicImpl) then) =
      __$$StudentNotificationsPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'student_id') int? studentId,
      @JsonKey(name: 'title') Map<dynamic, dynamic> title,
      @JsonKey(name: 'message') Map<dynamic, dynamic> message,
      @JsonKey(name: 'notification_type') String notificationType,
      @JsonKey(name: 'is_opened') bool isOpened,
      @JsonKey(name: 'deep_link') String? deepLink,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'extra_data') Map<dynamic, dynamic>? extraData,
      @JsonKey(name: 'creator_id') int creatorId,
      @JsonKey(name: 'creation_time') DateTime creationTime,
      @JsonKey(name: 'last_modifier_id') int? lastModifierId,
      @JsonKey(name: 'last_modification_time') DateTime? lastModificationTime,
      @JsonKey(name: 'is_deleted') bool isDeleted,
      @JsonKey(name: 'deleter_id') int? deleterId,
      @JsonKey(name: 'deletion_time') DateTime? deletionTime});
}

/// @nodoc
class __$$StudentNotificationsPublicImplCopyWithImpl<$Res>
    extends _$StudentNotificationsPublicCopyWithImpl<$Res,
        _$StudentNotificationsPublicImpl>
    implements _$$StudentNotificationsPublicImplCopyWith<$Res> {
  __$$StudentNotificationsPublicImplCopyWithImpl(
      _$StudentNotificationsPublicImpl _value,
      $Res Function(_$StudentNotificationsPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentNotificationsPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = freezed,
    Object? title = null,
    Object? message = null,
    Object? notificationType = null,
    Object? isOpened = null,
    Object? deepLink = freezed,
    Object? imageUrl = freezed,
    Object? extraData = freezed,
    Object? creatorId = null,
    Object? creationTime = null,
    Object? lastModifierId = freezed,
    Object? lastModificationTime = freezed,
    Object? isDeleted = null,
    Object? deleterId = freezed,
    Object? deletionTime = freezed,
  }) {
    return _then(_$StudentNotificationsPublicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value._title
          : title // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      message: null == message
          ? _value._message
          : message // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
      isOpened: null == isOpened
          ? _value.isOpened
          : isOpened // ignore: cast_nullable_to_non_nullable
              as bool,
      deepLink: freezed == deepLink
          ? _value.deepLink
          : deepLink // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      extraData: freezed == extraData
          ? _value._extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastModifierId: freezed == lastModifierId
          ? _value.lastModifierId
          : lastModifierId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastModificationTime: freezed == lastModificationTime
          ? _value.lastModificationTime
          : lastModificationTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      deleterId: freezed == deleterId
          ? _value.deleterId
          : deleterId // ignore: cast_nullable_to_non_nullable
              as int?,
      deletionTime: freezed == deletionTime
          ? _value.deletionTime
          : deletionTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentNotificationsPublicImpl implements _StudentNotificationsPublic {
  const _$StudentNotificationsPublicImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'student_id') required this.studentId,
      @JsonKey(name: 'title') required final Map<dynamic, dynamic> title,
      @JsonKey(name: 'message') required final Map<dynamic, dynamic> message,
      @JsonKey(name: 'notification_type') required this.notificationType,
      @JsonKey(name: 'is_opened') required this.isOpened,
      @JsonKey(name: 'deep_link') required this.deepLink,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'extra_data')
      required final Map<dynamic, dynamic>? extraData,
      @JsonKey(name: 'creator_id') required this.creatorId,
      @JsonKey(name: 'creation_time') required this.creationTime,
      @JsonKey(name: 'last_modifier_id') required this.lastModifierId,
      @JsonKey(name: 'last_modification_time')
      required this.lastModificationTime,
      @JsonKey(name: 'is_deleted') required this.isDeleted,
      @JsonKey(name: 'deleter_id') required this.deleterId,
      @JsonKey(name: 'deletion_time') required this.deletionTime})
      : _title = title,
        _message = message,
        _extraData = extraData;

  factory _$StudentNotificationsPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StudentNotificationsPublicImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'student_id')
  final int? studentId;
  final Map<dynamic, dynamic> _title;
  @override
  @JsonKey(name: 'title')
  Map<dynamic, dynamic> get title {
    if (_title is EqualUnmodifiableMapView) return _title;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_title);
  }

  final Map<dynamic, dynamic> _message;
  @override
  @JsonKey(name: 'message')
  Map<dynamic, dynamic> get message {
    if (_message is EqualUnmodifiableMapView) return _message;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_message);
  }

  @override
  @JsonKey(name: 'notification_type')
  final String notificationType;
  @override
  @JsonKey(name: 'is_opened')
  final bool isOpened;
  @override
  @JsonKey(name: 'deep_link')
  final String? deepLink;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  final Map<dynamic, dynamic>? _extraData;
  @override
  @JsonKey(name: 'extra_data')
  Map<dynamic, dynamic>? get extraData {
    final value = _extraData;
    if (value == null) return null;
    if (_extraData is EqualUnmodifiableMapView) return _extraData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'creator_id')
  final int creatorId;
  @override
  @JsonKey(name: 'creation_time')
  final DateTime creationTime;
  @override
  @JsonKey(name: 'last_modifier_id')
  final int? lastModifierId;
  @override
  @JsonKey(name: 'last_modification_time')
  final DateTime? lastModificationTime;
  @override
  @JsonKey(name: 'is_deleted')
  final bool isDeleted;
  @override
  @JsonKey(name: 'deleter_id')
  final int? deleterId;
  @override
  @JsonKey(name: 'deletion_time')
  final DateTime? deletionTime;

  @override
  String toString() {
    return 'StudentNotificationsPublic(id: $id, studentId: $studentId, title: $title, message: $message, notificationType: $notificationType, isOpened: $isOpened, deepLink: $deepLink, imageUrl: $imageUrl, extraData: $extraData, creatorId: $creatorId, creationTime: $creationTime, lastModifierId: $lastModifierId, lastModificationTime: $lastModificationTime, isDeleted: $isDeleted, deleterId: $deleterId, deletionTime: $deletionTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentNotificationsPublicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            const DeepCollectionEquality().equals(other._title, _title) &&
            const DeepCollectionEquality().equals(other._message, _message) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(other.isOpened, isOpened) ||
                other.isOpened == isOpened) &&
            (identical(other.deepLink, deepLink) ||
                other.deepLink == deepLink) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality()
                .equals(other._extraData, _extraData) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.creationTime, creationTime) ||
                other.creationTime == creationTime) &&
            (identical(other.lastModifierId, lastModifierId) ||
                other.lastModifierId == lastModifierId) &&
            (identical(other.lastModificationTime, lastModificationTime) ||
                other.lastModificationTime == lastModificationTime) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.deleterId, deleterId) ||
                other.deleterId == deleterId) &&
            (identical(other.deletionTime, deletionTime) ||
                other.deletionTime == deletionTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      studentId,
      const DeepCollectionEquality().hash(_title),
      const DeepCollectionEquality().hash(_message),
      notificationType,
      isOpened,
      deepLink,
      imageUrl,
      const DeepCollectionEquality().hash(_extraData),
      creatorId,
      creationTime,
      lastModifierId,
      lastModificationTime,
      isDeleted,
      deleterId,
      deletionTime);

  /// Create a copy of StudentNotificationsPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentNotificationsPublicImplCopyWith<_$StudentNotificationsPublicImpl>
      get copyWith => __$$StudentNotificationsPublicImplCopyWithImpl<
          _$StudentNotificationsPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentNotificationsPublicImplToJson(
      this,
    );
  }
}

abstract class _StudentNotificationsPublic
    implements StudentNotificationsPublic {
  const factory _StudentNotificationsPublic(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'student_id') required final int? studentId,
      @JsonKey(name: 'title') required final Map<dynamic, dynamic> title,
      @JsonKey(name: 'message') required final Map<dynamic, dynamic> message,
      @JsonKey(name: 'notification_type')
      required final String notificationType,
      @JsonKey(name: 'is_opened') required final bool isOpened,
      @JsonKey(name: 'deep_link') required final String? deepLink,
      @JsonKey(name: 'image_url') required final String? imageUrl,
      @JsonKey(name: 'extra_data')
      required final Map<dynamic, dynamic>? extraData,
      @JsonKey(name: 'creator_id') required final int creatorId,
      @JsonKey(name: 'creation_time') required final DateTime creationTime,
      @JsonKey(name: 'last_modifier_id') required final int? lastModifierId,
      @JsonKey(name: 'last_modification_time')
      required final DateTime? lastModificationTime,
      @JsonKey(name: 'is_deleted') required final bool isDeleted,
      @JsonKey(name: 'deleter_id') required final int? deleterId,
      @JsonKey(name: 'deletion_time')
      required final DateTime?
          deletionTime}) = _$StudentNotificationsPublicImpl;

  factory _StudentNotificationsPublic.fromJson(Map<String, dynamic> json) =
      _$StudentNotificationsPublicImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'student_id')
  int? get studentId;
  @override
  @JsonKey(name: 'title')
  Map<dynamic, dynamic> get title;
  @override
  @JsonKey(name: 'message')
  Map<dynamic, dynamic> get message;
  @override
  @JsonKey(name: 'notification_type')
  String get notificationType;
  @override
  @JsonKey(name: 'is_opened')
  bool get isOpened;
  @override
  @JsonKey(name: 'deep_link')
  String? get deepLink;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'extra_data')
  Map<dynamic, dynamic>? get extraData;
  @override
  @JsonKey(name: 'creator_id')
  int get creatorId;
  @override
  @JsonKey(name: 'creation_time')
  DateTime get creationTime;
  @override
  @JsonKey(name: 'last_modifier_id')
  int? get lastModifierId;
  @override
  @JsonKey(name: 'last_modification_time')
  DateTime? get lastModificationTime;
  @override
  @JsonKey(name: 'is_deleted')
  bool get isDeleted;
  @override
  @JsonKey(name: 'deleter_id')
  int? get deleterId;
  @override
  @JsonKey(name: 'deletion_time')
  DateTime? get deletionTime;

  /// Create a copy of StudentNotificationsPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentNotificationsPublicImplCopyWith<_$StudentNotificationsPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
