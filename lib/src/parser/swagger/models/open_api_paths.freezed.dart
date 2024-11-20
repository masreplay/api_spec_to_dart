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

OpenApiPath _$OpenApiPathFromJson(Map<String, dynamic> json) {
  return _OpenApiPath.fromJson(json);
}

/// @nodoc
mixin _$OpenApiPath {
  OpenApiPathMethod? get get => throw _privateConstructorUsedError;
  OpenApiPathMethod? get post => throw _privateConstructorUsedError;
  OpenApiPathMethod? get put => throw _privateConstructorUsedError;
  OpenApiPathMethod? get delete => throw _privateConstructorUsedError;
  OpenApiPathMethod? get options => throw _privateConstructorUsedError;
  OpenApiPathMethod? get head => throw _privateConstructorUsedError;
  OpenApiPathMethod? get patch => throw _privateConstructorUsedError;
  OpenApiPathMethod? get trace => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            OpenApiPathMethod? get,
            OpenApiPathMethod? post,
            OpenApiPathMethod? put,
            OpenApiPathMethod? delete,
            OpenApiPathMethod? options,
            OpenApiPathMethod? head,
            OpenApiPathMethod? patch,
            OpenApiPathMethod? trace)
        $default,
  ) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            OpenApiPathMethod? get,
            OpenApiPathMethod? post,
            OpenApiPathMethod? put,
            OpenApiPathMethod? delete,
            OpenApiPathMethod? options,
            OpenApiPathMethod? head,
            OpenApiPathMethod? patch,
            OpenApiPathMethod? trace)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this OpenApiPath to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$OpenApiPathImpl implements _OpenApiPath {
  _$OpenApiPathImpl(
      {this.get,
      this.post,
      this.put,
      this.delete,
      this.options,
      this.head,
      this.patch,
      this.trace});

  factory _$OpenApiPathImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiPathImplFromJson(json);

  @override
  final OpenApiPathMethod? get;
  @override
  final OpenApiPathMethod? post;
  @override
  final OpenApiPathMethod? put;
  @override
  final OpenApiPathMethod? delete;
  @override
  final OpenApiPathMethod? options;
  @override
  final OpenApiPathMethod? head;
  @override
  final OpenApiPathMethod? patch;
  @override
  final OpenApiPathMethod? trace;

  @override
  String toString() {
    return 'OpenApiPath(get: $get, post: $post, put: $put, delete: $delete, options: $options, head: $head, patch: $patch, trace: $trace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiPathImpl &&
            (identical(other.get, get) || other.get == get) &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.put, put) || other.put == put) &&
            (identical(other.delete, delete) || other.delete == delete) &&
            (identical(other.options, options) || other.options == options) &&
            (identical(other.head, head) || other.head == head) &&
            (identical(other.patch, patch) || other.patch == patch) &&
            (identical(other.trace, trace) || other.trace == trace));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, get, post, put, delete, options, head, patch, trace);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            OpenApiPathMethod? get,
            OpenApiPathMethod? post,
            OpenApiPathMethod? put,
            OpenApiPathMethod? delete,
            OpenApiPathMethod? options,
            OpenApiPathMethod? head,
            OpenApiPathMethod? patch,
            OpenApiPathMethod? trace)
        $default,
  ) {
    return $default(get, post, put, delete, options, head, patch, trace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            OpenApiPathMethod? get,
            OpenApiPathMethod? post,
            OpenApiPathMethod? put,
            OpenApiPathMethod? delete,
            OpenApiPathMethod? options,
            OpenApiPathMethod? head,
            OpenApiPathMethod? patch,
            OpenApiPathMethod? trace)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(get, post, put, delete, options, head, patch, trace);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiPathImplToJson(
      this,
    );
  }
}

abstract class _OpenApiPath implements OpenApiPath {
  factory _OpenApiPath(
      {final OpenApiPathMethod? get,
      final OpenApiPathMethod? post,
      final OpenApiPathMethod? put,
      final OpenApiPathMethod? delete,
      final OpenApiPathMethod? options,
      final OpenApiPathMethod? head,
      final OpenApiPathMethod? patch,
      final OpenApiPathMethod? trace}) = _$OpenApiPathImpl;

  factory _OpenApiPath.fromJson(Map<String, dynamic> json) =
      _$OpenApiPathImpl.fromJson;

  @override
  OpenApiPathMethod? get get;
  @override
  OpenApiPathMethod? get post;
  @override
  OpenApiPathMethod? get put;
  @override
  OpenApiPathMethod? get delete;
  @override
  OpenApiPathMethod? get options;
  @override
  OpenApiPathMethod? get head;
  @override
  OpenApiPathMethod? get patch;
  @override
  OpenApiPathMethod? get trace;
}

OpenApiPathMethod _$OpenApiPathMethodFromJson(Map<String, dynamic> json) {
  return _OpenApiPathMethod.fromJson(json);
}

/// @nodoc
mixin _$OpenApiPathMethod {
  @JsonKey(name: 'tags')
  List<String> get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'summary')
  String? get summary => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'operationId')
  String get operationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'deprecated')
  bool? get deprecated => throw _privateConstructorUsedError;
  @JsonKey(name: 'security')
  List<Map<String, List<dynamic>>>? get security =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'parameters')
  List<OpenApiPathMethodParameter>? get parameters =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'requestBody')
  OpenApiPathMethodRequestBody? get requestBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'responses')
  Map<String, OpenApiPathMethodResponse>? get responses =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'tags') List<String> tags,
            @JsonKey(name: 'summary') String? summary,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'operationId') String operationId,
            @JsonKey(name: 'deprecated') bool? deprecated,
            @JsonKey(name: 'security')
            List<Map<String, List<dynamic>>>? security,
            @JsonKey(name: 'parameters')
            List<OpenApiPathMethodParameter>? parameters,
            @JsonKey(name: 'requestBody')
            OpenApiPathMethodRequestBody? requestBody,
            @JsonKey(name: 'responses')
            Map<String, OpenApiPathMethodResponse>? responses)
        $default,
  ) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'tags') List<String> tags,
            @JsonKey(name: 'summary') String? summary,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'operationId') String operationId,
            @JsonKey(name: 'deprecated') bool? deprecated,
            @JsonKey(name: 'security')
            List<Map<String, List<dynamic>>>? security,
            @JsonKey(name: 'parameters')
            List<OpenApiPathMethodParameter>? parameters,
            @JsonKey(name: 'requestBody')
            OpenApiPathMethodRequestBody? requestBody,
            @JsonKey(name: 'responses')
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
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'operationId') required this.operationId,
      @JsonKey(name: 'deprecated') required this.deprecated,
      @JsonKey(name: 'security')
      final List<Map<String, List<dynamic>>>? security,
      @JsonKey(name: 'parameters')
      required final List<OpenApiPathMethodParameter>? parameters,
      @JsonKey(name: 'requestBody') required this.requestBody,
      @JsonKey(name: 'responses')
      required final Map<String, OpenApiPathMethodResponse>? responses})
      : _tags = tags,
        _security = security,
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
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'operationId')
  final String operationId;
  @override
  @JsonKey(name: 'deprecated')
  final bool? deprecated;
  final List<Map<String, List<dynamic>>>? _security;
  @override
  @JsonKey(name: 'security')
  List<Map<String, List<dynamic>>>? get security {
    final value = _security;
    if (value == null) return null;
    if (_security is EqualUnmodifiableListView) return _security;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OpenApiPathMethodParameter>? _parameters;
  @override
  @JsonKey(name: 'parameters')
  List<OpenApiPathMethodParameter>? get parameters {
    final value = _parameters;
    if (value == null) return null;
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'requestBody')
  final OpenApiPathMethodRequestBody? requestBody;
  final Map<String, OpenApiPathMethodResponse>? _responses;
  @override
  @JsonKey(name: 'responses')
  Map<String, OpenApiPathMethodResponse>? get responses {
    final value = _responses;
    if (value == null) return null;
    if (_responses is EqualUnmodifiableMapView) return _responses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'OpenApiPathMethod(tags: $tags, summary: $summary, description: $description, operationId: $operationId, deprecated: $deprecated, security: $security, parameters: $parameters, requestBody: $requestBody, responses: $responses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiPathMethodImpl &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.operationId, operationId) ||
                other.operationId == operationId) &&
            (identical(other.deprecated, deprecated) ||
                other.deprecated == deprecated) &&
            const DeepCollectionEquality().equals(other._security, _security) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.requestBody, requestBody) ||
                other.requestBody == requestBody) &&
            const DeepCollectionEquality()
                .equals(other._responses, _responses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tags),
      summary,
      description,
      operationId,
      deprecated,
      const DeepCollectionEquality().hash(_security),
      const DeepCollectionEquality().hash(_parameters),
      requestBody,
      const DeepCollectionEquality().hash(_responses));

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'tags') List<String> tags,
            @JsonKey(name: 'summary') String? summary,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'operationId') String operationId,
            @JsonKey(name: 'deprecated') bool? deprecated,
            @JsonKey(name: 'security')
            List<Map<String, List<dynamic>>>? security,
            @JsonKey(name: 'parameters')
            List<OpenApiPathMethodParameter>? parameters,
            @JsonKey(name: 'requestBody')
            OpenApiPathMethodRequestBody? requestBody,
            @JsonKey(name: 'responses')
            Map<String, OpenApiPathMethodResponse>? responses)
        $default,
  ) {
    return $default(tags, summary, description, operationId, deprecated,
        security, parameters, requestBody, responses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'tags') List<String> tags,
            @JsonKey(name: 'summary') String? summary,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'operationId') String operationId,
            @JsonKey(name: 'deprecated') bool? deprecated,
            @JsonKey(name: 'security')
            List<Map<String, List<dynamic>>>? security,
            @JsonKey(name: 'parameters')
            List<OpenApiPathMethodParameter>? parameters,
            @JsonKey(name: 'requestBody')
            OpenApiPathMethodRequestBody? requestBody,
            @JsonKey(name: 'responses')
            Map<String, OpenApiPathMethodResponse>? responses)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(tags, summary, description, operationId, deprecated,
          security, parameters, requestBody, responses);
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
          @JsonKey(name: 'description') required final String? description,
          @JsonKey(name: 'operationId') required final String operationId,
          @JsonKey(name: 'deprecated') required final bool? deprecated,
          @JsonKey(name: 'security')
          final List<Map<String, List<dynamic>>>? security,
          @JsonKey(name: 'parameters')
          required final List<OpenApiPathMethodParameter>? parameters,
          @JsonKey(name: 'requestBody')
          required final OpenApiPathMethodRequestBody? requestBody,
          @JsonKey(name: 'responses')
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
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'operationId')
  String get operationId;
  @override
  @JsonKey(name: 'deprecated')
  bool? get deprecated;
  @override
  @JsonKey(name: 'security')
  List<Map<String, List<dynamic>>>? get security;
  @override
  @JsonKey(name: 'parameters')
  List<OpenApiPathMethodParameter>? get parameters;
  @override
  @JsonKey(name: 'requestBody')
  OpenApiPathMethodRequestBody? get requestBody;
  @override
  @JsonKey(name: 'responses')
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
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'schema')
  OpenApiSchema get schema => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get example => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'in') OpenApiPathMethodParameterType in_,
            @JsonKey(name: 'required') bool required_,
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'schema')
            OpenApiSchema schema,
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
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'schema')
            OpenApiSchema schema,
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
      @OpenApiSchemaJsonConverter()
      @JsonKey(name: 'schema')
      required this.schema,
      this.description,
      this.example})
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
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'schema')
  final OpenApiSchema schema;
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
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'schema')
            OpenApiSchema schema,
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
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'schema')
            OpenApiSchema schema,
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
      @OpenApiSchemaJsonConverter()
      @JsonKey(name: 'schema')
      required final OpenApiSchema schema,
      final String? description,
      final String? example}) = _$OpenApiPathMethodParameterImpl;
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
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'schema')
  OpenApiSchema get schema;
  @override
  String? get description;
  @override
  String? get example;
}

OpenApiPathMethodResponse _$OpenApiPathMethodResponseFromJson(
    Map<String, dynamic> json) {
  return _OpenApiPathMethodResponse.fromJson(json);
}

/// @nodoc
mixin _$OpenApiPathMethodResponse {
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  OpenApiContent get content => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'description') String? description,
            @JsonKey(name: 'content') OpenApiContent content)
        $default,
  ) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'description') String? description,
            @JsonKey(name: 'content') OpenApiContent content)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this OpenApiPathMethodResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$OpenApiPathMethodResponseImpl implements _OpenApiPathMethodResponse {
  _$OpenApiPathMethodResponseImpl(
      {@JsonKey(name: 'description') this.description,
      @JsonKey(name: 'content') required this.content});

  factory _$OpenApiPathMethodResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiPathMethodResponseImplFromJson(json);

  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'content')
  final OpenApiContent content;

  @override
  String toString() {
    return 'OpenApiPathMethodResponse(description: $description, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiPathMethodResponseImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, description, content);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'description') String? description,
            @JsonKey(name: 'content') OpenApiContent content)
        $default,
  ) {
    return $default(description, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'description') String? description,
            @JsonKey(name: 'content') OpenApiContent content)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(description, content);
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
  factory _OpenApiPathMethodResponse(
          {@JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'content') required final OpenApiContent content}) =
      _$OpenApiPathMethodResponseImpl;

  factory _OpenApiPathMethodResponse.fromJson(Map<String, dynamic> json) =
      _$OpenApiPathMethodResponseImpl.fromJson;

  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'content')
  OpenApiContent get content;
}

OpenApiPathMethodRequestBody _$OpenApiPathMethodRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _OpenApiPathMethodRequestBody.fromJson(json);
}

/// @nodoc
mixin _$OpenApiPathMethodRequestBody {
  @JsonKey(name: 'required')
  bool? get required_ => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  OpenApiContent get content => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'required') bool? required_,
            @JsonKey(name: 'content') OpenApiContent content)
        $default,
  ) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'required') bool? required_,
            @JsonKey(name: 'content') OpenApiContent content)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this OpenApiPathMethodRequestBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$OpenApiPathMethodRequestBodyImpl
    implements _OpenApiPathMethodRequestBody {
  _$OpenApiPathMethodRequestBodyImpl(
      {@JsonKey(name: 'required') this.required_,
      @JsonKey(name: 'content') required this.content});

  factory _$OpenApiPathMethodRequestBodyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OpenApiPathMethodRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'required')
  final bool? required_;
  @override
  @JsonKey(name: 'content')
  final OpenApiContent content;

  @override
  String toString() {
    return 'OpenApiPathMethodRequestBody(required_: $required_, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiPathMethodRequestBodyImpl &&
            (identical(other.required_, required_) ||
                other.required_ == required_) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, required_, content);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'required') bool? required_,
            @JsonKey(name: 'content') OpenApiContent content)
        $default,
  ) {
    return $default(required_, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'required') bool? required_,
            @JsonKey(name: 'content') OpenApiContent content)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(required_, content);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiPathMethodRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _OpenApiPathMethodRequestBody
    implements OpenApiPathMethodRequestBody {
  factory _OpenApiPathMethodRequestBody(
          {@JsonKey(name: 'required') final bool? required_,
          @JsonKey(name: 'content') required final OpenApiContent content}) =
      _$OpenApiPathMethodRequestBodyImpl;

  factory _OpenApiPathMethodRequestBody.fromJson(Map<String, dynamic> json) =
      _$OpenApiPathMethodRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'required')
  bool? get required_;
  @override
  @JsonKey(name: 'content')
  OpenApiContent get content;
}
