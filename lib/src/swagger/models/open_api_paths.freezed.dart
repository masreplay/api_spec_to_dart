// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_api_paths.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpenApiPathMethod _$OpenApiPathMethodFromJson(Map<String, dynamic> json) {
  return _OpenApiPathMethod.fromJson(json);
}

/// @nodoc
mixin _$OpenApiPathMethod {
  @JsonKey(name: 'tags')
  List<String> get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'summary')
  String? get summary => throw _privateConstructorUsedError;
  @JsonKey(name: 'operationId')
  String get operationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'parameters')
  List<OpenApiPathMethodParameter> get parameters =>
      throw _privateConstructorUsedError;
  Map<String, OpenApiPathMethodResponse>? get responses =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'tags') List<String> tags,
            @JsonKey(name: 'summary') String? summary,
            @JsonKey(name: 'operationId') String operationId,
            @JsonKey(name: 'parameters')
            List<OpenApiPathMethodParameter> parameters,
            Map<String, OpenApiPathMethodResponse>? responses)
        $default,
  ) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'tags') List<String> tags,
            @JsonKey(name: 'summary') String? summary,
            @JsonKey(name: 'operationId') String operationId,
            @JsonKey(name: 'parameters')
            List<OpenApiPathMethodParameter> parameters,
            Map<String, OpenApiPathMethodResponse>? responses)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this OpenApiPathMethod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$OpenApiPathMethodImpl extends _OpenApiPathMethod {
  const _$OpenApiPathMethodImpl(
      {@JsonKey(name: 'tags') required final List<String> tags,
      @JsonKey(name: 'summary') required this.summary,
      @JsonKey(name: 'operationId') required this.operationId,
      @JsonKey(name: 'parameters')
      required final List<OpenApiPathMethodParameter> parameters,
      required final Map<String, OpenApiPathMethodResponse>? responses})
      : _tags = tags,
        _parameters = parameters,
        _responses = responses,
        super._();

  factory _$OpenApiPathMethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiPathMethodImplFromJson(json);

  final List<String> _tags;
  @override
  @JsonKey(name: 'tags')
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey(name: 'summary')
  final String? summary;
  @override
  @JsonKey(name: 'operationId')
  final String operationId;
  final List<OpenApiPathMethodParameter> _parameters;
  @override
  @JsonKey(name: 'parameters')
  List<OpenApiPathMethodParameter> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  final Map<String, OpenApiPathMethodResponse>? _responses;
  @override
  Map<String, OpenApiPathMethodResponse>? get responses {
    final value = _responses;
    if (value == null) return null;
    if (_responses is EqualUnmodifiableMapView) return _responses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'OpenApiPathMethod(tags: $tags, summary: $summary, operationId: $operationId, parameters: $parameters, responses: $responses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiPathMethodImpl &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.operationId, operationId) ||
                other.operationId == operationId) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            const DeepCollectionEquality()
                .equals(other._responses, _responses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tags),
      summary,
      operationId,
      const DeepCollectionEquality().hash(_parameters),
      const DeepCollectionEquality().hash(_responses));

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'tags') List<String> tags,
            @JsonKey(name: 'summary') String? summary,
            @JsonKey(name: 'operationId') String operationId,
            @JsonKey(name: 'parameters')
            List<OpenApiPathMethodParameter> parameters,
            Map<String, OpenApiPathMethodResponse>? responses)
        $default,
  ) {
    return $default(tags, summary, operationId, parameters, responses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'tags') List<String> tags,
            @JsonKey(name: 'summary') String? summary,
            @JsonKey(name: 'operationId') String operationId,
            @JsonKey(name: 'parameters')
            List<OpenApiPathMethodParameter> parameters,
            Map<String, OpenApiPathMethodResponse>? responses)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(tags, summary, operationId, parameters, responses);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiPathMethodImplToJson(
      this,
    );
  }
}

abstract class _OpenApiPathMethod extends OpenApiPathMethod {
  const factory _OpenApiPathMethod(
          {@JsonKey(name: 'tags') required final List<String> tags,
          @JsonKey(name: 'summary') required final String? summary,
          @JsonKey(name: 'operationId') required final String operationId,
          @JsonKey(name: 'parameters')
          required final List<OpenApiPathMethodParameter> parameters,
          required final Map<String, OpenApiPathMethodResponse>? responses}) =
      _$OpenApiPathMethodImpl;
  const _OpenApiPathMethod._() : super._();

  factory _OpenApiPathMethod.fromJson(Map<String, dynamic> json) =
      _$OpenApiPathMethodImpl.fromJson;

  @override
  @JsonKey(name: 'tags')
  List<String> get tags;
  @override
  @JsonKey(name: 'summary')
  String? get summary;
  @override
  @JsonKey(name: 'operationId')
  String get operationId;
  @override
  @JsonKey(name: 'parameters')
  List<OpenApiPathMethodParameter> get parameters;
  @override
  Map<String, OpenApiPathMethodResponse>? get responses;
}

OpenApiPathMethodParameter _$OpenApiPathMethodParameterFromJson(
    Map<String, dynamic> json) {
  return _OpenApiPathMethodParameter.fromJson(json);
}

/// @nodoc
mixin _$OpenApiPathMethodParameter {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'in')
  OpenApiPathMethodParameterType get in_ => throw _privateConstructorUsedError;
  @JsonKey(name: 'required')
  bool get required_ => throw _privateConstructorUsedError;
  @JsonKey(name: 'schema')
  OpenApiPathMethodParameterSchema get schema =>
      throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get example => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'in') OpenApiPathMethodParameterType in_,
            @JsonKey(name: 'required') bool required_,
            @JsonKey(name: 'schema') OpenApiPathMethodParameterSchema schema,
            String? description,
            String? example)
        $default,
  ) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'in') OpenApiPathMethodParameterType in_,
            @JsonKey(name: 'required') bool required_,
            @JsonKey(name: 'schema') OpenApiPathMethodParameterSchema schema,
            String? description,
            String? example)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this OpenApiPathMethodParameter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$OpenApiPathMethodParameterImpl extends _OpenApiPathMethodParameter {
  const _$OpenApiPathMethodParameterImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'in') required this.in_,
      @JsonKey(name: 'required') required this.required_,
      @JsonKey(name: 'schema') required this.schema,
      required this.description,
      required this.example})
      : super._();

  factory _$OpenApiPathMethodParameterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OpenApiPathMethodParameterImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'in')
  final OpenApiPathMethodParameterType in_;
  @override
  @JsonKey(name: 'required')
  final bool required_;
  @override
  @JsonKey(name: 'schema')
  final OpenApiPathMethodParameterSchema schema;
  @override
  final String? description;
  @override
  final String? example;

  @override
  String toString() {
    return 'OpenApiPathMethodParameter(name: $name, in_: $in_, required_: $required_, schema: $schema, description: $description, example: $example)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiPathMethodParameterImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.in_, in_) || other.in_ == in_) &&
            (identical(other.required_, required_) ||
                other.required_ == required_) &&
            (identical(other.schema, schema) || other.schema == schema) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.example, example) || other.example == example));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, in_, required_, schema, description, example);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'in') OpenApiPathMethodParameterType in_,
            @JsonKey(name: 'required') bool required_,
            @JsonKey(name: 'schema') OpenApiPathMethodParameterSchema schema,
            String? description,
            String? example)
        $default,
  ) {
    return $default(name, in_, required_, schema, description, example);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'in') OpenApiPathMethodParameterType in_,
            @JsonKey(name: 'required') bool required_,
            @JsonKey(name: 'schema') OpenApiPathMethodParameterSchema schema,
            String? description,
            String? example)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(name, in_, required_, schema, description, example);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiPathMethodParameterImplToJson(
      this,
    );
  }
}

abstract class _OpenApiPathMethodParameter extends OpenApiPathMethodParameter {
  const factory _OpenApiPathMethodParameter(
      {@JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'in') required final OpenApiPathMethodParameterType in_,
      @JsonKey(name: 'required') required final bool required_,
      @JsonKey(name: 'schema')
      required final OpenApiPathMethodParameterSchema schema,
      required final String? description,
      required final String? example}) = _$OpenApiPathMethodParameterImpl;
  const _OpenApiPathMethodParameter._() : super._();

  factory _OpenApiPathMethodParameter.fromJson(Map<String, dynamic> json) =
      _$OpenApiPathMethodParameterImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'in')
  OpenApiPathMethodParameterType get in_;
  @override
  @JsonKey(name: 'required')
  bool get required_;
  @override
  @JsonKey(name: 'schema')
  OpenApiPathMethodParameterSchema get schema;
  @override
  String? get description;
  @override
  String? get example;
}

OpenApiPathMethodParameterSchema _$OpenApiPathMethodParameterSchemaFromJson(
    Map<String, dynamic> json) {
  return _OpenApiPathMethodParameterSchema.fromJson(json);
}

/// @nodoc
mixin _$OpenApiPathMethodParameterSchema {
  OpenApiPathMethodParameterSchemaType get type =>
      throw _privateConstructorUsedError;
  String? get format => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get pattern => throw _privateConstructorUsedError;
  List<OpenApiPathMethodParameterSchema>? get anyOf =>
      throw _privateConstructorUsedError;
  Object? get defaultValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            OpenApiPathMethodParameterSchemaType type,
            String? format,
            String? description,
            String? title,
            String? pattern,
            List<OpenApiPathMethodParameterSchema>? anyOf,
            Object? defaultValue)
        $default,
  ) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            OpenApiPathMethodParameterSchemaType type,
            String? format,
            String? description,
            String? title,
            String? pattern,
            List<OpenApiPathMethodParameterSchema>? anyOf,
            Object? defaultValue)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this OpenApiPathMethodParameterSchema to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$OpenApiPathMethodParameterSchemaImpl
    extends _OpenApiPathMethodParameterSchema {
  const _$OpenApiPathMethodParameterSchemaImpl(
      {required this.type,
      required this.format,
      required this.description,
      required this.title,
      required this.pattern,
      required final List<OpenApiPathMethodParameterSchema>? anyOf,
      required this.defaultValue})
      : _anyOf = anyOf,
        super._();

  factory _$OpenApiPathMethodParameterSchemaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OpenApiPathMethodParameterSchemaImplFromJson(json);

  @override
  final OpenApiPathMethodParameterSchemaType type;
  @override
  final String? format;
  @override
  final String? description;
  @override
  final String? title;
  @override
  final String? pattern;
  final List<OpenApiPathMethodParameterSchema>? _anyOf;
  @override
  List<OpenApiPathMethodParameterSchema>? get anyOf {
    final value = _anyOf;
    if (value == null) return null;
    if (_anyOf is EqualUnmodifiableListView) return _anyOf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Object? defaultValue;

  @override
  String toString() {
    return 'OpenApiPathMethodParameterSchema(type: $type, format: $format, description: $description, title: $title, pattern: $pattern, anyOf: $anyOf, defaultValue: $defaultValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiPathMethodParameterSchemaImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.pattern, pattern) || other.pattern == pattern) &&
            const DeepCollectionEquality().equals(other._anyOf, _anyOf) &&
            const DeepCollectionEquality()
                .equals(other.defaultValue, defaultValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      format,
      description,
      title,
      pattern,
      const DeepCollectionEquality().hash(_anyOf),
      const DeepCollectionEquality().hash(defaultValue));

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            OpenApiPathMethodParameterSchemaType type,
            String? format,
            String? description,
            String? title,
            String? pattern,
            List<OpenApiPathMethodParameterSchema>? anyOf,
            Object? defaultValue)
        $default,
  ) {
    return $default(
        type, format, description, title, pattern, anyOf, defaultValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            OpenApiPathMethodParameterSchemaType type,
            String? format,
            String? description,
            String? title,
            String? pattern,
            List<OpenApiPathMethodParameterSchema>? anyOf,
            Object? defaultValue)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          type, format, description, title, pattern, anyOf, defaultValue);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiPathMethodParameterSchemaImplToJson(
      this,
    );
  }
}

abstract class _OpenApiPathMethodParameterSchema
    extends OpenApiPathMethodParameterSchema {
  const factory _OpenApiPathMethodParameterSchema(
          {required final OpenApiPathMethodParameterSchemaType type,
          required final String? format,
          required final String? description,
          required final String? title,
          required final String? pattern,
          required final List<OpenApiPathMethodParameterSchema>? anyOf,
          required final Object? defaultValue}) =
      _$OpenApiPathMethodParameterSchemaImpl;
  const _OpenApiPathMethodParameterSchema._() : super._();

  factory _OpenApiPathMethodParameterSchema.fromJson(
          Map<String, dynamic> json) =
      _$OpenApiPathMethodParameterSchemaImpl.fromJson;

  @override
  OpenApiPathMethodParameterSchemaType get type;
  @override
  String? get format;
  @override
  String? get description;
  @override
  String? get title;
  @override
  String? get pattern;
  @override
  List<OpenApiPathMethodParameterSchema>? get anyOf;
  @override
  Object? get defaultValue;
}

OpenApiPathMethodResponse _$OpenApiPathMethodResponseFromJson(
    Map<String, dynamic> json) {
  return _OpenApiPathMethodResponse.fromJson(json);
}

/// @nodoc
mixin _$OpenApiPathMethodResponse {
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

  /// Serializes this OpenApiPathMethodResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$OpenApiPathMethodResponseImpl implements _OpenApiPathMethodResponse {
  _$OpenApiPathMethodResponseImpl();

  factory _$OpenApiPathMethodResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiPathMethodResponseImplFromJson(json);

  @override
  String toString() {
    return 'OpenApiPathMethodResponse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiPathMethodResponseImpl);
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
    return _$$OpenApiPathMethodResponseImplToJson(
      this,
    );
  }
}

abstract class _OpenApiPathMethodResponse implements OpenApiPathMethodResponse {
  factory _OpenApiPathMethodResponse() = _$OpenApiPathMethodResponseImpl;

  factory _OpenApiPathMethodResponse.fromJson(Map<String, dynamic> json) =
      _$OpenApiPathMethodResponseImpl.fromJson;
}
