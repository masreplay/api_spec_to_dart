// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_api_components.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OpenApiComponents {
  @JsonKey(name: 'schemas')
  Map<String, OpenApiSchemas>? get schemas;
  @JsonKey(name: 'securitySchemes')
  Map<String, dynamic>? get securitySchemes;

  /// Create a copy of OpenApiComponents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenApiComponentsCopyWith<OpenApiComponents> get copyWith =>
      _$OpenApiComponentsCopyWithImpl<OpenApiComponents>(
        this as OpenApiComponents,
        _$identity,
      );

  /// Serializes this OpenApiComponents to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as OpenApiComponents;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenApiComponents &&
            const DeepCollectionEquality().equals(
              other.schemas,
              _this.schemas,
            ) &&
            const DeepCollectionEquality().equals(
              other.securitySchemes,
              _this.securitySchemes,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as OpenApiComponents;
    return Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_this.schemas),
      const DeepCollectionEquality().hash(_this.securitySchemes),
    );
  }

  @override
  String toString() {
    final _this = this as OpenApiComponents;
    return 'OpenApiComponents(schemas: ${_this.schemas}, securitySchemes: ${_this.securitySchemes})';
  }
}

/// @nodoc
abstract mixin class $OpenApiComponentsCopyWith<$Res> {
  factory $OpenApiComponentsCopyWith(
    OpenApiComponents value,
    $Res Function(OpenApiComponents) _then,
  ) = _$OpenApiComponentsCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'schemas') Map<String, OpenApiSchemas>? schemas,
    @JsonKey(name: 'securitySchemes') Map<String, dynamic>? securitySchemes,
  });
}

/// @nodoc
class _$OpenApiComponentsCopyWithImpl<$Res>
    implements $OpenApiComponentsCopyWith<$Res> {
  _$OpenApiComponentsCopyWithImpl(this._self, this._then);

  final OpenApiComponents _self;
  final $Res Function(OpenApiComponents) _then;

  /// Create a copy of OpenApiComponents
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? schemas = freezed, Object? securitySchemes = freezed}) {
    return _then(
      OpenApiComponents(
        schemas: freezed == schemas
            ? _self.schemas
            : schemas // ignore: cast_nullable_to_non_nullable
                  as Map<String, OpenApiSchemas>?,
        securitySchemes: freezed == securitySchemes
            ? _self.securitySchemes
            : securitySchemes // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [OpenApiComponents].
extension OpenApiComponentsPatterns on OpenApiComponents {
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
    TResult Function(_OpenApiComponents value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OpenApiComponents() when $default != null:
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
    TResult Function(_OpenApiComponents value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiComponents():
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
    TResult? Function(_OpenApiComponents value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiComponents() when $default != null:
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
      @JsonKey(name: 'schemas') Map<String, OpenApiSchemas>? schemas,
      @JsonKey(name: 'securitySchemes') Map<String, dynamic>? securitySchemes,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OpenApiComponents() when $default != null:
        return $default(_that.schemas, _that.securitySchemes);
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
      @JsonKey(name: 'schemas') Map<String, OpenApiSchemas>? schemas,
      @JsonKey(name: 'securitySchemes') Map<String, dynamic>? securitySchemes,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiComponents():
        return $default(_that.schemas, _that.securitySchemes);
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
      @JsonKey(name: 'schemas') Map<String, OpenApiSchemas>? schemas,
      @JsonKey(name: 'securitySchemes') Map<String, dynamic>? securitySchemes,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiComponents() when $default != null:
        return $default(_that.schemas, _that.securitySchemes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OpenApiComponents extends OpenApiComponents {
  const _OpenApiComponents({
    @JsonKey(name: 'schemas') Map<String, OpenApiSchemas>? schemas,
    @JsonKey(name: 'securitySchemes')
    required Map<String, dynamic>? securitySchemes,
  }) : _schemas = schemas,
       _securitySchemes = securitySchemes,
       super._();
  factory _OpenApiComponents.fromJson(Map<String, dynamic> json) =>
      _$OpenApiComponentsFromJson(json);

  final Map<String, OpenApiSchemas>? _schemas;
  @override
  @JsonKey(name: 'schemas')
  Map<String, OpenApiSchemas>? get schemas {
    final value = _schemas;
    if (value == null) return null;
    if (_schemas is EqualUnmodifiableMapView) return _schemas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _securitySchemes;
  @override
  @JsonKey(name: 'securitySchemes')
  Map<String, dynamic>? get securitySchemes {
    final value = _securitySchemes;
    if (value == null) return null;
    if (_securitySchemes is EqualUnmodifiableMapView) return _securitySchemes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of OpenApiComponents
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OpenApiComponentsCopyWith<_OpenApiComponents> get copyWith =>
      __$OpenApiComponentsCopyWithImpl<_OpenApiComponents>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OpenApiComponentsToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenApiComponents &&
            const DeepCollectionEquality().equals(other.schemas, _schemas) &&
            const DeepCollectionEquality().equals(
              other.securitySchemes,
              _securitySchemes,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_schemas),
      const DeepCollectionEquality().hash(_securitySchemes),
    );
  }

  @override
  String toString() {
    return 'OpenApiComponents(schemas: $schemas, securitySchemes: $securitySchemes)';
  }
}

/// @nodoc
abstract mixin class _$OpenApiComponentsCopyWith<$Res>
    implements $OpenApiComponentsCopyWith<$Res> {
  factory _$OpenApiComponentsCopyWith(
    _OpenApiComponents value,
    $Res Function(_OpenApiComponents) _then,
  ) = __$OpenApiComponentsCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'schemas') Map<String, OpenApiSchemas>? schemas,
    @JsonKey(name: 'securitySchemes') Map<String, dynamic>? securitySchemes,
  });
}

/// @nodoc
class __$OpenApiComponentsCopyWithImpl<$Res>
    implements _$OpenApiComponentsCopyWith<$Res> {
  __$OpenApiComponentsCopyWithImpl(this._self, this._then);

  final _OpenApiComponents _self;
  final $Res Function(_OpenApiComponents) _then;

  /// Create a copy of OpenApiComponents
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? schemas = freezed, Object? securitySchemes = freezed}) {
    return _then(
      _OpenApiComponents(
        schemas: freezed == schemas
            ? _self._schemas
            : schemas // ignore: cast_nullable_to_non_nullable
                  as Map<String, OpenApiSchemas>?,
        securitySchemes: freezed == securitySchemes
            ? _self._securitySchemes
            : securitySchemes // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
mixin _$OpenApiSchemas {
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'properties')
  Map<String, OpenApiSchema>? get properties;
  @JsonKey(name: 'type')
  String? get type;

  /// An alias component (`Animal: {$ref: Pet}`).
  @JsonKey(name: r'$ref')
  String? get ref;

  /// Array components: the item schema.
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'items')
  OpenApiSchema? get items;
  @JsonKey(name: 'format')
  String? get format;
  @JsonKey(name: 'required')
  List<String>? get required_;
  @JsonKey(name: 'enum')
  List<Object?>? get enum_;
  @JsonKey(name: 'const')
  Object? get const_;
  @JsonKey(name: 'title')
  String? get title;
  @JsonKey(name: 'description')
  String? get description;
  @JsonKey(name: 'x-enum-varnames')
  List<String>? get xEnumVarnames;

  /// `bool` or a schema (Swashbuckle emits `{}` for free-form objects and
  /// `{"type": ...}` for dictionaries).
  @JsonKey(name: 'additionalProperties')
  Object? get additionalProperties;
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'oneOf')
  List<OpenApiSchema>? get oneOf;
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'anyOf')
  List<OpenApiSchema>? get anyOf;
  @JsonKey(name: 'discriminator')
  OpenApiSchemaOneOfDiscriminator? get discriminator;

  /// Raw parts: `$ref`s or inline objects whose properties get merged.
  @JsonKey(name: 'allOf')
  List<Map<String, dynamic>>? get allOf;

  /// Create a copy of OpenApiSchemas
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenApiSchemasCopyWith<OpenApiSchemas> get copyWith =>
      _$OpenApiSchemasCopyWithImpl<OpenApiSchemas>(
        this as OpenApiSchemas,
        _$identity,
      );

  /// Serializes this OpenApiSchemas to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as OpenApiSchemas;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenApiSchemas &&
            const DeepCollectionEquality().equals(
              other.properties,
              _this.properties,
            ) &&
            (identical(other.type, _this.type) || other.type == _this.type) &&
            (identical(other.ref, _this.ref) || other.ref == _this.ref) &&
            (identical(other.items, _this.items) ||
                other.items == _this.items) &&
            (identical(other.format, _this.format) ||
                other.format == _this.format) &&
            const DeepCollectionEquality().equals(
              other.required_,
              _this.required_,
            ) &&
            const DeepCollectionEquality().equals(other.enum_, _this.enum_) &&
            const DeepCollectionEquality().equals(other.const_, _this.const_) &&
            (identical(other.title, _this.title) ||
                other.title == _this.title) &&
            (identical(other.description, _this.description) ||
                other.description == _this.description) &&
            const DeepCollectionEquality().equals(
              other.xEnumVarnames,
              _this.xEnumVarnames,
            ) &&
            const DeepCollectionEquality().equals(
              other.additionalProperties,
              _this.additionalProperties,
            ) &&
            const DeepCollectionEquality().equals(other.oneOf, _this.oneOf) &&
            const DeepCollectionEquality().equals(other.anyOf, _this.anyOf) &&
            (identical(other.discriminator, _this.discriminator) ||
                other.discriminator == _this.discriminator) &&
            const DeepCollectionEquality().equals(other.allOf, _this.allOf));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as OpenApiSchemas;
    return Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_this.properties),
      _this.type,
      _this.ref,
      _this.items,
      _this.format,
      const DeepCollectionEquality().hash(_this.required_),
      const DeepCollectionEquality().hash(_this.enum_),
      const DeepCollectionEquality().hash(_this.const_),
      _this.title,
      _this.description,
      const DeepCollectionEquality().hash(_this.xEnumVarnames),
      const DeepCollectionEquality().hash(_this.additionalProperties),
      const DeepCollectionEquality().hash(_this.oneOf),
      const DeepCollectionEquality().hash(_this.anyOf),
      _this.discriminator,
      const DeepCollectionEquality().hash(_this.allOf),
    );
  }

  @override
  String toString() {
    final _this = this as OpenApiSchemas;
    return 'OpenApiSchemas(properties: ${_this.properties}, type: ${_this.type}, ref: ${_this.ref}, items: ${_this.items}, format: ${_this.format}, required_: ${_this.required_}, enum_: ${_this.enum_}, const_: ${_this.const_}, title: ${_this.title}, description: ${_this.description}, xEnumVarnames: ${_this.xEnumVarnames}, additionalProperties: ${_this.additionalProperties}, oneOf: ${_this.oneOf}, anyOf: ${_this.anyOf}, discriminator: ${_this.discriminator}, allOf: ${_this.allOf})';
  }
}

/// @nodoc
abstract mixin class $OpenApiSchemasCopyWith<$Res> {
  factory $OpenApiSchemasCopyWith(
    OpenApiSchemas value,
    $Res Function(OpenApiSchemas) _then,
  ) = _$OpenApiSchemasCopyWithImpl;
  @useResult
  $Res call({
    @OpenApiSchemaJsonConverter()
    @JsonKey(name: 'properties')
    Map<String, OpenApiSchema>? properties,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: r'$ref') String? ref,
    @OpenApiSchemaJsonConverter() @JsonKey(name: 'items') OpenApiSchema? items,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'required') List<String>? required_,
    @JsonKey(name: 'enum') List<Object?>? enum_,
    @JsonKey(name: 'const') Object? const_,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'x-enum-varnames') List<String>? xEnumVarnames,
    @JsonKey(name: 'additionalProperties') Object? additionalProperties,
    @OpenApiSchemaJsonConverter()
    @JsonKey(name: 'oneOf')
    List<OpenApiSchema>? oneOf,
    @OpenApiSchemaJsonConverter()
    @JsonKey(name: 'anyOf')
    List<OpenApiSchema>? anyOf,
    @JsonKey(name: 'discriminator')
    OpenApiSchemaOneOfDiscriminator? discriminator,
    @JsonKey(name: 'allOf') List<Map<String, dynamic>>? allOf,
  });

  $OpenApiSchemaCopyWith<$Res>? get items;
  $OpenApiSchemaOneOfDiscriminatorCopyWith<$Res>? get discriminator;
}

/// @nodoc
class _$OpenApiSchemasCopyWithImpl<$Res>
    implements $OpenApiSchemasCopyWith<$Res> {
  _$OpenApiSchemasCopyWithImpl(this._self, this._then);

  final OpenApiSchemas _self;
  final $Res Function(OpenApiSchemas) _then;

  /// Create a copy of OpenApiSchemas
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? properties = freezed,
    Object? type = freezed,
    Object? ref = freezed,
    Object? items = freezed,
    Object? format = freezed,
    Object? required_ = freezed,
    Object? enum_ = freezed,
    Object? const_ = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? xEnumVarnames = freezed,
    Object? additionalProperties = freezed,
    Object? oneOf = freezed,
    Object? anyOf = freezed,
    Object? discriminator = freezed,
    Object? allOf = freezed,
  }) {
    return _then(
      OpenApiSchemas(
        properties: freezed == properties
            ? _self.properties
            : properties // ignore: cast_nullable_to_non_nullable
                  as Map<String, OpenApiSchema>?,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        ref: freezed == ref
            ? _self.ref
            : ref // ignore: cast_nullable_to_non_nullable
                  as String?,
        items: freezed == items
            ? _self.items
            : items // ignore: cast_nullable_to_non_nullable
                  as OpenApiSchema?,
        format: freezed == format
            ? _self.format
            : format // ignore: cast_nullable_to_non_nullable
                  as String?,
        required_: freezed == required_
            ? _self.required_
            : required_ // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        enum_: freezed == enum_
            ? _self.enum_
            : enum_ // ignore: cast_nullable_to_non_nullable
                  as List<Object?>?,
        const_: freezed == const_ ? _self.const_ : const_,
        title: freezed == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        xEnumVarnames: freezed == xEnumVarnames
            ? _self.xEnumVarnames
            : xEnumVarnames // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        additionalProperties: freezed == additionalProperties
            ? _self.additionalProperties
            : additionalProperties,
        oneOf: freezed == oneOf
            ? _self.oneOf
            : oneOf // ignore: cast_nullable_to_non_nullable
                  as List<OpenApiSchema>?,
        anyOf: freezed == anyOf
            ? _self.anyOf
            : anyOf // ignore: cast_nullable_to_non_nullable
                  as List<OpenApiSchema>?,
        discriminator: freezed == discriminator
            ? _self.discriminator
            : discriminator // ignore: cast_nullable_to_non_nullable
                  as OpenApiSchemaOneOfDiscriminator?,
        allOf: freezed == allOf
            ? _self.allOf
            : allOf // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>?,
      ),
    );
  }

  /// Create a copy of OpenApiSchemas
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiSchemaCopyWith<$Res>? get items {
    if (_self.items == null) {
      return null;
    }

    return $OpenApiSchemaCopyWith<$Res>(_self.items!, (value) {
      return _then(_self.copyWith(items: value));
    });
  }

  /// Create a copy of OpenApiSchemas
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiSchemaOneOfDiscriminatorCopyWith<$Res>? get discriminator {
    if (_self.discriminator == null) {
      return null;
    }

    return $OpenApiSchemaOneOfDiscriminatorCopyWith<$Res>(
      _self.discriminator!,
      (value) {
        return _then(_self.copyWith(discriminator: value));
      },
    );
  }
}

/// Adds pattern-matching-related methods to [OpenApiSchemas].
extension OpenApiSchemasPatterns on OpenApiSchemas {
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
    TResult Function(_OpenApiSchemas value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OpenApiSchemas() when $default != null:
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
    TResult Function(_OpenApiSchemas value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiSchemas():
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
    TResult? Function(_OpenApiSchemas value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiSchemas() when $default != null:
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
      @OpenApiSchemaJsonConverter()
      @JsonKey(name: 'properties')
      Map<String, OpenApiSchema>? properties,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: r'$ref') String? ref,
      @OpenApiSchemaJsonConverter()
      @JsonKey(name: 'items')
      OpenApiSchema? items,
      @JsonKey(name: 'format') String? format,
      @JsonKey(name: 'required') List<String>? required_,
      @JsonKey(name: 'enum') List<Object?>? enum_,
      @JsonKey(name: 'const') Object? const_,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'x-enum-varnames') List<String>? xEnumVarnames,
      @JsonKey(name: 'additionalProperties') Object? additionalProperties,
      @OpenApiSchemaJsonConverter()
      @JsonKey(name: 'oneOf')
      List<OpenApiSchema>? oneOf,
      @OpenApiSchemaJsonConverter()
      @JsonKey(name: 'anyOf')
      List<OpenApiSchema>? anyOf,
      @JsonKey(name: 'discriminator')
      OpenApiSchemaOneOfDiscriminator? discriminator,
      @JsonKey(name: 'allOf') List<Map<String, dynamic>>? allOf,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OpenApiSchemas() when $default != null:
        return $default(
          _that.properties,
          _that.type,
          _that.ref,
          _that.items,
          _that.format,
          _that.required_,
          _that.enum_,
          _that.const_,
          _that.title,
          _that.description,
          _that.xEnumVarnames,
          _that.additionalProperties,
          _that.oneOf,
          _that.anyOf,
          _that.discriminator,
          _that.allOf,
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
      @OpenApiSchemaJsonConverter()
      @JsonKey(name: 'properties')
      Map<String, OpenApiSchema>? properties,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: r'$ref') String? ref,
      @OpenApiSchemaJsonConverter()
      @JsonKey(name: 'items')
      OpenApiSchema? items,
      @JsonKey(name: 'format') String? format,
      @JsonKey(name: 'required') List<String>? required_,
      @JsonKey(name: 'enum') List<Object?>? enum_,
      @JsonKey(name: 'const') Object? const_,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'x-enum-varnames') List<String>? xEnumVarnames,
      @JsonKey(name: 'additionalProperties') Object? additionalProperties,
      @OpenApiSchemaJsonConverter()
      @JsonKey(name: 'oneOf')
      List<OpenApiSchema>? oneOf,
      @OpenApiSchemaJsonConverter()
      @JsonKey(name: 'anyOf')
      List<OpenApiSchema>? anyOf,
      @JsonKey(name: 'discriminator')
      OpenApiSchemaOneOfDiscriminator? discriminator,
      @JsonKey(name: 'allOf') List<Map<String, dynamic>>? allOf,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiSchemas():
        return $default(
          _that.properties,
          _that.type,
          _that.ref,
          _that.items,
          _that.format,
          _that.required_,
          _that.enum_,
          _that.const_,
          _that.title,
          _that.description,
          _that.xEnumVarnames,
          _that.additionalProperties,
          _that.oneOf,
          _that.anyOf,
          _that.discriminator,
          _that.allOf,
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
      @OpenApiSchemaJsonConverter()
      @JsonKey(name: 'properties')
      Map<String, OpenApiSchema>? properties,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: r'$ref') String? ref,
      @OpenApiSchemaJsonConverter()
      @JsonKey(name: 'items')
      OpenApiSchema? items,
      @JsonKey(name: 'format') String? format,
      @JsonKey(name: 'required') List<String>? required_,
      @JsonKey(name: 'enum') List<Object?>? enum_,
      @JsonKey(name: 'const') Object? const_,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'x-enum-varnames') List<String>? xEnumVarnames,
      @JsonKey(name: 'additionalProperties') Object? additionalProperties,
      @OpenApiSchemaJsonConverter()
      @JsonKey(name: 'oneOf')
      List<OpenApiSchema>? oneOf,
      @OpenApiSchemaJsonConverter()
      @JsonKey(name: 'anyOf')
      List<OpenApiSchema>? anyOf,
      @JsonKey(name: 'discriminator')
      OpenApiSchemaOneOfDiscriminator? discriminator,
      @JsonKey(name: 'allOf') List<Map<String, dynamic>>? allOf,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiSchemas() when $default != null:
        return $default(
          _that.properties,
          _that.type,
          _that.ref,
          _that.items,
          _that.format,
          _that.required_,
          _that.enum_,
          _that.const_,
          _that.title,
          _that.description,
          _that.xEnumVarnames,
          _that.additionalProperties,
          _that.oneOf,
          _that.anyOf,
          _that.discriminator,
          _that.allOf,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OpenApiSchemas extends OpenApiSchemas {
  const _OpenApiSchemas({
    @OpenApiSchemaJsonConverter()
    @JsonKey(name: 'properties')
    required Map<String, OpenApiSchema>? properties,
    @JsonKey(name: 'type') this.type,
    @JsonKey(name: r'$ref') this.ref,
    @OpenApiSchemaJsonConverter() @JsonKey(name: 'items') this.items,
    @JsonKey(name: 'format') this.format,
    @JsonKey(name: 'required') List<String>? required_,
    @JsonKey(name: 'enum') List<Object?>? enum_,
    @JsonKey(name: 'const') this.const_,
    @JsonKey(name: 'title') this.title,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'x-enum-varnames') List<String>? xEnumVarnames,
    @JsonKey(name: 'additionalProperties') this.additionalProperties,
    @OpenApiSchemaJsonConverter()
    @JsonKey(name: 'oneOf')
    List<OpenApiSchema>? oneOf,
    @OpenApiSchemaJsonConverter()
    @JsonKey(name: 'anyOf')
    List<OpenApiSchema>? anyOf,
    @JsonKey(name: 'discriminator') this.discriminator,
    @JsonKey(name: 'allOf') List<Map<String, dynamic>>? allOf,
  }) : _properties = properties,
       _required_ = required_,
       _enum_ = enum_,
       _xEnumVarnames = xEnumVarnames,
       _oneOf = oneOf,
       _anyOf = anyOf,
       _allOf = allOf,
       super._();
  factory _OpenApiSchemas.fromJson(Map<String, dynamic> json) =>
      _$OpenApiSchemasFromJson(json);

  final Map<String, OpenApiSchema>? _properties;
  @override
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'properties')
  Map<String, OpenApiSchema>? get properties {
    final value = _properties;
    if (value == null) return null;
    if (_properties is EqualUnmodifiableMapView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'type')
  final String? type;

  /// An alias component (`Animal: {$ref: Pet}`).
  @override
  @JsonKey(name: r'$ref')
  final String? ref;

  /// Array components: the item schema.
  @override
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'items')
  final OpenApiSchema? items;
  @override
  @JsonKey(name: 'format')
  final String? format;
  final List<String>? _required_;
  @override
  @JsonKey(name: 'required')
  List<String>? get required_ {
    final value = _required_;
    if (value == null) return null;
    if (_required_ is EqualUnmodifiableListView) return _required_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Object?>? _enum_;
  @override
  @JsonKey(name: 'enum')
  List<Object?>? get enum_ {
    final value = _enum_;
    if (value == null) return null;
    if (_enum_ is EqualUnmodifiableListView) return _enum_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'const')
  final Object? const_;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  final List<String>? _xEnumVarnames;
  @override
  @JsonKey(name: 'x-enum-varnames')
  List<String>? get xEnumVarnames {
    final value = _xEnumVarnames;
    if (value == null) return null;
    if (_xEnumVarnames is EqualUnmodifiableListView) return _xEnumVarnames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// `bool` or a schema (Swashbuckle emits `{}` for free-form objects and
  /// `{"type": ...}` for dictionaries).
  @override
  @JsonKey(name: 'additionalProperties')
  final Object? additionalProperties;
  final List<OpenApiSchema>? _oneOf;
  @override
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'oneOf')
  List<OpenApiSchema>? get oneOf {
    final value = _oneOf;
    if (value == null) return null;
    if (_oneOf is EqualUnmodifiableListView) return _oneOf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OpenApiSchema>? _anyOf;
  @override
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'anyOf')
  List<OpenApiSchema>? get anyOf {
    final value = _anyOf;
    if (value == null) return null;
    if (_anyOf is EqualUnmodifiableListView) return _anyOf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'discriminator')
  final OpenApiSchemaOneOfDiscriminator? discriminator;

  /// Raw parts: `$ref`s or inline objects whose properties get merged.
  final List<Map<String, dynamic>>? _allOf;

  /// Raw parts: `$ref`s or inline objects whose properties get merged.
  @override
  @JsonKey(name: 'allOf')
  List<Map<String, dynamic>>? get allOf {
    final value = _allOf;
    if (value == null) return null;
    if (_allOf is EqualUnmodifiableListView) return _allOf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of OpenApiSchemas
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OpenApiSchemasCopyWith<_OpenApiSchemas> get copyWith =>
      __$OpenApiSchemasCopyWithImpl<_OpenApiSchemas>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OpenApiSchemasToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenApiSchemas &&
            const DeepCollectionEquality().equals(
              other.properties,
              _properties,
            ) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.ref, ref) || other.ref == ref) &&
            (identical(other.items, items) || other.items == items) &&
            (identical(other.format, format) || other.format == format) &&
            const DeepCollectionEquality().equals(
              other.required_,
              _required_,
            ) &&
            const DeepCollectionEquality().equals(other.enum_, _enum_) &&
            const DeepCollectionEquality().equals(other.const_, const_) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(
              other.xEnumVarnames,
              _xEnumVarnames,
            ) &&
            const DeepCollectionEquality().equals(
              other.additionalProperties,
              additionalProperties,
            ) &&
            const DeepCollectionEquality().equals(other.oneOf, _oneOf) &&
            const DeepCollectionEquality().equals(other.anyOf, _anyOf) &&
            (identical(other.discriminator, discriminator) ||
                other.discriminator == discriminator) &&
            const DeepCollectionEquality().equals(other.allOf, _allOf));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_properties),
      type,
      ref,
      items,
      format,
      const DeepCollectionEquality().hash(_required_),
      const DeepCollectionEquality().hash(_enum_),
      const DeepCollectionEquality().hash(const_),
      title,
      description,
      const DeepCollectionEquality().hash(_xEnumVarnames),
      const DeepCollectionEquality().hash(additionalProperties),
      const DeepCollectionEquality().hash(_oneOf),
      const DeepCollectionEquality().hash(_anyOf),
      discriminator,
      const DeepCollectionEquality().hash(_allOf),
    );
  }

  @override
  String toString() {
    return 'OpenApiSchemas(properties: $properties, type: $type, ref: $ref, items: $items, format: $format, required_: $required_, enum_: $enum_, const_: $const_, title: $title, description: $description, xEnumVarnames: $xEnumVarnames, additionalProperties: $additionalProperties, oneOf: $oneOf, anyOf: $anyOf, discriminator: $discriminator, allOf: $allOf)';
  }
}

/// @nodoc
abstract mixin class _$OpenApiSchemasCopyWith<$Res>
    implements $OpenApiSchemasCopyWith<$Res> {
  factory _$OpenApiSchemasCopyWith(
    _OpenApiSchemas value,
    $Res Function(_OpenApiSchemas) _then,
  ) = __$OpenApiSchemasCopyWithImpl;
  @override
  @useResult
  $Res call({
    @OpenApiSchemaJsonConverter()
    @JsonKey(name: 'properties')
    Map<String, OpenApiSchema>? properties,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: r'$ref') String? ref,
    @OpenApiSchemaJsonConverter() @JsonKey(name: 'items') OpenApiSchema? items,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'required') List<String>? required_,
    @JsonKey(name: 'enum') List<Object?>? enum_,
    @JsonKey(name: 'const') Object? const_,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'x-enum-varnames') List<String>? xEnumVarnames,
    @JsonKey(name: 'additionalProperties') Object? additionalProperties,
    @OpenApiSchemaJsonConverter()
    @JsonKey(name: 'oneOf')
    List<OpenApiSchema>? oneOf,
    @OpenApiSchemaJsonConverter()
    @JsonKey(name: 'anyOf')
    List<OpenApiSchema>? anyOf,
    @JsonKey(name: 'discriminator')
    OpenApiSchemaOneOfDiscriminator? discriminator,
    @JsonKey(name: 'allOf') List<Map<String, dynamic>>? allOf,
  });

  @override
  $OpenApiSchemaCopyWith<$Res>? get items;
  @override
  $OpenApiSchemaOneOfDiscriminatorCopyWith<$Res>? get discriminator;
}

/// @nodoc
class __$OpenApiSchemasCopyWithImpl<$Res>
    implements _$OpenApiSchemasCopyWith<$Res> {
  __$OpenApiSchemasCopyWithImpl(this._self, this._then);

  final _OpenApiSchemas _self;
  final $Res Function(_OpenApiSchemas) _then;

  /// Create a copy of OpenApiSchemas
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? properties = freezed,
    Object? type = freezed,
    Object? ref = freezed,
    Object? items = freezed,
    Object? format = freezed,
    Object? required_ = freezed,
    Object? enum_ = freezed,
    Object? const_ = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? xEnumVarnames = freezed,
    Object? additionalProperties = freezed,
    Object? oneOf = freezed,
    Object? anyOf = freezed,
    Object? discriminator = freezed,
    Object? allOf = freezed,
  }) {
    return _then(
      _OpenApiSchemas(
        properties: freezed == properties
            ? _self._properties
            : properties // ignore: cast_nullable_to_non_nullable
                  as Map<String, OpenApiSchema>?,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        ref: freezed == ref
            ? _self.ref
            : ref // ignore: cast_nullable_to_non_nullable
                  as String?,
        items: freezed == items
            ? _self.items
            : items // ignore: cast_nullable_to_non_nullable
                  as OpenApiSchema?,
        format: freezed == format
            ? _self.format
            : format // ignore: cast_nullable_to_non_nullable
                  as String?,
        required_: freezed == required_
            ? _self._required_
            : required_ // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        enum_: freezed == enum_
            ? _self._enum_
            : enum_ // ignore: cast_nullable_to_non_nullable
                  as List<Object?>?,
        const_: freezed == const_ ? _self.const_ : const_,
        title: freezed == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        xEnumVarnames: freezed == xEnumVarnames
            ? _self._xEnumVarnames
            : xEnumVarnames // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        additionalProperties: freezed == additionalProperties
            ? _self.additionalProperties
            : additionalProperties,
        oneOf: freezed == oneOf
            ? _self._oneOf
            : oneOf // ignore: cast_nullable_to_non_nullable
                  as List<OpenApiSchema>?,
        anyOf: freezed == anyOf
            ? _self._anyOf
            : anyOf // ignore: cast_nullable_to_non_nullable
                  as List<OpenApiSchema>?,
        discriminator: freezed == discriminator
            ? _self.discriminator
            : discriminator // ignore: cast_nullable_to_non_nullable
                  as OpenApiSchemaOneOfDiscriminator?,
        allOf: freezed == allOf
            ? _self._allOf
            : allOf // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>?,
      ),
    );
  }

  /// Create a copy of OpenApiSchemas
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiSchemaCopyWith<$Res>? get items {
    if (_self.items == null) {
      return null;
    }

    return $OpenApiSchemaCopyWith<$Res>(_self.items!, (value) {
      return _then(_self.copyWith(items: value));
    });
  }

  /// Create a copy of OpenApiSchemas
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiSchemaOneOfDiscriminatorCopyWith<$Res>? get discriminator {
    if (_self.discriminator == null) {
      return null;
    }

    return $OpenApiSchemaOneOfDiscriminatorCopyWith<$Res>(
      _self.discriminator!,
      (value) {
        return _then(_self.copyWith(discriminator: value));
      },
    );
  }
}
