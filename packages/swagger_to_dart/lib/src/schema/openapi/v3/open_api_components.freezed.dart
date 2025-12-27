// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_api_components.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

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
          this as OpenApiComponents, _$identity);

  /// Serializes this OpenApiComponents to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenApiComponents &&
            const DeepCollectionEquality().equals(other.schemas, schemas) &&
            const DeepCollectionEquality()
                .equals(other.securitySchemes, securitySchemes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(schemas),
      const DeepCollectionEquality().hash(securitySchemes));

  @override
  String toString() {
    return 'OpenApiComponents(schemas: $schemas, securitySchemes: $securitySchemes)';
  }
}

/// @nodoc
abstract mixin class $OpenApiComponentsCopyWith<$Res> {
  factory $OpenApiComponentsCopyWith(
          OpenApiComponents value, $Res Function(OpenApiComponents) _then) =
      _$OpenApiComponentsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'schemas') Map<String, OpenApiSchemas>? schemas,
      @JsonKey(name: 'securitySchemes') Map<String, dynamic>? securitySchemes});
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
  $Res call({
    Object? schemas = freezed,
    Object? securitySchemes = freezed,
  }) {
    return _then(_self.copyWith(
      schemas: freezed == schemas
          ? _self.schemas
          : schemas // ignore: cast_nullable_to_non_nullable
              as Map<String, OpenApiSchemas>?,
      securitySchemes: freezed == securitySchemes
          ? _self.securitySchemes
          : securitySchemes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
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
            @JsonKey(name: 'securitySchemes')
            Map<String, dynamic>? securitySchemes)?
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
            @JsonKey(name: 'securitySchemes')
            Map<String, dynamic>? securitySchemes)
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
            @JsonKey(name: 'securitySchemes')
            Map<String, dynamic>? securitySchemes)?
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
  const _OpenApiComponents(
      {@JsonKey(name: 'schemas') final Map<String, OpenApiSchemas>? schemas,
      @JsonKey(name: 'securitySchemes')
      required final Map<String, dynamic>? securitySchemes})
      : _schemas = schemas,
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
    return _$OpenApiComponentsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenApiComponents &&
            const DeepCollectionEquality().equals(other._schemas, _schemas) &&
            const DeepCollectionEquality()
                .equals(other._securitySchemes, _securitySchemes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_schemas),
      const DeepCollectionEquality().hash(_securitySchemes));

  @override
  String toString() {
    return 'OpenApiComponents(schemas: $schemas, securitySchemes: $securitySchemes)';
  }
}

/// @nodoc
abstract mixin class _$OpenApiComponentsCopyWith<$Res>
    implements $OpenApiComponentsCopyWith<$Res> {
  factory _$OpenApiComponentsCopyWith(
          _OpenApiComponents value, $Res Function(_OpenApiComponents) _then) =
      __$OpenApiComponentsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'schemas') Map<String, OpenApiSchemas>? schemas,
      @JsonKey(name: 'securitySchemes') Map<String, dynamic>? securitySchemes});
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
  $Res call({
    Object? schemas = freezed,
    Object? securitySchemes = freezed,
  }) {
    return _then(_OpenApiComponents(
      schemas: freezed == schemas
          ? _self._schemas
          : schemas // ignore: cast_nullable_to_non_nullable
              as Map<String, OpenApiSchemas>?,
      securitySchemes: freezed == securitySchemes
          ? _self._securitySchemes
          : securitySchemes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$OpenApiSchemas {
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'properties')
  Map<String, OpenApiSchema>? get properties;
  @JsonKey(name: 'type')
  String get type;
  @JsonKey(name: 'required')
  List<String>? get required_;
  @JsonKey(name: 'enum')
  List<Object>? get enum_;
  @JsonKey(name: 'const')
  Object? get const_;
  @JsonKey(name: 'title')
  String? get title;
  @JsonKey(name: 'description')
  String? get description;
  @JsonKey(name: 'x-enum-varnames')
  List<String>? get xEnumVarnames;
  @JsonKey(name: 'additionalProperties')
  bool? get additionalProperties;
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'oneOf')
  List<OpenApiSchema>? get oneOf;
  @JsonKey(name: 'discriminator')
  OpenApiSchemaOneOfDiscriminator? get discriminator;

  /// Create a copy of OpenApiSchemas
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenApiSchemasCopyWith<OpenApiSchemas> get copyWith =>
      _$OpenApiSchemasCopyWithImpl<OpenApiSchemas>(
          this as OpenApiSchemas, _$identity);

  /// Serializes this OpenApiSchemas to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenApiSchemas &&
            const DeepCollectionEquality()
                .equals(other.properties, properties) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.required_, required_) &&
            const DeepCollectionEquality().equals(other.enum_, enum_) &&
            const DeepCollectionEquality().equals(other.const_, const_) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other.xEnumVarnames, xEnumVarnames) &&
            (identical(other.additionalProperties, additionalProperties) ||
                other.additionalProperties == additionalProperties) &&
            const DeepCollectionEquality().equals(other.oneOf, oneOf) &&
            (identical(other.discriminator, discriminator) ||
                other.discriminator == discriminator));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(properties),
      type,
      const DeepCollectionEquality().hash(required_),
      const DeepCollectionEquality().hash(enum_),
      const DeepCollectionEquality().hash(const_),
      title,
      description,
      const DeepCollectionEquality().hash(xEnumVarnames),
      additionalProperties,
      const DeepCollectionEquality().hash(oneOf),
      discriminator);

  @override
  String toString() {
    return 'OpenApiSchemas(properties: $properties, type: $type, required_: $required_, enum_: $enum_, const_: $const_, title: $title, description: $description, xEnumVarnames: $xEnumVarnames, additionalProperties: $additionalProperties, oneOf: $oneOf, discriminator: $discriminator)';
  }
}

/// @nodoc
abstract mixin class $OpenApiSchemasCopyWith<$Res> {
  factory $OpenApiSchemasCopyWith(
          OpenApiSchemas value, $Res Function(OpenApiSchemas) _then) =
      _$OpenApiSchemasCopyWithImpl;
  @useResult
  $Res call(
      {@OpenApiSchemaJsonConverter()
      @JsonKey(name: 'properties')
      Map<String, OpenApiSchema>? properties,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'required') List<String>? required_,
      @JsonKey(name: 'enum') List<Object>? enum_,
      @JsonKey(name: 'const') Object? const_,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'x-enum-varnames') List<String>? xEnumVarnames,
      @JsonKey(name: 'additionalProperties') bool? additionalProperties,
      @OpenApiSchemaJsonConverter()
      @JsonKey(name: 'oneOf')
      List<OpenApiSchema>? oneOf,
      @JsonKey(name: 'discriminator')
      OpenApiSchemaOneOfDiscriminator? discriminator});

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
    Object? type = null,
    Object? required_ = freezed,
    Object? enum_ = freezed,
    Object? const_ = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? xEnumVarnames = freezed,
    Object? additionalProperties = freezed,
    Object? oneOf = freezed,
    Object? discriminator = freezed,
  }) {
    return _then(_self.copyWith(
      properties: freezed == properties
          ? _self.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, OpenApiSchema>?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      required_: freezed == required_
          ? _self.required_
          : required_ // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      enum_: freezed == enum_
          ? _self.enum_
          : enum_ // ignore: cast_nullable_to_non_nullable
              as List<Object>?,
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
          : additionalProperties // ignore: cast_nullable_to_non_nullable
              as bool?,
      oneOf: freezed == oneOf
          ? _self.oneOf
          : oneOf // ignore: cast_nullable_to_non_nullable
              as List<OpenApiSchema>?,
      discriminator: freezed == discriminator
          ? _self.discriminator
          : discriminator // ignore: cast_nullable_to_non_nullable
              as OpenApiSchemaOneOfDiscriminator?,
    ));
  }

  /// Create a copy of OpenApiSchemas
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiSchemaOneOfDiscriminatorCopyWith<$Res>? get discriminator {
    if (_self.discriminator == null) {
      return null;
    }

    return $OpenApiSchemaOneOfDiscriminatorCopyWith<$Res>(_self.discriminator!,
        (value) {
      return _then(_self.copyWith(discriminator: value));
    });
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
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'required') List<String>? required_,
            @JsonKey(name: 'enum') List<Object>? enum_,
            @JsonKey(name: 'const') Object? const_,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'x-enum-varnames') List<String>? xEnumVarnames,
            @JsonKey(name: 'additionalProperties') bool? additionalProperties,
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'oneOf')
            List<OpenApiSchema>? oneOf,
            @JsonKey(name: 'discriminator')
            OpenApiSchemaOneOfDiscriminator? discriminator)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OpenApiSchemas() when $default != null:
        return $default(
            _that.properties,
            _that.type,
            _that.required_,
            _that.enum_,
            _that.const_,
            _that.title,
            _that.description,
            _that.xEnumVarnames,
            _that.additionalProperties,
            _that.oneOf,
            _that.discriminator);
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
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'required') List<String>? required_,
            @JsonKey(name: 'enum') List<Object>? enum_,
            @JsonKey(name: 'const') Object? const_,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'x-enum-varnames') List<String>? xEnumVarnames,
            @JsonKey(name: 'additionalProperties') bool? additionalProperties,
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'oneOf')
            List<OpenApiSchema>? oneOf,
            @JsonKey(name: 'discriminator')
            OpenApiSchemaOneOfDiscriminator? discriminator)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiSchemas():
        return $default(
            _that.properties,
            _that.type,
            _that.required_,
            _that.enum_,
            _that.const_,
            _that.title,
            _that.description,
            _that.xEnumVarnames,
            _that.additionalProperties,
            _that.oneOf,
            _that.discriminator);
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
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'required') List<String>? required_,
            @JsonKey(name: 'enum') List<Object>? enum_,
            @JsonKey(name: 'const') Object? const_,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'x-enum-varnames') List<String>? xEnumVarnames,
            @JsonKey(name: 'additionalProperties') bool? additionalProperties,
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'oneOf')
            List<OpenApiSchema>? oneOf,
            @JsonKey(name: 'discriminator')
            OpenApiSchemaOneOfDiscriminator? discriminator)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiSchemas() when $default != null:
        return $default(
            _that.properties,
            _that.type,
            _that.required_,
            _that.enum_,
            _that.const_,
            _that.title,
            _that.description,
            _that.xEnumVarnames,
            _that.additionalProperties,
            _that.oneOf,
            _that.discriminator);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OpenApiSchemas extends OpenApiSchemas {
  const _OpenApiSchemas(
      {@OpenApiSchemaJsonConverter()
      @JsonKey(name: 'properties')
      required final Map<String, OpenApiSchema>? properties,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'required') final List<String>? required_,
      @JsonKey(name: 'enum') final List<Object>? enum_,
      @JsonKey(name: 'const') this.const_,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'x-enum-varnames') final List<String>? xEnumVarnames,
      @JsonKey(name: 'additionalProperties') this.additionalProperties,
      @OpenApiSchemaJsonConverter()
      @JsonKey(name: 'oneOf')
      final List<OpenApiSchema>? oneOf,
      @JsonKey(name: 'discriminator') this.discriminator})
      : _properties = properties,
        _required_ = required_,
        _enum_ = enum_,
        _xEnumVarnames = xEnumVarnames,
        _oneOf = oneOf,
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
  final String type;
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

  final List<Object>? _enum_;
  @override
  @JsonKey(name: 'enum')
  List<Object>? get enum_ {
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

  @override
  @JsonKey(name: 'additionalProperties')
  final bool? additionalProperties;
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

  @override
  @JsonKey(name: 'discriminator')
  final OpenApiSchemaOneOfDiscriminator? discriminator;

  /// Create a copy of OpenApiSchemas
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OpenApiSchemasCopyWith<_OpenApiSchemas> get copyWith =>
      __$OpenApiSchemasCopyWithImpl<_OpenApiSchemas>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OpenApiSchemasToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenApiSchemas &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._required_, _required_) &&
            const DeepCollectionEquality().equals(other._enum_, _enum_) &&
            const DeepCollectionEquality().equals(other.const_, const_) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._xEnumVarnames, _xEnumVarnames) &&
            (identical(other.additionalProperties, additionalProperties) ||
                other.additionalProperties == additionalProperties) &&
            const DeepCollectionEquality().equals(other._oneOf, _oneOf) &&
            (identical(other.discriminator, discriminator) ||
                other.discriminator == discriminator));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_properties),
      type,
      const DeepCollectionEquality().hash(_required_),
      const DeepCollectionEquality().hash(_enum_),
      const DeepCollectionEquality().hash(const_),
      title,
      description,
      const DeepCollectionEquality().hash(_xEnumVarnames),
      additionalProperties,
      const DeepCollectionEquality().hash(_oneOf),
      discriminator);

  @override
  String toString() {
    return 'OpenApiSchemas(properties: $properties, type: $type, required_: $required_, enum_: $enum_, const_: $const_, title: $title, description: $description, xEnumVarnames: $xEnumVarnames, additionalProperties: $additionalProperties, oneOf: $oneOf, discriminator: $discriminator)';
  }
}

/// @nodoc
abstract mixin class _$OpenApiSchemasCopyWith<$Res>
    implements $OpenApiSchemasCopyWith<$Res> {
  factory _$OpenApiSchemasCopyWith(
          _OpenApiSchemas value, $Res Function(_OpenApiSchemas) _then) =
      __$OpenApiSchemasCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@OpenApiSchemaJsonConverter()
      @JsonKey(name: 'properties')
      Map<String, OpenApiSchema>? properties,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'required') List<String>? required_,
      @JsonKey(name: 'enum') List<Object>? enum_,
      @JsonKey(name: 'const') Object? const_,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'x-enum-varnames') List<String>? xEnumVarnames,
      @JsonKey(name: 'additionalProperties') bool? additionalProperties,
      @OpenApiSchemaJsonConverter()
      @JsonKey(name: 'oneOf')
      List<OpenApiSchema>? oneOf,
      @JsonKey(name: 'discriminator')
      OpenApiSchemaOneOfDiscriminator? discriminator});

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
    Object? type = null,
    Object? required_ = freezed,
    Object? enum_ = freezed,
    Object? const_ = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? xEnumVarnames = freezed,
    Object? additionalProperties = freezed,
    Object? oneOf = freezed,
    Object? discriminator = freezed,
  }) {
    return _then(_OpenApiSchemas(
      properties: freezed == properties
          ? _self._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, OpenApiSchema>?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      required_: freezed == required_
          ? _self._required_
          : required_ // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      enum_: freezed == enum_
          ? _self._enum_
          : enum_ // ignore: cast_nullable_to_non_nullable
              as List<Object>?,
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
          : additionalProperties // ignore: cast_nullable_to_non_nullable
              as bool?,
      oneOf: freezed == oneOf
          ? _self._oneOf
          : oneOf // ignore: cast_nullable_to_non_nullable
              as List<OpenApiSchema>?,
      discriminator: freezed == discriminator
          ? _self.discriminator
          : discriminator // ignore: cast_nullable_to_non_nullable
              as OpenApiSchemaOneOfDiscriminator?,
    ));
  }

  /// Create a copy of OpenApiSchemas
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiSchemaOneOfDiscriminatorCopyWith<$Res>? get discriminator {
    if (_self.discriminator == null) {
      return null;
    }

    return $OpenApiSchemaOneOfDiscriminatorCopyWith<$Res>(_self.discriminator!,
        (value) {
      return _then(_self.copyWith(discriminator: value));
    });
  }
}
