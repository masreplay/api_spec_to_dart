// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanInfo {
  /// name
  @JsonKey(name: PostmanInfo.nameKey_)
  String get name;

  /// postmanId
  @JsonKey(name: PostmanInfo.postmanIdKey_)
  String? get postmanId;

  /// description
  @JsonKey(name: PostmanInfo.descriptionKey_)
  PostmanDescription? get description;

  /// version
  @JsonKey(name: PostmanInfo.versionKey_)
  PostmanVersion? get version;

  /// schema
  @JsonKey(name: PostmanInfo.schemaKey_)
  String get schema;

  /// Create a copy of PostmanInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanInfoCopyWith<PostmanInfo> get copyWith =>
      _$PostmanInfoCopyWithImpl<PostmanInfo>(this as PostmanInfo, _$identity);

  /// Serializes this PostmanInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanInfo;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanInfo &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.postmanId, _this.postmanId) ||
                other.postmanId == _this.postmanId) &&
            (identical(other.description, _this.description) ||
                other.description == _this.description) &&
            (identical(other.version, _this.version) ||
                other.version == _this.version) &&
            (identical(other.schema, _this.schema) ||
                other.schema == _this.schema));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanInfo;
    return Object.hash(
      runtimeType,
      _this.name,
      _this.postmanId,
      _this.description,
      _this.version,
      _this.schema,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanInfo;
    return 'PostmanInfo(name: ${_this.name}, postmanId: ${_this.postmanId}, description: ${_this.description}, version: ${_this.version}, schema: ${_this.schema})';
  }
}

/// @nodoc
abstract mixin class $PostmanInfoCopyWith<$Res> {
  factory $PostmanInfoCopyWith(
    PostmanInfo value,
    $Res Function(PostmanInfo) _then,
  ) = _$PostmanInfoCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanInfo.nameKey_) String name,
    @JsonKey(name: PostmanInfo.postmanIdKey_) String? postmanId,
    @JsonKey(name: PostmanInfo.descriptionKey_) PostmanDescription? description,
    @JsonKey(name: PostmanInfo.versionKey_) PostmanVersion? version,
    @JsonKey(name: PostmanInfo.schemaKey_) String schema,
  });
}

/// @nodoc
class _$PostmanInfoCopyWithImpl<$Res> implements $PostmanInfoCopyWith<$Res> {
  _$PostmanInfoCopyWithImpl(this._self, this._then);

  final PostmanInfo _self;
  final $Res Function(PostmanInfo) _then;

  /// Create a copy of PostmanInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? postmanId = freezed,
    Object? description = freezed,
    Object? version = freezed,
    Object? schema = null,
  }) {
    return _then(
      PostmanInfo(
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        postmanId: freezed == postmanId
            ? _self.postmanId
            : postmanId // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as PostmanDescription?,
        version: freezed == version
            ? _self.version
            : version // ignore: cast_nullable_to_non_nullable
                  as PostmanVersion?,
        schema: null == schema
            ? _self.schema
            : schema // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanInfo].
extension PostmanInfoPatterns on PostmanInfo {
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
    TResult Function(_PostmanInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanInfo() when $default != null:
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
    TResult Function(_PostmanInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanInfo():
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
    TResult? Function(_PostmanInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanInfo() when $default != null:
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
      @JsonKey(name: PostmanInfo.nameKey_) String name,
      @JsonKey(name: PostmanInfo.postmanIdKey_) String? postmanId,
      @JsonKey(name: PostmanInfo.descriptionKey_)
      PostmanDescription? description,
      @JsonKey(name: PostmanInfo.versionKey_) PostmanVersion? version,
      @JsonKey(name: PostmanInfo.schemaKey_) String schema,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanInfo() when $default != null:
        return $default(
          _that.name,
          _that.postmanId,
          _that.description,
          _that.version,
          _that.schema,
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
      @JsonKey(name: PostmanInfo.nameKey_) String name,
      @JsonKey(name: PostmanInfo.postmanIdKey_) String? postmanId,
      @JsonKey(name: PostmanInfo.descriptionKey_)
      PostmanDescription? description,
      @JsonKey(name: PostmanInfo.versionKey_) PostmanVersion? version,
      @JsonKey(name: PostmanInfo.schemaKey_) String schema,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanInfo():
        return $default(
          _that.name,
          _that.postmanId,
          _that.description,
          _that.version,
          _that.schema,
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
      @JsonKey(name: PostmanInfo.nameKey_) String name,
      @JsonKey(name: PostmanInfo.postmanIdKey_) String? postmanId,
      @JsonKey(name: PostmanInfo.descriptionKey_)
      PostmanDescription? description,
      @JsonKey(name: PostmanInfo.versionKey_) PostmanVersion? version,
      @JsonKey(name: PostmanInfo.schemaKey_) String schema,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanInfo() when $default != null:
        return $default(
          _that.name,
          _that.postmanId,
          _that.description,
          _that.version,
          _that.schema,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanInfo extends PostmanInfo {
  const _PostmanInfo({
    @JsonKey(name: PostmanInfo.nameKey_) required this.name,
    @JsonKey(name: PostmanInfo.postmanIdKey_) this.postmanId,
    @JsonKey(name: PostmanInfo.descriptionKey_) this.description,
    @JsonKey(name: PostmanInfo.versionKey_) this.version,
    @JsonKey(name: PostmanInfo.schemaKey_) required this.schema,
  }) : super._();
  factory _PostmanInfo.fromJson(Map<String, dynamic> json) =>
      _$PostmanInfoFromJson(json);

  /// name
  @override
  @JsonKey(name: PostmanInfo.nameKey_)
  final String name;

  /// postmanId
  @override
  @JsonKey(name: PostmanInfo.postmanIdKey_)
  final String? postmanId;

  /// description
  @override
  @JsonKey(name: PostmanInfo.descriptionKey_)
  final PostmanDescription? description;

  /// version
  @override
  @JsonKey(name: PostmanInfo.versionKey_)
  final PostmanVersion? version;

  /// schema
  @override
  @JsonKey(name: PostmanInfo.schemaKey_)
  final String schema;

  /// Create a copy of PostmanInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanInfoCopyWith<_PostmanInfo> get copyWith =>
      __$PostmanInfoCopyWithImpl<_PostmanInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanInfoToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanInfo &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.postmanId, postmanId) ||
                other.postmanId == postmanId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.schema, schema) || other.schema == schema));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      name,
      postmanId,
      description,
      version,
      schema,
    );
  }

  @override
  String toString() {
    return 'PostmanInfo(name: $name, postmanId: $postmanId, description: $description, version: $version, schema: $schema)';
  }
}

/// @nodoc
abstract mixin class _$PostmanInfoCopyWith<$Res>
    implements $PostmanInfoCopyWith<$Res> {
  factory _$PostmanInfoCopyWith(
    _PostmanInfo value,
    $Res Function(_PostmanInfo) _then,
  ) = __$PostmanInfoCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanInfo.nameKey_) String name,
    @JsonKey(name: PostmanInfo.postmanIdKey_) String? postmanId,
    @JsonKey(name: PostmanInfo.descriptionKey_) PostmanDescription? description,
    @JsonKey(name: PostmanInfo.versionKey_) PostmanVersion? version,
    @JsonKey(name: PostmanInfo.schemaKey_) String schema,
  });
}

/// @nodoc
class __$PostmanInfoCopyWithImpl<$Res> implements _$PostmanInfoCopyWith<$Res> {
  __$PostmanInfoCopyWithImpl(this._self, this._then);

  final _PostmanInfo _self;
  final $Res Function(_PostmanInfo) _then;

  /// Create a copy of PostmanInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? postmanId = freezed,
    Object? description = freezed,
    Object? version = freezed,
    Object? schema = null,
  }) {
    return _then(
      _PostmanInfo(
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        postmanId: freezed == postmanId
            ? _self.postmanId
            : postmanId // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as PostmanDescription?,
        version: freezed == version
            ? _self.version
            : version // ignore: cast_nullable_to_non_nullable
                  as PostmanVersion?,
        schema: null == schema
            ? _self.schema
            : schema // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}
