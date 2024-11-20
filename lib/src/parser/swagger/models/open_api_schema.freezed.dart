// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_api_schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
            @JsonKey(name: 'title') String? title)
        type,
    required TResult Function(@JsonKey(name: _refKey) String? ref,
            @JsonKey(name: 'default') Object? default_)
        ref,
    required TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiSchema>? anyOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'default') Object? default_)
        anyOf,
    required TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: _oneOfKey)
            List<OpenApiSchema>? oneOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'discriminator')
            OpenApiSchemaOneOfDiscriminator discriminator)
        oneOf,
  }) =>
      throw _privateConstructorUsedError;

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
            @JsonKey(name: 'title') String? title)?
        type,
    TResult Function(@JsonKey(name: _refKey) String? ref,
            @JsonKey(name: 'default') Object? default_)?
        ref,
    TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiSchema>? anyOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'default') Object? default_)?
        anyOf,
    TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: _oneOfKey)
            List<OpenApiSchema>? oneOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'discriminator')
            OpenApiSchemaOneOfDiscriminator discriminator)?
        oneOf,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this OpenApiSchema to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$OpenApiSchemaTypeImpl extends OpenApiSchemaType {
  const _$OpenApiSchemaTypeImpl(
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
      final String? $type})
      : _enum_ = enum_,
        $type = $type ?? 'type',
        super._();

  factory _$OpenApiSchemaTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiSchemaTypeImplFromJson(json);

  final List<String>? _enum_;
  @override
  @JsonKey(name: 'enum')
  List<String>? get enum_ {
    final value = _enum_;
    if (value == null) return null;
    if (_enum_ is EqualUnmodifiableListView) return _enum_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'type', unknownEnumValue: OpenApiSchemaVarType.$unknown)
  final OpenApiSchemaVarType? type;
  @override
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'items')
  final OpenApiSchema? items;
  @override
  @JsonKey(name: 'maxLength')
  final int? maxLength;
  @override
  @JsonKey(name: 'minLength')
  final int? minLength;
  @override
  @JsonKey(name: 'format')
  final String? format;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'pattern')
  final String? pattern;
  @override
  @JsonKey(name: 'const')
  final Object? const_;
  @override
  @JsonKey(name: 'default')
  final Object? default_;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OpenApiSchema.type(enum_: $enum_, type: $type, items: $items, maxLength: $maxLength, minLength: $minLength, format: $format, description: $description, pattern: $pattern, const_: $const_, default_: $default_, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiSchemaTypeImpl &&
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
            (identical(other.title, title) || other.title == title));
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
      title);

  @override
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
            @JsonKey(name: 'title') String? title)
        type,
    required TResult Function(@JsonKey(name: _refKey) String? ref,
            @JsonKey(name: 'default') Object? default_)
        ref,
    required TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiSchema>? anyOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'default') Object? default_)
        anyOf,
    required TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: _oneOfKey)
            List<OpenApiSchema>? oneOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'discriminator')
            OpenApiSchemaOneOfDiscriminator discriminator)
        oneOf,
  }) {
    return type(enum_, this.type, items, maxLength, minLength, format,
        description, pattern, const_, default_, title);
  }

  @override
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
            @JsonKey(name: 'title') String? title)?
        type,
    TResult Function(@JsonKey(name: _refKey) String? ref,
            @JsonKey(name: 'default') Object? default_)?
        ref,
    TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiSchema>? anyOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'default') Object? default_)?
        anyOf,
    TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: _oneOfKey)
            List<OpenApiSchema>? oneOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'discriminator')
            OpenApiSchemaOneOfDiscriminator discriminator)?
        oneOf,
    required TResult orElse(),
  }) {
    if (type != null) {
      return type(enum_, this.type, items, maxLength, minLength, format,
          description, pattern, const_, default_, title);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiSchemaTypeImplToJson(
      this,
    );
  }
}

abstract class OpenApiSchemaType extends OpenApiSchema {
  const factory OpenApiSchemaType(
      {@JsonKey(name: 'enum') final List<String>? enum_,
      @JsonKey(name: 'type', unknownEnumValue: OpenApiSchemaVarType.$unknown)
      final OpenApiSchemaVarType? type,
      @OpenApiSchemaJsonConverter()
      @JsonKey(name: 'items')
      final OpenApiSchema? items,
      @JsonKey(name: 'maxLength') final int? maxLength,
      @JsonKey(name: 'minLength') final int? minLength,
      @JsonKey(name: 'format') final String? format,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'pattern') final String? pattern,
      @JsonKey(name: 'const') final Object? const_,
      @JsonKey(name: 'default') final Object? default_,
      @JsonKey(name: 'title') final String? title}) = _$OpenApiSchemaTypeImpl;
  const OpenApiSchemaType._() : super._();

  factory OpenApiSchemaType.fromJson(Map<String, dynamic> json) =
      _$OpenApiSchemaTypeImpl.fromJson;

  @JsonKey(name: 'enum')
  List<String>? get enum_;
  @JsonKey(name: 'type', unknownEnumValue: OpenApiSchemaVarType.$unknown)
  OpenApiSchemaVarType? get type;
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'items')
  OpenApiSchema? get items;
  @JsonKey(name: 'maxLength')
  int? get maxLength;
  @JsonKey(name: 'minLength')
  int? get minLength;
  @JsonKey(name: 'format')
  String? get format;
  @JsonKey(name: 'description')
  String? get description;
  @JsonKey(name: 'pattern')
  String? get pattern;
  @JsonKey(name: 'const')
  Object? get const_;
  @JsonKey(name: 'default')
  Object? get default_;
  @JsonKey(name: 'title')
  String? get title;
}

/// @nodoc
@JsonSerializable()
class _$OpenApiSchemaRefImpl extends OpenApiSchemaRef {
  const _$OpenApiSchemaRefImpl(
      {@JsonKey(name: _refKey) this.ref,
      @JsonKey(name: 'default') this.default_,
      final String? $type})
      : $type = $type ?? 'ref',
        super._();

  factory _$OpenApiSchemaRefImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiSchemaRefImplFromJson(json);

  @override
  @JsonKey(name: _refKey)
  final String? ref;
  @override
  @JsonKey(name: 'default')
  final Object? default_;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OpenApiSchema.ref(ref: $ref, default_: $default_)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiSchemaRefImpl &&
            (identical(other.ref, ref) || other.ref == ref) &&
            const DeepCollectionEquality().equals(other.default_, default_));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, ref, const DeepCollectionEquality().hash(default_));

  @override
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
            @JsonKey(name: 'title') String? title)
        type,
    required TResult Function(@JsonKey(name: _refKey) String? ref,
            @JsonKey(name: 'default') Object? default_)
        ref,
    required TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiSchema>? anyOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'default') Object? default_)
        anyOf,
    required TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: _oneOfKey)
            List<OpenApiSchema>? oneOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'discriminator')
            OpenApiSchemaOneOfDiscriminator discriminator)
        oneOf,
  }) {
    return ref(this.ref, default_);
  }

  @override
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
            @JsonKey(name: 'title') String? title)?
        type,
    TResult Function(@JsonKey(name: _refKey) String? ref,
            @JsonKey(name: 'default') Object? default_)?
        ref,
    TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiSchema>? anyOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'default') Object? default_)?
        anyOf,
    TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: _oneOfKey)
            List<OpenApiSchema>? oneOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'discriminator')
            OpenApiSchemaOneOfDiscriminator discriminator)?
        oneOf,
    required TResult orElse(),
  }) {
    if (ref != null) {
      return ref(this.ref, default_);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiSchemaRefImplToJson(
      this,
    );
  }
}

abstract class OpenApiSchemaRef extends OpenApiSchema {
  const factory OpenApiSchemaRef(
          {@JsonKey(name: _refKey) final String? ref,
          @JsonKey(name: 'default') final Object? default_}) =
      _$OpenApiSchemaRefImpl;
  const OpenApiSchemaRef._() : super._();

  factory OpenApiSchemaRef.fromJson(Map<String, dynamic> json) =
      _$OpenApiSchemaRefImpl.fromJson;

  @JsonKey(name: _refKey)
  String? get ref;
  @JsonKey(name: 'default')
  Object? get default_;
}

/// @nodoc
@JsonSerializable()
class _$OpenApiSchemaAnyOfImpl extends OpenApiSchemaAnyOf {
  const _$OpenApiSchemaAnyOfImpl(
      {@OpenApiSchemaJsonConverter()
      @JsonKey(name: _anyOfKey)
      required final List<OpenApiSchema>? anyOf,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'default') this.default_,
      final String? $type})
      : _anyOf = anyOf,
        $type = $type ?? 'anyOf',
        super._();

  factory _$OpenApiSchemaAnyOfImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiSchemaAnyOfImplFromJson(json);

  final List<OpenApiSchema>? _anyOf;
  @override
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: _anyOfKey)
  List<OpenApiSchema>? get anyOf {
    final value = _anyOf;
    if (value == null) return null;
    if (_anyOf is EqualUnmodifiableListView) return _anyOf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
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

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OpenApiSchema.anyOf(anyOf: $anyOf, description: $description, title: $title, default_: $default_)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiSchemaAnyOfImpl &&
            const DeepCollectionEquality().equals(other._anyOf, _anyOf) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.default_, default_));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_anyOf),
      description,
      title,
      const DeepCollectionEquality().hash(default_));

  @override
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
            @JsonKey(name: 'title') String? title)
        type,
    required TResult Function(@JsonKey(name: _refKey) String? ref,
            @JsonKey(name: 'default') Object? default_)
        ref,
    required TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiSchema>? anyOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'default') Object? default_)
        anyOf,
    required TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: _oneOfKey)
            List<OpenApiSchema>? oneOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'discriminator')
            OpenApiSchemaOneOfDiscriminator discriminator)
        oneOf,
  }) {
    return anyOf(this.anyOf, description, title, default_);
  }

  @override
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
            @JsonKey(name: 'title') String? title)?
        type,
    TResult Function(@JsonKey(name: _refKey) String? ref,
            @JsonKey(name: 'default') Object? default_)?
        ref,
    TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiSchema>? anyOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'default') Object? default_)?
        anyOf,
    TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: _oneOfKey)
            List<OpenApiSchema>? oneOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'discriminator')
            OpenApiSchemaOneOfDiscriminator discriminator)?
        oneOf,
    required TResult orElse(),
  }) {
    if (anyOf != null) {
      return anyOf(this.anyOf, description, title, default_);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiSchemaAnyOfImplToJson(
      this,
    );
  }
}

abstract class OpenApiSchemaAnyOf extends OpenApiSchema {
  const factory OpenApiSchemaAnyOf(
          {@OpenApiSchemaJsonConverter()
          @JsonKey(name: _anyOfKey)
          required final List<OpenApiSchema>? anyOf,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'default') final Object? default_}) =
      _$OpenApiSchemaAnyOfImpl;
  const OpenApiSchemaAnyOf._() : super._();

  factory OpenApiSchemaAnyOf.fromJson(Map<String, dynamic> json) =
      _$OpenApiSchemaAnyOfImpl.fromJson;

  @OpenApiSchemaJsonConverter()
  @JsonKey(name: _anyOfKey)
  List<OpenApiSchema>? get anyOf;
  @JsonKey(name: 'description')
  String? get description;
  @JsonKey(name: 'title')
  String? get title;
  @JsonKey(name: 'default')
  Object? get default_;
}

/// @nodoc
@JsonSerializable()
class _$OpenApiSchemaOneOfImpl extends OpenApiSchemaOneOf {
  const _$OpenApiSchemaOneOfImpl(
      {@OpenApiSchemaJsonConverter()
      @JsonKey(name: _oneOfKey)
      required final List<OpenApiSchema>? oneOf,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'discriminator') required this.discriminator,
      final String? $type})
      : _oneOf = oneOf,
        $type = $type ?? 'oneOf',
        super._();

  factory _$OpenApiSchemaOneOfImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiSchemaOneOfImplFromJson(json);

  final List<OpenApiSchema>? _oneOf;
  @override
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: _oneOfKey)
  List<OpenApiSchema>? get oneOf {
    final value = _oneOf;
    if (value == null) return null;
    if (_oneOf is EqualUnmodifiableListView) return _oneOf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'discriminator')
  final OpenApiSchemaOneOfDiscriminator discriminator;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OpenApiSchema.oneOf(oneOf: $oneOf, description: $description, title: $title, discriminator: $discriminator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiSchemaOneOfImpl &&
            const DeepCollectionEquality().equals(other._oneOf, _oneOf) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.discriminator, discriminator) ||
                other.discriminator == discriminator));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_oneOf),
      description,
      title,
      discriminator);

  @override
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
            @JsonKey(name: 'title') String? title)
        type,
    required TResult Function(@JsonKey(name: _refKey) String? ref,
            @JsonKey(name: 'default') Object? default_)
        ref,
    required TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiSchema>? anyOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'default') Object? default_)
        anyOf,
    required TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: _oneOfKey)
            List<OpenApiSchema>? oneOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'discriminator')
            OpenApiSchemaOneOfDiscriminator discriminator)
        oneOf,
  }) {
    return oneOf(this.oneOf, description, title, discriminator);
  }

  @override
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
            @JsonKey(name: 'title') String? title)?
        type,
    TResult Function(@JsonKey(name: _refKey) String? ref,
            @JsonKey(name: 'default') Object? default_)?
        ref,
    TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiSchema>? anyOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'default') Object? default_)?
        anyOf,
    TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: _oneOfKey)
            List<OpenApiSchema>? oneOf,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'discriminator')
            OpenApiSchemaOneOfDiscriminator discriminator)?
        oneOf,
    required TResult orElse(),
  }) {
    if (oneOf != null) {
      return oneOf(this.oneOf, description, title, discriminator);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiSchemaOneOfImplToJson(
      this,
    );
  }
}

abstract class OpenApiSchemaOneOf extends OpenApiSchema {
  const factory OpenApiSchemaOneOf(
          {@OpenApiSchemaJsonConverter()
          @JsonKey(name: _oneOfKey)
          required final List<OpenApiSchema>? oneOf,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'discriminator')
          required final OpenApiSchemaOneOfDiscriminator discriminator}) =
      _$OpenApiSchemaOneOfImpl;
  const OpenApiSchemaOneOf._() : super._();

  factory OpenApiSchemaOneOf.fromJson(Map<String, dynamic> json) =
      _$OpenApiSchemaOneOfImpl.fromJson;

  @OpenApiSchemaJsonConverter()
  @JsonKey(name: _oneOfKey)
  List<OpenApiSchema>? get oneOf;
  @JsonKey(name: 'description')
  String? get description;
  @JsonKey(name: 'title')
  String? get title;
  @JsonKey(name: 'discriminator')
  OpenApiSchemaOneOfDiscriminator get discriminator;
}

OpenApiSchemaOneOfDiscriminator _$OpenApiSchemaOneOfDiscriminatorFromJson(
    Map<String, dynamic> json) {
  return _OpenApiSchemaOneOfDiscriminator.fromJson(json);
}

/// @nodoc
mixin _$OpenApiSchemaOneOfDiscriminator {
  @JsonKey(name: 'propertyName')
  String get propertyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'mapping')
  Map<String, String> get mapping => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'propertyName') String propertyName,
            @JsonKey(name: 'mapping') Map<String, String> mapping)
        $default,
  ) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'propertyName') String propertyName,
            @JsonKey(name: 'mapping') Map<String, String> mapping)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this OpenApiSchemaOneOfDiscriminator to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$OpenApiSchemaOneOfDiscriminatorImpl
    implements _OpenApiSchemaOneOfDiscriminator {
  _$OpenApiSchemaOneOfDiscriminatorImpl(
      {@JsonKey(name: 'propertyName') required this.propertyName,
      @JsonKey(name: 'mapping') required final Map<String, String> mapping})
      : _mapping = mapping;

  factory _$OpenApiSchemaOneOfDiscriminatorImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OpenApiSchemaOneOfDiscriminatorImplFromJson(json);

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

  @override
  String toString() {
    return 'OpenApiSchemaOneOfDiscriminator(propertyName: $propertyName, mapping: $mapping)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiSchemaOneOfDiscriminatorImpl &&
            (identical(other.propertyName, propertyName) ||
                other.propertyName == propertyName) &&
            const DeepCollectionEquality().equals(other._mapping, _mapping));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, propertyName, const DeepCollectionEquality().hash(_mapping));

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'propertyName') String propertyName,
            @JsonKey(name: 'mapping') Map<String, String> mapping)
        $default,
  ) {
    return $default(propertyName, mapping);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'propertyName') String propertyName,
            @JsonKey(name: 'mapping') Map<String, String> mapping)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(propertyName, mapping);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiSchemaOneOfDiscriminatorImplToJson(
      this,
    );
  }
}

abstract class _OpenApiSchemaOneOfDiscriminator
    implements OpenApiSchemaOneOfDiscriminator {
  factory _OpenApiSchemaOneOfDiscriminator(
          {@JsonKey(name: 'propertyName') required final String propertyName,
          @JsonKey(name: 'mapping')
          required final Map<String, String> mapping}) =
      _$OpenApiSchemaOneOfDiscriminatorImpl;

  factory _OpenApiSchemaOneOfDiscriminator.fromJson(Map<String, dynamic> json) =
      _$OpenApiSchemaOneOfDiscriminatorImpl.fromJson;

  @override
  @JsonKey(name: 'propertyName')
  String get propertyName;
  @override
  @JsonKey(name: 'mapping')
  Map<String, String> get mapping;
}
