// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_api_schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
OpenApiSchema _$OpenApiSchemaFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'type':
      return OpenApiSchemaType.fromJson(json);
    case 'ref':
      return OpenApiSchemaRef.fromJson(json);
    case 'anyOf':
      return OpenApiSchemaAnyOf.fromJson(json);
    case 'oneOf':
      return OpenApiSchemaOneOf.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'OpenApiSchema',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$OpenApiSchema {
  @JsonKey(name: 'description')
  String? get description;
  @JsonKey(name: 'default')
  Object? get default_;
  @JsonKey(name: 'title')
  String? get title;
  @JsonKey(name: 'nullable')
  bool? get nullable;

  /// Create a copy of OpenApiSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenApiSchemaCopyWith<OpenApiSchema> get copyWith =>
      _$OpenApiSchemaCopyWithImpl<OpenApiSchema>(
          this as OpenApiSchema, _$identity);

  /// Serializes this OpenApiSchema to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenApiSchema &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.default_, default_) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.nullable, nullable) ||
                other.nullable == nullable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, description,
      const DeepCollectionEquality().hash(default_), title, nullable);

  @override
  String toString() {
    return 'OpenApiSchema(description: $description, default_: $default_, title: $title, nullable: $nullable)';
  }
}

/// @nodoc
abstract mixin class $OpenApiSchemaCopyWith<$Res> {
  factory $OpenApiSchemaCopyWith(
          OpenApiSchema value, $Res Function(OpenApiSchema) _then) =
      _$OpenApiSchemaCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'description') String? description,
      @JsonKey(name: 'default') Object? default_,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'nullable') bool? nullable});
}

/// @nodoc
class _$OpenApiSchemaCopyWithImpl<$Res>
    implements $OpenApiSchemaCopyWith<$Res> {
  _$OpenApiSchemaCopyWithImpl(this._self, this._then);

  final OpenApiSchema _self;
  final $Res Function(OpenApiSchema) _then;

  /// Create a copy of OpenApiSchema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? default_ = freezed,
    Object? title = freezed,
    Object? nullable = freezed,
  }) {
    return _then(_self.copyWith(
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      default_: freezed == default_ ? _self.default_ : default_,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      nullable: freezed == nullable
          ? _self.nullable
          : nullable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [OpenApiSchema].
extension OpenApiSchemaPatterns on OpenApiSchema {
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
    TResult Function(OpenApiSchemaType value)? type,
    TResult Function(OpenApiSchemaRef value)? ref,
    TResult Function(OpenApiSchemaAnyOf value)? anyOf,
    TResult Function(OpenApiSchemaOneOf value)? oneOf,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case OpenApiSchemaType() when type != null:
        return type(_that);
      case OpenApiSchemaRef() when ref != null:
        return ref(_that);
      case OpenApiSchemaAnyOf() when anyOf != null:
        return anyOf(_that);
      case OpenApiSchemaOneOf() when oneOf != null:
        return oneOf(_that);
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
    required TResult Function(OpenApiSchemaType value) type,
    required TResult Function(OpenApiSchemaRef value) ref,
    required TResult Function(OpenApiSchemaAnyOf value) anyOf,
    required TResult Function(OpenApiSchemaOneOf value) oneOf,
  }) {
    final _that = this;
    switch (_that) {
      case OpenApiSchemaType():
        return type(_that);
      case OpenApiSchemaRef():
        return ref(_that);
      case OpenApiSchemaAnyOf():
        return anyOf(_that);
      case OpenApiSchemaOneOf():
        return oneOf(_that);
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
    TResult? Function(OpenApiSchemaType value)? type,
    TResult? Function(OpenApiSchemaRef value)? ref,
    TResult? Function(OpenApiSchemaAnyOf value)? anyOf,
    TResult? Function(OpenApiSchemaOneOf value)? oneOf,
  }) {
    final _that = this;
    switch (_that) {
      case OpenApiSchemaType() when type != null:
        return type(_that);
      case OpenApiSchemaRef() when ref != null:
        return ref(_that);
      case OpenApiSchemaAnyOf() when anyOf != null:
        return anyOf(_that);
      case OpenApiSchemaOneOf() when oneOf != null:
        return oneOf(_that);
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
    TResult Function(
            @JsonKey(name: 'enum') List<String>? enum_,
            @JsonKey(
                name: 'type', unknownEnumValue: OpenApiSchemaVarType.$unknown)
            OpenApiSchemaVarType? type,
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'items')
            OpenApiSchema? items,
            @JsonKey(name: 'maxLength') int? maxLength,
            @JsonKey(name: 'minLength') int? minLength,
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'pattern') String? pattern,
            @JsonKey(name: 'const') Object? const_,
            @JsonKey(name: 'default') Object? default_,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'nullable') bool? nullable)?
        type,
    TResult Function(
            @JsonKey(name: r'$ref') String? ref,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'default') Object? default_,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'nullable') bool? nullable)?
        ref,
    TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'anyOf')
            List<OpenApiSchema> anyOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'default') Object? default_,
            @JsonKey(name: 'nullable') bool? nullable,
            @JsonKey(name: 'discriminator')
            OpenApiSchemaOneOfDiscriminator? discriminator)?
        anyOf,
    TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'oneOf')
            List<OpenApiSchema> oneOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'discriminator')
            OpenApiSchemaOneOfDiscriminator? discriminator,
            @JsonKey(name: 'default') Object? default_,
            @JsonKey(name: 'nullable') bool? nullable)?
        oneOf,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case OpenApiSchemaType() when type != null:
        return type(
            _that.enum_,
            _that.type,
            _that.items,
            _that.maxLength,
            _that.minLength,
            _that.format,
            _that.description,
            _that.pattern,
            _that.const_,
            _that.default_,
            _that.title,
            _that.nullable);
      case OpenApiSchemaRef() when ref != null:
        return ref(_that.ref, _that.description, _that.default_, _that.title,
            _that.nullable);
      case OpenApiSchemaAnyOf() when anyOf != null:
        return anyOf(_that.anyOf, _that.description, _that.title,
            _that.default_, _that.nullable, _that.discriminator);
      case OpenApiSchemaOneOf() when oneOf != null:
        return oneOf(_that.oneOf, _that.description, _that.title,
            _that.discriminator, _that.default_, _that.nullable);
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
    required TResult Function(
            @JsonKey(name: 'enum') List<String>? enum_,
            @JsonKey(
                name: 'type', unknownEnumValue: OpenApiSchemaVarType.$unknown)
            OpenApiSchemaVarType? type,
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'items')
            OpenApiSchema? items,
            @JsonKey(name: 'maxLength') int? maxLength,
            @JsonKey(name: 'minLength') int? minLength,
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'pattern') String? pattern,
            @JsonKey(name: 'const') Object? const_,
            @JsonKey(name: 'default') Object? default_,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'nullable') bool? nullable)
        type,
    required TResult Function(
            @JsonKey(name: r'$ref') String? ref,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'default') Object? default_,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'nullable') bool? nullable)
        ref,
    required TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'anyOf')
            List<OpenApiSchema> anyOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'default') Object? default_,
            @JsonKey(name: 'nullable') bool? nullable,
            @JsonKey(name: 'discriminator')
            OpenApiSchemaOneOfDiscriminator? discriminator)
        anyOf,
    required TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'oneOf')
            List<OpenApiSchema> oneOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'discriminator')
            OpenApiSchemaOneOfDiscriminator? discriminator,
            @JsonKey(name: 'default') Object? default_,
            @JsonKey(name: 'nullable') bool? nullable)
        oneOf,
  }) {
    final _that = this;
    switch (_that) {
      case OpenApiSchemaType():
        return type(
            _that.enum_,
            _that.type,
            _that.items,
            _that.maxLength,
            _that.minLength,
            _that.format,
            _that.description,
            _that.pattern,
            _that.const_,
            _that.default_,
            _that.title,
            _that.nullable);
      case OpenApiSchemaRef():
        return ref(_that.ref, _that.description, _that.default_, _that.title,
            _that.nullable);
      case OpenApiSchemaAnyOf():
        return anyOf(_that.anyOf, _that.description, _that.title,
            _that.default_, _that.nullable, _that.discriminator);
      case OpenApiSchemaOneOf():
        return oneOf(_that.oneOf, _that.description, _that.title,
            _that.discriminator, _that.default_, _that.nullable);
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
    TResult? Function(
            @JsonKey(name: 'enum') List<String>? enum_,
            @JsonKey(
                name: 'type', unknownEnumValue: OpenApiSchemaVarType.$unknown)
            OpenApiSchemaVarType? type,
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'items')
            OpenApiSchema? items,
            @JsonKey(name: 'maxLength') int? maxLength,
            @JsonKey(name: 'minLength') int? minLength,
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'pattern') String? pattern,
            @JsonKey(name: 'const') Object? const_,
            @JsonKey(name: 'default') Object? default_,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'nullable') bool? nullable)?
        type,
    TResult? Function(
            @JsonKey(name: r'$ref') String? ref,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'default') Object? default_,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'nullable') bool? nullable)?
        ref,
    TResult? Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'anyOf')
            List<OpenApiSchema> anyOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'default') Object? default_,
            @JsonKey(name: 'nullable') bool? nullable,
            @JsonKey(name: 'discriminator')
            OpenApiSchemaOneOfDiscriminator? discriminator)?
        anyOf,
    TResult? Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'oneOf')
            List<OpenApiSchema> oneOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'discriminator')
            OpenApiSchemaOneOfDiscriminator? discriminator,
            @JsonKey(name: 'default') Object? default_,
            @JsonKey(name: 'nullable') bool? nullable)?
        oneOf,
  }) {
    final _that = this;
    switch (_that) {
      case OpenApiSchemaType() when type != null:
        return type(
            _that.enum_,
            _that.type,
            _that.items,
            _that.maxLength,
            _that.minLength,
            _that.format,
            _that.description,
            _that.pattern,
            _that.const_,
            _that.default_,
            _that.title,
            _that.nullable);
      case OpenApiSchemaRef() when ref != null:
        return ref(_that.ref, _that.description, _that.default_, _that.title,
            _that.nullable);
      case OpenApiSchemaAnyOf() when anyOf != null:
        return anyOf(_that.anyOf, _that.description, _that.title,
            _that.default_, _that.nullable, _that.discriminator);
      case OpenApiSchemaOneOf() when oneOf != null:
        return oneOf(_that.oneOf, _that.description, _that.title,
            _that.discriminator, _that.default_, _that.nullable);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class OpenApiSchemaType extends OpenApiSchema {
  const OpenApiSchemaType(
      {@JsonKey(name: 'enum') final List<String>? enum_,
      @JsonKey(name: 'type', unknownEnumValue: OpenApiSchemaVarType.$unknown)
      this.type,
      @OpenApiSchemaJsonConverter() @JsonKey(name: 'items') this.items,
      @JsonKey(name: 'maxLength') this.maxLength,
      @JsonKey(name: 'minLength') this.minLength,
      @JsonKey(name: 'format') this.format,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'pattern') this.pattern,
      @JsonKey(name: 'const') this.const_,
      @JsonKey(name: 'default') this.default_,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'nullable') this.nullable,
      final String? $type})
      : _enum_ = enum_,
        $type = $type ?? 'type',
        super._();
  factory OpenApiSchemaType.fromJson(Map<String, dynamic> json) =>
      _$OpenApiSchemaTypeFromJson(json);

  final List<String>? _enum_;
  @JsonKey(name: 'enum')
  List<String>? get enum_ {
    final value = _enum_;
    if (value == null) return null;
    if (_enum_ is EqualUnmodifiableListView) return _enum_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'type', unknownEnumValue: OpenApiSchemaVarType.$unknown)
  final OpenApiSchemaVarType? type;
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'items')
  final OpenApiSchema? items;
  @JsonKey(name: 'maxLength')
  final int? maxLength;
  @JsonKey(name: 'minLength')
  final int? minLength;
  @JsonKey(name: 'format')
  final String? format;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'pattern')
  final String? pattern;
  @JsonKey(name: 'const')
  final Object? const_;
  @override
  @JsonKey(name: 'default')
  final Object? default_;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'nullable')
  final bool? nullable;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of OpenApiSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenApiSchemaTypeCopyWith<OpenApiSchemaType> get copyWith =>
      _$OpenApiSchemaTypeCopyWithImpl<OpenApiSchemaType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OpenApiSchemaTypeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenApiSchemaType &&
            const DeepCollectionEquality().equals(other._enum_, _enum_) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.items, items) || other.items == items) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength) &&
            (identical(other.minLength, minLength) ||
                other.minLength == minLength) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pattern, pattern) || other.pattern == pattern) &&
            const DeepCollectionEquality().equals(other.const_, const_) &&
            const DeepCollectionEquality().equals(other.default_, default_) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.nullable, nullable) ||
                other.nullable == nullable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_enum_),
      type,
      items,
      maxLength,
      minLength,
      format,
      description,
      pattern,
      const DeepCollectionEquality().hash(const_),
      const DeepCollectionEquality().hash(default_),
      title,
      nullable);

  @override
  String toString() {
    return 'OpenApiSchema.type(enum_: $enum_, type: $type, items: $items, maxLength: $maxLength, minLength: $minLength, format: $format, description: $description, pattern: $pattern, const_: $const_, default_: $default_, title: $title, nullable: $nullable)';
  }
}

/// @nodoc
abstract mixin class $OpenApiSchemaTypeCopyWith<$Res>
    implements $OpenApiSchemaCopyWith<$Res> {
  factory $OpenApiSchemaTypeCopyWith(
          OpenApiSchemaType value, $Res Function(OpenApiSchemaType) _then) =
      _$OpenApiSchemaTypeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'enum') List<String>? enum_,
      @JsonKey(name: 'type', unknownEnumValue: OpenApiSchemaVarType.$unknown)
      OpenApiSchemaVarType? type,
      @OpenApiSchemaJsonConverter()
      @JsonKey(name: 'items')
      OpenApiSchema? items,
      @JsonKey(name: 'maxLength') int? maxLength,
      @JsonKey(name: 'minLength') int? minLength,
      @JsonKey(name: 'format') String? format,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'pattern') String? pattern,
      @JsonKey(name: 'const') Object? const_,
      @JsonKey(name: 'default') Object? default_,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'nullable') bool? nullable});

  $OpenApiSchemaCopyWith<$Res>? get items;
}

/// @nodoc
class _$OpenApiSchemaTypeCopyWithImpl<$Res>
    implements $OpenApiSchemaTypeCopyWith<$Res> {
  _$OpenApiSchemaTypeCopyWithImpl(this._self, this._then);

  final OpenApiSchemaType _self;
  final $Res Function(OpenApiSchemaType) _then;

  /// Create a copy of OpenApiSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? enum_ = freezed,
    Object? type = freezed,
    Object? items = freezed,
    Object? maxLength = freezed,
    Object? minLength = freezed,
    Object? format = freezed,
    Object? description = freezed,
    Object? pattern = freezed,
    Object? const_ = freezed,
    Object? default_ = freezed,
    Object? title = freezed,
    Object? nullable = freezed,
  }) {
    return _then(OpenApiSchemaType(
      enum_: freezed == enum_
          ? _self._enum_
          : enum_ // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as OpenApiSchemaVarType?,
      items: freezed == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as OpenApiSchema?,
      maxLength: freezed == maxLength
          ? _self.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
      minLength: freezed == minLength
          ? _self.minLength
          : minLength // ignore: cast_nullable_to_non_nullable
              as int?,
      format: freezed == format
          ? _self.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pattern: freezed == pattern
          ? _self.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String?,
      const_: freezed == const_ ? _self.const_ : const_,
      default_: freezed == default_ ? _self.default_ : default_,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      nullable: freezed == nullable
          ? _self.nullable
          : nullable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of OpenApiSchema
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
}

/// @nodoc
@JsonSerializable()
class OpenApiSchemaRef extends OpenApiSchema {
  const OpenApiSchemaRef(
      {@JsonKey(name: r'$ref') this.ref,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'default') this.default_,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'nullable') this.nullable,
      final String? $type})
      : $type = $type ?? 'ref',
        super._();
  factory OpenApiSchemaRef.fromJson(Map<String, dynamic> json) =>
      _$OpenApiSchemaRefFromJson(json);

  @JsonKey(name: r'$ref')
  final String? ref;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'default')
  final Object? default_;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'nullable')
  final bool? nullable;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of OpenApiSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenApiSchemaRefCopyWith<OpenApiSchemaRef> get copyWith =>
      _$OpenApiSchemaRefCopyWithImpl<OpenApiSchemaRef>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OpenApiSchemaRefToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenApiSchemaRef &&
            (identical(other.ref, ref) || other.ref == ref) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.default_, default_) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.nullable, nullable) ||
                other.nullable == nullable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ref, description,
      const DeepCollectionEquality().hash(default_), title, nullable);

  @override
  String toString() {
    return 'OpenApiSchema.ref(ref: $ref, description: $description, default_: $default_, title: $title, nullable: $nullable)';
  }
}

/// @nodoc
abstract mixin class $OpenApiSchemaRefCopyWith<$Res>
    implements $OpenApiSchemaCopyWith<$Res> {
  factory $OpenApiSchemaRefCopyWith(
          OpenApiSchemaRef value, $Res Function(OpenApiSchemaRef) _then) =
      _$OpenApiSchemaRefCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: r'$ref') String? ref,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'default') Object? default_,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'nullable') bool? nullable});
}

/// @nodoc
class _$OpenApiSchemaRefCopyWithImpl<$Res>
    implements $OpenApiSchemaRefCopyWith<$Res> {
  _$OpenApiSchemaRefCopyWithImpl(this._self, this._then);

  final OpenApiSchemaRef _self;
  final $Res Function(OpenApiSchemaRef) _then;

  /// Create a copy of OpenApiSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ref = freezed,
    Object? description = freezed,
    Object? default_ = freezed,
    Object? title = freezed,
    Object? nullable = freezed,
  }) {
    return _then(OpenApiSchemaRef(
      ref: freezed == ref
          ? _self.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      default_: freezed == default_ ? _self.default_ : default_,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      nullable: freezed == nullable
          ? _self.nullable
          : nullable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class OpenApiSchemaAnyOf extends OpenApiSchema {
  const OpenApiSchemaAnyOf(
      {@OpenApiSchemaJsonConverter()
      @JsonKey(name: 'anyOf')
      final List<OpenApiSchema> anyOf = const [],
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'default') this.default_,
      @JsonKey(name: 'nullable') this.nullable,
      @JsonKey(name: 'discriminator') required this.discriminator,
      final String? $type})
      : _anyOf = anyOf,
        $type = $type ?? 'anyOf',
        super._();
  factory OpenApiSchemaAnyOf.fromJson(Map<String, dynamic> json) =>
      _$OpenApiSchemaAnyOfFromJson(json);

  final List<OpenApiSchema> _anyOf;
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'anyOf')
  List<OpenApiSchema> get anyOf {
    if (_anyOf is EqualUnmodifiableListView) return _anyOf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_anyOf);
  }

  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'default')
  final Object? default_;
  @override
  @JsonKey(name: 'nullable')
  final bool? nullable;
  @JsonKey(name: 'discriminator')
  final OpenApiSchemaOneOfDiscriminator? discriminator;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of OpenApiSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenApiSchemaAnyOfCopyWith<OpenApiSchemaAnyOf> get copyWith =>
      _$OpenApiSchemaAnyOfCopyWithImpl<OpenApiSchemaAnyOf>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OpenApiSchemaAnyOfToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenApiSchemaAnyOf &&
            const DeepCollectionEquality().equals(other._anyOf, _anyOf) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.default_, default_) &&
            (identical(other.nullable, nullable) ||
                other.nullable == nullable) &&
            (identical(other.discriminator, discriminator) ||
                other.discriminator == discriminator));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_anyOf),
      description,
      title,
      const DeepCollectionEquality().hash(default_),
      nullable,
      discriminator);

  @override
  String toString() {
    return 'OpenApiSchema.anyOf(anyOf: $anyOf, description: $description, title: $title, default_: $default_, nullable: $nullable, discriminator: $discriminator)';
  }
}

/// @nodoc
abstract mixin class $OpenApiSchemaAnyOfCopyWith<$Res>
    implements $OpenApiSchemaCopyWith<$Res> {
  factory $OpenApiSchemaAnyOfCopyWith(
          OpenApiSchemaAnyOf value, $Res Function(OpenApiSchemaAnyOf) _then) =
      _$OpenApiSchemaAnyOfCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@OpenApiSchemaJsonConverter()
      @JsonKey(name: 'anyOf')
      List<OpenApiSchema> anyOf,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'default') Object? default_,
      @JsonKey(name: 'nullable') bool? nullable,
      @JsonKey(name: 'discriminator')
      OpenApiSchemaOneOfDiscriminator? discriminator});

  $OpenApiSchemaOneOfDiscriminatorCopyWith<$Res>? get discriminator;
}

/// @nodoc
class _$OpenApiSchemaAnyOfCopyWithImpl<$Res>
    implements $OpenApiSchemaAnyOfCopyWith<$Res> {
  _$OpenApiSchemaAnyOfCopyWithImpl(this._self, this._then);

  final OpenApiSchemaAnyOf _self;
  final $Res Function(OpenApiSchemaAnyOf) _then;

  /// Create a copy of OpenApiSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? anyOf = null,
    Object? description = freezed,
    Object? title = freezed,
    Object? default_ = freezed,
    Object? nullable = freezed,
    Object? discriminator = freezed,
  }) {
    return _then(OpenApiSchemaAnyOf(
      anyOf: null == anyOf
          ? _self._anyOf
          : anyOf // ignore: cast_nullable_to_non_nullable
              as List<OpenApiSchema>,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      default_: freezed == default_ ? _self.default_ : default_,
      nullable: freezed == nullable
          ? _self.nullable
          : nullable // ignore: cast_nullable_to_non_nullable
              as bool?,
      discriminator: freezed == discriminator
          ? _self.discriminator
          : discriminator // ignore: cast_nullable_to_non_nullable
              as OpenApiSchemaOneOfDiscriminator?,
    ));
  }

  /// Create a copy of OpenApiSchema
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

/// @nodoc
@JsonSerializable()
class OpenApiSchemaOneOf extends OpenApiSchema {
  const OpenApiSchemaOneOf(
      {@OpenApiSchemaJsonConverter()
      @JsonKey(name: 'oneOf')
      final List<OpenApiSchema> oneOf = const [],
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'discriminator') required this.discriminator,
      @JsonKey(name: 'default') this.default_,
      @JsonKey(name: 'nullable') this.nullable,
      final String? $type})
      : _oneOf = oneOf,
        $type = $type ?? 'oneOf',
        super._();
  factory OpenApiSchemaOneOf.fromJson(Map<String, dynamic> json) =>
      _$OpenApiSchemaOneOfFromJson(json);

  final List<OpenApiSchema> _oneOf;
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'oneOf')
  List<OpenApiSchema> get oneOf {
    if (_oneOf is EqualUnmodifiableListView) return _oneOf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oneOf);
  }

  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'discriminator')
  final OpenApiSchemaOneOfDiscriminator? discriminator;
  @override
  @JsonKey(name: 'default')
  final Object? default_;
  @override
  @JsonKey(name: 'nullable')
  final bool? nullable;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of OpenApiSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenApiSchemaOneOfCopyWith<OpenApiSchemaOneOf> get copyWith =>
      _$OpenApiSchemaOneOfCopyWithImpl<OpenApiSchemaOneOf>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OpenApiSchemaOneOfToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenApiSchemaOneOf &&
            const DeepCollectionEquality().equals(other._oneOf, _oneOf) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.discriminator, discriminator) ||
                other.discriminator == discriminator) &&
            const DeepCollectionEquality().equals(other.default_, default_) &&
            (identical(other.nullable, nullable) ||
                other.nullable == nullable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_oneOf),
      description,
      title,
      discriminator,
      const DeepCollectionEquality().hash(default_),
      nullable);

  @override
  String toString() {
    return 'OpenApiSchema.oneOf(oneOf: $oneOf, description: $description, title: $title, discriminator: $discriminator, default_: $default_, nullable: $nullable)';
  }
}

/// @nodoc
abstract mixin class $OpenApiSchemaOneOfCopyWith<$Res>
    implements $OpenApiSchemaCopyWith<$Res> {
  factory $OpenApiSchemaOneOfCopyWith(
          OpenApiSchemaOneOf value, $Res Function(OpenApiSchemaOneOf) _then) =
      _$OpenApiSchemaOneOfCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@OpenApiSchemaJsonConverter()
      @JsonKey(name: 'oneOf')
      List<OpenApiSchema> oneOf,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'discriminator')
      OpenApiSchemaOneOfDiscriminator? discriminator,
      @JsonKey(name: 'default') Object? default_,
      @JsonKey(name: 'nullable') bool? nullable});

  $OpenApiSchemaOneOfDiscriminatorCopyWith<$Res>? get discriminator;
}

/// @nodoc
class _$OpenApiSchemaOneOfCopyWithImpl<$Res>
    implements $OpenApiSchemaOneOfCopyWith<$Res> {
  _$OpenApiSchemaOneOfCopyWithImpl(this._self, this._then);

  final OpenApiSchemaOneOf _self;
  final $Res Function(OpenApiSchemaOneOf) _then;

  /// Create a copy of OpenApiSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? oneOf = null,
    Object? description = freezed,
    Object? title = freezed,
    Object? discriminator = freezed,
    Object? default_ = freezed,
    Object? nullable = freezed,
  }) {
    return _then(OpenApiSchemaOneOf(
      oneOf: null == oneOf
          ? _self._oneOf
          : oneOf // ignore: cast_nullable_to_non_nullable
              as List<OpenApiSchema>,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      discriminator: freezed == discriminator
          ? _self.discriminator
          : discriminator // ignore: cast_nullable_to_non_nullable
              as OpenApiSchemaOneOfDiscriminator?,
      default_: freezed == default_ ? _self.default_ : default_,
      nullable: freezed == nullable
          ? _self.nullable
          : nullable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of OpenApiSchema
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

/// @nodoc
mixin _$OpenApiSchemaOneOfDiscriminator {
  @JsonKey(name: 'propertyName')
  String get propertyName;
  @JsonKey(name: 'mapping')
  Map<String, String> get mapping;

  /// Create a copy of OpenApiSchemaOneOfDiscriminator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenApiSchemaOneOfDiscriminatorCopyWith<OpenApiSchemaOneOfDiscriminator>
      get copyWith => _$OpenApiSchemaOneOfDiscriminatorCopyWithImpl<
              OpenApiSchemaOneOfDiscriminator>(
          this as OpenApiSchemaOneOfDiscriminator, _$identity);

  /// Serializes this OpenApiSchemaOneOfDiscriminator to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenApiSchemaOneOfDiscriminator &&
            (identical(other.propertyName, propertyName) ||
                other.propertyName == propertyName) &&
            const DeepCollectionEquality().equals(other.mapping, mapping));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, propertyName, const DeepCollectionEquality().hash(mapping));

  @override
  String toString() {
    return 'OpenApiSchemaOneOfDiscriminator(propertyName: $propertyName, mapping: $mapping)';
  }
}

/// @nodoc
abstract mixin class $OpenApiSchemaOneOfDiscriminatorCopyWith<$Res> {
  factory $OpenApiSchemaOneOfDiscriminatorCopyWith(
          OpenApiSchemaOneOfDiscriminator value,
          $Res Function(OpenApiSchemaOneOfDiscriminator) _then) =
      _$OpenApiSchemaOneOfDiscriminatorCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'propertyName') String propertyName,
      @JsonKey(name: 'mapping') Map<String, String> mapping});
}

/// @nodoc
class _$OpenApiSchemaOneOfDiscriminatorCopyWithImpl<$Res>
    implements $OpenApiSchemaOneOfDiscriminatorCopyWith<$Res> {
  _$OpenApiSchemaOneOfDiscriminatorCopyWithImpl(this._self, this._then);

  final OpenApiSchemaOneOfDiscriminator _self;
  final $Res Function(OpenApiSchemaOneOfDiscriminator) _then;

  /// Create a copy of OpenApiSchemaOneOfDiscriminator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyName = null,
    Object? mapping = null,
  }) {
    return _then(_self.copyWith(
      propertyName: null == propertyName
          ? _self.propertyName
          : propertyName // ignore: cast_nullable_to_non_nullable
              as String,
      mapping: null == mapping
          ? _self.mapping
          : mapping // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [OpenApiSchemaOneOfDiscriminator].
extension OpenApiSchemaOneOfDiscriminatorPatterns
    on OpenApiSchemaOneOfDiscriminator {
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
    TResult Function(_OpenApiSchemaOneOfDiscriminator value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OpenApiSchemaOneOfDiscriminator() when $default != null:
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
    TResult Function(_OpenApiSchemaOneOfDiscriminator value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiSchemaOneOfDiscriminator():
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
    TResult? Function(_OpenApiSchemaOneOfDiscriminator value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiSchemaOneOfDiscriminator() when $default != null:
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
    TResult Function(@JsonKey(name: 'propertyName') String propertyName,
            @JsonKey(name: 'mapping') Map<String, String> mapping)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OpenApiSchemaOneOfDiscriminator() when $default != null:
        return $default(_that.propertyName, _that.mapping);
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
    TResult Function(@JsonKey(name: 'propertyName') String propertyName,
            @JsonKey(name: 'mapping') Map<String, String> mapping)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiSchemaOneOfDiscriminator():
        return $default(_that.propertyName, _that.mapping);
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
    TResult? Function(@JsonKey(name: 'propertyName') String propertyName,
            @JsonKey(name: 'mapping') Map<String, String> mapping)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiSchemaOneOfDiscriminator() when $default != null:
        return $default(_that.propertyName, _that.mapping);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OpenApiSchemaOneOfDiscriminator extends OpenApiSchemaOneOfDiscriminator {
  const _OpenApiSchemaOneOfDiscriminator(
      {@JsonKey(name: 'propertyName') required this.propertyName,
      @JsonKey(name: 'mapping') required final Map<String, String> mapping})
      : _mapping = mapping,
        super._();
  factory _OpenApiSchemaOneOfDiscriminator.fromJson(
          Map<String, dynamic> json) =>
      _$OpenApiSchemaOneOfDiscriminatorFromJson(json);

  @override
  @JsonKey(name: 'propertyName')
  final String propertyName;
  final Map<String, String> _mapping;
  @override
  @JsonKey(name: 'mapping')
  Map<String, String> get mapping {
    if (_mapping is EqualUnmodifiableMapView) return _mapping;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_mapping);
  }

  /// Create a copy of OpenApiSchemaOneOfDiscriminator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OpenApiSchemaOneOfDiscriminatorCopyWith<_OpenApiSchemaOneOfDiscriminator>
      get copyWith => __$OpenApiSchemaOneOfDiscriminatorCopyWithImpl<
          _OpenApiSchemaOneOfDiscriminator>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OpenApiSchemaOneOfDiscriminatorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenApiSchemaOneOfDiscriminator &&
            (identical(other.propertyName, propertyName) ||
                other.propertyName == propertyName) &&
            const DeepCollectionEquality().equals(other._mapping, _mapping));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, propertyName, const DeepCollectionEquality().hash(_mapping));

  @override
  String toString() {
    return 'OpenApiSchemaOneOfDiscriminator(propertyName: $propertyName, mapping: $mapping)';
  }
}

/// @nodoc
abstract mixin class _$OpenApiSchemaOneOfDiscriminatorCopyWith<$Res>
    implements $OpenApiSchemaOneOfDiscriminatorCopyWith<$Res> {
  factory _$OpenApiSchemaOneOfDiscriminatorCopyWith(
          _OpenApiSchemaOneOfDiscriminator value,
          $Res Function(_OpenApiSchemaOneOfDiscriminator) _then) =
      __$OpenApiSchemaOneOfDiscriminatorCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'propertyName') String propertyName,
      @JsonKey(name: 'mapping') Map<String, String> mapping});
}

/// @nodoc
class __$OpenApiSchemaOneOfDiscriminatorCopyWithImpl<$Res>
    implements _$OpenApiSchemaOneOfDiscriminatorCopyWith<$Res> {
  __$OpenApiSchemaOneOfDiscriminatorCopyWithImpl(this._self, this._then);

  final _OpenApiSchemaOneOfDiscriminator _self;
  final $Res Function(_OpenApiSchemaOneOfDiscriminator) _then;

  /// Create a copy of OpenApiSchemaOneOfDiscriminator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? propertyName = null,
    Object? mapping = null,
  }) {
    return _then(_OpenApiSchemaOneOfDiscriminator(
      propertyName: null == propertyName
          ? _self.propertyName
          : propertyName // ignore: cast_nullable_to_non_nullable
              as String,
      mapping: null == mapping
          ? _self._mapping
          : mapping // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}
