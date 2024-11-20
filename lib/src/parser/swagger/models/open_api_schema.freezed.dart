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
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(
                name: 'type', unknownEnumValue: OpenApiSchemaVarType.$unknown)
            OpenApiSchemaVarType? type,
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'pattern') String? pattern,
            @JsonKey(name: 'default') Object? default_)
        type,
    required TResult Function(
            @JsonKey(name: _refKey) String? ref,
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'pattern') String? pattern,
            @JsonKey(name: 'default') Object? default_)
        ref,
    required TResult Function(
            @OpenApiSchemaJsonMapConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiSchema>? anyOf,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'description') String? description)
        anyOf,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(
                name: 'type', unknownEnumValue: OpenApiSchemaVarType.$unknown)
            OpenApiSchemaVarType? type,
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'pattern') String? pattern,
            @JsonKey(name: 'default') Object? default_)?
        type,
    TResult Function(
            @JsonKey(name: _refKey) String? ref,
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'pattern') String? pattern,
            @JsonKey(name: 'default') Object? default_)?
        ref,
    TResult Function(
            @OpenApiSchemaJsonMapConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiSchema>? anyOf,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'description') String? description)?
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
      {@JsonKey(name: 'type', unknownEnumValue: OpenApiSchemaVarType.$unknown)
      this.type,
      @JsonKey(name: 'format') this.format,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'pattern') this.pattern,
      @JsonKey(name: 'default') this.default_,
      final String? $type})
      : $type = $type ?? 'type',
        super._();

  factory _$OpenApiSchemaTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiSchemaTypeImplFromJson(json);

  @override
  @JsonKey(name: 'type', unknownEnumValue: OpenApiSchemaVarType.$unknown)
  final OpenApiSchemaVarType? type;
  @override
  @JsonKey(name: 'format')
  final String? format;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'pattern')
  final String? pattern;
  @override
  @JsonKey(name: 'default')
  final Object? default_;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OpenApiSchema.type(type: $type, format: $format, description: $description, title: $title, pattern: $pattern, default_: $default_)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiSchemaTypeImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.pattern, pattern) || other.pattern == pattern) &&
            const DeepCollectionEquality().equals(other.default_, default_));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, format, description, title,
      pattern, const DeepCollectionEquality().hash(default_));

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(
                name: 'type', unknownEnumValue: OpenApiSchemaVarType.$unknown)
            OpenApiSchemaVarType? type,
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'pattern') String? pattern,
            @JsonKey(name: 'default') Object? default_)
        type,
    required TResult Function(
            @JsonKey(name: _refKey) String? ref,
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'pattern') String? pattern,
            @JsonKey(name: 'default') Object? default_)
        ref,
    required TResult Function(
            @OpenApiSchemaJsonMapConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiSchema>? anyOf,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'description') String? description)
        anyOf,
  }) {
    return type(this.type, format, description, title, pattern, default_);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(
                name: 'type', unknownEnumValue: OpenApiSchemaVarType.$unknown)
            OpenApiSchemaVarType? type,
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'pattern') String? pattern,
            @JsonKey(name: 'default') Object? default_)?
        type,
    TResult Function(
            @JsonKey(name: _refKey) String? ref,
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'pattern') String? pattern,
            @JsonKey(name: 'default') Object? default_)?
        ref,
    TResult Function(
            @OpenApiSchemaJsonMapConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiSchema>? anyOf,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'description') String? description)?
        anyOf,
    required TResult orElse(),
  }) {
    if (type != null) {
      return type(this.type, format, description, title, pattern, default_);
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
      {@JsonKey(name: 'type', unknownEnumValue: OpenApiSchemaVarType.$unknown)
      final OpenApiSchemaVarType? type,
      @JsonKey(name: 'format') final String? format,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'pattern') final String? pattern,
      @JsonKey(name: 'default')
      final Object? default_}) = _$OpenApiSchemaTypeImpl;
  const OpenApiSchemaType._() : super._();

  factory OpenApiSchemaType.fromJson(Map<String, dynamic> json) =
      _$OpenApiSchemaTypeImpl.fromJson;

  @JsonKey(name: 'type', unknownEnumValue: OpenApiSchemaVarType.$unknown)
  OpenApiSchemaVarType? get type;
  @JsonKey(name: 'format')
  String? get format;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @JsonKey(name: 'pattern')
  String? get pattern;
  @JsonKey(name: 'default')
  Object? get default_;
}

/// @nodoc
@JsonSerializable()
class _$OpenApiSchemaRefImpl extends OpenApiSchemaRef {
  const _$OpenApiSchemaRefImpl(
      {@JsonKey(name: _refKey) this.ref,
      @JsonKey(name: 'format') this.format,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'pattern') this.pattern,
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
  @JsonKey(name: 'format')
  final String? format;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'pattern')
  final String? pattern;
  @override
  @JsonKey(name: 'default')
  final Object? default_;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OpenApiSchema.ref(ref: $ref, format: $format, description: $description, title: $title, pattern: $pattern, default_: $default_)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiSchemaRefImpl &&
            (identical(other.ref, ref) || other.ref == ref) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.pattern, pattern) || other.pattern == pattern) &&
            const DeepCollectionEquality().equals(other.default_, default_));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ref, format, description, title,
      pattern, const DeepCollectionEquality().hash(default_));

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(
                name: 'type', unknownEnumValue: OpenApiSchemaVarType.$unknown)
            OpenApiSchemaVarType? type,
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'pattern') String? pattern,
            @JsonKey(name: 'default') Object? default_)
        type,
    required TResult Function(
            @JsonKey(name: _refKey) String? ref,
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'pattern') String? pattern,
            @JsonKey(name: 'default') Object? default_)
        ref,
    required TResult Function(
            @OpenApiSchemaJsonMapConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiSchema>? anyOf,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'description') String? description)
        anyOf,
  }) {
    return ref(this.ref, format, description, title, pattern, default_);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(
                name: 'type', unknownEnumValue: OpenApiSchemaVarType.$unknown)
            OpenApiSchemaVarType? type,
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'pattern') String? pattern,
            @JsonKey(name: 'default') Object? default_)?
        type,
    TResult Function(
            @JsonKey(name: _refKey) String? ref,
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'pattern') String? pattern,
            @JsonKey(name: 'default') Object? default_)?
        ref,
    TResult Function(
            @OpenApiSchemaJsonMapConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiSchema>? anyOf,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'description') String? description)?
        anyOf,
    required TResult orElse(),
  }) {
    if (ref != null) {
      return ref(this.ref, format, description, title, pattern, default_);
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
          @JsonKey(name: 'format') final String? format,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'pattern') final String? pattern,
          @JsonKey(name: 'default') final Object? default_}) =
      _$OpenApiSchemaRefImpl;
  const OpenApiSchemaRef._() : super._();

  factory OpenApiSchemaRef.fromJson(Map<String, dynamic> json) =
      _$OpenApiSchemaRefImpl.fromJson;

  @JsonKey(name: _refKey)
  String? get ref;
  @JsonKey(name: 'format')
  String? get format;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @JsonKey(name: 'pattern')
  String? get pattern;
  @JsonKey(name: 'default')
  Object? get default_;
}

/// @nodoc
@JsonSerializable()
class _$OpenApiSchemaAnyOfImpl extends OpenApiSchemaAnyOf {
  const _$OpenApiSchemaAnyOfImpl(
      {@OpenApiSchemaJsonMapConverter()
      @JsonKey(name: _anyOfKey)
      required final List<OpenApiSchema>? anyOf,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      final String? $type})
      : _anyOf = anyOf,
        $type = $type ?? 'anyOf',
        super._();

  factory _$OpenApiSchemaAnyOfImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiSchemaAnyOfImplFromJson(json);

  final List<OpenApiSchema>? _anyOf;
  @override
  @OpenApiSchemaJsonMapConverter()
  @JsonKey(name: _anyOfKey)
  List<OpenApiSchema>? get anyOf {
    final value = _anyOf;
    if (value == null) return null;
    if (_anyOf is EqualUnmodifiableListView) return _anyOf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OpenApiSchema.anyOf(anyOf: $anyOf, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiSchemaAnyOfImpl &&
            const DeepCollectionEquality().equals(other._anyOf, _anyOf) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_anyOf), title, description);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(
                name: 'type', unknownEnumValue: OpenApiSchemaVarType.$unknown)
            OpenApiSchemaVarType? type,
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'pattern') String? pattern,
            @JsonKey(name: 'default') Object? default_)
        type,
    required TResult Function(
            @JsonKey(name: _refKey) String? ref,
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'pattern') String? pattern,
            @JsonKey(name: 'default') Object? default_)
        ref,
    required TResult Function(
            @OpenApiSchemaJsonMapConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiSchema>? anyOf,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'description') String? description)
        anyOf,
  }) {
    return anyOf(this.anyOf, title, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(
                name: 'type', unknownEnumValue: OpenApiSchemaVarType.$unknown)
            OpenApiSchemaVarType? type,
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'pattern') String? pattern,
            @JsonKey(name: 'default') Object? default_)?
        type,
    TResult Function(
            @JsonKey(name: _refKey) String? ref,
            @JsonKey(name: 'format') String? format,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'pattern') String? pattern,
            @JsonKey(name: 'default') Object? default_)?
        ref,
    TResult Function(
            @OpenApiSchemaJsonMapConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiSchema>? anyOf,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'description') String? description)?
        anyOf,
    required TResult orElse(),
  }) {
    if (anyOf != null) {
      return anyOf(this.anyOf, title, description);
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
          {@OpenApiSchemaJsonMapConverter()
          @JsonKey(name: _anyOfKey)
          required final List<OpenApiSchema>? anyOf,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'description') final String? description}) =
      _$OpenApiSchemaAnyOfImpl;
  const OpenApiSchemaAnyOf._() : super._();

  factory OpenApiSchemaAnyOf.fromJson(Map<String, dynamic> json) =
      _$OpenApiSchemaAnyOfImpl.fromJson;

  @OpenApiSchemaJsonMapConverter()
  @JsonKey(name: _anyOfKey)
  List<OpenApiSchema>? get anyOf;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
}
