// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Change {
  /// changeId
  @JsonKey(name: Change.changeIdKey_)
  String get changeId;

  /// entityName
  @JsonKey(name: Change.entityNameKey_)
  String get entityName;

  /// entityId
  @JsonKey(name: Change.entityIdKey_)
  List<dynamic> get entityId;

  /// changeType
  @JsonKey(name: Change.changeTypeKey_)
  ChangeType get changeType;

  /// etag
  @JsonKey(name: Change.etagKey_)
  int get etag;

  /// newDataJson
  @JsonKey(name: Change.newDataJsonKey_)
  String get newDataJson;

  /// sourceId
  @JsonKey(name: Change.sourceIdKey_)
  String get sourceId;

  /// timestamp
  @JsonKey(name: Change.timestampKey_)
  DateTime get timestamp;

  /// Create a copy of Change
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChangeCopyWith<Change> get copyWith =>
      _$ChangeCopyWithImpl<Change>(this as Change, _$identity);

  /// Serializes this Change to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Change &&
            (identical(other.changeId, changeId) ||
                other.changeId == changeId) &&
            (identical(other.entityName, entityName) ||
                other.entityName == entityName) &&
            const DeepCollectionEquality().equals(other.entityId, entityId) &&
            (identical(other.changeType, changeType) ||
                other.changeType == changeType) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.newDataJson, newDataJson) ||
                other.newDataJson == newDataJson) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      changeId,
      entityName,
      const DeepCollectionEquality().hash(entityId),
      changeType,
      etag,
      newDataJson,
      sourceId,
      timestamp);

  @override
  String toString() {
    return 'Change(changeId: $changeId, entityName: $entityName, entityId: $entityId, changeType: $changeType, etag: $etag, newDataJson: $newDataJson, sourceId: $sourceId, timestamp: $timestamp)';
  }
}

/// @nodoc
abstract mixin class $ChangeCopyWith<$Res> {
  factory $ChangeCopyWith(Change value, $Res Function(Change) _then) =
      _$ChangeCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: Change.changeIdKey_) String changeId,
      @JsonKey(name: Change.entityNameKey_) String entityName,
      @JsonKey(name: Change.entityIdKey_) List<dynamic> entityId,
      @JsonKey(name: Change.changeTypeKey_) ChangeType changeType,
      @JsonKey(name: Change.etagKey_) int etag,
      @JsonKey(name: Change.newDataJsonKey_) String newDataJson,
      @JsonKey(name: Change.sourceIdKey_) String sourceId,
      @JsonKey(name: Change.timestampKey_) DateTime timestamp});
}

/// @nodoc
class _$ChangeCopyWithImpl<$Res> implements $ChangeCopyWith<$Res> {
  _$ChangeCopyWithImpl(this._self, this._then);

  final Change _self;
  final $Res Function(Change) _then;

  /// Create a copy of Change
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changeId = null,
    Object? entityName = null,
    Object? entityId = null,
    Object? changeType = null,
    Object? etag = null,
    Object? newDataJson = null,
    Object? sourceId = null,
    Object? timestamp = null,
  }) {
    return _then(_self.copyWith(
      changeId: null == changeId
          ? _self.changeId
          : changeId // ignore: cast_nullable_to_non_nullable
              as String,
      entityName: null == entityName
          ? _self.entityName
          : entityName // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _self.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      changeType: null == changeType
          ? _self.changeType
          : changeType // ignore: cast_nullable_to_non_nullable
              as ChangeType,
      etag: null == etag
          ? _self.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as int,
      newDataJson: null == newDataJson
          ? _self.newDataJson
          : newDataJson // ignore: cast_nullable_to_non_nullable
              as String,
      sourceId: null == sourceId
          ? _self.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [Change].
extension ChangePatterns on Change {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Change value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Change() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Change value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Change():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Change value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Change() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: Change.changeIdKey_) String changeId,
            @JsonKey(name: Change.entityNameKey_) String entityName,
            @JsonKey(name: Change.entityIdKey_) List<dynamic> entityId,
            @JsonKey(name: Change.changeTypeKey_) ChangeType changeType,
            @JsonKey(name: Change.etagKey_) int etag,
            @JsonKey(name: Change.newDataJsonKey_) String newDataJson,
            @JsonKey(name: Change.sourceIdKey_) String sourceId,
            @JsonKey(name: Change.timestampKey_) DateTime timestamp)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Change() when $default != null:
        return $default(
            _that.changeId,
            _that.entityName,
            _that.entityId,
            _that.changeType,
            _that.etag,
            _that.newDataJson,
            _that.sourceId,
            _that.timestamp);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: Change.changeIdKey_) String changeId,
            @JsonKey(name: Change.entityNameKey_) String entityName,
            @JsonKey(name: Change.entityIdKey_) List<dynamic> entityId,
            @JsonKey(name: Change.changeTypeKey_) ChangeType changeType,
            @JsonKey(name: Change.etagKey_) int etag,
            @JsonKey(name: Change.newDataJsonKey_) String newDataJson,
            @JsonKey(name: Change.sourceIdKey_) String sourceId,
            @JsonKey(name: Change.timestampKey_) DateTime timestamp)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Change():
        return $default(
            _that.changeId,
            _that.entityName,
            _that.entityId,
            _that.changeType,
            _that.etag,
            _that.newDataJson,
            _that.sourceId,
            _that.timestamp);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: Change.changeIdKey_) String changeId,
            @JsonKey(name: Change.entityNameKey_) String entityName,
            @JsonKey(name: Change.entityIdKey_) List<dynamic> entityId,
            @JsonKey(name: Change.changeTypeKey_) ChangeType changeType,
            @JsonKey(name: Change.etagKey_) int etag,
            @JsonKey(name: Change.newDataJsonKey_) String newDataJson,
            @JsonKey(name: Change.sourceIdKey_) String sourceId,
            @JsonKey(name: Change.timestampKey_) DateTime timestamp)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Change() when $default != null:
        return $default(
            _that.changeId,
            _that.entityName,
            _that.entityId,
            _that.changeType,
            _that.etag,
            _that.newDataJson,
            _that.sourceId,
            _that.timestamp);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _Change extends Change {
  const _Change(
      {@JsonKey(name: Change.changeIdKey_) required this.changeId,
      @JsonKey(name: Change.entityNameKey_) required this.entityName,
      @JsonKey(name: Change.entityIdKey_) required final List<dynamic> entityId,
      @JsonKey(name: Change.changeTypeKey_) required this.changeType,
      @JsonKey(name: Change.etagKey_) required this.etag,
      @JsonKey(name: Change.newDataJsonKey_) required this.newDataJson,
      @JsonKey(name: Change.sourceIdKey_) required this.sourceId,
      @JsonKey(name: Change.timestampKey_) required this.timestamp})
      : _entityId = entityId,
        super._();
  factory _Change.fromJson(Map<String, dynamic> json) => _$ChangeFromJson(json);

  /// changeId
  @override
  @JsonKey(name: Change.changeIdKey_)
  final String changeId;

  /// entityName
  @override
  @JsonKey(name: Change.entityNameKey_)
  final String entityName;

  /// entityId
  final List<dynamic> _entityId;

  /// entityId
  @override
  @JsonKey(name: Change.entityIdKey_)
  List<dynamic> get entityId {
    if (_entityId is EqualUnmodifiableListView) return _entityId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entityId);
  }

  /// changeType
  @override
  @JsonKey(name: Change.changeTypeKey_)
  final ChangeType changeType;

  /// etag
  @override
  @JsonKey(name: Change.etagKey_)
  final int etag;

  /// newDataJson
  @override
  @JsonKey(name: Change.newDataJsonKey_)
  final String newDataJson;

  /// sourceId
  @override
  @JsonKey(name: Change.sourceIdKey_)
  final String sourceId;

  /// timestamp
  @override
  @JsonKey(name: Change.timestampKey_)
  final DateTime timestamp;

  /// Create a copy of Change
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChangeCopyWith<_Change> get copyWith =>
      __$ChangeCopyWithImpl<_Change>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChangeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Change &&
            (identical(other.changeId, changeId) ||
                other.changeId == changeId) &&
            (identical(other.entityName, entityName) ||
                other.entityName == entityName) &&
            const DeepCollectionEquality().equals(other._entityId, _entityId) &&
            (identical(other.changeType, changeType) ||
                other.changeType == changeType) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.newDataJson, newDataJson) ||
                other.newDataJson == newDataJson) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      changeId,
      entityName,
      const DeepCollectionEquality().hash(_entityId),
      changeType,
      etag,
      newDataJson,
      sourceId,
      timestamp);

  @override
  String toString() {
    return 'Change(changeId: $changeId, entityName: $entityName, entityId: $entityId, changeType: $changeType, etag: $etag, newDataJson: $newDataJson, sourceId: $sourceId, timestamp: $timestamp)';
  }
}

/// @nodoc
abstract mixin class _$ChangeCopyWith<$Res> implements $ChangeCopyWith<$Res> {
  factory _$ChangeCopyWith(_Change value, $Res Function(_Change) _then) =
      __$ChangeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: Change.changeIdKey_) String changeId,
      @JsonKey(name: Change.entityNameKey_) String entityName,
      @JsonKey(name: Change.entityIdKey_) List<dynamic> entityId,
      @JsonKey(name: Change.changeTypeKey_) ChangeType changeType,
      @JsonKey(name: Change.etagKey_) int etag,
      @JsonKey(name: Change.newDataJsonKey_) String newDataJson,
      @JsonKey(name: Change.sourceIdKey_) String sourceId,
      @JsonKey(name: Change.timestampKey_) DateTime timestamp});
}

/// @nodoc
class __$ChangeCopyWithImpl<$Res> implements _$ChangeCopyWith<$Res> {
  __$ChangeCopyWithImpl(this._self, this._then);

  final _Change _self;
  final $Res Function(_Change) _then;

  /// Create a copy of Change
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? changeId = null,
    Object? entityName = null,
    Object? entityId = null,
    Object? changeType = null,
    Object? etag = null,
    Object? newDataJson = null,
    Object? sourceId = null,
    Object? timestamp = null,
  }) {
    return _then(_Change(
      changeId: null == changeId
          ? _self.changeId
          : changeId // ignore: cast_nullable_to_non_nullable
              as String,
      entityName: null == entityName
          ? _self.entityName
          : entityName // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _self._entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      changeType: null == changeType
          ? _self.changeType
          : changeType // ignore: cast_nullable_to_non_nullable
              as ChangeType,
      etag: null == etag
          ? _self.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as int,
      newDataJson: null == newDataJson
          ? _self.newDataJson
          : newDataJson // ignore: cast_nullable_to_non_nullable
              as String,
      sourceId: null == sourceId
          ? _self.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}
