// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_api_components.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpenApiComponents _$OpenApiComponentsFromJson(Map<String, dynamic> json) {
  return _OpenApiComponents.fromJson(json);
}

/// @nodoc
mixin _$OpenApiComponents {
  @JsonKey(name: 'schemas')
  Map<String, OpenApiSchemas> get schemas => throw _privateConstructorUsedError;
  @JsonKey(name: 'securitySchemes')
  Map<String, dynamic> get securitySchemes =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'schemas') Map<String, OpenApiSchemas> schemas,
            @JsonKey(name: 'securitySchemes')
            Map<String, dynamic> securitySchemes)
        $default,
  ) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'schemas') Map<String, OpenApiSchemas> schemas,
            @JsonKey(name: 'securitySchemes')
            Map<String, dynamic> securitySchemes)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this OpenApiComponents to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$OpenApiComponentsImpl extends _OpenApiComponents {
  const _$OpenApiComponentsImpl(
      {@JsonKey(name: 'schemas')
      required final Map<String, OpenApiSchemas> schemas,
      @JsonKey(name: 'securitySchemes')
      required final Map<String, dynamic> securitySchemes})
      : _schemas = schemas,
        _securitySchemes = securitySchemes,
        super._();

  factory _$OpenApiComponentsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiComponentsImplFromJson(json);

  final Map<String, OpenApiSchemas> _schemas;
  @override
  @JsonKey(name: 'schemas')
  Map<String, OpenApiSchemas> get schemas {
    if (_schemas is EqualUnmodifiableMapView) return _schemas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_schemas);
  }

  final Map<String, dynamic> _securitySchemes;
  @override
  @JsonKey(name: 'securitySchemes')
  Map<String, dynamic> get securitySchemes {
    if (_securitySchemes is EqualUnmodifiableMapView) return _securitySchemes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_securitySchemes);
  }

  @override
  String toString() {
    return 'OpenApiComponents(schemas: $schemas, securitySchemes: $securitySchemes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiComponentsImpl &&
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
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'schemas') Map<String, OpenApiSchemas> schemas,
            @JsonKey(name: 'securitySchemes')
            Map<String, dynamic> securitySchemes)
        $default,
  ) {
    return $default(schemas, securitySchemes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'schemas') Map<String, OpenApiSchemas> schemas,
            @JsonKey(name: 'securitySchemes')
            Map<String, dynamic> securitySchemes)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(schemas, securitySchemes);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiComponentsImplToJson(
      this,
    );
  }
}

abstract class _OpenApiComponents extends OpenApiComponents {
  const factory _OpenApiComponents(
          {@JsonKey(name: 'schemas')
          required final Map<String, OpenApiSchemas> schemas,
          @JsonKey(name: 'securitySchemes')
          required final Map<String, dynamic> securitySchemes}) =
      _$OpenApiComponentsImpl;
  const _OpenApiComponents._() : super._();

  factory _OpenApiComponents.fromJson(Map<String, dynamic> json) =
      _$OpenApiComponentsImpl.fromJson;

  @override
  @JsonKey(name: 'schemas')
  Map<String, OpenApiSchemas> get schemas;
  @override
  @JsonKey(name: 'securitySchemes')
  Map<String, dynamic> get securitySchemes;
}

OpenApiSchemas _$OpenApiSchemasFromJson(Map<String, dynamic> json) {
  return _OpenApiSchemas.fromJson(json);
}

/// @nodoc
mixin _$OpenApiSchemas {
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'properties')
  Map<String, OpenApiSchema>? get properties =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'required')
  List<String>? get required_ => throw _privateConstructorUsedError;
  @JsonKey(name: 'enum')
  List<Object>? get enum_ => throw _privateConstructorUsedError;
  @JsonKey(name: 'const')
  Object? get const_ => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
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
            @JsonKey(name: 'description') String? description)
        $default,
  ) =>
      throw _privateConstructorUsedError;

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
            @JsonKey(name: 'description') String? description)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this OpenApiSchemas to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$OpenApiSchemasImpl extends _OpenApiSchemas {
  const _$OpenApiSchemasImpl(
      {@OpenApiSchemaJsonConverter()
      @JsonKey(name: 'properties')
      required final Map<String, OpenApiSchema>? properties,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'required') final List<String>? required_,
      @JsonKey(name: 'enum') final List<Object>? enum_,
      @JsonKey(name: 'const') this.const_,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description})
      : _properties = properties,
        _required_ = required_,
        _enum_ = enum_,
        super._();

  factory _$OpenApiSchemasImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiSchemasImplFromJson(json);

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

  @override
  String toString() {
    return 'OpenApiSchemas(properties: $properties, type: $type, required_: $required_, enum_: $enum_, const_: $const_, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiSchemasImpl &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._required_, _required_) &&
            const DeepCollectionEquality().equals(other._enum_, _enum_) &&
            const DeepCollectionEquality().equals(other.const_, const_) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
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
      description);

  @override
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
            @JsonKey(name: 'description') String? description)
        $default,
  ) {
    return $default(
        properties, type, required_, enum_, const_, title, description);
  }

  @override
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
            @JsonKey(name: 'description') String? description)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          properties, type, required_, enum_, const_, title, description);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiSchemasImplToJson(
      this,
    );
  }
}

abstract class _OpenApiSchemas extends OpenApiSchemas {
  const factory _OpenApiSchemas(
          {@OpenApiSchemaJsonConverter()
          @JsonKey(name: 'properties')
          required final Map<String, OpenApiSchema>? properties,
          @JsonKey(name: 'type') required final String type,
          @JsonKey(name: 'required') final List<String>? required_,
          @JsonKey(name: 'enum') final List<Object>? enum_,
          @JsonKey(name: 'const') final Object? const_,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'description') final String? description}) =
      _$OpenApiSchemasImpl;
  const _OpenApiSchemas._() : super._();

  factory _OpenApiSchemas.fromJson(Map<String, dynamic> json) =
      _$OpenApiSchemasImpl.fromJson;

  @override
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'properties')
  Map<String, OpenApiSchema>? get properties;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'required')
  List<String>? get required_;
  @override
  @JsonKey(name: 'enum')
  List<Object>? get enum_;
  @override
  @JsonKey(name: 'const')
  Object? get const_;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
}
