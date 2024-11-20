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
  Map<String, OpenApiSchema> get schemas => throw _privateConstructorUsedError;
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
      {@JsonKey(name: 'schemas') Map<String, OpenApiSchema> schemas,
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
              as Map<String, OpenApiSchema>,
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
      {@JsonKey(name: 'schemas') Map<String, OpenApiSchema> schemas,
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
              as Map<String, OpenApiSchema>,
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
      required final Map<String, OpenApiSchema> schemas,
      @JsonKey(name: 'securitySchemes')
      required final Map<String, dynamic> securitySchemes})
      : _schemas = schemas,
        _securitySchemes = securitySchemes,
        super._();

  factory _$OpenApiComponentsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiComponentsImplFromJson(json);

  final Map<String, OpenApiSchema> _schemas;
  @override
  @JsonKey(name: 'schemas')
  Map<String, OpenApiSchema> get schemas {
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
          required final Map<String, OpenApiSchema> schemas,
          @JsonKey(name: 'securitySchemes')
          required final Map<String, dynamic> securitySchemes}) =
      _$OpenApiComponentsImpl;
  const _OpenApiComponents._() : super._();

  factory _OpenApiComponents.fromJson(Map<String, dynamic> json) =
      _$OpenApiComponentsImpl.fromJson;

  @override
  @JsonKey(name: 'schemas')
  Map<String, OpenApiSchema> get schemas;
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

OpenApiSchema _$OpenApiSchemaFromJson(Map<String, dynamic> json) {
  return _OpenApiSchema.fromJson(json);
}

/// @nodoc
mixin _$OpenApiSchema {
  /// Serializes this OpenApiSchema to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenApiSchemaCopyWith<$Res> {
  factory $OpenApiSchemaCopyWith(
          OpenApiSchema value, $Res Function(OpenApiSchema) then) =
      _$OpenApiSchemaCopyWithImpl<$Res, OpenApiSchema>;
}

/// @nodoc
class _$OpenApiSchemaCopyWithImpl<$Res, $Val extends OpenApiSchema>
    implements $OpenApiSchemaCopyWith<$Res> {
  _$OpenApiSchemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenApiSchema
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OpenApiSchemaImplCopyWith<$Res> {
  factory _$$OpenApiSchemaImplCopyWith(
          _$OpenApiSchemaImpl value, $Res Function(_$OpenApiSchemaImpl) then) =
      __$$OpenApiSchemaImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpenApiSchemaImplCopyWithImpl<$Res>
    extends _$OpenApiSchemaCopyWithImpl<$Res, _$OpenApiSchemaImpl>
    implements _$$OpenApiSchemaImplCopyWith<$Res> {
  __$$OpenApiSchemaImplCopyWithImpl(
      _$OpenApiSchemaImpl _value, $Res Function(_$OpenApiSchemaImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenApiSchema
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$OpenApiSchemaImpl extends _OpenApiSchema {
  const _$OpenApiSchemaImpl() : super._();

  factory _$OpenApiSchemaImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiSchemaImplFromJson(json);

  @override
  String toString() {
    return 'OpenApiSchema()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OpenApiSchemaImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiSchemaImplToJson(
      this,
    );
  }
}

abstract class _OpenApiSchema extends OpenApiSchema {
  const factory _OpenApiSchema() = _$OpenApiSchemaImpl;
  const _OpenApiSchema._() : super._();

  factory _OpenApiSchema.fromJson(Map<String, dynamic> json) =
      _$OpenApiSchemaImpl.fromJson;
}
