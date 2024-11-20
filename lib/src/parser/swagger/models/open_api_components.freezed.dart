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
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default,
  ) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this OpenApiSchemas to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$OpenApiSchemasImpl extends _OpenApiSchemas {
  const _$OpenApiSchemasImpl() : super._();

  factory _$OpenApiSchemasImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiSchemasImplFromJson(json);

  @override
  String toString() {
    return 'OpenApiSchemas()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OpenApiSchemasImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default,
  ) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
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
  const factory _OpenApiSchemas() = _$OpenApiSchemasImpl;
  const _OpenApiSchemas._() : super._();

  factory _OpenApiSchemas.fromJson(Map<String, dynamic> json) =
      _$OpenApiSchemasImpl.fromJson;
}
