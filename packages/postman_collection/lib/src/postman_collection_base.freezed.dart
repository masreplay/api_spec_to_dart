// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_collection_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanCollection {
  PostmanCollectionInfo get info;
  List<PostmanCollectionItem> get item;
  PostmanCollectionAuth? get auth;
  List<PostmanCollectionEvent>? get event;
  Map<String, dynamic>? get protocolProfileBehavior;
  List<PostmanCollectionVariable>? get variable;

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCollectionCopyWith<PostmanCollection> get copyWith =>
      _$PostmanCollectionCopyWithImpl<PostmanCollection>(
        this as PostmanCollection,
        _$identity,
      );

  /// Serializes this PostmanCollection to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCollection;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCollection &&
            (identical(other.info, _this.info) || other.info == _this.info) &&
            const DeepCollectionEquality().equals(other.item, _this.item) &&
            (identical(other.auth, _this.auth) || other.auth == _this.auth) &&
            const DeepCollectionEquality().equals(other.event, _this.event) &&
            const DeepCollectionEquality().equals(
              other.protocolProfileBehavior,
              _this.protocolProfileBehavior,
            ) &&
            const DeepCollectionEquality().equals(
              other.variable,
              _this.variable,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCollection;
    return Object.hash(
      runtimeType,
      _this.info,
      const DeepCollectionEquality().hash(_this.item),
      _this.auth,
      const DeepCollectionEquality().hash(_this.event),
      const DeepCollectionEquality().hash(_this.protocolProfileBehavior),
      const DeepCollectionEquality().hash(_this.variable),
    );
  }

  @override
  String toString() {
    final _this = this as PostmanCollection;
    return 'PostmanCollection(info: ${_this.info}, item: ${_this.item}, auth: ${_this.auth}, event: ${_this.event}, protocolProfileBehavior: ${_this.protocolProfileBehavior}, variable: ${_this.variable})';
  }
}

/// @nodoc
abstract mixin class $PostmanCollectionCopyWith<$Res> {
  factory $PostmanCollectionCopyWith(
    PostmanCollection value,
    $Res Function(PostmanCollection) _then,
  ) = _$PostmanCollectionCopyWithImpl;
  @useResult
  $Res call({
    PostmanCollectionInfo info,
    List<PostmanCollectionItem> item,
    PostmanCollectionAuth? auth,
    List<PostmanCollectionEvent>? event,
    Map<String, dynamic>? protocolProfileBehavior,
    List<PostmanCollectionVariable>? variable,
  });

  $PostmanCollectionInfoCopyWith<$Res> get info;
  $PostmanCollectionAuthCopyWith<$Res>? get auth;
}

/// @nodoc
class _$PostmanCollectionCopyWithImpl<$Res>
    implements $PostmanCollectionCopyWith<$Res> {
  _$PostmanCollectionCopyWithImpl(this._self, this._then);

  final PostmanCollection _self;
  final $Res Function(PostmanCollection) _then;

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? item = null,
    Object? auth = freezed,
    Object? event = freezed,
    Object? protocolProfileBehavior = freezed,
    Object? variable = freezed,
  }) {
    return _then(
      PostmanCollection(
        info: null == info
            ? _self.info
            : info // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionInfo,
        item: null == item
            ? _self.item
            : item // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionItem>,
        auth: freezed == auth
            ? _self.auth
            : auth // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionAuth?,
        event: freezed == event
            ? _self.event
            : event // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionEvent>?,
        protocolProfileBehavior: freezed == protocolProfileBehavior
            ? _self.protocolProfileBehavior
            : protocolProfileBehavior // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        variable: freezed == variable
            ? _self.variable
            : variable // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionVariable>?,
      ),
    );
  }

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionInfoCopyWith<$Res> get info {
    return $PostmanCollectionInfoCopyWith<$Res>(_self.info, (value) {
      return _then(_self.copyWith(info: value));
    });
  }

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionAuthCopyWith<$Res>? get auth {
    if (_self.auth == null) {
      return null;
    }

    return $PostmanCollectionAuthCopyWith<$Res>(_self.auth!, (value) {
      return _then(_self.copyWith(auth: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PostmanCollection].
extension PostmanCollectionPatterns on PostmanCollection {
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
    TResult Function(_PostmanCollection value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollection() when $default != null:
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
    TResult Function(_PostmanCollection value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollection():
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
    TResult? Function(_PostmanCollection value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollection() when $default != null:
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
      PostmanCollectionInfo info,
      List<PostmanCollectionItem> item,
      PostmanCollectionAuth? auth,
      List<PostmanCollectionEvent>? event,
      Map<String, dynamic>? protocolProfileBehavior,
      List<PostmanCollectionVariable>? variable,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollection() when $default != null:
        return $default(
          _that.info,
          _that.item,
          _that.auth,
          _that.event,
          _that.protocolProfileBehavior,
          _that.variable,
        );
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
      PostmanCollectionInfo info,
      List<PostmanCollectionItem> item,
      PostmanCollectionAuth? auth,
      List<PostmanCollectionEvent>? event,
      Map<String, dynamic>? protocolProfileBehavior,
      List<PostmanCollectionVariable>? variable,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollection():
        return $default(
          _that.info,
          _that.item,
          _that.auth,
          _that.event,
          _that.protocolProfileBehavior,
          _that.variable,
        );
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
      PostmanCollectionInfo info,
      List<PostmanCollectionItem> item,
      PostmanCollectionAuth? auth,
      List<PostmanCollectionEvent>? event,
      Map<String, dynamic>? protocolProfileBehavior,
      List<PostmanCollectionVariable>? variable,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollection() when $default != null:
        return $default(
          _that.info,
          _that.item,
          _that.auth,
          _that.event,
          _that.protocolProfileBehavior,
          _that.variable,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostmanCollection extends PostmanCollection {
  const _PostmanCollection({
    required this.info,
    required List<PostmanCollectionItem> item,
    this.auth,
    List<PostmanCollectionEvent>? event,
    Map<String, dynamic>? protocolProfileBehavior,
    List<PostmanCollectionVariable>? variable,
  }) : _item = item,
       _event = event,
       _protocolProfileBehavior = protocolProfileBehavior,
       _variable = variable,
       super._();
  factory _PostmanCollection.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionFromJson(json);

  @override
  final PostmanCollectionInfo info;
  final List<PostmanCollectionItem> _item;
  @override
  List<PostmanCollectionItem> get item {
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_item);
  }

  @override
  final PostmanCollectionAuth? auth;
  final List<PostmanCollectionEvent>? _event;
  @override
  List<PostmanCollectionEvent>? get event {
    final value = _event;
    if (value == null) return null;
    if (_event is EqualUnmodifiableListView) return _event;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _protocolProfileBehavior;
  @override
  Map<String, dynamic>? get protocolProfileBehavior {
    final value = _protocolProfileBehavior;
    if (value == null) return null;
    if (_protocolProfileBehavior is EqualUnmodifiableMapView)
      return _protocolProfileBehavior;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<PostmanCollectionVariable>? _variable;
  @override
  List<PostmanCollectionVariable>? get variable {
    final value = _variable;
    if (value == null) return null;
    if (_variable is EqualUnmodifiableListView) return _variable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCollectionCopyWith<_PostmanCollection> get copyWith =>
      __$PostmanCollectionCopyWithImpl<_PostmanCollection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCollectionToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCollection &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other.item, _item) &&
            (identical(other.auth, auth) || other.auth == auth) &&
            const DeepCollectionEquality().equals(other.event, _event) &&
            const DeepCollectionEquality().equals(
              other.protocolProfileBehavior,
              _protocolProfileBehavior,
            ) &&
            const DeepCollectionEquality().equals(other.variable, _variable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      info,
      const DeepCollectionEquality().hash(_item),
      auth,
      const DeepCollectionEquality().hash(_event),
      const DeepCollectionEquality().hash(_protocolProfileBehavior),
      const DeepCollectionEquality().hash(_variable),
    );
  }

  @override
  String toString() {
    return 'PostmanCollection(info: $info, item: $item, auth: $auth, event: $event, protocolProfileBehavior: $protocolProfileBehavior, variable: $variable)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCollectionCopyWith<$Res>
    implements $PostmanCollectionCopyWith<$Res> {
  factory _$PostmanCollectionCopyWith(
    _PostmanCollection value,
    $Res Function(_PostmanCollection) _then,
  ) = __$PostmanCollectionCopyWithImpl;
  @override
  @useResult
  $Res call({
    PostmanCollectionInfo info,
    List<PostmanCollectionItem> item,
    PostmanCollectionAuth? auth,
    List<PostmanCollectionEvent>? event,
    Map<String, dynamic>? protocolProfileBehavior,
    List<PostmanCollectionVariable>? variable,
  });

  @override
  $PostmanCollectionInfoCopyWith<$Res> get info;
  @override
  $PostmanCollectionAuthCopyWith<$Res>? get auth;
}

/// @nodoc
class __$PostmanCollectionCopyWithImpl<$Res>
    implements _$PostmanCollectionCopyWith<$Res> {
  __$PostmanCollectionCopyWithImpl(this._self, this._then);

  final _PostmanCollection _self;
  final $Res Function(_PostmanCollection) _then;

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? info = null,
    Object? item = null,
    Object? auth = freezed,
    Object? event = freezed,
    Object? protocolProfileBehavior = freezed,
    Object? variable = freezed,
  }) {
    return _then(
      _PostmanCollection(
        info: null == info
            ? _self.info
            : info // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionInfo,
        item: null == item
            ? _self._item
            : item // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionItem>,
        auth: freezed == auth
            ? _self.auth
            : auth // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionAuth?,
        event: freezed == event
            ? _self._event
            : event // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionEvent>?,
        protocolProfileBehavior: freezed == protocolProfileBehavior
            ? _self._protocolProfileBehavior
            : protocolProfileBehavior // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        variable: freezed == variable
            ? _self._variable
            : variable // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionVariable>?,
      ),
    );
  }

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionInfoCopyWith<$Res> get info {
    return $PostmanCollectionInfoCopyWith<$Res>(_self.info, (value) {
      return _then(_self.copyWith(info: value));
    });
  }

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionAuthCopyWith<$Res>? get auth {
    if (_self.auth == null) {
      return null;
    }

    return $PostmanCollectionAuthCopyWith<$Res>(_self.auth!, (value) {
      return _then(_self.copyWith(auth: value));
    });
  }
}

/// @nodoc
mixin _$PostmanCollectionInfo {
  @JsonKey(name: '_postman_id')
  String? get postmanId;
  String get name;
  String get schema;
  String? get description;
  PostmanCollectionVersion? get version;
  @JsonKey(name: '_exporter_id')
  String? get exporterId;
  @JsonKey(name: '_collection_link')
  String? get collectionLink;

  /// Create a copy of PostmanCollectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCollectionInfoCopyWith<PostmanCollectionInfo> get copyWith =>
      _$PostmanCollectionInfoCopyWithImpl<PostmanCollectionInfo>(
        this as PostmanCollectionInfo,
        _$identity,
      );

  /// Serializes this PostmanCollectionInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCollectionInfo;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCollectionInfo &&
            (identical(other.postmanId, _this.postmanId) ||
                other.postmanId == _this.postmanId) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.schema, _this.schema) ||
                other.schema == _this.schema) &&
            (identical(other.description, _this.description) ||
                other.description == _this.description) &&
            (identical(other.version, _this.version) ||
                other.version == _this.version) &&
            (identical(other.exporterId, _this.exporterId) ||
                other.exporterId == _this.exporterId) &&
            (identical(other.collectionLink, _this.collectionLink) ||
                other.collectionLink == _this.collectionLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCollectionInfo;
    return Object.hash(
      runtimeType,
      _this.postmanId,
      _this.name,
      _this.schema,
      _this.description,
      _this.version,
      _this.exporterId,
      _this.collectionLink,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanCollectionInfo;
    return 'PostmanCollectionInfo(postmanId: ${_this.postmanId}, name: ${_this.name}, schema: ${_this.schema}, description: ${_this.description}, version: ${_this.version}, exporterId: ${_this.exporterId}, collectionLink: ${_this.collectionLink})';
  }
}

/// @nodoc
abstract mixin class $PostmanCollectionInfoCopyWith<$Res> {
  factory $PostmanCollectionInfoCopyWith(
    PostmanCollectionInfo value,
    $Res Function(PostmanCollectionInfo) _then,
  ) = _$PostmanCollectionInfoCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: '_postman_id') String? postmanId,
    String name,
    String schema,
    String? description,
    PostmanCollectionVersion? version,
    @JsonKey(name: '_exporter_id') String? exporterId,
    @JsonKey(name: '_collection_link') String? collectionLink,
  });

  $PostmanCollectionVersionCopyWith<$Res>? get version;
}

/// @nodoc
class _$PostmanCollectionInfoCopyWithImpl<$Res>
    implements $PostmanCollectionInfoCopyWith<$Res> {
  _$PostmanCollectionInfoCopyWithImpl(this._self, this._then);

  final PostmanCollectionInfo _self;
  final $Res Function(PostmanCollectionInfo) _then;

  /// Create a copy of PostmanCollectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postmanId = freezed,
    Object? name = null,
    Object? schema = null,
    Object? description = freezed,
    Object? version = freezed,
    Object? exporterId = freezed,
    Object? collectionLink = freezed,
  }) {
    return _then(
      PostmanCollectionInfo(
        postmanId: freezed == postmanId
            ? _self.postmanId
            : postmanId // ignore: cast_nullable_to_non_nullable
                  as String?,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        schema: null == schema
            ? _self.schema
            : schema // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        version: freezed == version
            ? _self.version
            : version // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionVersion?,
        exporterId: freezed == exporterId
            ? _self.exporterId
            : exporterId // ignore: cast_nullable_to_non_nullable
                  as String?,
        collectionLink: freezed == collectionLink
            ? _self.collectionLink
            : collectionLink // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }

  /// Create a copy of PostmanCollectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionVersionCopyWith<$Res>? get version {
    if (_self.version == null) {
      return null;
    }

    return $PostmanCollectionVersionCopyWith<$Res>(_self.version!, (value) {
      return _then(_self.copyWith(version: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PostmanCollectionInfo].
extension PostmanCollectionInfoPatterns on PostmanCollectionInfo {
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
    TResult Function(_PostmanCollectionInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionInfo() when $default != null:
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
    TResult Function(_PostmanCollectionInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionInfo():
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
    TResult? Function(_PostmanCollectionInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionInfo() when $default != null:
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
      @JsonKey(name: '_postman_id') String? postmanId,
      String name,
      String schema,
      String? description,
      PostmanCollectionVersion? version,
      @JsonKey(name: '_exporter_id') String? exporterId,
      @JsonKey(name: '_collection_link') String? collectionLink,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionInfo() when $default != null:
        return $default(
          _that.postmanId,
          _that.name,
          _that.schema,
          _that.description,
          _that.version,
          _that.exporterId,
          _that.collectionLink,
        );
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
      @JsonKey(name: '_postman_id') String? postmanId,
      String name,
      String schema,
      String? description,
      PostmanCollectionVersion? version,
      @JsonKey(name: '_exporter_id') String? exporterId,
      @JsonKey(name: '_collection_link') String? collectionLink,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionInfo():
        return $default(
          _that.postmanId,
          _that.name,
          _that.schema,
          _that.description,
          _that.version,
          _that.exporterId,
          _that.collectionLink,
        );
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
      @JsonKey(name: '_postman_id') String? postmanId,
      String name,
      String schema,
      String? description,
      PostmanCollectionVersion? version,
      @JsonKey(name: '_exporter_id') String? exporterId,
      @JsonKey(name: '_collection_link') String? collectionLink,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionInfo() when $default != null:
        return $default(
          _that.postmanId,
          _that.name,
          _that.schema,
          _that.description,
          _that.version,
          _that.exporterId,
          _that.collectionLink,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostmanCollectionInfo extends PostmanCollectionInfo {
  const _PostmanCollectionInfo({
    @JsonKey(name: '_postman_id') this.postmanId,
    required this.name,
    required this.schema,
    this.description,
    this.version,
    @JsonKey(name: '_exporter_id') this.exporterId,
    @JsonKey(name: '_collection_link') this.collectionLink,
  }) : super._();
  factory _PostmanCollectionInfo.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionInfoFromJson(json);

  @override
  @JsonKey(name: '_postman_id')
  final String? postmanId;
  @override
  final String name;
  @override
  final String schema;
  @override
  final String? description;
  @override
  final PostmanCollectionVersion? version;
  @override
  @JsonKey(name: '_exporter_id')
  final String? exporterId;
  @override
  @JsonKey(name: '_collection_link')
  final String? collectionLink;

  /// Create a copy of PostmanCollectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCollectionInfoCopyWith<_PostmanCollectionInfo> get copyWith =>
      __$PostmanCollectionInfoCopyWithImpl<_PostmanCollectionInfo>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCollectionInfoToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCollectionInfo &&
            (identical(other.postmanId, postmanId) ||
                other.postmanId == postmanId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.schema, schema) || other.schema == schema) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.exporterId, exporterId) ||
                other.exporterId == exporterId) &&
            (identical(other.collectionLink, collectionLink) ||
                other.collectionLink == collectionLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      postmanId,
      name,
      schema,
      description,
      version,
      exporterId,
      collectionLink,
    );
  }

  @override
  String toString() {
    return 'PostmanCollectionInfo(postmanId: $postmanId, name: $name, schema: $schema, description: $description, version: $version, exporterId: $exporterId, collectionLink: $collectionLink)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCollectionInfoCopyWith<$Res>
    implements $PostmanCollectionInfoCopyWith<$Res> {
  factory _$PostmanCollectionInfoCopyWith(
    _PostmanCollectionInfo value,
    $Res Function(_PostmanCollectionInfo) _then,
  ) = __$PostmanCollectionInfoCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: '_postman_id') String? postmanId,
    String name,
    String schema,
    String? description,
    PostmanCollectionVersion? version,
    @JsonKey(name: '_exporter_id') String? exporterId,
    @JsonKey(name: '_collection_link') String? collectionLink,
  });

  @override
  $PostmanCollectionVersionCopyWith<$Res>? get version;
}

/// @nodoc
class __$PostmanCollectionInfoCopyWithImpl<$Res>
    implements _$PostmanCollectionInfoCopyWith<$Res> {
  __$PostmanCollectionInfoCopyWithImpl(this._self, this._then);

  final _PostmanCollectionInfo _self;
  final $Res Function(_PostmanCollectionInfo) _then;

  /// Create a copy of PostmanCollectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? postmanId = freezed,
    Object? name = null,
    Object? schema = null,
    Object? description = freezed,
    Object? version = freezed,
    Object? exporterId = freezed,
    Object? collectionLink = freezed,
  }) {
    return _then(
      _PostmanCollectionInfo(
        postmanId: freezed == postmanId
            ? _self.postmanId
            : postmanId // ignore: cast_nullable_to_non_nullable
                  as String?,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        schema: null == schema
            ? _self.schema
            : schema // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        version: freezed == version
            ? _self.version
            : version // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionVersion?,
        exporterId: freezed == exporterId
            ? _self.exporterId
            : exporterId // ignore: cast_nullable_to_non_nullable
                  as String?,
        collectionLink: freezed == collectionLink
            ? _self.collectionLink
            : collectionLink // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }

  /// Create a copy of PostmanCollectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionVersionCopyWith<$Res>? get version {
    if (_self.version == null) {
      return null;
    }

    return $PostmanCollectionVersionCopyWith<$Res>(_self.version!, (value) {
      return _then(_self.copyWith(version: value));
    });
  }
}

/// @nodoc
mixin _$PostmanCollectionVersion {
  int get major;
  int get minor;
  int get patch;
  String? get identifier;
  Object? get meta;

  /// Create a copy of PostmanCollectionVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCollectionVersionCopyWith<PostmanCollectionVersion> get copyWith =>
      _$PostmanCollectionVersionCopyWithImpl<PostmanCollectionVersion>(
        this as PostmanCollectionVersion,
        _$identity,
      );

  /// Serializes this PostmanCollectionVersion to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCollectionVersion;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCollectionVersion &&
            (identical(other.major, _this.major) ||
                other.major == _this.major) &&
            (identical(other.minor, _this.minor) ||
                other.minor == _this.minor) &&
            (identical(other.patch, _this.patch) ||
                other.patch == _this.patch) &&
            (identical(other.identifier, _this.identifier) ||
                other.identifier == _this.identifier) &&
            const DeepCollectionEquality().equals(other.meta, _this.meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCollectionVersion;
    return Object.hash(
      runtimeType,
      _this.major,
      _this.minor,
      _this.patch,
      _this.identifier,
      const DeepCollectionEquality().hash(_this.meta),
    );
  }

  @override
  String toString() {
    final _this = this as PostmanCollectionVersion;
    return 'PostmanCollectionVersion(major: ${_this.major}, minor: ${_this.minor}, patch: ${_this.patch}, identifier: ${_this.identifier}, meta: ${_this.meta})';
  }
}

/// @nodoc
abstract mixin class $PostmanCollectionVersionCopyWith<$Res> {
  factory $PostmanCollectionVersionCopyWith(
    PostmanCollectionVersion value,
    $Res Function(PostmanCollectionVersion) _then,
  ) = _$PostmanCollectionVersionCopyWithImpl;
  @useResult
  $Res call({
    int major,
    int minor,
    int patch,
    String? identifier,
    Object? meta,
  });
}

/// @nodoc
class _$PostmanCollectionVersionCopyWithImpl<$Res>
    implements $PostmanCollectionVersionCopyWith<$Res> {
  _$PostmanCollectionVersionCopyWithImpl(this._self, this._then);

  final PostmanCollectionVersion _self;
  final $Res Function(PostmanCollectionVersion) _then;

  /// Create a copy of PostmanCollectionVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? major = null,
    Object? minor = null,
    Object? patch = null,
    Object? identifier = freezed,
    Object? meta = freezed,
  }) {
    return _then(
      PostmanCollectionVersion(
        major: null == major
            ? _self.major
            : major // ignore: cast_nullable_to_non_nullable
                  as int,
        minor: null == minor
            ? _self.minor
            : minor // ignore: cast_nullable_to_non_nullable
                  as int,
        patch: null == patch
            ? _self.patch
            : patch // ignore: cast_nullable_to_non_nullable
                  as int,
        identifier: freezed == identifier
            ? _self.identifier
            : identifier // ignore: cast_nullable_to_non_nullable
                  as String?,
        meta: freezed == meta ? _self.meta : meta,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanCollectionVersion].
extension PostmanCollectionVersionPatterns on PostmanCollectionVersion {
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
    TResult Function(_PostmanCollectionVersion value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionVersion() when $default != null:
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
    TResult Function(_PostmanCollectionVersion value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionVersion():
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
    TResult? Function(_PostmanCollectionVersion value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionVersion() when $default != null:
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
      int major,
      int minor,
      int patch,
      String? identifier,
      Object? meta,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionVersion() when $default != null:
        return $default(
          _that.major,
          _that.minor,
          _that.patch,
          _that.identifier,
          _that.meta,
        );
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
      int major,
      int minor,
      int patch,
      String? identifier,
      Object? meta,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionVersion():
        return $default(
          _that.major,
          _that.minor,
          _that.patch,
          _that.identifier,
          _that.meta,
        );
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
      int major,
      int minor,
      int patch,
      String? identifier,
      Object? meta,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionVersion() when $default != null:
        return $default(
          _that.major,
          _that.minor,
          _that.patch,
          _that.identifier,
          _that.meta,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostmanCollectionVersion extends PostmanCollectionVersion {
  const _PostmanCollectionVersion({
    required this.major,
    required this.minor,
    required this.patch,
    this.identifier,
    this.meta,
  }) : super._();
  factory _PostmanCollectionVersion.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionVersionFromJson(json);

  @override
  final int major;
  @override
  final int minor;
  @override
  final int patch;
  @override
  final String? identifier;
  @override
  final Object? meta;

  /// Create a copy of PostmanCollectionVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCollectionVersionCopyWith<_PostmanCollectionVersion> get copyWith =>
      __$PostmanCollectionVersionCopyWithImpl<_PostmanCollectionVersion>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCollectionVersionToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCollectionVersion &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.minor, minor) || other.minor == minor) &&
            (identical(other.patch, patch) || other.patch == patch) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            const DeepCollectionEquality().equals(other.meta, meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      major,
      minor,
      patch,
      identifier,
      const DeepCollectionEquality().hash(meta),
    );
  }

  @override
  String toString() {
    return 'PostmanCollectionVersion(major: $major, minor: $minor, patch: $patch, identifier: $identifier, meta: $meta)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCollectionVersionCopyWith<$Res>
    implements $PostmanCollectionVersionCopyWith<$Res> {
  factory _$PostmanCollectionVersionCopyWith(
    _PostmanCollectionVersion value,
    $Res Function(_PostmanCollectionVersion) _then,
  ) = __$PostmanCollectionVersionCopyWithImpl;
  @override
  @useResult
  $Res call({
    int major,
    int minor,
    int patch,
    String? identifier,
    Object? meta,
  });
}

/// @nodoc
class __$PostmanCollectionVersionCopyWithImpl<$Res>
    implements _$PostmanCollectionVersionCopyWith<$Res> {
  __$PostmanCollectionVersionCopyWithImpl(this._self, this._then);

  final _PostmanCollectionVersion _self;
  final $Res Function(_PostmanCollectionVersion) _then;

  /// Create a copy of PostmanCollectionVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? major = null,
    Object? minor = null,
    Object? patch = null,
    Object? identifier = freezed,
    Object? meta = freezed,
  }) {
    return _then(
      _PostmanCollectionVersion(
        major: null == major
            ? _self.major
            : major // ignore: cast_nullable_to_non_nullable
                  as int,
        minor: null == minor
            ? _self.minor
            : minor // ignore: cast_nullable_to_non_nullable
                  as int,
        patch: null == patch
            ? _self.patch
            : patch // ignore: cast_nullable_to_non_nullable
                  as int,
        identifier: freezed == identifier
            ? _self.identifier
            : identifier // ignore: cast_nullable_to_non_nullable
                  as String?,
        meta: freezed == meta ? _self.meta : meta,
      ),
    );
  }
}

/// @nodoc
mixin _$PostmanCollectionItem {
  String? get id;
  String get name;
  String? get description;
  List<PostmanCollectionVariable>? get variable;
  List<PostmanCollectionEvent>? get event;
  Map<String, dynamic>? get protocolProfileBehavior;
  PostmanCollectionRequest? get request;
  List<PostmanCollectionResponse>? get response;
  List<PostmanCollectionItem>? get item;

  /// Create a copy of PostmanCollectionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCollectionItemCopyWith<PostmanCollectionItem> get copyWith =>
      _$PostmanCollectionItemCopyWithImpl<PostmanCollectionItem>(
        this as PostmanCollectionItem,
        _$identity,
      );

  /// Serializes this PostmanCollectionItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCollectionItem;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCollectionItem &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.description, _this.description) ||
                other.description == _this.description) &&
            const DeepCollectionEquality().equals(
              other.variable,
              _this.variable,
            ) &&
            const DeepCollectionEquality().equals(other.event, _this.event) &&
            const DeepCollectionEquality().equals(
              other.protocolProfileBehavior,
              _this.protocolProfileBehavior,
            ) &&
            (identical(other.request, _this.request) ||
                other.request == _this.request) &&
            const DeepCollectionEquality().equals(
              other.response,
              _this.response,
            ) &&
            const DeepCollectionEquality().equals(other.item, _this.item));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCollectionItem;
    return Object.hash(
      runtimeType,
      _this.id,
      _this.name,
      _this.description,
      const DeepCollectionEquality().hash(_this.variable),
      const DeepCollectionEquality().hash(_this.event),
      const DeepCollectionEquality().hash(_this.protocolProfileBehavior),
      _this.request,
      const DeepCollectionEquality().hash(_this.response),
      const DeepCollectionEquality().hash(_this.item),
    );
  }

  @override
  String toString() {
    final _this = this as PostmanCollectionItem;
    return 'PostmanCollectionItem(id: ${_this.id}, name: ${_this.name}, description: ${_this.description}, variable: ${_this.variable}, event: ${_this.event}, protocolProfileBehavior: ${_this.protocolProfileBehavior}, request: ${_this.request}, response: ${_this.response}, item: ${_this.item})';
  }
}

/// @nodoc
abstract mixin class $PostmanCollectionItemCopyWith<$Res> {
  factory $PostmanCollectionItemCopyWith(
    PostmanCollectionItem value,
    $Res Function(PostmanCollectionItem) _then,
  ) = _$PostmanCollectionItemCopyWithImpl;
  @useResult
  $Res call({
    String? id,
    String name,
    String? description,
    List<PostmanCollectionVariable>? variable,
    List<PostmanCollectionEvent>? event,
    Map<String, dynamic>? protocolProfileBehavior,
    PostmanCollectionRequest? request,
    List<PostmanCollectionResponse>? response,
    List<PostmanCollectionItem>? item,
  });

  $PostmanCollectionRequestCopyWith<$Res>? get request;
}

/// @nodoc
class _$PostmanCollectionItemCopyWithImpl<$Res>
    implements $PostmanCollectionItemCopyWith<$Res> {
  _$PostmanCollectionItemCopyWithImpl(this._self, this._then);

  final PostmanCollectionItem _self;
  final $Res Function(PostmanCollectionItem) _then;

  /// Create a copy of PostmanCollectionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? variable = freezed,
    Object? event = freezed,
    Object? protocolProfileBehavior = freezed,
    Object? request = freezed,
    Object? response = freezed,
    Object? item = freezed,
  }) {
    return _then(
      PostmanCollectionItem(
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        variable: freezed == variable
            ? _self.variable
            : variable // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionVariable>?,
        event: freezed == event
            ? _self.event
            : event // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionEvent>?,
        protocolProfileBehavior: freezed == protocolProfileBehavior
            ? _self.protocolProfileBehavior
            : protocolProfileBehavior // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        request: freezed == request
            ? _self.request
            : request // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionRequest?,
        response: freezed == response
            ? _self.response
            : response // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionResponse>?,
        item: freezed == item
            ? _self.item
            : item // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionItem>?,
      ),
    );
  }

  /// Create a copy of PostmanCollectionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionRequestCopyWith<$Res>? get request {
    if (_self.request == null) {
      return null;
    }

    return $PostmanCollectionRequestCopyWith<$Res>(_self.request!, (value) {
      return _then(_self.copyWith(request: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PostmanCollectionItem].
extension PostmanCollectionItemPatterns on PostmanCollectionItem {
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
    TResult Function(_PostmanCollectionItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionItem() when $default != null:
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
    TResult Function(_PostmanCollectionItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionItem():
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
    TResult? Function(_PostmanCollectionItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionItem() when $default != null:
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
      String? id,
      String name,
      String? description,
      List<PostmanCollectionVariable>? variable,
      List<PostmanCollectionEvent>? event,
      Map<String, dynamic>? protocolProfileBehavior,
      PostmanCollectionRequest? request,
      List<PostmanCollectionResponse>? response,
      List<PostmanCollectionItem>? item,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionItem() when $default != null:
        return $default(
          _that.id,
          _that.name,
          _that.description,
          _that.variable,
          _that.event,
          _that.protocolProfileBehavior,
          _that.request,
          _that.response,
          _that.item,
        );
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
      String? id,
      String name,
      String? description,
      List<PostmanCollectionVariable>? variable,
      List<PostmanCollectionEvent>? event,
      Map<String, dynamic>? protocolProfileBehavior,
      PostmanCollectionRequest? request,
      List<PostmanCollectionResponse>? response,
      List<PostmanCollectionItem>? item,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionItem():
        return $default(
          _that.id,
          _that.name,
          _that.description,
          _that.variable,
          _that.event,
          _that.protocolProfileBehavior,
          _that.request,
          _that.response,
          _that.item,
        );
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
      String? id,
      String name,
      String? description,
      List<PostmanCollectionVariable>? variable,
      List<PostmanCollectionEvent>? event,
      Map<String, dynamic>? protocolProfileBehavior,
      PostmanCollectionRequest? request,
      List<PostmanCollectionResponse>? response,
      List<PostmanCollectionItem>? item,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionItem() when $default != null:
        return $default(
          _that.id,
          _that.name,
          _that.description,
          _that.variable,
          _that.event,
          _that.protocolProfileBehavior,
          _that.request,
          _that.response,
          _that.item,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostmanCollectionItem extends PostmanCollectionItem {
  const _PostmanCollectionItem({
    this.id,
    required this.name,
    this.description,
    List<PostmanCollectionVariable>? variable,
    List<PostmanCollectionEvent>? event,
    Map<String, dynamic>? protocolProfileBehavior,
    this.request,
    List<PostmanCollectionResponse>? response,
    List<PostmanCollectionItem>? item,
  }) : _variable = variable,
       _event = event,
       _protocolProfileBehavior = protocolProfileBehavior,
       _response = response,
       _item = item,
       super._();
  factory _PostmanCollectionItem.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionItemFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String? description;
  final List<PostmanCollectionVariable>? _variable;
  @override
  List<PostmanCollectionVariable>? get variable {
    final value = _variable;
    if (value == null) return null;
    if (_variable is EqualUnmodifiableListView) return _variable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionEvent>? _event;
  @override
  List<PostmanCollectionEvent>? get event {
    final value = _event;
    if (value == null) return null;
    if (_event is EqualUnmodifiableListView) return _event;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _protocolProfileBehavior;
  @override
  Map<String, dynamic>? get protocolProfileBehavior {
    final value = _protocolProfileBehavior;
    if (value == null) return null;
    if (_protocolProfileBehavior is EqualUnmodifiableMapView)
      return _protocolProfileBehavior;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final PostmanCollectionRequest? request;
  final List<PostmanCollectionResponse>? _response;
  @override
  List<PostmanCollectionResponse>? get response {
    final value = _response;
    if (value == null) return null;
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionItem>? _item;
  @override
  List<PostmanCollectionItem>? get item {
    final value = _item;
    if (value == null) return null;
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of PostmanCollectionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCollectionItemCopyWith<_PostmanCollectionItem> get copyWith =>
      __$PostmanCollectionItemCopyWithImpl<_PostmanCollectionItem>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCollectionItemToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCollectionItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.variable, _variable) &&
            const DeepCollectionEquality().equals(other.event, _event) &&
            const DeepCollectionEquality().equals(
              other.protocolProfileBehavior,
              _protocolProfileBehavior,
            ) &&
            (identical(other.request, request) || other.request == request) &&
            const DeepCollectionEquality().equals(other.response, _response) &&
            const DeepCollectionEquality().equals(other.item, _item));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      id,
      name,
      description,
      const DeepCollectionEquality().hash(_variable),
      const DeepCollectionEquality().hash(_event),
      const DeepCollectionEquality().hash(_protocolProfileBehavior),
      request,
      const DeepCollectionEquality().hash(_response),
      const DeepCollectionEquality().hash(_item),
    );
  }

  @override
  String toString() {
    return 'PostmanCollectionItem(id: $id, name: $name, description: $description, variable: $variable, event: $event, protocolProfileBehavior: $protocolProfileBehavior, request: $request, response: $response, item: $item)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCollectionItemCopyWith<$Res>
    implements $PostmanCollectionItemCopyWith<$Res> {
  factory _$PostmanCollectionItemCopyWith(
    _PostmanCollectionItem value,
    $Res Function(_PostmanCollectionItem) _then,
  ) = __$PostmanCollectionItemCopyWithImpl;
  @override
  @useResult
  $Res call({
    String? id,
    String name,
    String? description,
    List<PostmanCollectionVariable>? variable,
    List<PostmanCollectionEvent>? event,
    Map<String, dynamic>? protocolProfileBehavior,
    PostmanCollectionRequest? request,
    List<PostmanCollectionResponse>? response,
    List<PostmanCollectionItem>? item,
  });

  @override
  $PostmanCollectionRequestCopyWith<$Res>? get request;
}

/// @nodoc
class __$PostmanCollectionItemCopyWithImpl<$Res>
    implements _$PostmanCollectionItemCopyWith<$Res> {
  __$PostmanCollectionItemCopyWithImpl(this._self, this._then);

  final _PostmanCollectionItem _self;
  final $Res Function(_PostmanCollectionItem) _then;

  /// Create a copy of PostmanCollectionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? variable = freezed,
    Object? event = freezed,
    Object? protocolProfileBehavior = freezed,
    Object? request = freezed,
    Object? response = freezed,
    Object? item = freezed,
  }) {
    return _then(
      _PostmanCollectionItem(
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        variable: freezed == variable
            ? _self._variable
            : variable // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionVariable>?,
        event: freezed == event
            ? _self._event
            : event // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionEvent>?,
        protocolProfileBehavior: freezed == protocolProfileBehavior
            ? _self._protocolProfileBehavior
            : protocolProfileBehavior // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        request: freezed == request
            ? _self.request
            : request // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionRequest?,
        response: freezed == response
            ? _self._response
            : response // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionResponse>?,
        item: freezed == item
            ? _self._item
            : item // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionItem>?,
      ),
    );
  }

  /// Create a copy of PostmanCollectionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionRequestCopyWith<$Res>? get request {
    if (_self.request == null) {
      return null;
    }

    return $PostmanCollectionRequestCopyWith<$Res>(_self.request!, (value) {
      return _then(_self.copyWith(request: value));
    });
  }
}

/// @nodoc
mixin _$PostmanCollectionAuth {
  PostmanCollectionAuthType get type;
  List<PostmanCollectionAuthAttribute>? get noauth;
  List<PostmanCollectionAuthAttribute>? get apikey;
  List<PostmanCollectionAuthAttribute>? get awsv4;
  List<PostmanCollectionAuthAttribute>? get basic;
  List<PostmanCollectionAuthAttribute>? get bearer;
  List<PostmanCollectionAuthAttribute>? get digest;
  List<PostmanCollectionAuthAttribute>? get edgegrid;
  List<PostmanCollectionAuthAttribute>? get hawk;
  List<PostmanCollectionAuthAttribute>? get ntlm;
  List<PostmanCollectionAuthAttribute>? get oauth1;
  List<PostmanCollectionAuthAttribute>? get oauth2;

  /// Create a copy of PostmanCollectionAuth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCollectionAuthCopyWith<PostmanCollectionAuth> get copyWith =>
      _$PostmanCollectionAuthCopyWithImpl<PostmanCollectionAuth>(
        this as PostmanCollectionAuth,
        _$identity,
      );

  /// Serializes this PostmanCollectionAuth to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCollectionAuth;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCollectionAuth &&
            (identical(other.type, _this.type) || other.type == _this.type) &&
            const DeepCollectionEquality().equals(other.noauth, _this.noauth) &&
            const DeepCollectionEquality().equals(other.apikey, _this.apikey) &&
            const DeepCollectionEquality().equals(other.awsv4, _this.awsv4) &&
            const DeepCollectionEquality().equals(other.basic, _this.basic) &&
            const DeepCollectionEquality().equals(other.bearer, _this.bearer) &&
            const DeepCollectionEquality().equals(other.digest, _this.digest) &&
            const DeepCollectionEquality().equals(
              other.edgegrid,
              _this.edgegrid,
            ) &&
            const DeepCollectionEquality().equals(other.hawk, _this.hawk) &&
            const DeepCollectionEquality().equals(other.ntlm, _this.ntlm) &&
            const DeepCollectionEquality().equals(other.oauth1, _this.oauth1) &&
            const DeepCollectionEquality().equals(other.oauth2, _this.oauth2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCollectionAuth;
    return Object.hash(
      runtimeType,
      _this.type,
      const DeepCollectionEquality().hash(_this.noauth),
      const DeepCollectionEquality().hash(_this.apikey),
      const DeepCollectionEquality().hash(_this.awsv4),
      const DeepCollectionEquality().hash(_this.basic),
      const DeepCollectionEquality().hash(_this.bearer),
      const DeepCollectionEquality().hash(_this.digest),
      const DeepCollectionEquality().hash(_this.edgegrid),
      const DeepCollectionEquality().hash(_this.hawk),
      const DeepCollectionEquality().hash(_this.ntlm),
      const DeepCollectionEquality().hash(_this.oauth1),
      const DeepCollectionEquality().hash(_this.oauth2),
    );
  }

  @override
  String toString() {
    final _this = this as PostmanCollectionAuth;
    return 'PostmanCollectionAuth(type: ${_this.type}, noauth: ${_this.noauth}, apikey: ${_this.apikey}, awsv4: ${_this.awsv4}, basic: ${_this.basic}, bearer: ${_this.bearer}, digest: ${_this.digest}, edgegrid: ${_this.edgegrid}, hawk: ${_this.hawk}, ntlm: ${_this.ntlm}, oauth1: ${_this.oauth1}, oauth2: ${_this.oauth2})';
  }
}

/// @nodoc
abstract mixin class $PostmanCollectionAuthCopyWith<$Res> {
  factory $PostmanCollectionAuthCopyWith(
    PostmanCollectionAuth value,
    $Res Function(PostmanCollectionAuth) _then,
  ) = _$PostmanCollectionAuthCopyWithImpl;
  @useResult
  $Res call({
    PostmanCollectionAuthType type,
    List<PostmanCollectionAuthAttribute>? noauth,
    List<PostmanCollectionAuthAttribute>? apikey,
    List<PostmanCollectionAuthAttribute>? awsv4,
    List<PostmanCollectionAuthAttribute>? basic,
    List<PostmanCollectionAuthAttribute>? bearer,
    List<PostmanCollectionAuthAttribute>? digest,
    List<PostmanCollectionAuthAttribute>? edgegrid,
    List<PostmanCollectionAuthAttribute>? hawk,
    List<PostmanCollectionAuthAttribute>? ntlm,
    List<PostmanCollectionAuthAttribute>? oauth1,
    List<PostmanCollectionAuthAttribute>? oauth2,
  });
}

/// @nodoc
class _$PostmanCollectionAuthCopyWithImpl<$Res>
    implements $PostmanCollectionAuthCopyWith<$Res> {
  _$PostmanCollectionAuthCopyWithImpl(this._self, this._then);

  final PostmanCollectionAuth _self;
  final $Res Function(PostmanCollectionAuth) _then;

  /// Create a copy of PostmanCollectionAuth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? noauth = freezed,
    Object? apikey = freezed,
    Object? awsv4 = freezed,
    Object? basic = freezed,
    Object? bearer = freezed,
    Object? digest = freezed,
    Object? edgegrid = freezed,
    Object? hawk = freezed,
    Object? ntlm = freezed,
    Object? oauth1 = freezed,
    Object? oauth2 = freezed,
  }) {
    return _then(
      PostmanCollectionAuth(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionAuthType,
        noauth: freezed == noauth
            ? _self.noauth
            : noauth // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionAuthAttribute>?,
        apikey: freezed == apikey
            ? _self.apikey
            : apikey // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionAuthAttribute>?,
        awsv4: freezed == awsv4
            ? _self.awsv4
            : awsv4 // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionAuthAttribute>?,
        basic: freezed == basic
            ? _self.basic
            : basic // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionAuthAttribute>?,
        bearer: freezed == bearer
            ? _self.bearer
            : bearer // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionAuthAttribute>?,
        digest: freezed == digest
            ? _self.digest
            : digest // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionAuthAttribute>?,
        edgegrid: freezed == edgegrid
            ? _self.edgegrid
            : edgegrid // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionAuthAttribute>?,
        hawk: freezed == hawk
            ? _self.hawk
            : hawk // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionAuthAttribute>?,
        ntlm: freezed == ntlm
            ? _self.ntlm
            : ntlm // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionAuthAttribute>?,
        oauth1: freezed == oauth1
            ? _self.oauth1
            : oauth1 // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionAuthAttribute>?,
        oauth2: freezed == oauth2
            ? _self.oauth2
            : oauth2 // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionAuthAttribute>?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanCollectionAuth].
extension PostmanCollectionAuthPatterns on PostmanCollectionAuth {
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
    TResult Function(_PostmanCollectionAuth value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionAuth() when $default != null:
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
    TResult Function(_PostmanCollectionAuth value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionAuth():
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
    TResult? Function(_PostmanCollectionAuth value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionAuth() when $default != null:
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
      PostmanCollectionAuthType type,
      List<PostmanCollectionAuthAttribute>? noauth,
      List<PostmanCollectionAuthAttribute>? apikey,
      List<PostmanCollectionAuthAttribute>? awsv4,
      List<PostmanCollectionAuthAttribute>? basic,
      List<PostmanCollectionAuthAttribute>? bearer,
      List<PostmanCollectionAuthAttribute>? digest,
      List<PostmanCollectionAuthAttribute>? edgegrid,
      List<PostmanCollectionAuthAttribute>? hawk,
      List<PostmanCollectionAuthAttribute>? ntlm,
      List<PostmanCollectionAuthAttribute>? oauth1,
      List<PostmanCollectionAuthAttribute>? oauth2,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionAuth() when $default != null:
        return $default(
          _that.type,
          _that.noauth,
          _that.apikey,
          _that.awsv4,
          _that.basic,
          _that.bearer,
          _that.digest,
          _that.edgegrid,
          _that.hawk,
          _that.ntlm,
          _that.oauth1,
          _that.oauth2,
        );
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
      PostmanCollectionAuthType type,
      List<PostmanCollectionAuthAttribute>? noauth,
      List<PostmanCollectionAuthAttribute>? apikey,
      List<PostmanCollectionAuthAttribute>? awsv4,
      List<PostmanCollectionAuthAttribute>? basic,
      List<PostmanCollectionAuthAttribute>? bearer,
      List<PostmanCollectionAuthAttribute>? digest,
      List<PostmanCollectionAuthAttribute>? edgegrid,
      List<PostmanCollectionAuthAttribute>? hawk,
      List<PostmanCollectionAuthAttribute>? ntlm,
      List<PostmanCollectionAuthAttribute>? oauth1,
      List<PostmanCollectionAuthAttribute>? oauth2,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionAuth():
        return $default(
          _that.type,
          _that.noauth,
          _that.apikey,
          _that.awsv4,
          _that.basic,
          _that.bearer,
          _that.digest,
          _that.edgegrid,
          _that.hawk,
          _that.ntlm,
          _that.oauth1,
          _that.oauth2,
        );
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
      PostmanCollectionAuthType type,
      List<PostmanCollectionAuthAttribute>? noauth,
      List<PostmanCollectionAuthAttribute>? apikey,
      List<PostmanCollectionAuthAttribute>? awsv4,
      List<PostmanCollectionAuthAttribute>? basic,
      List<PostmanCollectionAuthAttribute>? bearer,
      List<PostmanCollectionAuthAttribute>? digest,
      List<PostmanCollectionAuthAttribute>? edgegrid,
      List<PostmanCollectionAuthAttribute>? hawk,
      List<PostmanCollectionAuthAttribute>? ntlm,
      List<PostmanCollectionAuthAttribute>? oauth1,
      List<PostmanCollectionAuthAttribute>? oauth2,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionAuth() when $default != null:
        return $default(
          _that.type,
          _that.noauth,
          _that.apikey,
          _that.awsv4,
          _that.basic,
          _that.bearer,
          _that.digest,
          _that.edgegrid,
          _that.hawk,
          _that.ntlm,
          _that.oauth1,
          _that.oauth2,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostmanCollectionAuth extends PostmanCollectionAuth {
  const _PostmanCollectionAuth({
    required this.type,
    List<PostmanCollectionAuthAttribute>? noauth,
    List<PostmanCollectionAuthAttribute>? apikey,
    List<PostmanCollectionAuthAttribute>? awsv4,
    List<PostmanCollectionAuthAttribute>? basic,
    List<PostmanCollectionAuthAttribute>? bearer,
    List<PostmanCollectionAuthAttribute>? digest,
    List<PostmanCollectionAuthAttribute>? edgegrid,
    List<PostmanCollectionAuthAttribute>? hawk,
    List<PostmanCollectionAuthAttribute>? ntlm,
    List<PostmanCollectionAuthAttribute>? oauth1,
    List<PostmanCollectionAuthAttribute>? oauth2,
  }) : _noauth = noauth,
       _apikey = apikey,
       _awsv4 = awsv4,
       _basic = basic,
       _bearer = bearer,
       _digest = digest,
       _edgegrid = edgegrid,
       _hawk = hawk,
       _ntlm = ntlm,
       _oauth1 = oauth1,
       _oauth2 = oauth2,
       super._();
  factory _PostmanCollectionAuth.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionAuthFromJson(json);

  @override
  final PostmanCollectionAuthType type;
  final List<PostmanCollectionAuthAttribute>? _noauth;
  @override
  List<PostmanCollectionAuthAttribute>? get noauth {
    final value = _noauth;
    if (value == null) return null;
    if (_noauth is EqualUnmodifiableListView) return _noauth;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionAuthAttribute>? _apikey;
  @override
  List<PostmanCollectionAuthAttribute>? get apikey {
    final value = _apikey;
    if (value == null) return null;
    if (_apikey is EqualUnmodifiableListView) return _apikey;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionAuthAttribute>? _awsv4;
  @override
  List<PostmanCollectionAuthAttribute>? get awsv4 {
    final value = _awsv4;
    if (value == null) return null;
    if (_awsv4 is EqualUnmodifiableListView) return _awsv4;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionAuthAttribute>? _basic;
  @override
  List<PostmanCollectionAuthAttribute>? get basic {
    final value = _basic;
    if (value == null) return null;
    if (_basic is EqualUnmodifiableListView) return _basic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionAuthAttribute>? _bearer;
  @override
  List<PostmanCollectionAuthAttribute>? get bearer {
    final value = _bearer;
    if (value == null) return null;
    if (_bearer is EqualUnmodifiableListView) return _bearer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionAuthAttribute>? _digest;
  @override
  List<PostmanCollectionAuthAttribute>? get digest {
    final value = _digest;
    if (value == null) return null;
    if (_digest is EqualUnmodifiableListView) return _digest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionAuthAttribute>? _edgegrid;
  @override
  List<PostmanCollectionAuthAttribute>? get edgegrid {
    final value = _edgegrid;
    if (value == null) return null;
    if (_edgegrid is EqualUnmodifiableListView) return _edgegrid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionAuthAttribute>? _hawk;
  @override
  List<PostmanCollectionAuthAttribute>? get hawk {
    final value = _hawk;
    if (value == null) return null;
    if (_hawk is EqualUnmodifiableListView) return _hawk;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionAuthAttribute>? _ntlm;
  @override
  List<PostmanCollectionAuthAttribute>? get ntlm {
    final value = _ntlm;
    if (value == null) return null;
    if (_ntlm is EqualUnmodifiableListView) return _ntlm;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionAuthAttribute>? _oauth1;
  @override
  List<PostmanCollectionAuthAttribute>? get oauth1 {
    final value = _oauth1;
    if (value == null) return null;
    if (_oauth1 is EqualUnmodifiableListView) return _oauth1;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionAuthAttribute>? _oauth2;
  @override
  List<PostmanCollectionAuthAttribute>? get oauth2 {
    final value = _oauth2;
    if (value == null) return null;
    if (_oauth2 is EqualUnmodifiableListView) return _oauth2;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of PostmanCollectionAuth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCollectionAuthCopyWith<_PostmanCollectionAuth> get copyWith =>
      __$PostmanCollectionAuthCopyWithImpl<_PostmanCollectionAuth>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCollectionAuthToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCollectionAuth &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.noauth, _noauth) &&
            const DeepCollectionEquality().equals(other.apikey, _apikey) &&
            const DeepCollectionEquality().equals(other.awsv4, _awsv4) &&
            const DeepCollectionEquality().equals(other.basic, _basic) &&
            const DeepCollectionEquality().equals(other.bearer, _bearer) &&
            const DeepCollectionEquality().equals(other.digest, _digest) &&
            const DeepCollectionEquality().equals(other.edgegrid, _edgegrid) &&
            const DeepCollectionEquality().equals(other.hawk, _hawk) &&
            const DeepCollectionEquality().equals(other.ntlm, _ntlm) &&
            const DeepCollectionEquality().equals(other.oauth1, _oauth1) &&
            const DeepCollectionEquality().equals(other.oauth2, _oauth2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      type,
      const DeepCollectionEquality().hash(_noauth),
      const DeepCollectionEquality().hash(_apikey),
      const DeepCollectionEquality().hash(_awsv4),
      const DeepCollectionEquality().hash(_basic),
      const DeepCollectionEquality().hash(_bearer),
      const DeepCollectionEquality().hash(_digest),
      const DeepCollectionEquality().hash(_edgegrid),
      const DeepCollectionEquality().hash(_hawk),
      const DeepCollectionEquality().hash(_ntlm),
      const DeepCollectionEquality().hash(_oauth1),
      const DeepCollectionEquality().hash(_oauth2),
    );
  }

  @override
  String toString() {
    return 'PostmanCollectionAuth(type: $type, noauth: $noauth, apikey: $apikey, awsv4: $awsv4, basic: $basic, bearer: $bearer, digest: $digest, edgegrid: $edgegrid, hawk: $hawk, ntlm: $ntlm, oauth1: $oauth1, oauth2: $oauth2)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCollectionAuthCopyWith<$Res>
    implements $PostmanCollectionAuthCopyWith<$Res> {
  factory _$PostmanCollectionAuthCopyWith(
    _PostmanCollectionAuth value,
    $Res Function(_PostmanCollectionAuth) _then,
  ) = __$PostmanCollectionAuthCopyWithImpl;
  @override
  @useResult
  $Res call({
    PostmanCollectionAuthType type,
    List<PostmanCollectionAuthAttribute>? noauth,
    List<PostmanCollectionAuthAttribute>? apikey,
    List<PostmanCollectionAuthAttribute>? awsv4,
    List<PostmanCollectionAuthAttribute>? basic,
    List<PostmanCollectionAuthAttribute>? bearer,
    List<PostmanCollectionAuthAttribute>? digest,
    List<PostmanCollectionAuthAttribute>? edgegrid,
    List<PostmanCollectionAuthAttribute>? hawk,
    List<PostmanCollectionAuthAttribute>? ntlm,
    List<PostmanCollectionAuthAttribute>? oauth1,
    List<PostmanCollectionAuthAttribute>? oauth2,
  });
}

/// @nodoc
class __$PostmanCollectionAuthCopyWithImpl<$Res>
    implements _$PostmanCollectionAuthCopyWith<$Res> {
  __$PostmanCollectionAuthCopyWithImpl(this._self, this._then);

  final _PostmanCollectionAuth _self;
  final $Res Function(_PostmanCollectionAuth) _then;

  /// Create a copy of PostmanCollectionAuth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? noauth = freezed,
    Object? apikey = freezed,
    Object? awsv4 = freezed,
    Object? basic = freezed,
    Object? bearer = freezed,
    Object? digest = freezed,
    Object? edgegrid = freezed,
    Object? hawk = freezed,
    Object? ntlm = freezed,
    Object? oauth1 = freezed,
    Object? oauth2 = freezed,
  }) {
    return _then(
      _PostmanCollectionAuth(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionAuthType,
        noauth: freezed == noauth
            ? _self._noauth
            : noauth // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionAuthAttribute>?,
        apikey: freezed == apikey
            ? _self._apikey
            : apikey // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionAuthAttribute>?,
        awsv4: freezed == awsv4
            ? _self._awsv4
            : awsv4 // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionAuthAttribute>?,
        basic: freezed == basic
            ? _self._basic
            : basic // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionAuthAttribute>?,
        bearer: freezed == bearer
            ? _self._bearer
            : bearer // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionAuthAttribute>?,
        digest: freezed == digest
            ? _self._digest
            : digest // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionAuthAttribute>?,
        edgegrid: freezed == edgegrid
            ? _self._edgegrid
            : edgegrid // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionAuthAttribute>?,
        hawk: freezed == hawk
            ? _self._hawk
            : hawk // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionAuthAttribute>?,
        ntlm: freezed == ntlm
            ? _self._ntlm
            : ntlm // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionAuthAttribute>?,
        oauth1: freezed == oauth1
            ? _self._oauth1
            : oauth1 // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionAuthAttribute>?,
        oauth2: freezed == oauth2
            ? _self._oauth2
            : oauth2 // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionAuthAttribute>?,
      ),
    );
  }
}

/// @nodoc
mixin _$PostmanCollectionAuthAttribute {
  String get key;
  Object? get value;
  String? get type;

  /// Create a copy of PostmanCollectionAuthAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCollectionAuthAttributeCopyWith<PostmanCollectionAuthAttribute>
  get copyWith =>
      _$PostmanCollectionAuthAttributeCopyWithImpl<
        PostmanCollectionAuthAttribute
      >(this as PostmanCollectionAuthAttribute, _$identity);

  /// Serializes this PostmanCollectionAuthAttribute to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCollectionAuthAttribute;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCollectionAuthAttribute &&
            (identical(other.key, _this.key) || other.key == _this.key) &&
            const DeepCollectionEquality().equals(other.value, _this.value) &&
            (identical(other.type, _this.type) || other.type == _this.type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCollectionAuthAttribute;
    return Object.hash(
      runtimeType,
      _this.key,
      const DeepCollectionEquality().hash(_this.value),
      _this.type,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanCollectionAuthAttribute;
    return 'PostmanCollectionAuthAttribute(key: ${_this.key}, value: ${_this.value}, type: ${_this.type})';
  }
}

/// @nodoc
abstract mixin class $PostmanCollectionAuthAttributeCopyWith<$Res> {
  factory $PostmanCollectionAuthAttributeCopyWith(
    PostmanCollectionAuthAttribute value,
    $Res Function(PostmanCollectionAuthAttribute) _then,
  ) = _$PostmanCollectionAuthAttributeCopyWithImpl;
  @useResult
  $Res call({String key, Object? value, String? type});
}

/// @nodoc
class _$PostmanCollectionAuthAttributeCopyWithImpl<$Res>
    implements $PostmanCollectionAuthAttributeCopyWith<$Res> {
  _$PostmanCollectionAuthAttributeCopyWithImpl(this._self, this._then);

  final PostmanCollectionAuthAttribute _self;
  final $Res Function(PostmanCollectionAuthAttribute) _then;

  /// Create a copy of PostmanCollectionAuthAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = freezed,
    Object? type = freezed,
  }) {
    return _then(
      PostmanCollectionAuthAttribute(
        key: null == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        value: freezed == value ? _self.value : value,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanCollectionAuthAttribute].
extension PostmanCollectionAuthAttributePatterns
    on PostmanCollectionAuthAttribute {
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
    TResult Function(_PostmanCollectionAuthAttribute value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionAuthAttribute() when $default != null:
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
    TResult Function(_PostmanCollectionAuthAttribute value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionAuthAttribute():
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
    TResult? Function(_PostmanCollectionAuthAttribute value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionAuthAttribute() when $default != null:
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
    TResult Function(String key, Object? value, String? type)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionAuthAttribute() when $default != null:
        return $default(_that.key, _that.value, _that.type);
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
    TResult Function(String key, Object? value, String? type) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionAuthAttribute():
        return $default(_that.key, _that.value, _that.type);
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
    TResult? Function(String key, Object? value, String? type)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionAuthAttribute() when $default != null:
        return $default(_that.key, _that.value, _that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostmanCollectionAuthAttribute extends PostmanCollectionAuthAttribute {
  const _PostmanCollectionAuthAttribute({
    required this.key,
    this.value,
    this.type,
  }) : super._();
  factory _PostmanCollectionAuthAttribute.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionAuthAttributeFromJson(json);

  @override
  final String key;
  @override
  final Object? value;
  @override
  final String? type;

  /// Create a copy of PostmanCollectionAuthAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCollectionAuthAttributeCopyWith<_PostmanCollectionAuthAttribute>
  get copyWith =>
      __$PostmanCollectionAuthAttributeCopyWithImpl<
        _PostmanCollectionAuthAttribute
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCollectionAuthAttributeToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCollectionAuthAttribute &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      key,
      const DeepCollectionEquality().hash(value),
      type,
    );
  }

  @override
  String toString() {
    return 'PostmanCollectionAuthAttribute(key: $key, value: $value, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCollectionAuthAttributeCopyWith<$Res>
    implements $PostmanCollectionAuthAttributeCopyWith<$Res> {
  factory _$PostmanCollectionAuthAttributeCopyWith(
    _PostmanCollectionAuthAttribute value,
    $Res Function(_PostmanCollectionAuthAttribute) _then,
  ) = __$PostmanCollectionAuthAttributeCopyWithImpl;
  @override
  @useResult
  $Res call({String key, Object? value, String? type});
}

/// @nodoc
class __$PostmanCollectionAuthAttributeCopyWithImpl<$Res>
    implements _$PostmanCollectionAuthAttributeCopyWith<$Res> {
  __$PostmanCollectionAuthAttributeCopyWithImpl(this._self, this._then);

  final _PostmanCollectionAuthAttribute _self;
  final $Res Function(_PostmanCollectionAuthAttribute) _then;

  /// Create a copy of PostmanCollectionAuthAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = null,
    Object? value = freezed,
    Object? type = freezed,
  }) {
    return _then(
      _PostmanCollectionAuthAttribute(
        key: null == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        value: freezed == value ? _self.value : value,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
mixin _$PostmanCollectionRequest {
  PostmanCollectionAuth? get auth;
  String get method;
  PostmanCollectionProxyConfig? get proxy;
  PostmanCollectionCertificate? get certificate;
  List<PostmanCollectionHeader>? get header;
  PostmanCollectionRequestMode? get body;
  PostmanCollectionUrl? get url;
  String? get description;

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCollectionRequestCopyWith<PostmanCollectionRequest> get copyWith =>
      _$PostmanCollectionRequestCopyWithImpl<PostmanCollectionRequest>(
        this as PostmanCollectionRequest,
        _$identity,
      );

  /// Serializes this PostmanCollectionRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCollectionRequest;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCollectionRequest &&
            (identical(other.auth, _this.auth) || other.auth == _this.auth) &&
            (identical(other.method, _this.method) ||
                other.method == _this.method) &&
            (identical(other.proxy, _this.proxy) ||
                other.proxy == _this.proxy) &&
            (identical(other.certificate, _this.certificate) ||
                other.certificate == _this.certificate) &&
            const DeepCollectionEquality().equals(other.header, _this.header) &&
            (identical(other.body, _this.body) || other.body == _this.body) &&
            (identical(other.url, _this.url) || other.url == _this.url) &&
            (identical(other.description, _this.description) ||
                other.description == _this.description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCollectionRequest;
    return Object.hash(
      runtimeType,
      _this.auth,
      _this.method,
      _this.proxy,
      _this.certificate,
      const DeepCollectionEquality().hash(_this.header),
      _this.body,
      _this.url,
      _this.description,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanCollectionRequest;
    return 'PostmanCollectionRequest(auth: ${_this.auth}, method: ${_this.method}, proxy: ${_this.proxy}, certificate: ${_this.certificate}, header: ${_this.header}, body: ${_this.body}, url: ${_this.url}, description: ${_this.description})';
  }
}

/// @nodoc
abstract mixin class $PostmanCollectionRequestCopyWith<$Res> {
  factory $PostmanCollectionRequestCopyWith(
    PostmanCollectionRequest value,
    $Res Function(PostmanCollectionRequest) _then,
  ) = _$PostmanCollectionRequestCopyWithImpl;
  @useResult
  $Res call({
    PostmanCollectionAuth? auth,
    String method,
    PostmanCollectionProxyConfig? proxy,
    PostmanCollectionCertificate? certificate,
    List<PostmanCollectionHeader>? header,
    PostmanCollectionRequestMode? body,
    PostmanCollectionUrl? url,
    String? description,
  });

  $PostmanCollectionAuthCopyWith<$Res>? get auth;
  $PostmanCollectionProxyConfigCopyWith<$Res>? get proxy;
  $PostmanCollectionCertificateCopyWith<$Res>? get certificate;
  $PostmanCollectionRequestModeCopyWith<$Res>? get body;
  $PostmanCollectionUrlCopyWith<$Res>? get url;
}

/// @nodoc
class _$PostmanCollectionRequestCopyWithImpl<$Res>
    implements $PostmanCollectionRequestCopyWith<$Res> {
  _$PostmanCollectionRequestCopyWithImpl(this._self, this._then);

  final PostmanCollectionRequest _self;
  final $Res Function(PostmanCollectionRequest) _then;

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = freezed,
    Object? method = null,
    Object? proxy = freezed,
    Object? certificate = freezed,
    Object? header = freezed,
    Object? body = freezed,
    Object? url = freezed,
    Object? description = freezed,
  }) {
    return _then(
      PostmanCollectionRequest(
        auth: freezed == auth
            ? _self.auth
            : auth // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionAuth?,
        method: null == method
            ? _self.method
            : method // ignore: cast_nullable_to_non_nullable
                  as String,
        proxy: freezed == proxy
            ? _self.proxy
            : proxy // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionProxyConfig?,
        certificate: freezed == certificate
            ? _self.certificate
            : certificate // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionCertificate?,
        header: freezed == header
            ? _self.header
            : header // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionHeader>?,
        body: freezed == body
            ? _self.body
            : body // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionRequestMode?,
        url: freezed == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionUrl?,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionAuthCopyWith<$Res>? get auth {
    if (_self.auth == null) {
      return null;
    }

    return $PostmanCollectionAuthCopyWith<$Res>(_self.auth!, (value) {
      return _then(_self.copyWith(auth: value));
    });
  }

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionProxyConfigCopyWith<$Res>? get proxy {
    if (_self.proxy == null) {
      return null;
    }

    return $PostmanCollectionProxyConfigCopyWith<$Res>(_self.proxy!, (value) {
      return _then(_self.copyWith(proxy: value));
    });
  }

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionCertificateCopyWith<$Res>? get certificate {
    if (_self.certificate == null) {
      return null;
    }

    return $PostmanCollectionCertificateCopyWith<$Res>(_self.certificate!, (
      value,
    ) {
      return _then(_self.copyWith(certificate: value));
    });
  }

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionRequestModeCopyWith<$Res>? get body {
    if (_self.body == null) {
      return null;
    }

    return $PostmanCollectionRequestModeCopyWith<$Res>(_self.body!, (value) {
      return _then(_self.copyWith(body: value));
    });
  }

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionUrlCopyWith<$Res>? get url {
    if (_self.url == null) {
      return null;
    }

    return $PostmanCollectionUrlCopyWith<$Res>(_self.url!, (value) {
      return _then(_self.copyWith(url: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PostmanCollectionRequest].
extension PostmanCollectionRequestPatterns on PostmanCollectionRequest {
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
    TResult Function(_PostmanCollectionRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionRequest() when $default != null:
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
    TResult Function(_PostmanCollectionRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionRequest():
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
    TResult? Function(_PostmanCollectionRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionRequest() when $default != null:
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
      PostmanCollectionAuth? auth,
      String method,
      PostmanCollectionProxyConfig? proxy,
      PostmanCollectionCertificate? certificate,
      List<PostmanCollectionHeader>? header,
      PostmanCollectionRequestMode? body,
      PostmanCollectionUrl? url,
      String? description,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionRequest() when $default != null:
        return $default(
          _that.auth,
          _that.method,
          _that.proxy,
          _that.certificate,
          _that.header,
          _that.body,
          _that.url,
          _that.description,
        );
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
      PostmanCollectionAuth? auth,
      String method,
      PostmanCollectionProxyConfig? proxy,
      PostmanCollectionCertificate? certificate,
      List<PostmanCollectionHeader>? header,
      PostmanCollectionRequestMode? body,
      PostmanCollectionUrl? url,
      String? description,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionRequest():
        return $default(
          _that.auth,
          _that.method,
          _that.proxy,
          _that.certificate,
          _that.header,
          _that.body,
          _that.url,
          _that.description,
        );
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
      PostmanCollectionAuth? auth,
      String method,
      PostmanCollectionProxyConfig? proxy,
      PostmanCollectionCertificate? certificate,
      List<PostmanCollectionHeader>? header,
      PostmanCollectionRequestMode? body,
      PostmanCollectionUrl? url,
      String? description,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionRequest() when $default != null:
        return $default(
          _that.auth,
          _that.method,
          _that.proxy,
          _that.certificate,
          _that.header,
          _that.body,
          _that.url,
          _that.description,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostmanCollectionRequest extends PostmanCollectionRequest {
  const _PostmanCollectionRequest({
    this.auth,
    required this.method,
    this.proxy,
    this.certificate,
    List<PostmanCollectionHeader>? header,
    this.body,
    this.url,
    this.description,
  }) : _header = header,
       super._();
  factory _PostmanCollectionRequest.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionRequestFromJson(json);

  @override
  final PostmanCollectionAuth? auth;
  @override
  final String method;
  @override
  final PostmanCollectionProxyConfig? proxy;
  @override
  final PostmanCollectionCertificate? certificate;
  final List<PostmanCollectionHeader>? _header;
  @override
  List<PostmanCollectionHeader>? get header {
    final value = _header;
    if (value == null) return null;
    if (_header is EqualUnmodifiableListView) return _header;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PostmanCollectionRequestMode? body;
  @override
  final PostmanCollectionUrl? url;
  @override
  final String? description;

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCollectionRequestCopyWith<_PostmanCollectionRequest> get copyWith =>
      __$PostmanCollectionRequestCopyWithImpl<_PostmanCollectionRequest>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCollectionRequestToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCollectionRequest &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.proxy, proxy) || other.proxy == proxy) &&
            (identical(other.certificate, certificate) ||
                other.certificate == certificate) &&
            const DeepCollectionEquality().equals(other.header, _header) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      auth,
      method,
      proxy,
      certificate,
      const DeepCollectionEquality().hash(_header),
      body,
      url,
      description,
    );
  }

  @override
  String toString() {
    return 'PostmanCollectionRequest(auth: $auth, method: $method, proxy: $proxy, certificate: $certificate, header: $header, body: $body, url: $url, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCollectionRequestCopyWith<$Res>
    implements $PostmanCollectionRequestCopyWith<$Res> {
  factory _$PostmanCollectionRequestCopyWith(
    _PostmanCollectionRequest value,
    $Res Function(_PostmanCollectionRequest) _then,
  ) = __$PostmanCollectionRequestCopyWithImpl;
  @override
  @useResult
  $Res call({
    PostmanCollectionAuth? auth,
    String method,
    PostmanCollectionProxyConfig? proxy,
    PostmanCollectionCertificate? certificate,
    List<PostmanCollectionHeader>? header,
    PostmanCollectionRequestMode? body,
    PostmanCollectionUrl? url,
    String? description,
  });

  @override
  $PostmanCollectionAuthCopyWith<$Res>? get auth;
  @override
  $PostmanCollectionProxyConfigCopyWith<$Res>? get proxy;
  @override
  $PostmanCollectionCertificateCopyWith<$Res>? get certificate;
  @override
  $PostmanCollectionRequestModeCopyWith<$Res>? get body;
  @override
  $PostmanCollectionUrlCopyWith<$Res>? get url;
}

/// @nodoc
class __$PostmanCollectionRequestCopyWithImpl<$Res>
    implements _$PostmanCollectionRequestCopyWith<$Res> {
  __$PostmanCollectionRequestCopyWithImpl(this._self, this._then);

  final _PostmanCollectionRequest _self;
  final $Res Function(_PostmanCollectionRequest) _then;

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? auth = freezed,
    Object? method = null,
    Object? proxy = freezed,
    Object? certificate = freezed,
    Object? header = freezed,
    Object? body = freezed,
    Object? url = freezed,
    Object? description = freezed,
  }) {
    return _then(
      _PostmanCollectionRequest(
        auth: freezed == auth
            ? _self.auth
            : auth // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionAuth?,
        method: null == method
            ? _self.method
            : method // ignore: cast_nullable_to_non_nullable
                  as String,
        proxy: freezed == proxy
            ? _self.proxy
            : proxy // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionProxyConfig?,
        certificate: freezed == certificate
            ? _self.certificate
            : certificate // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionCertificate?,
        header: freezed == header
            ? _self._header
            : header // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionHeader>?,
        body: freezed == body
            ? _self.body
            : body // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionRequestMode?,
        url: freezed == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionUrl?,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionAuthCopyWith<$Res>? get auth {
    if (_self.auth == null) {
      return null;
    }

    return $PostmanCollectionAuthCopyWith<$Res>(_self.auth!, (value) {
      return _then(_self.copyWith(auth: value));
    });
  }

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionProxyConfigCopyWith<$Res>? get proxy {
    if (_self.proxy == null) {
      return null;
    }

    return $PostmanCollectionProxyConfigCopyWith<$Res>(_self.proxy!, (value) {
      return _then(_self.copyWith(proxy: value));
    });
  }

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionCertificateCopyWith<$Res>? get certificate {
    if (_self.certificate == null) {
      return null;
    }

    return $PostmanCollectionCertificateCopyWith<$Res>(_self.certificate!, (
      value,
    ) {
      return _then(_self.copyWith(certificate: value));
    });
  }

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionRequestModeCopyWith<$Res>? get body {
    if (_self.body == null) {
      return null;
    }

    return $PostmanCollectionRequestModeCopyWith<$Res>(_self.body!, (value) {
      return _then(_self.copyWith(body: value));
    });
  }

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionUrlCopyWith<$Res>? get url {
    if (_self.url == null) {
      return null;
    }

    return $PostmanCollectionUrlCopyWith<$Res>(_self.url!, (value) {
      return _then(_self.copyWith(url: value));
    });
  }
}

PostmanCollectionRequestMode _$PostmanCollectionRequestModeFromJson(
  Map<String, dynamic> json,
) {
  switch (json['mode']) {
    case 'formdata':
      return _PostmanCollectionRequestModeFormdata.fromJson(json);

    default:
      return _PostmanCollectionRequestModeRaw.fromJson(json);
  }
}

/// @nodoc
mixin _$PostmanCollectionRequestMode {
  /// Serializes this PostmanCollectionRequestMode to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCollectionRequestMode);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PostmanCollectionRequestMode()';
  }
}

/// @nodoc
class $PostmanCollectionRequestModeCopyWith<$Res> {
  $PostmanCollectionRequestModeCopyWith(
    PostmanCollectionRequestMode _,
    $Res Function(PostmanCollectionRequestMode) __,
  );
}

/// Adds pattern-matching-related methods to [PostmanCollectionRequestMode].
extension PostmanCollectionRequestModePatterns on PostmanCollectionRequestMode {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostmanCollectionRequestModeRaw value)? raw,
    TResult Function(_PostmanCollectionRequestModeFormdata value)? formdata,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionRequestModeRaw() when raw != null:
        return raw(_that);
      case _PostmanCollectionRequestModeFormdata() when formdata != null:
        return formdata(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(_PostmanCollectionRequestModeRaw value) raw,
    required TResult Function(_PostmanCollectionRequestModeFormdata value)
    formdata,
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionRequestModeRaw():
        return raw(_that);
      case _PostmanCollectionRequestModeFormdata():
        return formdata(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostmanCollectionRequestModeRaw value)? raw,
    TResult? Function(_PostmanCollectionRequestModeFormdata value)? formdata,
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionRequestModeRaw() when raw != null:
        return raw(_that);
      case _PostmanCollectionRequestModeFormdata() when formdata != null:
        return formdata(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? raw, Map<String, dynamic>? options)? raw,
    TResult Function(List<PostmanFormDataEntry>? formdata)? formdata,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionRequestModeRaw() when raw != null:
        return raw(_that.raw, _that.options);
      case _PostmanCollectionRequestModeFormdata() when formdata != null:
        return formdata(_that.formdata);
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
  TResult when<TResult extends Object?>({
    required TResult Function(String? raw, Map<String, dynamic>? options) raw,
    required TResult Function(List<PostmanFormDataEntry>? formdata) formdata,
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionRequestModeRaw():
        return raw(_that.raw, _that.options);
      case _PostmanCollectionRequestModeFormdata():
        return formdata(_that.formdata);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? raw, Map<String, dynamic>? options)? raw,
    TResult? Function(List<PostmanFormDataEntry>? formdata)? formdata,
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionRequestModeRaw() when raw != null:
        return raw(_that.raw, _that.options);
      case _PostmanCollectionRequestModeFormdata() when formdata != null:
        return formdata(_that.formdata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostmanCollectionRequestModeRaw extends PostmanCollectionRequestMode {
  const _PostmanCollectionRequestModeRaw({
    this.raw,
    Map<String, dynamic>? options,
    String? $type,
  }) : _options = options,
       $type = $type ?? 'raw',
       super._();
  factory _PostmanCollectionRequestModeRaw.fromJson(
    Map<String, dynamic> json,
  ) => _$PostmanCollectionRequestModeRawFromJson(json);

  final String? raw;
  final Map<String, dynamic>? _options;
  Map<String, dynamic>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableMapView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'mode')
  final String $type;

  /// Create a copy of PostmanCollectionRequestMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCollectionRequestModeRawCopyWith<_PostmanCollectionRequestModeRaw>
  get copyWith =>
      __$PostmanCollectionRequestModeRawCopyWithImpl<
        _PostmanCollectionRequestModeRaw
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCollectionRequestModeRawToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCollectionRequestModeRaw &&
            (identical(other.raw, raw) || other.raw == raw) &&
            const DeepCollectionEquality().equals(other.options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      raw,
      const DeepCollectionEquality().hash(_options),
    );
  }

  @override
  String toString() {
    return 'PostmanCollectionRequestMode.raw(raw: $raw, options: $options)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCollectionRequestModeRawCopyWith<$Res>
    implements $PostmanCollectionRequestModeCopyWith<$Res> {
  factory _$PostmanCollectionRequestModeRawCopyWith(
    _PostmanCollectionRequestModeRaw value,
    $Res Function(_PostmanCollectionRequestModeRaw) _then,
  ) = __$PostmanCollectionRequestModeRawCopyWithImpl;
  @useResult
  $Res call({String? raw, Map<String, dynamic>? options});
}

/// @nodoc
class __$PostmanCollectionRequestModeRawCopyWithImpl<$Res>
    implements _$PostmanCollectionRequestModeRawCopyWith<$Res> {
  __$PostmanCollectionRequestModeRawCopyWithImpl(this._self, this._then);

  final _PostmanCollectionRequestModeRaw _self;
  final $Res Function(_PostmanCollectionRequestModeRaw) _then;

  /// Create a copy of PostmanCollectionRequestMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? raw = freezed, Object? options = freezed}) {
    return _then(
      _PostmanCollectionRequestModeRaw(
        raw: freezed == raw
            ? _self.raw
            : raw // ignore: cast_nullable_to_non_nullable
                  as String?,
        options: freezed == options
            ? _self._options
            : options // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _PostmanCollectionRequestModeFormdata
    extends PostmanCollectionRequestMode {
  const _PostmanCollectionRequestModeFormdata({
    List<PostmanFormDataEntry>? formdata,
    String? $type,
  }) : _formdata = formdata,
       $type = $type ?? 'formdata',
       super._();
  factory _PostmanCollectionRequestModeFormdata.fromJson(
    Map<String, dynamic> json,
  ) => _$PostmanCollectionRequestModeFormdataFromJson(json);

  final List<PostmanFormDataEntry>? _formdata;
  List<PostmanFormDataEntry>? get formdata {
    final value = _formdata;
    if (value == null) return null;
    if (_formdata is EqualUnmodifiableListView) return _formdata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'mode')
  final String $type;

  /// Create a copy of PostmanCollectionRequestMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCollectionRequestModeFormdataCopyWith<
    _PostmanCollectionRequestModeFormdata
  >
  get copyWith =>
      __$PostmanCollectionRequestModeFormdataCopyWithImpl<
        _PostmanCollectionRequestModeFormdata
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCollectionRequestModeFormdataToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCollectionRequestModeFormdata &&
            const DeepCollectionEquality().equals(other.formdata, _formdata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_formdata),
    );
  }

  @override
  String toString() {
    return 'PostmanCollectionRequestMode.formdata(formdata: $formdata)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCollectionRequestModeFormdataCopyWith<$Res>
    implements $PostmanCollectionRequestModeCopyWith<$Res> {
  factory _$PostmanCollectionRequestModeFormdataCopyWith(
    _PostmanCollectionRequestModeFormdata value,
    $Res Function(_PostmanCollectionRequestModeFormdata) _then,
  ) = __$PostmanCollectionRequestModeFormdataCopyWithImpl;
  @useResult
  $Res call({List<PostmanFormDataEntry>? formdata});
}

/// @nodoc
class __$PostmanCollectionRequestModeFormdataCopyWithImpl<$Res>
    implements _$PostmanCollectionRequestModeFormdataCopyWith<$Res> {
  __$PostmanCollectionRequestModeFormdataCopyWithImpl(this._self, this._then);

  final _PostmanCollectionRequestModeFormdata _self;
  final $Res Function(_PostmanCollectionRequestModeFormdata) _then;

  /// Create a copy of PostmanCollectionRequestMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? formdata = freezed}) {
    return _then(
      _PostmanCollectionRequestModeFormdata(
        formdata: freezed == formdata
            ? _self._formdata
            : formdata // ignore: cast_nullable_to_non_nullable
                  as List<PostmanFormDataEntry>?,
      ),
    );
  }
}

/// @nodoc
mixin _$PostmanFormDataEntry {
  String get key;
  String? get src;
  String? get value;
  String? get type;

  /// Create a copy of PostmanFormDataEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanFormDataEntryCopyWith<PostmanFormDataEntry> get copyWith =>
      _$PostmanFormDataEntryCopyWithImpl<PostmanFormDataEntry>(
        this as PostmanFormDataEntry,
        _$identity,
      );

  /// Serializes this PostmanFormDataEntry to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanFormDataEntry;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanFormDataEntry &&
            (identical(other.key, _this.key) || other.key == _this.key) &&
            (identical(other.src, _this.src) || other.src == _this.src) &&
            (identical(other.value, _this.value) ||
                other.value == _this.value) &&
            (identical(other.type, _this.type) || other.type == _this.type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanFormDataEntry;
    return Object.hash(
      runtimeType,
      _this.key,
      _this.src,
      _this.value,
      _this.type,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanFormDataEntry;
    return 'PostmanFormDataEntry(key: ${_this.key}, src: ${_this.src}, value: ${_this.value}, type: ${_this.type})';
  }
}

/// @nodoc
abstract mixin class $PostmanFormDataEntryCopyWith<$Res> {
  factory $PostmanFormDataEntryCopyWith(
    PostmanFormDataEntry value,
    $Res Function(PostmanFormDataEntry) _then,
  ) = _$PostmanFormDataEntryCopyWithImpl;
  @useResult
  $Res call({String key, String? src, String? value, String? type});
}

/// @nodoc
class _$PostmanFormDataEntryCopyWithImpl<$Res>
    implements $PostmanFormDataEntryCopyWith<$Res> {
  _$PostmanFormDataEntryCopyWithImpl(this._self, this._then);

  final PostmanFormDataEntry _self;
  final $Res Function(PostmanFormDataEntry) _then;

  /// Create a copy of PostmanFormDataEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? src = freezed,
    Object? value = freezed,
    Object? type = freezed,
  }) {
    return _then(
      PostmanFormDataEntry(
        key: null == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        src: freezed == src
            ? _self.src
            : src // ignore: cast_nullable_to_non_nullable
                  as String?,
        value: freezed == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanFormDataEntry].
extension PostmanFormDataEntryPatterns on PostmanFormDataEntry {
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
    TResult Function(_PostmanFormDataEntry value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanFormDataEntry() when $default != null:
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
    TResult Function(_PostmanFormDataEntry value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanFormDataEntry():
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
    TResult? Function(_PostmanFormDataEntry value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanFormDataEntry() when $default != null:
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
    TResult Function(String key, String? src, String? value, String? type)?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanFormDataEntry() when $default != null:
        return $default(_that.key, _that.src, _that.value, _that.type);
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
    TResult Function(String key, String? src, String? value, String? type)
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanFormDataEntry():
        return $default(_that.key, _that.src, _that.value, _that.type);
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
    TResult? Function(String key, String? src, String? value, String? type)?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanFormDataEntry() when $default != null:
        return $default(_that.key, _that.src, _that.value, _that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostmanFormDataEntry extends PostmanFormDataEntry {
  const _PostmanFormDataEntry({
    required this.key,
    this.src,
    this.value,
    this.type,
  }) : super._();
  factory _PostmanFormDataEntry.fromJson(Map<String, dynamic> json) =>
      _$PostmanFormDataEntryFromJson(json);

  @override
  final String key;
  @override
  final String? src;
  @override
  final String? value;
  @override
  final String? type;

  /// Create a copy of PostmanFormDataEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanFormDataEntryCopyWith<_PostmanFormDataEntry> get copyWith =>
      __$PostmanFormDataEntryCopyWithImpl<_PostmanFormDataEntry>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanFormDataEntryToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanFormDataEntry &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, key, src, value, type);
  }

  @override
  String toString() {
    return 'PostmanFormDataEntry(key: $key, src: $src, value: $value, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$PostmanFormDataEntryCopyWith<$Res>
    implements $PostmanFormDataEntryCopyWith<$Res> {
  factory _$PostmanFormDataEntryCopyWith(
    _PostmanFormDataEntry value,
    $Res Function(_PostmanFormDataEntry) _then,
  ) = __$PostmanFormDataEntryCopyWithImpl;
  @override
  @useResult
  $Res call({String key, String? src, String? value, String? type});
}

/// @nodoc
class __$PostmanFormDataEntryCopyWithImpl<$Res>
    implements _$PostmanFormDataEntryCopyWith<$Res> {
  __$PostmanFormDataEntryCopyWithImpl(this._self, this._then);

  final _PostmanFormDataEntry _self;
  final $Res Function(_PostmanFormDataEntry) _then;

  /// Create a copy of PostmanFormDataEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = null,
    Object? src = freezed,
    Object? value = freezed,
    Object? type = freezed,
  }) {
    return _then(
      _PostmanFormDataEntry(
        key: null == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        src: freezed == src
            ? _self.src
            : src // ignore: cast_nullable_to_non_nullable
                  as String?,
        value: freezed == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
mixin _$PostmanCollectionUrl {
  String? get raw;
  String? get protocol;
  Object? get host;
  Object? get path;
  String? get port;
  List<PostmanCollectionQueryParam>? get query;
  String? get hash;
  List<PostmanCollectionVariable>? get variable;

  /// Create a copy of PostmanCollectionUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCollectionUrlCopyWith<PostmanCollectionUrl> get copyWith =>
      _$PostmanCollectionUrlCopyWithImpl<PostmanCollectionUrl>(
        this as PostmanCollectionUrl,
        _$identity,
      );

  /// Serializes this PostmanCollectionUrl to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCollectionUrl;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCollectionUrl &&
            (identical(other.raw, _this.raw) || other.raw == _this.raw) &&
            (identical(other.protocol, _this.protocol) ||
                other.protocol == _this.protocol) &&
            const DeepCollectionEquality().equals(other.host, _this.host) &&
            const DeepCollectionEquality().equals(other.path, _this.path) &&
            (identical(other.port, _this.port) || other.port == _this.port) &&
            const DeepCollectionEquality().equals(other.query, _this.query) &&
            (identical(other.hash, _this.hash) || other.hash == _this.hash) &&
            const DeepCollectionEquality().equals(
              other.variable,
              _this.variable,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCollectionUrl;
    return Object.hash(
      runtimeType,
      _this.raw,
      _this.protocol,
      const DeepCollectionEquality().hash(_this.host),
      const DeepCollectionEquality().hash(_this.path),
      _this.port,
      const DeepCollectionEquality().hash(_this.query),
      _this.hash,
      const DeepCollectionEquality().hash(_this.variable),
    );
  }

  @override
  String toString() {
    final _this = this as PostmanCollectionUrl;
    return 'PostmanCollectionUrl(raw: ${_this.raw}, protocol: ${_this.protocol}, host: ${_this.host}, path: ${_this.path}, port: ${_this.port}, query: ${_this.query}, hash: ${_this.hash}, variable: ${_this.variable})';
  }
}

/// @nodoc
abstract mixin class $PostmanCollectionUrlCopyWith<$Res> {
  factory $PostmanCollectionUrlCopyWith(
    PostmanCollectionUrl value,
    $Res Function(PostmanCollectionUrl) _then,
  ) = _$PostmanCollectionUrlCopyWithImpl;
  @useResult
  $Res call({
    String? raw,
    String? protocol,
    Object? host,
    Object? path,
    String? port,
    List<PostmanCollectionQueryParam>? query,
    String? hash,
    List<PostmanCollectionVariable>? variable,
  });
}

/// @nodoc
class _$PostmanCollectionUrlCopyWithImpl<$Res>
    implements $PostmanCollectionUrlCopyWith<$Res> {
  _$PostmanCollectionUrlCopyWithImpl(this._self, this._then);

  final PostmanCollectionUrl _self;
  final $Res Function(PostmanCollectionUrl) _then;

  /// Create a copy of PostmanCollectionUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = freezed,
    Object? protocol = freezed,
    Object? host = freezed,
    Object? path = freezed,
    Object? port = freezed,
    Object? query = freezed,
    Object? hash = freezed,
    Object? variable = freezed,
  }) {
    return _then(
      PostmanCollectionUrl(
        raw: freezed == raw
            ? _self.raw
            : raw // ignore: cast_nullable_to_non_nullable
                  as String?,
        protocol: freezed == protocol
            ? _self.protocol
            : protocol // ignore: cast_nullable_to_non_nullable
                  as String?,
        host: freezed == host ? _self.host : host,
        path: freezed == path ? _self.path : path,
        port: freezed == port
            ? _self.port
            : port // ignore: cast_nullable_to_non_nullable
                  as String?,
        query: freezed == query
            ? _self.query
            : query // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionQueryParam>?,
        hash: freezed == hash
            ? _self.hash
            : hash // ignore: cast_nullable_to_non_nullable
                  as String?,
        variable: freezed == variable
            ? _self.variable
            : variable // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionVariable>?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanCollectionUrl].
extension PostmanCollectionUrlPatterns on PostmanCollectionUrl {
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
    TResult Function(_PostmanCollectionUrl value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionUrl() when $default != null:
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
    TResult Function(_PostmanCollectionUrl value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionUrl():
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
    TResult? Function(_PostmanCollectionUrl value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionUrl() when $default != null:
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
      String? raw,
      String? protocol,
      Object? host,
      Object? path,
      String? port,
      List<PostmanCollectionQueryParam>? query,
      String? hash,
      List<PostmanCollectionVariable>? variable,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionUrl() when $default != null:
        return $default(
          _that.raw,
          _that.protocol,
          _that.host,
          _that.path,
          _that.port,
          _that.query,
          _that.hash,
          _that.variable,
        );
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
      String? raw,
      String? protocol,
      Object? host,
      Object? path,
      String? port,
      List<PostmanCollectionQueryParam>? query,
      String? hash,
      List<PostmanCollectionVariable>? variable,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionUrl():
        return $default(
          _that.raw,
          _that.protocol,
          _that.host,
          _that.path,
          _that.port,
          _that.query,
          _that.hash,
          _that.variable,
        );
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
      String? raw,
      String? protocol,
      Object? host,
      Object? path,
      String? port,
      List<PostmanCollectionQueryParam>? query,
      String? hash,
      List<PostmanCollectionVariable>? variable,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionUrl() when $default != null:
        return $default(
          _that.raw,
          _that.protocol,
          _that.host,
          _that.path,
          _that.port,
          _that.query,
          _that.hash,
          _that.variable,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostmanCollectionUrl extends PostmanCollectionUrl {
  const _PostmanCollectionUrl({
    this.raw,
    this.protocol,
    this.host,
    this.path,
    this.port,
    List<PostmanCollectionQueryParam>? query,
    this.hash,
    List<PostmanCollectionVariable>? variable,
  }) : _query = query,
       _variable = variable,
       super._();
  factory _PostmanCollectionUrl.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionUrlFromJson(json);

  @override
  final String? raw;
  @override
  final String? protocol;
  @override
  final Object? host;
  @override
  final Object? path;
  @override
  final String? port;
  final List<PostmanCollectionQueryParam>? _query;
  @override
  List<PostmanCollectionQueryParam>? get query {
    final value = _query;
    if (value == null) return null;
    if (_query is EqualUnmodifiableListView) return _query;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? hash;
  final List<PostmanCollectionVariable>? _variable;
  @override
  List<PostmanCollectionVariable>? get variable {
    final value = _variable;
    if (value == null) return null;
    if (_variable is EqualUnmodifiableListView) return _variable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of PostmanCollectionUrl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCollectionUrlCopyWith<_PostmanCollectionUrl> get copyWith =>
      __$PostmanCollectionUrlCopyWithImpl<_PostmanCollectionUrl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCollectionUrlToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCollectionUrl &&
            (identical(other.raw, raw) || other.raw == raw) &&
            (identical(other.protocol, protocol) ||
                other.protocol == protocol) &&
            const DeepCollectionEquality().equals(other.host, host) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            (identical(other.port, port) || other.port == port) &&
            const DeepCollectionEquality().equals(other.query, _query) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            const DeepCollectionEquality().equals(other.variable, _variable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      raw,
      protocol,
      const DeepCollectionEquality().hash(host),
      const DeepCollectionEquality().hash(path),
      port,
      const DeepCollectionEquality().hash(_query),
      hash,
      const DeepCollectionEquality().hash(_variable),
    );
  }

  @override
  String toString() {
    return 'PostmanCollectionUrl(raw: $raw, protocol: $protocol, host: $host, path: $path, port: $port, query: $query, hash: $hash, variable: $variable)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCollectionUrlCopyWith<$Res>
    implements $PostmanCollectionUrlCopyWith<$Res> {
  factory _$PostmanCollectionUrlCopyWith(
    _PostmanCollectionUrl value,
    $Res Function(_PostmanCollectionUrl) _then,
  ) = __$PostmanCollectionUrlCopyWithImpl;
  @override
  @useResult
  $Res call({
    String? raw,
    String? protocol,
    Object? host,
    Object? path,
    String? port,
    List<PostmanCollectionQueryParam>? query,
    String? hash,
    List<PostmanCollectionVariable>? variable,
  });
}

/// @nodoc
class __$PostmanCollectionUrlCopyWithImpl<$Res>
    implements _$PostmanCollectionUrlCopyWith<$Res> {
  __$PostmanCollectionUrlCopyWithImpl(this._self, this._then);

  final _PostmanCollectionUrl _self;
  final $Res Function(_PostmanCollectionUrl) _then;

  /// Create a copy of PostmanCollectionUrl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? raw = freezed,
    Object? protocol = freezed,
    Object? host = freezed,
    Object? path = freezed,
    Object? port = freezed,
    Object? query = freezed,
    Object? hash = freezed,
    Object? variable = freezed,
  }) {
    return _then(
      _PostmanCollectionUrl(
        raw: freezed == raw
            ? _self.raw
            : raw // ignore: cast_nullable_to_non_nullable
                  as String?,
        protocol: freezed == protocol
            ? _self.protocol
            : protocol // ignore: cast_nullable_to_non_nullable
                  as String?,
        host: freezed == host ? _self.host : host,
        path: freezed == path ? _self.path : path,
        port: freezed == port
            ? _self.port
            : port // ignore: cast_nullable_to_non_nullable
                  as String?,
        query: freezed == query
            ? _self._query
            : query // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionQueryParam>?,
        hash: freezed == hash
            ? _self.hash
            : hash // ignore: cast_nullable_to_non_nullable
                  as String?,
        variable: freezed == variable
            ? _self._variable
            : variable // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionVariable>?,
      ),
    );
  }
}

/// @nodoc
mixin _$PostmanCollectionQueryParam {
  String? get key;
  String? get value;
  bool? get disabled;
  String? get description;

  /// Create a copy of PostmanCollectionQueryParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCollectionQueryParamCopyWith<PostmanCollectionQueryParam>
  get copyWith =>
      _$PostmanCollectionQueryParamCopyWithImpl<PostmanCollectionQueryParam>(
        this as PostmanCollectionQueryParam,
        _$identity,
      );

  /// Serializes this PostmanCollectionQueryParam to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCollectionQueryParam;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCollectionQueryParam &&
            (identical(other.key, _this.key) || other.key == _this.key) &&
            (identical(other.value, _this.value) ||
                other.value == _this.value) &&
            (identical(other.disabled, _this.disabled) ||
                other.disabled == _this.disabled) &&
            (identical(other.description, _this.description) ||
                other.description == _this.description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCollectionQueryParam;
    return Object.hash(
      runtimeType,
      _this.key,
      _this.value,
      _this.disabled,
      _this.description,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanCollectionQueryParam;
    return 'PostmanCollectionQueryParam(key: ${_this.key}, value: ${_this.value}, disabled: ${_this.disabled}, description: ${_this.description})';
  }
}

/// @nodoc
abstract mixin class $PostmanCollectionQueryParamCopyWith<$Res> {
  factory $PostmanCollectionQueryParamCopyWith(
    PostmanCollectionQueryParam value,
    $Res Function(PostmanCollectionQueryParam) _then,
  ) = _$PostmanCollectionQueryParamCopyWithImpl;
  @useResult
  $Res call({String? key, String? value, bool? disabled, String? description});
}

/// @nodoc
class _$PostmanCollectionQueryParamCopyWithImpl<$Res>
    implements $PostmanCollectionQueryParamCopyWith<$Res> {
  _$PostmanCollectionQueryParamCopyWithImpl(this._self, this._then);

  final PostmanCollectionQueryParam _self;
  final $Res Function(PostmanCollectionQueryParam) _then;

  /// Create a copy of PostmanCollectionQueryParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
    Object? disabled = freezed,
    Object? description = freezed,
  }) {
    return _then(
      PostmanCollectionQueryParam(
        key: freezed == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String?,
        value: freezed == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String?,
        disabled: freezed == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as bool?,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanCollectionQueryParam].
extension PostmanCollectionQueryParamPatterns on PostmanCollectionQueryParam {
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
    TResult Function(_PostmanCollectionQueryParam value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionQueryParam() when $default != null:
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
    TResult Function(_PostmanCollectionQueryParam value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionQueryParam():
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
    TResult? Function(_PostmanCollectionQueryParam value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionQueryParam() when $default != null:
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
      String? key,
      String? value,
      bool? disabled,
      String? description,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionQueryParam() when $default != null:
        return $default(
          _that.key,
          _that.value,
          _that.disabled,
          _that.description,
        );
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
      String? key,
      String? value,
      bool? disabled,
      String? description,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionQueryParam():
        return $default(
          _that.key,
          _that.value,
          _that.disabled,
          _that.description,
        );
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
      String? key,
      String? value,
      bool? disabled,
      String? description,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionQueryParam() when $default != null:
        return $default(
          _that.key,
          _that.value,
          _that.disabled,
          _that.description,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostmanCollectionQueryParam extends PostmanCollectionQueryParam {
  const _PostmanCollectionQueryParam({
    this.key,
    this.value,
    this.disabled,
    this.description,
  }) : super._();
  factory _PostmanCollectionQueryParam.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionQueryParamFromJson(json);

  @override
  final String? key;
  @override
  final String? value;
  @override
  final bool? disabled;
  @override
  final String? description;

  /// Create a copy of PostmanCollectionQueryParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCollectionQueryParamCopyWith<_PostmanCollectionQueryParam>
  get copyWith =>
      __$PostmanCollectionQueryParamCopyWithImpl<_PostmanCollectionQueryParam>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCollectionQueryParamToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCollectionQueryParam &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, key, value, disabled, description);
  }

  @override
  String toString() {
    return 'PostmanCollectionQueryParam(key: $key, value: $value, disabled: $disabled, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCollectionQueryParamCopyWith<$Res>
    implements $PostmanCollectionQueryParamCopyWith<$Res> {
  factory _$PostmanCollectionQueryParamCopyWith(
    _PostmanCollectionQueryParam value,
    $Res Function(_PostmanCollectionQueryParam) _then,
  ) = __$PostmanCollectionQueryParamCopyWithImpl;
  @override
  @useResult
  $Res call({String? key, String? value, bool? disabled, String? description});
}

/// @nodoc
class __$PostmanCollectionQueryParamCopyWithImpl<$Res>
    implements _$PostmanCollectionQueryParamCopyWith<$Res> {
  __$PostmanCollectionQueryParamCopyWithImpl(this._self, this._then);

  final _PostmanCollectionQueryParam _self;
  final $Res Function(_PostmanCollectionQueryParam) _then;

  /// Create a copy of PostmanCollectionQueryParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
    Object? disabled = freezed,
    Object? description = freezed,
  }) {
    return _then(
      _PostmanCollectionQueryParam(
        key: freezed == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String?,
        value: freezed == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String?,
        disabled: freezed == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as bool?,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
mixin _$PostmanCollectionVariable {
  String? get id;
  String? get key;
  Object? get value;
  PostmanCollectionVariableType? get type;
  String? get name;
  String? get description;
  bool? get system;
  bool? get disabled;

  /// Create a copy of PostmanCollectionVariable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCollectionVariableCopyWith<PostmanCollectionVariable> get copyWith =>
      _$PostmanCollectionVariableCopyWithImpl<PostmanCollectionVariable>(
        this as PostmanCollectionVariable,
        _$identity,
      );

  /// Serializes this PostmanCollectionVariable to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCollectionVariable;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCollectionVariable &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.key, _this.key) || other.key == _this.key) &&
            const DeepCollectionEquality().equals(other.value, _this.value) &&
            (identical(other.type, _this.type) || other.type == _this.type) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.description, _this.description) ||
                other.description == _this.description) &&
            (identical(other.system, _this.system) ||
                other.system == _this.system) &&
            (identical(other.disabled, _this.disabled) ||
                other.disabled == _this.disabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCollectionVariable;
    return Object.hash(
      runtimeType,
      _this.id,
      _this.key,
      const DeepCollectionEquality().hash(_this.value),
      _this.type,
      _this.name,
      _this.description,
      _this.system,
      _this.disabled,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanCollectionVariable;
    return 'PostmanCollectionVariable(id: ${_this.id}, key: ${_this.key}, value: ${_this.value}, type: ${_this.type}, name: ${_this.name}, description: ${_this.description}, system: ${_this.system}, disabled: ${_this.disabled})';
  }
}

/// @nodoc
abstract mixin class $PostmanCollectionVariableCopyWith<$Res> {
  factory $PostmanCollectionVariableCopyWith(
    PostmanCollectionVariable value,
    $Res Function(PostmanCollectionVariable) _then,
  ) = _$PostmanCollectionVariableCopyWithImpl;
  @useResult
  $Res call({
    String? id,
    String? key,
    Object? value,
    PostmanCollectionVariableType? type,
    String? name,
    String? description,
    bool? system,
    bool? disabled,
  });
}

/// @nodoc
class _$PostmanCollectionVariableCopyWithImpl<$Res>
    implements $PostmanCollectionVariableCopyWith<$Res> {
  _$PostmanCollectionVariableCopyWithImpl(this._self, this._then);

  final PostmanCollectionVariable _self;
  final $Res Function(PostmanCollectionVariable) _then;

  /// Create a copy of PostmanCollectionVariable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? value = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? system = freezed,
    Object? disabled = freezed,
  }) {
    return _then(
      PostmanCollectionVariable(
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        key: freezed == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String?,
        value: freezed == value ? _self.value : value,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionVariableType?,
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        system: freezed == system
            ? _self.system
            : system // ignore: cast_nullable_to_non_nullable
                  as bool?,
        disabled: freezed == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanCollectionVariable].
extension PostmanCollectionVariablePatterns on PostmanCollectionVariable {
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
    TResult Function(_PostmanCollectionVariable value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionVariable() when $default != null:
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
    TResult Function(_PostmanCollectionVariable value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionVariable():
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
    TResult? Function(_PostmanCollectionVariable value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionVariable() when $default != null:
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
      String? id,
      String? key,
      Object? value,
      PostmanCollectionVariableType? type,
      String? name,
      String? description,
      bool? system,
      bool? disabled,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionVariable() when $default != null:
        return $default(
          _that.id,
          _that.key,
          _that.value,
          _that.type,
          _that.name,
          _that.description,
          _that.system,
          _that.disabled,
        );
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
      String? id,
      String? key,
      Object? value,
      PostmanCollectionVariableType? type,
      String? name,
      String? description,
      bool? system,
      bool? disabled,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionVariable():
        return $default(
          _that.id,
          _that.key,
          _that.value,
          _that.type,
          _that.name,
          _that.description,
          _that.system,
          _that.disabled,
        );
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
      String? id,
      String? key,
      Object? value,
      PostmanCollectionVariableType? type,
      String? name,
      String? description,
      bool? system,
      bool? disabled,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionVariable() when $default != null:
        return $default(
          _that.id,
          _that.key,
          _that.value,
          _that.type,
          _that.name,
          _that.description,
          _that.system,
          _that.disabled,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostmanCollectionVariable extends PostmanCollectionVariable {
  const _PostmanCollectionVariable({
    this.id,
    this.key,
    this.value,
    this.type,
    this.name,
    this.description,
    this.system,
    this.disabled,
  }) : super._();
  factory _PostmanCollectionVariable.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionVariableFromJson(json);

  @override
  final String? id;
  @override
  final String? key;
  @override
  final Object? value;
  @override
  final PostmanCollectionVariableType? type;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final bool? system;
  @override
  final bool? disabled;

  /// Create a copy of PostmanCollectionVariable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCollectionVariableCopyWith<_PostmanCollectionVariable>
  get copyWith =>
      __$PostmanCollectionVariableCopyWithImpl<_PostmanCollectionVariable>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCollectionVariableToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCollectionVariable &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      id,
      key,
      const DeepCollectionEquality().hash(value),
      type,
      name,
      description,
      system,
      disabled,
    );
  }

  @override
  String toString() {
    return 'PostmanCollectionVariable(id: $id, key: $key, value: $value, type: $type, name: $name, description: $description, system: $system, disabled: $disabled)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCollectionVariableCopyWith<$Res>
    implements $PostmanCollectionVariableCopyWith<$Res> {
  factory _$PostmanCollectionVariableCopyWith(
    _PostmanCollectionVariable value,
    $Res Function(_PostmanCollectionVariable) _then,
  ) = __$PostmanCollectionVariableCopyWithImpl;
  @override
  @useResult
  $Res call({
    String? id,
    String? key,
    Object? value,
    PostmanCollectionVariableType? type,
    String? name,
    String? description,
    bool? system,
    bool? disabled,
  });
}

/// @nodoc
class __$PostmanCollectionVariableCopyWithImpl<$Res>
    implements _$PostmanCollectionVariableCopyWith<$Res> {
  __$PostmanCollectionVariableCopyWithImpl(this._self, this._then);

  final _PostmanCollectionVariable _self;
  final $Res Function(_PostmanCollectionVariable) _then;

  /// Create a copy of PostmanCollectionVariable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? value = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? system = freezed,
    Object? disabled = freezed,
  }) {
    return _then(
      _PostmanCollectionVariable(
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        key: freezed == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String?,
        value: freezed == value ? _self.value : value,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionVariableType?,
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        system: freezed == system
            ? _self.system
            : system // ignore: cast_nullable_to_non_nullable
                  as bool?,
        disabled: freezed == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
mixin _$PostmanCollectionEvent {
  String? get id;
  String get listen;
  PostmanCollectionScript? get script;
  bool? get disabled;

  /// Create a copy of PostmanCollectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCollectionEventCopyWith<PostmanCollectionEvent> get copyWith =>
      _$PostmanCollectionEventCopyWithImpl<PostmanCollectionEvent>(
        this as PostmanCollectionEvent,
        _$identity,
      );

  /// Serializes this PostmanCollectionEvent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCollectionEvent;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCollectionEvent &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.listen, _this.listen) ||
                other.listen == _this.listen) &&
            (identical(other.script, _this.script) ||
                other.script == _this.script) &&
            (identical(other.disabled, _this.disabled) ||
                other.disabled == _this.disabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCollectionEvent;
    return Object.hash(
      runtimeType,
      _this.id,
      _this.listen,
      _this.script,
      _this.disabled,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanCollectionEvent;
    return 'PostmanCollectionEvent(id: ${_this.id}, listen: ${_this.listen}, script: ${_this.script}, disabled: ${_this.disabled})';
  }
}

/// @nodoc
abstract mixin class $PostmanCollectionEventCopyWith<$Res> {
  factory $PostmanCollectionEventCopyWith(
    PostmanCollectionEvent value,
    $Res Function(PostmanCollectionEvent) _then,
  ) = _$PostmanCollectionEventCopyWithImpl;
  @useResult
  $Res call({
    String? id,
    String listen,
    PostmanCollectionScript? script,
    bool? disabled,
  });

  $PostmanCollectionScriptCopyWith<$Res>? get script;
}

/// @nodoc
class _$PostmanCollectionEventCopyWithImpl<$Res>
    implements $PostmanCollectionEventCopyWith<$Res> {
  _$PostmanCollectionEventCopyWithImpl(this._self, this._then);

  final PostmanCollectionEvent _self;
  final $Res Function(PostmanCollectionEvent) _then;

  /// Create a copy of PostmanCollectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? listen = null,
    Object? script = freezed,
    Object? disabled = freezed,
  }) {
    return _then(
      PostmanCollectionEvent(
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        listen: null == listen
            ? _self.listen
            : listen // ignore: cast_nullable_to_non_nullable
                  as String,
        script: freezed == script
            ? _self.script
            : script // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionScript?,
        disabled: freezed == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }

  /// Create a copy of PostmanCollectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionScriptCopyWith<$Res>? get script {
    if (_self.script == null) {
      return null;
    }

    return $PostmanCollectionScriptCopyWith<$Res>(_self.script!, (value) {
      return _then(_self.copyWith(script: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PostmanCollectionEvent].
extension PostmanCollectionEventPatterns on PostmanCollectionEvent {
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
    TResult Function(_PostmanCollectionEvent value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionEvent() when $default != null:
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
    TResult Function(_PostmanCollectionEvent value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionEvent():
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
    TResult? Function(_PostmanCollectionEvent value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionEvent() when $default != null:
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
      String? id,
      String listen,
      PostmanCollectionScript? script,
      bool? disabled,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionEvent() when $default != null:
        return $default(_that.id, _that.listen, _that.script, _that.disabled);
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
      String? id,
      String listen,
      PostmanCollectionScript? script,
      bool? disabled,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionEvent():
        return $default(_that.id, _that.listen, _that.script, _that.disabled);
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
      String? id,
      String listen,
      PostmanCollectionScript? script,
      bool? disabled,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionEvent() when $default != null:
        return $default(_that.id, _that.listen, _that.script, _that.disabled);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostmanCollectionEvent extends PostmanCollectionEvent {
  const _PostmanCollectionEvent({
    this.id,
    required this.listen,
    this.script,
    this.disabled,
  }) : super._();
  factory _PostmanCollectionEvent.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionEventFromJson(json);

  @override
  final String? id;
  @override
  final String listen;
  @override
  final PostmanCollectionScript? script;
  @override
  final bool? disabled;

  /// Create a copy of PostmanCollectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCollectionEventCopyWith<_PostmanCollectionEvent> get copyWith =>
      __$PostmanCollectionEventCopyWithImpl<_PostmanCollectionEvent>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCollectionEventToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCollectionEvent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.listen, listen) || other.listen == listen) &&
            (identical(other.script, script) || other.script == script) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, id, listen, script, disabled);
  }

  @override
  String toString() {
    return 'PostmanCollectionEvent(id: $id, listen: $listen, script: $script, disabled: $disabled)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCollectionEventCopyWith<$Res>
    implements $PostmanCollectionEventCopyWith<$Res> {
  factory _$PostmanCollectionEventCopyWith(
    _PostmanCollectionEvent value,
    $Res Function(_PostmanCollectionEvent) _then,
  ) = __$PostmanCollectionEventCopyWithImpl;
  @override
  @useResult
  $Res call({
    String? id,
    String listen,
    PostmanCollectionScript? script,
    bool? disabled,
  });

  @override
  $PostmanCollectionScriptCopyWith<$Res>? get script;
}

/// @nodoc
class __$PostmanCollectionEventCopyWithImpl<$Res>
    implements _$PostmanCollectionEventCopyWith<$Res> {
  __$PostmanCollectionEventCopyWithImpl(this._self, this._then);

  final _PostmanCollectionEvent _self;
  final $Res Function(_PostmanCollectionEvent) _then;

  /// Create a copy of PostmanCollectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? listen = null,
    Object? script = freezed,
    Object? disabled = freezed,
  }) {
    return _then(
      _PostmanCollectionEvent(
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        listen: null == listen
            ? _self.listen
            : listen // ignore: cast_nullable_to_non_nullable
                  as String,
        script: freezed == script
            ? _self.script
            : script // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionScript?,
        disabled: freezed == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }

  /// Create a copy of PostmanCollectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionScriptCopyWith<$Res>? get script {
    if (_self.script == null) {
      return null;
    }

    return $PostmanCollectionScriptCopyWith<$Res>(_self.script!, (value) {
      return _then(_self.copyWith(script: value));
    });
  }
}

/// @nodoc
mixin _$PostmanCollectionScript {
  String? get id;
  Map<String, dynamic>? get packages;
  String? get type;
  Object? get exec;
  PostmanCollectionUrl? get src;
  String? get name;

  /// Create a copy of PostmanCollectionScript
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCollectionScriptCopyWith<PostmanCollectionScript> get copyWith =>
      _$PostmanCollectionScriptCopyWithImpl<PostmanCollectionScript>(
        this as PostmanCollectionScript,
        _$identity,
      );

  /// Serializes this PostmanCollectionScript to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCollectionScript;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCollectionScript &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            const DeepCollectionEquality().equals(
              other.packages,
              _this.packages,
            ) &&
            (identical(other.type, _this.type) || other.type == _this.type) &&
            const DeepCollectionEquality().equals(other.exec, _this.exec) &&
            (identical(other.src, _this.src) || other.src == _this.src) &&
            (identical(other.name, _this.name) || other.name == _this.name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCollectionScript;
    return Object.hash(
      runtimeType,
      _this.id,
      const DeepCollectionEquality().hash(_this.packages),
      _this.type,
      const DeepCollectionEquality().hash(_this.exec),
      _this.src,
      _this.name,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanCollectionScript;
    return 'PostmanCollectionScript(id: ${_this.id}, packages: ${_this.packages}, type: ${_this.type}, exec: ${_this.exec}, src: ${_this.src}, name: ${_this.name})';
  }
}

/// @nodoc
abstract mixin class $PostmanCollectionScriptCopyWith<$Res> {
  factory $PostmanCollectionScriptCopyWith(
    PostmanCollectionScript value,
    $Res Function(PostmanCollectionScript) _then,
  ) = _$PostmanCollectionScriptCopyWithImpl;
  @useResult
  $Res call({
    String? id,
    Map<String, dynamic>? packages,
    String? type,
    Object? exec,
    PostmanCollectionUrl? src,
    String? name,
  });

  $PostmanCollectionUrlCopyWith<$Res>? get src;
}

/// @nodoc
class _$PostmanCollectionScriptCopyWithImpl<$Res>
    implements $PostmanCollectionScriptCopyWith<$Res> {
  _$PostmanCollectionScriptCopyWithImpl(this._self, this._then);

  final PostmanCollectionScript _self;
  final $Res Function(PostmanCollectionScript) _then;

  /// Create a copy of PostmanCollectionScript
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? packages = freezed,
    Object? type = freezed,
    Object? exec = freezed,
    Object? src = freezed,
    Object? name = freezed,
  }) {
    return _then(
      PostmanCollectionScript(
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        packages: freezed == packages
            ? _self.packages
            : packages // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        exec: freezed == exec ? _self.exec : exec,
        src: freezed == src
            ? _self.src
            : src // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionUrl?,
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }

  /// Create a copy of PostmanCollectionScript
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionUrlCopyWith<$Res>? get src {
    if (_self.src == null) {
      return null;
    }

    return $PostmanCollectionUrlCopyWith<$Res>(_self.src!, (value) {
      return _then(_self.copyWith(src: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PostmanCollectionScript].
extension PostmanCollectionScriptPatterns on PostmanCollectionScript {
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
    TResult Function(_PostmanCollectionScript value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionScript() when $default != null:
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
    TResult Function(_PostmanCollectionScript value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionScript():
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
    TResult? Function(_PostmanCollectionScript value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionScript() when $default != null:
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
      String? id,
      Map<String, dynamic>? packages,
      String? type,
      Object? exec,
      PostmanCollectionUrl? src,
      String? name,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionScript() when $default != null:
        return $default(
          _that.id,
          _that.packages,
          _that.type,
          _that.exec,
          _that.src,
          _that.name,
        );
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
      String? id,
      Map<String, dynamic>? packages,
      String? type,
      Object? exec,
      PostmanCollectionUrl? src,
      String? name,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionScript():
        return $default(
          _that.id,
          _that.packages,
          _that.type,
          _that.exec,
          _that.src,
          _that.name,
        );
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
      String? id,
      Map<String, dynamic>? packages,
      String? type,
      Object? exec,
      PostmanCollectionUrl? src,
      String? name,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionScript() when $default != null:
        return $default(
          _that.id,
          _that.packages,
          _that.type,
          _that.exec,
          _that.src,
          _that.name,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostmanCollectionScript extends PostmanCollectionScript {
  const _PostmanCollectionScript({
    this.id,
    Map<String, dynamic>? packages,
    this.type,
    this.exec,
    this.src,
    this.name,
  }) : _packages = packages,
       super._();
  factory _PostmanCollectionScript.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionScriptFromJson(json);

  @override
  final String? id;
  final Map<String, dynamic>? _packages;
  @override
  Map<String, dynamic>? get packages {
    final value = _packages;
    if (value == null) return null;
    if (_packages is EqualUnmodifiableMapView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? type;
  @override
  final Object? exec;
  @override
  final PostmanCollectionUrl? src;
  @override
  final String? name;

  /// Create a copy of PostmanCollectionScript
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCollectionScriptCopyWith<_PostmanCollectionScript> get copyWith =>
      __$PostmanCollectionScriptCopyWithImpl<_PostmanCollectionScript>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCollectionScriptToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCollectionScript &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.packages, _packages) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.exec, exec) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_packages),
      type,
      const DeepCollectionEquality().hash(exec),
      src,
      name,
    );
  }

  @override
  String toString() {
    return 'PostmanCollectionScript(id: $id, packages: $packages, type: $type, exec: $exec, src: $src, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCollectionScriptCopyWith<$Res>
    implements $PostmanCollectionScriptCopyWith<$Res> {
  factory _$PostmanCollectionScriptCopyWith(
    _PostmanCollectionScript value,
    $Res Function(_PostmanCollectionScript) _then,
  ) = __$PostmanCollectionScriptCopyWithImpl;
  @override
  @useResult
  $Res call({
    String? id,
    Map<String, dynamic>? packages,
    String? type,
    Object? exec,
    PostmanCollectionUrl? src,
    String? name,
  });

  @override
  $PostmanCollectionUrlCopyWith<$Res>? get src;
}

/// @nodoc
class __$PostmanCollectionScriptCopyWithImpl<$Res>
    implements _$PostmanCollectionScriptCopyWith<$Res> {
  __$PostmanCollectionScriptCopyWithImpl(this._self, this._then);

  final _PostmanCollectionScript _self;
  final $Res Function(_PostmanCollectionScript) _then;

  /// Create a copy of PostmanCollectionScript
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? packages = freezed,
    Object? type = freezed,
    Object? exec = freezed,
    Object? src = freezed,
    Object? name = freezed,
  }) {
    return _then(
      _PostmanCollectionScript(
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        packages: freezed == packages
            ? _self._packages
            : packages // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        exec: freezed == exec ? _self.exec : exec,
        src: freezed == src
            ? _self.src
            : src // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionUrl?,
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }

  /// Create a copy of PostmanCollectionScript
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionUrlCopyWith<$Res>? get src {
    if (_self.src == null) {
      return null;
    }

    return $PostmanCollectionUrlCopyWith<$Res>(_self.src!, (value) {
      return _then(_self.copyWith(src: value));
    });
  }
}

/// @nodoc
mixin _$PostmanCollectionResponse {
  String? get name;
  String? get id;
  PostmanCollectionRequest? get originalRequest;
  @JsonKey(name: '_postman_previewlanguage')
  String? get postmanPreviewLanguage;
  Object? get responseTime;
  Object? get timings;
  Object? get header;
  List<PostmanCollectionCookie>? get cookie;
  String? get body;
  String? get status;
  int? get code;

  /// Create a copy of PostmanCollectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCollectionResponseCopyWith<PostmanCollectionResponse> get copyWith =>
      _$PostmanCollectionResponseCopyWithImpl<PostmanCollectionResponse>(
        this as PostmanCollectionResponse,
        _$identity,
      );

  /// Serializes this PostmanCollectionResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCollectionResponse;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCollectionResponse &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.originalRequest, _this.originalRequest) ||
                other.originalRequest == _this.originalRequest) &&
            (identical(
                  other.postmanPreviewLanguage,
                  _this.postmanPreviewLanguage,
                ) ||
                other.postmanPreviewLanguage == _this.postmanPreviewLanguage) &&
            const DeepCollectionEquality().equals(
              other.responseTime,
              _this.responseTime,
            ) &&
            const DeepCollectionEquality().equals(
              other.timings,
              _this.timings,
            ) &&
            const DeepCollectionEquality().equals(other.header, _this.header) &&
            const DeepCollectionEquality().equals(other.cookie, _this.cookie) &&
            (identical(other.body, _this.body) || other.body == _this.body) &&
            (identical(other.status, _this.status) ||
                other.status == _this.status) &&
            (identical(other.code, _this.code) || other.code == _this.code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCollectionResponse;
    return Object.hash(
      runtimeType,
      _this.name,
      _this.id,
      _this.originalRequest,
      _this.postmanPreviewLanguage,
      const DeepCollectionEquality().hash(_this.responseTime),
      const DeepCollectionEquality().hash(_this.timings),
      const DeepCollectionEquality().hash(_this.header),
      const DeepCollectionEquality().hash(_this.cookie),
      _this.body,
      _this.status,
      _this.code,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanCollectionResponse;
    return 'PostmanCollectionResponse(name: ${_this.name}, id: ${_this.id}, originalRequest: ${_this.originalRequest}, postmanPreviewLanguage: ${_this.postmanPreviewLanguage}, responseTime: ${_this.responseTime}, timings: ${_this.timings}, header: ${_this.header}, cookie: ${_this.cookie}, body: ${_this.body}, status: ${_this.status}, code: ${_this.code})';
  }
}

/// @nodoc
abstract mixin class $PostmanCollectionResponseCopyWith<$Res> {
  factory $PostmanCollectionResponseCopyWith(
    PostmanCollectionResponse value,
    $Res Function(PostmanCollectionResponse) _then,
  ) = _$PostmanCollectionResponseCopyWithImpl;
  @useResult
  $Res call({
    String? name,
    String? id,
    PostmanCollectionRequest? originalRequest,
    @JsonKey(name: '_postman_previewlanguage') String? postmanPreviewLanguage,
    Object? responseTime,
    Object? timings,
    Object? header,
    List<PostmanCollectionCookie>? cookie,
    String? body,
    String? status,
    int? code,
  });

  $PostmanCollectionRequestCopyWith<$Res>? get originalRequest;
}

/// @nodoc
class _$PostmanCollectionResponseCopyWithImpl<$Res>
    implements $PostmanCollectionResponseCopyWith<$Res> {
  _$PostmanCollectionResponseCopyWithImpl(this._self, this._then);

  final PostmanCollectionResponse _self;
  final $Res Function(PostmanCollectionResponse) _then;

  /// Create a copy of PostmanCollectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? originalRequest = freezed,
    Object? postmanPreviewLanguage = freezed,
    Object? responseTime = freezed,
    Object? timings = freezed,
    Object? header = freezed,
    Object? cookie = freezed,
    Object? body = freezed,
    Object? status = freezed,
    Object? code = freezed,
  }) {
    return _then(
      PostmanCollectionResponse(
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        originalRequest: freezed == originalRequest
            ? _self.originalRequest
            : originalRequest // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionRequest?,
        postmanPreviewLanguage: freezed == postmanPreviewLanguage
            ? _self.postmanPreviewLanguage
            : postmanPreviewLanguage // ignore: cast_nullable_to_non_nullable
                  as String?,
        responseTime: freezed == responseTime
            ? _self.responseTime
            : responseTime,
        timings: freezed == timings ? _self.timings : timings,
        header: freezed == header ? _self.header : header,
        cookie: freezed == cookie
            ? _self.cookie
            : cookie // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionCookie>?,
        body: freezed == body
            ? _self.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _self.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        code: freezed == code
            ? _self.code
            : code // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }

  /// Create a copy of PostmanCollectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionRequestCopyWith<$Res>? get originalRequest {
    if (_self.originalRequest == null) {
      return null;
    }

    return $PostmanCollectionRequestCopyWith<$Res>(_self.originalRequest!, (
      value,
    ) {
      return _then(_self.copyWith(originalRequest: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PostmanCollectionResponse].
extension PostmanCollectionResponsePatterns on PostmanCollectionResponse {
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
    TResult Function(_PostmanCollectionResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionResponse() when $default != null:
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
    TResult Function(_PostmanCollectionResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionResponse():
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
    TResult? Function(_PostmanCollectionResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionResponse() when $default != null:
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
      String? name,
      String? id,
      PostmanCollectionRequest? originalRequest,
      @JsonKey(name: '_postman_previewlanguage') String? postmanPreviewLanguage,
      Object? responseTime,
      Object? timings,
      Object? header,
      List<PostmanCollectionCookie>? cookie,
      String? body,
      String? status,
      int? code,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionResponse() when $default != null:
        return $default(
          _that.name,
          _that.id,
          _that.originalRequest,
          _that.postmanPreviewLanguage,
          _that.responseTime,
          _that.timings,
          _that.header,
          _that.cookie,
          _that.body,
          _that.status,
          _that.code,
        );
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
      String? name,
      String? id,
      PostmanCollectionRequest? originalRequest,
      @JsonKey(name: '_postman_previewlanguage') String? postmanPreviewLanguage,
      Object? responseTime,
      Object? timings,
      Object? header,
      List<PostmanCollectionCookie>? cookie,
      String? body,
      String? status,
      int? code,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionResponse():
        return $default(
          _that.name,
          _that.id,
          _that.originalRequest,
          _that.postmanPreviewLanguage,
          _that.responseTime,
          _that.timings,
          _that.header,
          _that.cookie,
          _that.body,
          _that.status,
          _that.code,
        );
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
      String? name,
      String? id,
      PostmanCollectionRequest? originalRequest,
      @JsonKey(name: '_postman_previewlanguage') String? postmanPreviewLanguage,
      Object? responseTime,
      Object? timings,
      Object? header,
      List<PostmanCollectionCookie>? cookie,
      String? body,
      String? status,
      int? code,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionResponse() when $default != null:
        return $default(
          _that.name,
          _that.id,
          _that.originalRequest,
          _that.postmanPreviewLanguage,
          _that.responseTime,
          _that.timings,
          _that.header,
          _that.cookie,
          _that.body,
          _that.status,
          _that.code,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostmanCollectionResponse extends PostmanCollectionResponse {
  const _PostmanCollectionResponse({
    this.name,
    this.id,
    this.originalRequest,
    @JsonKey(name: '_postman_previewlanguage') this.postmanPreviewLanguage,
    this.responseTime,
    this.timings,
    this.header,
    List<PostmanCollectionCookie>? cookie,
    this.body,
    this.status,
    this.code,
  }) : _cookie = cookie,
       super._();
  factory _PostmanCollectionResponse.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionResponseFromJson(json);

  @override
  final String? name;
  @override
  final String? id;
  @override
  final PostmanCollectionRequest? originalRequest;
  @override
  @JsonKey(name: '_postman_previewlanguage')
  final String? postmanPreviewLanguage;
  @override
  final Object? responseTime;
  @override
  final Object? timings;
  @override
  final Object? header;
  final List<PostmanCollectionCookie>? _cookie;
  @override
  List<PostmanCollectionCookie>? get cookie {
    final value = _cookie;
    if (value == null) return null;
    if (_cookie is EqualUnmodifiableListView) return _cookie;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? body;
  @override
  final String? status;
  @override
  final int? code;

  /// Create a copy of PostmanCollectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCollectionResponseCopyWith<_PostmanCollectionResponse>
  get copyWith =>
      __$PostmanCollectionResponseCopyWithImpl<_PostmanCollectionResponse>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCollectionResponseToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCollectionResponse &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalRequest, originalRequest) ||
                other.originalRequest == originalRequest) &&
            (identical(other.postmanPreviewLanguage, postmanPreviewLanguage) ||
                other.postmanPreviewLanguage == postmanPreviewLanguage) &&
            const DeepCollectionEquality().equals(
              other.responseTime,
              responseTime,
            ) &&
            const DeepCollectionEquality().equals(other.timings, timings) &&
            const DeepCollectionEquality().equals(other.header, header) &&
            const DeepCollectionEquality().equals(other.cookie, _cookie) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      name,
      id,
      originalRequest,
      postmanPreviewLanguage,
      const DeepCollectionEquality().hash(responseTime),
      const DeepCollectionEquality().hash(timings),
      const DeepCollectionEquality().hash(header),
      const DeepCollectionEquality().hash(_cookie),
      body,
      status,
      code,
    );
  }

  @override
  String toString() {
    return 'PostmanCollectionResponse(name: $name, id: $id, originalRequest: $originalRequest, postmanPreviewLanguage: $postmanPreviewLanguage, responseTime: $responseTime, timings: $timings, header: $header, cookie: $cookie, body: $body, status: $status, code: $code)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCollectionResponseCopyWith<$Res>
    implements $PostmanCollectionResponseCopyWith<$Res> {
  factory _$PostmanCollectionResponseCopyWith(
    _PostmanCollectionResponse value,
    $Res Function(_PostmanCollectionResponse) _then,
  ) = __$PostmanCollectionResponseCopyWithImpl;
  @override
  @useResult
  $Res call({
    String? name,
    String? id,
    PostmanCollectionRequest? originalRequest,
    @JsonKey(name: '_postman_previewlanguage') String? postmanPreviewLanguage,
    Object? responseTime,
    Object? timings,
    Object? header,
    List<PostmanCollectionCookie>? cookie,
    String? body,
    String? status,
    int? code,
  });

  @override
  $PostmanCollectionRequestCopyWith<$Res>? get originalRequest;
}

/// @nodoc
class __$PostmanCollectionResponseCopyWithImpl<$Res>
    implements _$PostmanCollectionResponseCopyWith<$Res> {
  __$PostmanCollectionResponseCopyWithImpl(this._self, this._then);

  final _PostmanCollectionResponse _self;
  final $Res Function(_PostmanCollectionResponse) _then;

  /// Create a copy of PostmanCollectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? originalRequest = freezed,
    Object? postmanPreviewLanguage = freezed,
    Object? responseTime = freezed,
    Object? timings = freezed,
    Object? header = freezed,
    Object? cookie = freezed,
    Object? body = freezed,
    Object? status = freezed,
    Object? code = freezed,
  }) {
    return _then(
      _PostmanCollectionResponse(
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        originalRequest: freezed == originalRequest
            ? _self.originalRequest
            : originalRequest // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionRequest?,
        postmanPreviewLanguage: freezed == postmanPreviewLanguage
            ? _self.postmanPreviewLanguage
            : postmanPreviewLanguage // ignore: cast_nullable_to_non_nullable
                  as String?,
        responseTime: freezed == responseTime
            ? _self.responseTime
            : responseTime,
        timings: freezed == timings ? _self.timings : timings,
        header: freezed == header ? _self.header : header,
        cookie: freezed == cookie
            ? _self._cookie
            : cookie // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCollectionCookie>?,
        body: freezed == body
            ? _self.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _self.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        code: freezed == code
            ? _self.code
            : code // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }

  /// Create a copy of PostmanCollectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionRequestCopyWith<$Res>? get originalRequest {
    if (_self.originalRequest == null) {
      return null;
    }

    return $PostmanCollectionRequestCopyWith<$Res>(_self.originalRequest!, (
      value,
    ) {
      return _then(_self.copyWith(originalRequest: value));
    });
  }
}

/// @nodoc
mixin _$PostmanCollectionCookie {
  String get domain;
  Object? get expires;
  String? get maxAge;
  bool? get hostOnly;
  bool? get httpOnly;
  String? get name;
  String? get path;
  bool? get secure;
  bool? get session;
  String? get value;
  Object? get extensions;

  /// Create a copy of PostmanCollectionCookie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCollectionCookieCopyWith<PostmanCollectionCookie> get copyWith =>
      _$PostmanCollectionCookieCopyWithImpl<PostmanCollectionCookie>(
        this as PostmanCollectionCookie,
        _$identity,
      );

  /// Serializes this PostmanCollectionCookie to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCollectionCookie;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCollectionCookie &&
            (identical(other.domain, _this.domain) ||
                other.domain == _this.domain) &&
            const DeepCollectionEquality().equals(
              other.expires,
              _this.expires,
            ) &&
            (identical(other.maxAge, _this.maxAge) ||
                other.maxAge == _this.maxAge) &&
            (identical(other.hostOnly, _this.hostOnly) ||
                other.hostOnly == _this.hostOnly) &&
            (identical(other.httpOnly, _this.httpOnly) ||
                other.httpOnly == _this.httpOnly) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.path, _this.path) || other.path == _this.path) &&
            (identical(other.secure, _this.secure) ||
                other.secure == _this.secure) &&
            (identical(other.session, _this.session) ||
                other.session == _this.session) &&
            (identical(other.value, _this.value) ||
                other.value == _this.value) &&
            const DeepCollectionEquality().equals(
              other.extensions,
              _this.extensions,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCollectionCookie;
    return Object.hash(
      runtimeType,
      _this.domain,
      const DeepCollectionEquality().hash(_this.expires),
      _this.maxAge,
      _this.hostOnly,
      _this.httpOnly,
      _this.name,
      _this.path,
      _this.secure,
      _this.session,
      _this.value,
      const DeepCollectionEquality().hash(_this.extensions),
    );
  }

  @override
  String toString() {
    final _this = this as PostmanCollectionCookie;
    return 'PostmanCollectionCookie(domain: ${_this.domain}, expires: ${_this.expires}, maxAge: ${_this.maxAge}, hostOnly: ${_this.hostOnly}, httpOnly: ${_this.httpOnly}, name: ${_this.name}, path: ${_this.path}, secure: ${_this.secure}, session: ${_this.session}, value: ${_this.value}, extensions: ${_this.extensions})';
  }
}

/// @nodoc
abstract mixin class $PostmanCollectionCookieCopyWith<$Res> {
  factory $PostmanCollectionCookieCopyWith(
    PostmanCollectionCookie value,
    $Res Function(PostmanCollectionCookie) _then,
  ) = _$PostmanCollectionCookieCopyWithImpl;
  @useResult
  $Res call({
    String domain,
    Object? expires,
    String? maxAge,
    bool? hostOnly,
    bool? httpOnly,
    String? name,
    String? path,
    bool? secure,
    bool? session,
    String? value,
    Object? extensions,
  });
}

/// @nodoc
class _$PostmanCollectionCookieCopyWithImpl<$Res>
    implements $PostmanCollectionCookieCopyWith<$Res> {
  _$PostmanCollectionCookieCopyWithImpl(this._self, this._then);

  final PostmanCollectionCookie _self;
  final $Res Function(PostmanCollectionCookie) _then;

  /// Create a copy of PostmanCollectionCookie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? domain = null,
    Object? expires = freezed,
    Object? maxAge = freezed,
    Object? hostOnly = freezed,
    Object? httpOnly = freezed,
    Object? name = freezed,
    Object? path = freezed,
    Object? secure = freezed,
    Object? session = freezed,
    Object? value = freezed,
    Object? extensions = freezed,
  }) {
    return _then(
      PostmanCollectionCookie(
        domain: null == domain
            ? _self.domain
            : domain // ignore: cast_nullable_to_non_nullable
                  as String,
        expires: freezed == expires ? _self.expires : expires,
        maxAge: freezed == maxAge
            ? _self.maxAge
            : maxAge // ignore: cast_nullable_to_non_nullable
                  as String?,
        hostOnly: freezed == hostOnly
            ? _self.hostOnly
            : hostOnly // ignore: cast_nullable_to_non_nullable
                  as bool?,
        httpOnly: freezed == httpOnly
            ? _self.httpOnly
            : httpOnly // ignore: cast_nullable_to_non_nullable
                  as bool?,
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        path: freezed == path
            ? _self.path
            : path // ignore: cast_nullable_to_non_nullable
                  as String?,
        secure: freezed == secure
            ? _self.secure
            : secure // ignore: cast_nullable_to_non_nullable
                  as bool?,
        session: freezed == session
            ? _self.session
            : session // ignore: cast_nullable_to_non_nullable
                  as bool?,
        value: freezed == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String?,
        extensions: freezed == extensions ? _self.extensions : extensions,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanCollectionCookie].
extension PostmanCollectionCookiePatterns on PostmanCollectionCookie {
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
    TResult Function(_PostmanCollectionCookie value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionCookie() when $default != null:
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
    TResult Function(_PostmanCollectionCookie value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionCookie():
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
    TResult? Function(_PostmanCollectionCookie value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionCookie() when $default != null:
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
      String domain,
      Object? expires,
      String? maxAge,
      bool? hostOnly,
      bool? httpOnly,
      String? name,
      String? path,
      bool? secure,
      bool? session,
      String? value,
      Object? extensions,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionCookie() when $default != null:
        return $default(
          _that.domain,
          _that.expires,
          _that.maxAge,
          _that.hostOnly,
          _that.httpOnly,
          _that.name,
          _that.path,
          _that.secure,
          _that.session,
          _that.value,
          _that.extensions,
        );
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
      String domain,
      Object? expires,
      String? maxAge,
      bool? hostOnly,
      bool? httpOnly,
      String? name,
      String? path,
      bool? secure,
      bool? session,
      String? value,
      Object? extensions,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionCookie():
        return $default(
          _that.domain,
          _that.expires,
          _that.maxAge,
          _that.hostOnly,
          _that.httpOnly,
          _that.name,
          _that.path,
          _that.secure,
          _that.session,
          _that.value,
          _that.extensions,
        );
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
      String domain,
      Object? expires,
      String? maxAge,
      bool? hostOnly,
      bool? httpOnly,
      String? name,
      String? path,
      bool? secure,
      bool? session,
      String? value,
      Object? extensions,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionCookie() when $default != null:
        return $default(
          _that.domain,
          _that.expires,
          _that.maxAge,
          _that.hostOnly,
          _that.httpOnly,
          _that.name,
          _that.path,
          _that.secure,
          _that.session,
          _that.value,
          _that.extensions,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostmanCollectionCookie extends PostmanCollectionCookie {
  const _PostmanCollectionCookie({
    required this.domain,
    this.expires,
    this.maxAge,
    this.hostOnly,
    this.httpOnly,
    this.name,
    this.path,
    this.secure,
    this.session,
    this.value,
    this.extensions,
  }) : super._();
  factory _PostmanCollectionCookie.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionCookieFromJson(json);

  @override
  final String domain;
  @override
  final Object? expires;
  @override
  final String? maxAge;
  @override
  final bool? hostOnly;
  @override
  final bool? httpOnly;
  @override
  final String? name;
  @override
  final String? path;
  @override
  final bool? secure;
  @override
  final bool? session;
  @override
  final String? value;
  @override
  final Object? extensions;

  /// Create a copy of PostmanCollectionCookie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCollectionCookieCopyWith<_PostmanCollectionCookie> get copyWith =>
      __$PostmanCollectionCookieCopyWithImpl<_PostmanCollectionCookie>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCollectionCookieToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCollectionCookie &&
            (identical(other.domain, domain) || other.domain == domain) &&
            const DeepCollectionEquality().equals(other.expires, expires) &&
            (identical(other.maxAge, maxAge) || other.maxAge == maxAge) &&
            (identical(other.hostOnly, hostOnly) ||
                other.hostOnly == hostOnly) &&
            (identical(other.httpOnly, httpOnly) ||
                other.httpOnly == httpOnly) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.secure, secure) || other.secure == secure) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality().equals(
              other.extensions,
              extensions,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      domain,
      const DeepCollectionEquality().hash(expires),
      maxAge,
      hostOnly,
      httpOnly,
      name,
      path,
      secure,
      session,
      value,
      const DeepCollectionEquality().hash(extensions),
    );
  }

  @override
  String toString() {
    return 'PostmanCollectionCookie(domain: $domain, expires: $expires, maxAge: $maxAge, hostOnly: $hostOnly, httpOnly: $httpOnly, name: $name, path: $path, secure: $secure, session: $session, value: $value, extensions: $extensions)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCollectionCookieCopyWith<$Res>
    implements $PostmanCollectionCookieCopyWith<$Res> {
  factory _$PostmanCollectionCookieCopyWith(
    _PostmanCollectionCookie value,
    $Res Function(_PostmanCollectionCookie) _then,
  ) = __$PostmanCollectionCookieCopyWithImpl;
  @override
  @useResult
  $Res call({
    String domain,
    Object? expires,
    String? maxAge,
    bool? hostOnly,
    bool? httpOnly,
    String? name,
    String? path,
    bool? secure,
    bool? session,
    String? value,
    Object? extensions,
  });
}

/// @nodoc
class __$PostmanCollectionCookieCopyWithImpl<$Res>
    implements _$PostmanCollectionCookieCopyWith<$Res> {
  __$PostmanCollectionCookieCopyWithImpl(this._self, this._then);

  final _PostmanCollectionCookie _self;
  final $Res Function(_PostmanCollectionCookie) _then;

  /// Create a copy of PostmanCollectionCookie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? domain = null,
    Object? expires = freezed,
    Object? maxAge = freezed,
    Object? hostOnly = freezed,
    Object? httpOnly = freezed,
    Object? name = freezed,
    Object? path = freezed,
    Object? secure = freezed,
    Object? session = freezed,
    Object? value = freezed,
    Object? extensions = freezed,
  }) {
    return _then(
      _PostmanCollectionCookie(
        domain: null == domain
            ? _self.domain
            : domain // ignore: cast_nullable_to_non_nullable
                  as String,
        expires: freezed == expires ? _self.expires : expires,
        maxAge: freezed == maxAge
            ? _self.maxAge
            : maxAge // ignore: cast_nullable_to_non_nullable
                  as String?,
        hostOnly: freezed == hostOnly
            ? _self.hostOnly
            : hostOnly // ignore: cast_nullable_to_non_nullable
                  as bool?,
        httpOnly: freezed == httpOnly
            ? _self.httpOnly
            : httpOnly // ignore: cast_nullable_to_non_nullable
                  as bool?,
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        path: freezed == path
            ? _self.path
            : path // ignore: cast_nullable_to_non_nullable
                  as String?,
        secure: freezed == secure
            ? _self.secure
            : secure // ignore: cast_nullable_to_non_nullable
                  as bool?,
        session: freezed == session
            ? _self.session
            : session // ignore: cast_nullable_to_non_nullable
                  as bool?,
        value: freezed == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String?,
        extensions: freezed == extensions ? _self.extensions : extensions,
      ),
    );
  }
}

/// @nodoc
mixin _$PostmanCollectionCertificate {
  String? get name;
  List<String>? get matches;
  PostmanCollectionCertificateSrc? get key;
  PostmanCollectionCertificateSrc? get cert;
  String? get passphrase;

  /// Create a copy of PostmanCollectionCertificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCollectionCertificateCopyWith<PostmanCollectionCertificate>
  get copyWith =>
      _$PostmanCollectionCertificateCopyWithImpl<PostmanCollectionCertificate>(
        this as PostmanCollectionCertificate,
        _$identity,
      );

  /// Serializes this PostmanCollectionCertificate to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCollectionCertificate;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCollectionCertificate &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            const DeepCollectionEquality().equals(
              other.matches,
              _this.matches,
            ) &&
            (identical(other.key, _this.key) || other.key == _this.key) &&
            (identical(other.cert, _this.cert) || other.cert == _this.cert) &&
            (identical(other.passphrase, _this.passphrase) ||
                other.passphrase == _this.passphrase));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCollectionCertificate;
    return Object.hash(
      runtimeType,
      _this.name,
      const DeepCollectionEquality().hash(_this.matches),
      _this.key,
      _this.cert,
      _this.passphrase,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanCollectionCertificate;
    return 'PostmanCollectionCertificate(name: ${_this.name}, matches: ${_this.matches}, key: ${_this.key}, cert: ${_this.cert}, passphrase: ${_this.passphrase})';
  }
}

/// @nodoc
abstract mixin class $PostmanCollectionCertificateCopyWith<$Res> {
  factory $PostmanCollectionCertificateCopyWith(
    PostmanCollectionCertificate value,
    $Res Function(PostmanCollectionCertificate) _then,
  ) = _$PostmanCollectionCertificateCopyWithImpl;
  @useResult
  $Res call({
    String? name,
    List<String>? matches,
    PostmanCollectionCertificateSrc? key,
    PostmanCollectionCertificateSrc? cert,
    String? passphrase,
  });

  $PostmanCollectionCertificateSrcCopyWith<$Res>? get key;
  $PostmanCollectionCertificateSrcCopyWith<$Res>? get cert;
}

/// @nodoc
class _$PostmanCollectionCertificateCopyWithImpl<$Res>
    implements $PostmanCollectionCertificateCopyWith<$Res> {
  _$PostmanCollectionCertificateCopyWithImpl(this._self, this._then);

  final PostmanCollectionCertificate _self;
  final $Res Function(PostmanCollectionCertificate) _then;

  /// Create a copy of PostmanCollectionCertificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? matches = freezed,
    Object? key = freezed,
    Object? cert = freezed,
    Object? passphrase = freezed,
  }) {
    return _then(
      PostmanCollectionCertificate(
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        matches: freezed == matches
            ? _self.matches
            : matches // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        key: freezed == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionCertificateSrc?,
        cert: freezed == cert
            ? _self.cert
            : cert // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionCertificateSrc?,
        passphrase: freezed == passphrase
            ? _self.passphrase
            : passphrase // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }

  /// Create a copy of PostmanCollectionCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionCertificateSrcCopyWith<$Res>? get key {
    if (_self.key == null) {
      return null;
    }

    return $PostmanCollectionCertificateSrcCopyWith<$Res>(_self.key!, (value) {
      return _then(_self.copyWith(key: value));
    });
  }

  /// Create a copy of PostmanCollectionCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionCertificateSrcCopyWith<$Res>? get cert {
    if (_self.cert == null) {
      return null;
    }

    return $PostmanCollectionCertificateSrcCopyWith<$Res>(_self.cert!, (value) {
      return _then(_self.copyWith(cert: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PostmanCollectionCertificate].
extension PostmanCollectionCertificatePatterns on PostmanCollectionCertificate {
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
    TResult Function(_PostmanCollectionCertificate value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionCertificate() when $default != null:
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
    TResult Function(_PostmanCollectionCertificate value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionCertificate():
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
    TResult? Function(_PostmanCollectionCertificate value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionCertificate() when $default != null:
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
      String? name,
      List<String>? matches,
      PostmanCollectionCertificateSrc? key,
      PostmanCollectionCertificateSrc? cert,
      String? passphrase,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionCertificate() when $default != null:
        return $default(
          _that.name,
          _that.matches,
          _that.key,
          _that.cert,
          _that.passphrase,
        );
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
      String? name,
      List<String>? matches,
      PostmanCollectionCertificateSrc? key,
      PostmanCollectionCertificateSrc? cert,
      String? passphrase,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionCertificate():
        return $default(
          _that.name,
          _that.matches,
          _that.key,
          _that.cert,
          _that.passphrase,
        );
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
      String? name,
      List<String>? matches,
      PostmanCollectionCertificateSrc? key,
      PostmanCollectionCertificateSrc? cert,
      String? passphrase,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionCertificate() when $default != null:
        return $default(
          _that.name,
          _that.matches,
          _that.key,
          _that.cert,
          _that.passphrase,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostmanCollectionCertificate extends PostmanCollectionCertificate {
  const _PostmanCollectionCertificate({
    this.name,
    List<String>? matches,
    this.key,
    this.cert,
    this.passphrase,
  }) : _matches = matches,
       super._();
  factory _PostmanCollectionCertificate.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionCertificateFromJson(json);

  @override
  final String? name;
  final List<String>? _matches;
  @override
  List<String>? get matches {
    final value = _matches;
    if (value == null) return null;
    if (_matches is EqualUnmodifiableListView) return _matches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PostmanCollectionCertificateSrc? key;
  @override
  final PostmanCollectionCertificateSrc? cert;
  @override
  final String? passphrase;

  /// Create a copy of PostmanCollectionCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCollectionCertificateCopyWith<_PostmanCollectionCertificate>
  get copyWith =>
      __$PostmanCollectionCertificateCopyWithImpl<
        _PostmanCollectionCertificate
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCollectionCertificateToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCollectionCertificate &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.matches, _matches) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.cert, cert) || other.cert == cert) &&
            (identical(other.passphrase, passphrase) ||
                other.passphrase == passphrase));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_matches),
      key,
      cert,
      passphrase,
    );
  }

  @override
  String toString() {
    return 'PostmanCollectionCertificate(name: $name, matches: $matches, key: $key, cert: $cert, passphrase: $passphrase)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCollectionCertificateCopyWith<$Res>
    implements $PostmanCollectionCertificateCopyWith<$Res> {
  factory _$PostmanCollectionCertificateCopyWith(
    _PostmanCollectionCertificate value,
    $Res Function(_PostmanCollectionCertificate) _then,
  ) = __$PostmanCollectionCertificateCopyWithImpl;
  @override
  @useResult
  $Res call({
    String? name,
    List<String>? matches,
    PostmanCollectionCertificateSrc? key,
    PostmanCollectionCertificateSrc? cert,
    String? passphrase,
  });

  @override
  $PostmanCollectionCertificateSrcCopyWith<$Res>? get key;
  @override
  $PostmanCollectionCertificateSrcCopyWith<$Res>? get cert;
}

/// @nodoc
class __$PostmanCollectionCertificateCopyWithImpl<$Res>
    implements _$PostmanCollectionCertificateCopyWith<$Res> {
  __$PostmanCollectionCertificateCopyWithImpl(this._self, this._then);

  final _PostmanCollectionCertificate _self;
  final $Res Function(_PostmanCollectionCertificate) _then;

  /// Create a copy of PostmanCollectionCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? matches = freezed,
    Object? key = freezed,
    Object? cert = freezed,
    Object? passphrase = freezed,
  }) {
    return _then(
      _PostmanCollectionCertificate(
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        matches: freezed == matches
            ? _self._matches
            : matches // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        key: freezed == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionCertificateSrc?,
        cert: freezed == cert
            ? _self.cert
            : cert // ignore: cast_nullable_to_non_nullable
                  as PostmanCollectionCertificateSrc?,
        passphrase: freezed == passphrase
            ? _self.passphrase
            : passphrase // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }

  /// Create a copy of PostmanCollectionCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionCertificateSrcCopyWith<$Res>? get key {
    if (_self.key == null) {
      return null;
    }

    return $PostmanCollectionCertificateSrcCopyWith<$Res>(_self.key!, (value) {
      return _then(_self.copyWith(key: value));
    });
  }

  /// Create a copy of PostmanCollectionCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionCertificateSrcCopyWith<$Res>? get cert {
    if (_self.cert == null) {
      return null;
    }

    return $PostmanCollectionCertificateSrcCopyWith<$Res>(_self.cert!, (value) {
      return _then(_self.copyWith(cert: value));
    });
  }
}

/// @nodoc
mixin _$PostmanCollectionCertificateSrc {
  String? get src;

  /// Create a copy of PostmanCollectionCertificateSrc
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCollectionCertificateSrcCopyWith<PostmanCollectionCertificateSrc>
  get copyWith =>
      _$PostmanCollectionCertificateSrcCopyWithImpl<
        PostmanCollectionCertificateSrc
      >(this as PostmanCollectionCertificateSrc, _$identity);

  /// Serializes this PostmanCollectionCertificateSrc to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCollectionCertificateSrc;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCollectionCertificateSrc &&
            (identical(other.src, _this.src) || other.src == _this.src));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCollectionCertificateSrc;
    return Object.hash(runtimeType, _this.src);
  }

  @override
  String toString() {
    final _this = this as PostmanCollectionCertificateSrc;
    return 'PostmanCollectionCertificateSrc(src: ${_this.src})';
  }
}

/// @nodoc
abstract mixin class $PostmanCollectionCertificateSrcCopyWith<$Res> {
  factory $PostmanCollectionCertificateSrcCopyWith(
    PostmanCollectionCertificateSrc value,
    $Res Function(PostmanCollectionCertificateSrc) _then,
  ) = _$PostmanCollectionCertificateSrcCopyWithImpl;
  @useResult
  $Res call({String? src});
}

/// @nodoc
class _$PostmanCollectionCertificateSrcCopyWithImpl<$Res>
    implements $PostmanCollectionCertificateSrcCopyWith<$Res> {
  _$PostmanCollectionCertificateSrcCopyWithImpl(this._self, this._then);

  final PostmanCollectionCertificateSrc _self;
  final $Res Function(PostmanCollectionCertificateSrc) _then;

  /// Create a copy of PostmanCollectionCertificateSrc
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? src = freezed}) {
    return _then(
      PostmanCollectionCertificateSrc(
        src: freezed == src
            ? _self.src
            : src // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanCollectionCertificateSrc].
extension PostmanCollectionCertificateSrcPatterns
    on PostmanCollectionCertificateSrc {
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
    TResult Function(_PostmanCollectionCertificateSrc value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionCertificateSrc() when $default != null:
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
    TResult Function(_PostmanCollectionCertificateSrc value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionCertificateSrc():
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
    TResult? Function(_PostmanCollectionCertificateSrc value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionCertificateSrc() when $default != null:
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
    TResult Function(String? src)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionCertificateSrc() when $default != null:
        return $default(_that.src);
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
    TResult Function(String? src) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionCertificateSrc():
        return $default(_that.src);
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
    TResult? Function(String? src)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionCertificateSrc() when $default != null:
        return $default(_that.src);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostmanCollectionCertificateSrc extends PostmanCollectionCertificateSrc {
  const _PostmanCollectionCertificateSrc({this.src}) : super._();
  factory _PostmanCollectionCertificateSrc.fromJson(
    Map<String, dynamic> json,
  ) => _$PostmanCollectionCertificateSrcFromJson(json);

  @override
  final String? src;

  /// Create a copy of PostmanCollectionCertificateSrc
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCollectionCertificateSrcCopyWith<_PostmanCollectionCertificateSrc>
  get copyWith =>
      __$PostmanCollectionCertificateSrcCopyWithImpl<
        _PostmanCollectionCertificateSrc
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCollectionCertificateSrcToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCollectionCertificateSrc &&
            (identical(other.src, src) || other.src == src));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, src);
  }

  @override
  String toString() {
    return 'PostmanCollectionCertificateSrc(src: $src)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCollectionCertificateSrcCopyWith<$Res>
    implements $PostmanCollectionCertificateSrcCopyWith<$Res> {
  factory _$PostmanCollectionCertificateSrcCopyWith(
    _PostmanCollectionCertificateSrc value,
    $Res Function(_PostmanCollectionCertificateSrc) _then,
  ) = __$PostmanCollectionCertificateSrcCopyWithImpl;
  @override
  @useResult
  $Res call({String? src});
}

/// @nodoc
class __$PostmanCollectionCertificateSrcCopyWithImpl<$Res>
    implements _$PostmanCollectionCertificateSrcCopyWith<$Res> {
  __$PostmanCollectionCertificateSrcCopyWithImpl(this._self, this._then);

  final _PostmanCollectionCertificateSrc _self;
  final $Res Function(_PostmanCollectionCertificateSrc) _then;

  /// Create a copy of PostmanCollectionCertificateSrc
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? src = freezed}) {
    return _then(
      _PostmanCollectionCertificateSrc(
        src: freezed == src
            ? _self.src
            : src // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
mixin _$PostmanCollectionProxyConfig {
  String? get match;
  String? get host;
  int? get port;
  bool? get tunnel;
  bool? get disabled;

  /// Create a copy of PostmanCollectionProxyConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCollectionProxyConfigCopyWith<PostmanCollectionProxyConfig>
  get copyWith =>
      _$PostmanCollectionProxyConfigCopyWithImpl<PostmanCollectionProxyConfig>(
        this as PostmanCollectionProxyConfig,
        _$identity,
      );

  /// Serializes this PostmanCollectionProxyConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCollectionProxyConfig;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCollectionProxyConfig &&
            (identical(other.match, _this.match) ||
                other.match == _this.match) &&
            (identical(other.host, _this.host) || other.host == _this.host) &&
            (identical(other.port, _this.port) || other.port == _this.port) &&
            (identical(other.tunnel, _this.tunnel) ||
                other.tunnel == _this.tunnel) &&
            (identical(other.disabled, _this.disabled) ||
                other.disabled == _this.disabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCollectionProxyConfig;
    return Object.hash(
      runtimeType,
      _this.match,
      _this.host,
      _this.port,
      _this.tunnel,
      _this.disabled,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanCollectionProxyConfig;
    return 'PostmanCollectionProxyConfig(match: ${_this.match}, host: ${_this.host}, port: ${_this.port}, tunnel: ${_this.tunnel}, disabled: ${_this.disabled})';
  }
}

/// @nodoc
abstract mixin class $PostmanCollectionProxyConfigCopyWith<$Res> {
  factory $PostmanCollectionProxyConfigCopyWith(
    PostmanCollectionProxyConfig value,
    $Res Function(PostmanCollectionProxyConfig) _then,
  ) = _$PostmanCollectionProxyConfigCopyWithImpl;
  @useResult
  $Res call({
    String? match,
    String? host,
    int? port,
    bool? tunnel,
    bool? disabled,
  });
}

/// @nodoc
class _$PostmanCollectionProxyConfigCopyWithImpl<$Res>
    implements $PostmanCollectionProxyConfigCopyWith<$Res> {
  _$PostmanCollectionProxyConfigCopyWithImpl(this._self, this._then);

  final PostmanCollectionProxyConfig _self;
  final $Res Function(PostmanCollectionProxyConfig) _then;

  /// Create a copy of PostmanCollectionProxyConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? match = freezed,
    Object? host = freezed,
    Object? port = freezed,
    Object? tunnel = freezed,
    Object? disabled = freezed,
  }) {
    return _then(
      PostmanCollectionProxyConfig(
        match: freezed == match
            ? _self.match
            : match // ignore: cast_nullable_to_non_nullable
                  as String?,
        host: freezed == host
            ? _self.host
            : host // ignore: cast_nullable_to_non_nullable
                  as String?,
        port: freezed == port
            ? _self.port
            : port // ignore: cast_nullable_to_non_nullable
                  as int?,
        tunnel: freezed == tunnel
            ? _self.tunnel
            : tunnel // ignore: cast_nullable_to_non_nullable
                  as bool?,
        disabled: freezed == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanCollectionProxyConfig].
extension PostmanCollectionProxyConfigPatterns on PostmanCollectionProxyConfig {
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
    TResult Function(_PostmanCollectionProxyConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionProxyConfig() when $default != null:
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
    TResult Function(_PostmanCollectionProxyConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionProxyConfig():
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
    TResult? Function(_PostmanCollectionProxyConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionProxyConfig() when $default != null:
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
      String? match,
      String? host,
      int? port,
      bool? tunnel,
      bool? disabled,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionProxyConfig() when $default != null:
        return $default(
          _that.match,
          _that.host,
          _that.port,
          _that.tunnel,
          _that.disabled,
        );
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
      String? match,
      String? host,
      int? port,
      bool? tunnel,
      bool? disabled,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionProxyConfig():
        return $default(
          _that.match,
          _that.host,
          _that.port,
          _that.tunnel,
          _that.disabled,
        );
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
      String? match,
      String? host,
      int? port,
      bool? tunnel,
      bool? disabled,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionProxyConfig() when $default != null:
        return $default(
          _that.match,
          _that.host,
          _that.port,
          _that.tunnel,
          _that.disabled,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostmanCollectionProxyConfig extends PostmanCollectionProxyConfig {
  const _PostmanCollectionProxyConfig({
    this.match,
    this.host,
    this.port,
    this.tunnel,
    this.disabled,
  }) : super._();
  factory _PostmanCollectionProxyConfig.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionProxyConfigFromJson(json);

  @override
  final String? match;
  @override
  final String? host;
  @override
  final int? port;
  @override
  final bool? tunnel;
  @override
  final bool? disabled;

  /// Create a copy of PostmanCollectionProxyConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCollectionProxyConfigCopyWith<_PostmanCollectionProxyConfig>
  get copyWith =>
      __$PostmanCollectionProxyConfigCopyWithImpl<
        _PostmanCollectionProxyConfig
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCollectionProxyConfigToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCollectionProxyConfig &&
            (identical(other.match, match) || other.match == match) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.tunnel, tunnel) || other.tunnel == tunnel) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, match, host, port, tunnel, disabled);
  }

  @override
  String toString() {
    return 'PostmanCollectionProxyConfig(match: $match, host: $host, port: $port, tunnel: $tunnel, disabled: $disabled)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCollectionProxyConfigCopyWith<$Res>
    implements $PostmanCollectionProxyConfigCopyWith<$Res> {
  factory _$PostmanCollectionProxyConfigCopyWith(
    _PostmanCollectionProxyConfig value,
    $Res Function(_PostmanCollectionProxyConfig) _then,
  ) = __$PostmanCollectionProxyConfigCopyWithImpl;
  @override
  @useResult
  $Res call({
    String? match,
    String? host,
    int? port,
    bool? tunnel,
    bool? disabled,
  });
}

/// @nodoc
class __$PostmanCollectionProxyConfigCopyWithImpl<$Res>
    implements _$PostmanCollectionProxyConfigCopyWith<$Res> {
  __$PostmanCollectionProxyConfigCopyWithImpl(this._self, this._then);

  final _PostmanCollectionProxyConfig _self;
  final $Res Function(_PostmanCollectionProxyConfig) _then;

  /// Create a copy of PostmanCollectionProxyConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? match = freezed,
    Object? host = freezed,
    Object? port = freezed,
    Object? tunnel = freezed,
    Object? disabled = freezed,
  }) {
    return _then(
      _PostmanCollectionProxyConfig(
        match: freezed == match
            ? _self.match
            : match // ignore: cast_nullable_to_non_nullable
                  as String?,
        host: freezed == host
            ? _self.host
            : host // ignore: cast_nullable_to_non_nullable
                  as String?,
        port: freezed == port
            ? _self.port
            : port // ignore: cast_nullable_to_non_nullable
                  as int?,
        tunnel: freezed == tunnel
            ? _self.tunnel
            : tunnel // ignore: cast_nullable_to_non_nullable
                  as bool?,
        disabled: freezed == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
mixin _$PostmanCollectionHeader {
  String get key;
  String get value;
  String? get type;
  bool? get disabled;
  String? get description;

  /// Create a copy of PostmanCollectionHeader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCollectionHeaderCopyWith<PostmanCollectionHeader> get copyWith =>
      _$PostmanCollectionHeaderCopyWithImpl<PostmanCollectionHeader>(
        this as PostmanCollectionHeader,
        _$identity,
      );

  /// Serializes this PostmanCollectionHeader to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCollectionHeader;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCollectionHeader &&
            (identical(other.key, _this.key) || other.key == _this.key) &&
            (identical(other.value, _this.value) ||
                other.value == _this.value) &&
            (identical(other.type, _this.type) || other.type == _this.type) &&
            (identical(other.disabled, _this.disabled) ||
                other.disabled == _this.disabled) &&
            (identical(other.description, _this.description) ||
                other.description == _this.description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCollectionHeader;
    return Object.hash(
      runtimeType,
      _this.key,
      _this.value,
      _this.type,
      _this.disabled,
      _this.description,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanCollectionHeader;
    return 'PostmanCollectionHeader(key: ${_this.key}, value: ${_this.value}, type: ${_this.type}, disabled: ${_this.disabled}, description: ${_this.description})';
  }
}

/// @nodoc
abstract mixin class $PostmanCollectionHeaderCopyWith<$Res> {
  factory $PostmanCollectionHeaderCopyWith(
    PostmanCollectionHeader value,
    $Res Function(PostmanCollectionHeader) _then,
  ) = _$PostmanCollectionHeaderCopyWithImpl;
  @useResult
  $Res call({
    String key,
    String value,
    String? type,
    bool? disabled,
    String? description,
  });
}

/// @nodoc
class _$PostmanCollectionHeaderCopyWithImpl<$Res>
    implements $PostmanCollectionHeaderCopyWith<$Res> {
  _$PostmanCollectionHeaderCopyWithImpl(this._self, this._then);

  final PostmanCollectionHeader _self;
  final $Res Function(PostmanCollectionHeader) _then;

  /// Create a copy of PostmanCollectionHeader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
    Object? type = freezed,
    Object? disabled = freezed,
    Object? description = freezed,
  }) {
    return _then(
      PostmanCollectionHeader(
        key: null == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        value: null == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        disabled: freezed == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as bool?,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanCollectionHeader].
extension PostmanCollectionHeaderPatterns on PostmanCollectionHeader {
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
    TResult Function(_PostmanCollectionHeader value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionHeader() when $default != null:
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
    TResult Function(_PostmanCollectionHeader value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionHeader():
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
    TResult? Function(_PostmanCollectionHeader value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionHeader() when $default != null:
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
      String key,
      String value,
      String? type,
      bool? disabled,
      String? description,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionHeader() when $default != null:
        return $default(
          _that.key,
          _that.value,
          _that.type,
          _that.disabled,
          _that.description,
        );
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
      String key,
      String value,
      String? type,
      bool? disabled,
      String? description,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionHeader():
        return $default(
          _that.key,
          _that.value,
          _that.type,
          _that.disabled,
          _that.description,
        );
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
      String key,
      String value,
      String? type,
      bool? disabled,
      String? description,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollectionHeader() when $default != null:
        return $default(
          _that.key,
          _that.value,
          _that.type,
          _that.disabled,
          _that.description,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostmanCollectionHeader extends PostmanCollectionHeader {
  const _PostmanCollectionHeader({
    required this.key,
    required this.value,
    this.type,
    this.disabled,
    this.description,
  }) : super._();
  factory _PostmanCollectionHeader.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionHeaderFromJson(json);

  @override
  final String key;
  @override
  final String value;
  @override
  final String? type;
  @override
  final bool? disabled;
  @override
  final String? description;

  /// Create a copy of PostmanCollectionHeader
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCollectionHeaderCopyWith<_PostmanCollectionHeader> get copyWith =>
      __$PostmanCollectionHeaderCopyWithImpl<_PostmanCollectionHeader>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCollectionHeaderToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCollectionHeader &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, key, value, type, disabled, description);
  }

  @override
  String toString() {
    return 'PostmanCollectionHeader(key: $key, value: $value, type: $type, disabled: $disabled, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCollectionHeaderCopyWith<$Res>
    implements $PostmanCollectionHeaderCopyWith<$Res> {
  factory _$PostmanCollectionHeaderCopyWith(
    _PostmanCollectionHeader value,
    $Res Function(_PostmanCollectionHeader) _then,
  ) = __$PostmanCollectionHeaderCopyWithImpl;
  @override
  @useResult
  $Res call({
    String key,
    String value,
    String? type,
    bool? disabled,
    String? description,
  });
}

/// @nodoc
class __$PostmanCollectionHeaderCopyWithImpl<$Res>
    implements _$PostmanCollectionHeaderCopyWith<$Res> {
  __$PostmanCollectionHeaderCopyWithImpl(this._self, this._then);

  final _PostmanCollectionHeader _self;
  final $Res Function(_PostmanCollectionHeader) _then;

  /// Create a copy of PostmanCollectionHeader
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = null,
    Object? value = null,
    Object? type = freezed,
    Object? disabled = freezed,
    Object? description = freezed,
  }) {
    return _then(
      _PostmanCollectionHeader(
        key: null == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        value: null == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        disabled: freezed == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as bool?,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
