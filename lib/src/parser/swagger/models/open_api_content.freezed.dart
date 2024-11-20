// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_api_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpenApiContent _$OpenApiContentFromJson(Map<String, dynamic> json) {
  return _OpenApiContent.fromJson(json);
}

/// @nodoc
mixin _$OpenApiContent {
  @JsonKey(name: 'application/json')
  OpenApiContentSchema? get applicationJson =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'application/x-www-form-urlencoded')
  OpenApiContentSchema? get applicationXWwwFormUrlencoded =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'multipart/form-data')
  OpenApiContentSchema? get multipartFormData =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'application/json')
            OpenApiContentSchema? applicationJson,
            @JsonKey(name: 'application/x-www-form-urlencoded')
            OpenApiContentSchema? applicationXWwwFormUrlencoded,
            @JsonKey(name: 'multipart/form-data')
            OpenApiContentSchema? multipartFormData)
        $default,
  ) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'application/json')
            OpenApiContentSchema? applicationJson,
            @JsonKey(name: 'application/x-www-form-urlencoded')
            OpenApiContentSchema? applicationXWwwFormUrlencoded,
            @JsonKey(name: 'multipart/form-data')
            OpenApiContentSchema? multipartFormData)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this OpenApiContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$OpenApiContentImpl implements _OpenApiContent {
  _$OpenApiContentImpl(
      {@JsonKey(name: 'application/json') required this.applicationJson,
      @JsonKey(name: 'application/x-www-form-urlencoded')
      required this.applicationXWwwFormUrlencoded,
      @JsonKey(name: 'multipart/form-data') required this.multipartFormData});

  factory _$OpenApiContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiContentImplFromJson(json);

  @override
  @JsonKey(name: 'application/json')
  final OpenApiContentSchema? applicationJson;
  @override
  @JsonKey(name: 'application/x-www-form-urlencoded')
  final OpenApiContentSchema? applicationXWwwFormUrlencoded;
  @override
  @JsonKey(name: 'multipart/form-data')
  final OpenApiContentSchema? multipartFormData;

  @override
  String toString() {
    return 'OpenApiContent(applicationJson: $applicationJson, applicationXWwwFormUrlencoded: $applicationXWwwFormUrlencoded, multipartFormData: $multipartFormData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiContentImpl &&
            (identical(other.applicationJson, applicationJson) ||
                other.applicationJson == applicationJson) &&
            (identical(other.applicationXWwwFormUrlencoded,
                    applicationXWwwFormUrlencoded) ||
                other.applicationXWwwFormUrlencoded ==
                    applicationXWwwFormUrlencoded) &&
            (identical(other.multipartFormData, multipartFormData) ||
                other.multipartFormData == multipartFormData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, applicationJson,
      applicationXWwwFormUrlencoded, multipartFormData);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'application/json')
            OpenApiContentSchema? applicationJson,
            @JsonKey(name: 'application/x-www-form-urlencoded')
            OpenApiContentSchema? applicationXWwwFormUrlencoded,
            @JsonKey(name: 'multipart/form-data')
            OpenApiContentSchema? multipartFormData)
        $default,
  ) {
    return $default(
        applicationJson, applicationXWwwFormUrlencoded, multipartFormData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'application/json')
            OpenApiContentSchema? applicationJson,
            @JsonKey(name: 'application/x-www-form-urlencoded')
            OpenApiContentSchema? applicationXWwwFormUrlencoded,
            @JsonKey(name: 'multipart/form-data')
            OpenApiContentSchema? multipartFormData)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          applicationJson, applicationXWwwFormUrlencoded, multipartFormData);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiContentImplToJson(
      this,
    );
  }
}

abstract class _OpenApiContent implements OpenApiContent {
  factory _OpenApiContent(
          {@JsonKey(name: 'application/json')
          required final OpenApiContentSchema? applicationJson,
          @JsonKey(name: 'application/x-www-form-urlencoded')
          required final OpenApiContentSchema? applicationXWwwFormUrlencoded,
          @JsonKey(name: 'multipart/form-data')
          required final OpenApiContentSchema? multipartFormData}) =
      _$OpenApiContentImpl;

  factory _OpenApiContent.fromJson(Map<String, dynamic> json) =
      _$OpenApiContentImpl.fromJson;

  @override
  @JsonKey(name: 'application/json')
  OpenApiContentSchema? get applicationJson;
  @override
  @JsonKey(name: 'application/x-www-form-urlencoded')
  OpenApiContentSchema? get applicationXWwwFormUrlencoded;
  @override
  @JsonKey(name: 'multipart/form-data')
  OpenApiContentSchema? get multipartFormData;
}

OpenApiContentSchema _$OpenApiContentSchemaFromJson(Map<String, dynamic> json) {
  return _OpenApiContentSchema.fromJson(json);
}

/// @nodoc
mixin _$OpenApiContentSchema {
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'schema')
  OpenApiSchema get schema => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'schema')
            OpenApiSchema schema)
        $default,
  ) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'schema')
            OpenApiSchema schema)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this OpenApiContentSchema to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$OpenApiContentSchemaImpl implements _OpenApiContentSchema {
  _$OpenApiContentSchemaImpl(
      {@OpenApiSchemaJsonConverter()
      @JsonKey(name: 'schema')
      required this.schema});

  factory _$OpenApiContentSchemaImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiContentSchemaImplFromJson(json);

  @override
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'schema')
  final OpenApiSchema schema;

  @override
  String toString() {
    return 'OpenApiContentSchema(schema: $schema)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiContentSchemaImpl &&
            (identical(other.schema, schema) || other.schema == schema));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, schema);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'schema')
            OpenApiSchema schema)
        $default,
  ) {
    return $default(schema);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'schema')
            OpenApiSchema schema)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(schema);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiContentSchemaImplToJson(
      this,
    );
  }
}

abstract class _OpenApiContentSchema implements OpenApiContentSchema {
  factory _OpenApiContentSchema(
      {@OpenApiSchemaJsonConverter()
      @JsonKey(name: 'schema')
      required final OpenApiSchema schema}) = _$OpenApiContentSchemaImpl;

  factory _OpenApiContentSchema.fromJson(Map<String, dynamic> json) =
      _$OpenApiContentSchemaImpl.fromJson;

  @override
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'schema')
  OpenApiSchema get schema;
}
