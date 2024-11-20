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
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'pattern') String? pattern,
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
            @JsonKey(name: 'title') String? title)
        anyOf,
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
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'pattern') String? pattern,
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
            @JsonKey(name: 'title') String? title)?
        anyOf,
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
      @JsonKey(name: 'format') this.format,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'pattern') this.pattern,
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
  @JsonKey(name: 'format')
  final String? format;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'pattern')
  final String? pattern;
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
    return 'OpenApiSchema.type(enum_: $enum_, type: $type, items: $items, format: $format, description: $description, pattern: $pattern, default_: $default_, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiSchemaTypeImpl &&
            const DeepCollectionEquality().equals(other._enum_, _enum_) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.items, items) || other.items == items) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pattern, pattern) || other.pattern == pattern) &&
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
      format,
      description,
      pattern,
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
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'pattern') String? pattern,
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
            @JsonKey(name: 'title') String? title)
        anyOf,
  }) {
    return type(
        enum_, this.type, items, format, description, pattern, default_, title);
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
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'pattern') String? pattern,
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
            @JsonKey(name: 'title') String? title)?
        anyOf,
    required TResult orElse(),
  }) {
    if (type != null) {
      return type(enum_, this.type, items, format, description, pattern,
          default_, title);
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
      @JsonKey(name: 'format') final String? format,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'pattern') final String? pattern,
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
  @JsonKey(name: 'format')
  String? get format;
  @JsonKey(name: 'description')
  String? get description;
  @JsonKey(name: 'pattern')
  String? get pattern;
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
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'pattern') String? pattern,
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
            @JsonKey(name: 'title') String? title)
        anyOf,
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
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'pattern') String? pattern,
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
            @JsonKey(name: 'title') String? title)?
        anyOf,
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

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OpenApiSchema.anyOf(anyOf: $anyOf, description: $description, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiSchemaAnyOfImpl &&
            const DeepCollectionEquality().equals(other._anyOf, _anyOf) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_anyOf), description, title);

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
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'pattern') String? pattern,
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
            @JsonKey(name: 'title') String? title)
        anyOf,
  }) {
    return anyOf(this.anyOf, description, title);
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
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'pattern') String? pattern,
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
            @JsonKey(name: 'title') String? title)?
        anyOf,
    required TResult orElse(),
  }) {
    if (anyOf != null) {
      return anyOf(this.anyOf, description, title);
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
      @JsonKey(name: 'title') final String? title}) = _$OpenApiSchemaAnyOfImpl;
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
}
