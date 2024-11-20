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

  /// Serializes this OpenApiComponents to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenApiComponents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenApiComponentsCopyWith<OpenApiComponents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenApiComponentsCopyWith<$Res> {
  factory $OpenApiComponentsCopyWith(
          OpenApiComponents value, $Res Function(OpenApiComponents) then) =
      _$OpenApiComponentsCopyWithImpl<$Res, OpenApiComponents>;
  @useResult
  $Res call(
      {@JsonKey(name: 'schemas') Map<String, OpenApiSchemas> schemas,
      @JsonKey(name: 'securitySchemes') Map<String, dynamic> securitySchemes});
}

/// @nodoc
class _$OpenApiComponentsCopyWithImpl<$Res, $Val extends OpenApiComponents>
    implements $OpenApiComponentsCopyWith<$Res> {
  _$OpenApiComponentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenApiComponents
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schemas = null,
    Object? securitySchemes = null,
  }) {
    return _then(_value.copyWith(
      schemas: null == schemas
          ? _value.schemas
          : schemas // ignore: cast_nullable_to_non_nullable
              as Map<String, OpenApiSchemas>,
      securitySchemes: null == securitySchemes
          ? _value.securitySchemes
          : securitySchemes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenApiComponentsImplCopyWith<$Res>
    implements $OpenApiComponentsCopyWith<$Res> {
  factory _$$OpenApiComponentsImplCopyWith(_$OpenApiComponentsImpl value,
          $Res Function(_$OpenApiComponentsImpl) then) =
      __$$OpenApiComponentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'schemas') Map<String, OpenApiSchemas> schemas,
      @JsonKey(name: 'securitySchemes') Map<String, dynamic> securitySchemes});
}

/// @nodoc
class __$$OpenApiComponentsImplCopyWithImpl<$Res>
    extends _$OpenApiComponentsCopyWithImpl<$Res, _$OpenApiComponentsImpl>
    implements _$$OpenApiComponentsImplCopyWith<$Res> {
  __$$OpenApiComponentsImplCopyWithImpl(_$OpenApiComponentsImpl _value,
      $Res Function(_$OpenApiComponentsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenApiComponents
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schemas = null,
    Object? securitySchemes = null,
  }) {
    return _then(_$OpenApiComponentsImpl(
      schemas: null == schemas
          ? _value._schemas
          : schemas // ignore: cast_nullable_to_non_nullable
              as Map<String, OpenApiSchemas>,
      securitySchemes: null == securitySchemes
          ? _value._securitySchemes
          : securitySchemes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
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

  /// Create a copy of OpenApiComponents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenApiComponentsImplCopyWith<_$OpenApiComponentsImpl> get copyWith =>
      __$$OpenApiComponentsImplCopyWithImpl<_$OpenApiComponentsImpl>(
          this, _$identity);

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

  /// Create a copy of OpenApiComponents
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenApiComponentsImplCopyWith<_$OpenApiComponentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
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

  /// Serializes this OpenApiSchemas to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenApiSchemas
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenApiSchemasCopyWith<OpenApiSchemas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenApiSchemasCopyWith<$Res> {
  factory $OpenApiSchemasCopyWith(
          OpenApiSchemas value, $Res Function(OpenApiSchemas) then) =
      _$OpenApiSchemasCopyWithImpl<$Res, OpenApiSchemas>;
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
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$OpenApiSchemasCopyWithImpl<$Res, $Val extends OpenApiSchemas>
    implements $OpenApiSchemasCopyWith<$Res> {
  _$OpenApiSchemasCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
  }) {
    return _then(_value.copyWith(
      properties: freezed == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, OpenApiSchema>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      required_: freezed == required_
          ? _value.required_
          : required_ // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      enum_: freezed == enum_
          ? _value.enum_
          : enum_ // ignore: cast_nullable_to_non_nullable
              as List<Object>?,
      const_: freezed == const_ ? _value.const_ : const_,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenApiSchemasImplCopyWith<$Res>
    implements $OpenApiSchemasCopyWith<$Res> {
  factory _$$OpenApiSchemasImplCopyWith(_$OpenApiSchemasImpl value,
          $Res Function(_$OpenApiSchemasImpl) then) =
      __$$OpenApiSchemasImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$$OpenApiSchemasImplCopyWithImpl<$Res>
    extends _$OpenApiSchemasCopyWithImpl<$Res, _$OpenApiSchemasImpl>
    implements _$$OpenApiSchemasImplCopyWith<$Res> {
  __$$OpenApiSchemasImplCopyWithImpl(
      _$OpenApiSchemasImpl _value, $Res Function(_$OpenApiSchemasImpl) _then)
      : super(_value, _then);

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
  }) {
    return _then(_$OpenApiSchemasImpl(
      properties: freezed == properties
          ? _value._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, OpenApiSchema>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      required_: freezed == required_
          ? _value._required_
          : required_ // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      enum_: freezed == enum_
          ? _value._enum_
          : enum_ // ignore: cast_nullable_to_non_nullable
              as List<Object>?,
      const_: freezed == const_ ? _value.const_ : const_,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
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

  /// Create a copy of OpenApiSchemas
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenApiSchemasImplCopyWith<_$OpenApiSchemasImpl> get copyWith =>
      __$$OpenApiSchemasImplCopyWithImpl<_$OpenApiSchemasImpl>(
          this, _$identity);

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

  /// Create a copy of OpenApiSchemas
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenApiSchemasImplCopyWith<_$OpenApiSchemasImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
