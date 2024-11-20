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
            @JsonKey(name: 'description') String? description,
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
            @JsonKey(name: 'description') String? description,
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
      @JsonKey(name: 'description') required this.description,
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
  @JsonKey(name: 'description')
  final String? description;
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
    return 'OpenApiPathMethod(tags: $tags, summary: $summary, description: $description, operationId: $operationId, parameters: $parameters, responses: $responses)';
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
      description,
      operationId,
      const DeepCollectionEquality().hash(_parameters),
      const DeepCollectionEquality().hash(_responses));

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'tags') List<String> tags,
            @JsonKey(name: 'summary') String? summary,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'operationId') String operationId,
            @JsonKey(name: 'parameters')
            List<OpenApiPathMethodParameter> parameters,
            Map<String, OpenApiPathMethodResponse>? responses)
        $default,
  ) {
    return $default(
        tags, summary, description, operationId, parameters, responses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'tags') List<String> tags,
            @JsonKey(name: 'summary') String? summary,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'operationId') String operationId,
            @JsonKey(name: 'parameters')
            List<OpenApiPathMethodParameter> parameters,
            Map<String, OpenApiPathMethodResponse>? responses)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          tags, summary, description, operationId, parameters, responses);
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
  @JsonKey(name: 'description')
  String? get description;
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
  @OpenApiPathMethodParameterSchemaJsonMapConverter()
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
            @OpenApiPathMethodParameterSchemaJsonMapConverter()
            @JsonKey(name: 'schema')
            OpenApiPathMethodParameterSchema schema,
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
            @OpenApiPathMethodParameterSchemaJsonMapConverter()
            @JsonKey(name: 'schema')
            OpenApiPathMethodParameterSchema schema,
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
      @OpenApiPathMethodParameterSchemaJsonMapConverter()
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
  @OpenApiPathMethodParameterSchemaJsonMapConverter()
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
            @OpenApiPathMethodParameterSchemaJsonMapConverter()
            @JsonKey(name: 'schema')
            OpenApiPathMethodParameterSchema schema,
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
            @OpenApiPathMethodParameterSchemaJsonMapConverter()
            @JsonKey(name: 'schema')
            OpenApiPathMethodParameterSchema schema,
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
      @OpenApiPathMethodParameterSchemaJsonMapConverter()
      @JsonKey(name: 'schema')
      required final OpenApiPathMethodParameterSchema schema,
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
  @OpenApiPathMethodParameterSchemaJsonMapConverter()
  @JsonKey(name: 'schema')
  OpenApiPathMethodParameterSchema get schema;
  @override
  String? get description;
  @override
  String? get example;
}

OpenApiPathMethodParameterSchema _$OpenApiPathMethodParameterSchemaFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'type':
      return OpenApiPathMethodParameterSchemaType.fromJson(json);
    case 'ref':
      return OpenApiPathMethodParameterSchemaRef.fromJson(json);
    case 'anyOf':
      return OpenApiPathMethodParameterSchemaAnyOf.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'OpenApiPathMethodParameterSchema',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$OpenApiPathMethodParameterSchema {
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(
                name: 'type',
                unknownEnumValue: OpenApiSchemaVariableType.$unknown)
            OpenApiSchemaVariableType? type,
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
            @OpenApiPathMethodParameterSchemaJsonMapConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiPathMethodParameterSchema>? anyOf,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'description') String? description)
        anyOf,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(
                name: 'type',
                unknownEnumValue: OpenApiSchemaVariableType.$unknown)
            OpenApiSchemaVariableType? type,
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
            @OpenApiPathMethodParameterSchemaJsonMapConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiPathMethodParameterSchema>? anyOf,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'description') String? description)?
        anyOf,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this OpenApiPathMethodParameterSchema to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$OpenApiPathMethodParameterSchemaTypeImpl
    extends OpenApiPathMethodParameterSchemaType {
  const _$OpenApiPathMethodParameterSchemaTypeImpl(
      {@JsonKey(
          name: 'type', unknownEnumValue: OpenApiSchemaVariableType.$unknown)
      this.type,
      @JsonKey(name: 'format') this.format,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'pattern') this.pattern,
      @JsonKey(name: 'default') this.default_,
      final String? $type})
      : $type = $type ?? 'type',
        super._();

  factory _$OpenApiPathMethodParameterSchemaTypeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OpenApiPathMethodParameterSchemaTypeImplFromJson(json);

  @override
  @JsonKey(name: 'type', unknownEnumValue: OpenApiSchemaVariableType.$unknown)
  final OpenApiSchemaVariableType? type;
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
    return 'OpenApiPathMethodParameterSchema.type(type: $type, format: $format, description: $description, title: $title, pattern: $pattern, default_: $default_)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiPathMethodParameterSchemaTypeImpl &&
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
                name: 'type',
                unknownEnumValue: OpenApiSchemaVariableType.$unknown)
            OpenApiSchemaVariableType? type,
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
            @OpenApiPathMethodParameterSchemaJsonMapConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiPathMethodParameterSchema>? anyOf,
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
                name: 'type',
                unknownEnumValue: OpenApiSchemaVariableType.$unknown)
            OpenApiSchemaVariableType? type,
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
            @OpenApiPathMethodParameterSchemaJsonMapConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiPathMethodParameterSchema>? anyOf,
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
    return _$$OpenApiPathMethodParameterSchemaTypeImplToJson(
      this,
    );
  }
}

abstract class OpenApiPathMethodParameterSchemaType
    extends OpenApiPathMethodParameterSchema {
  const factory OpenApiPathMethodParameterSchemaType(
      {@JsonKey(
          name: 'type', unknownEnumValue: OpenApiSchemaVariableType.$unknown)
      final OpenApiSchemaVariableType? type,
      @JsonKey(name: 'format') final String? format,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'pattern') final String? pattern,
      @JsonKey(name: 'default')
      final Object? default_}) = _$OpenApiPathMethodParameterSchemaTypeImpl;
  const OpenApiPathMethodParameterSchemaType._() : super._();

  factory OpenApiPathMethodParameterSchemaType.fromJson(
          Map<String, dynamic> json) =
      _$OpenApiPathMethodParameterSchemaTypeImpl.fromJson;

  @JsonKey(name: 'type', unknownEnumValue: OpenApiSchemaVariableType.$unknown)
  OpenApiSchemaVariableType? get type;
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
class _$OpenApiPathMethodParameterSchemaRefImpl
    extends OpenApiPathMethodParameterSchemaRef {
  const _$OpenApiPathMethodParameterSchemaRefImpl(
      {@JsonKey(name: _refKey) this.ref,
      @JsonKey(name: 'format') this.format,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'pattern') this.pattern,
      @JsonKey(name: 'default') this.default_,
      final String? $type})
      : $type = $type ?? 'ref',
        super._();

  factory _$OpenApiPathMethodParameterSchemaRefImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OpenApiPathMethodParameterSchemaRefImplFromJson(json);

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
    return 'OpenApiPathMethodParameterSchema.ref(ref: $ref, format: $format, description: $description, title: $title, pattern: $pattern, default_: $default_)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiPathMethodParameterSchemaRefImpl &&
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
                name: 'type',
                unknownEnumValue: OpenApiSchemaVariableType.$unknown)
            OpenApiSchemaVariableType? type,
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
            @OpenApiPathMethodParameterSchemaJsonMapConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiPathMethodParameterSchema>? anyOf,
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
                name: 'type',
                unknownEnumValue: OpenApiSchemaVariableType.$unknown)
            OpenApiSchemaVariableType? type,
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
            @OpenApiPathMethodParameterSchemaJsonMapConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiPathMethodParameterSchema>? anyOf,
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
    return _$$OpenApiPathMethodParameterSchemaRefImplToJson(
      this,
    );
  }
}

abstract class OpenApiPathMethodParameterSchemaRef
    extends OpenApiPathMethodParameterSchema {
  const factory OpenApiPathMethodParameterSchemaRef(
          {@JsonKey(name: _refKey) final String? ref,
          @JsonKey(name: 'format') final String? format,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'pattern') final String? pattern,
          @JsonKey(name: 'default') final Object? default_}) =
      _$OpenApiPathMethodParameterSchemaRefImpl;
  const OpenApiPathMethodParameterSchemaRef._() : super._();

  factory OpenApiPathMethodParameterSchemaRef.fromJson(
          Map<String, dynamic> json) =
      _$OpenApiPathMethodParameterSchemaRefImpl.fromJson;

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
class _$OpenApiPathMethodParameterSchemaAnyOfImpl
    extends OpenApiPathMethodParameterSchemaAnyOf {
  const _$OpenApiPathMethodParameterSchemaAnyOfImpl(
      {@OpenApiPathMethodParameterSchemaJsonMapConverter()
      @JsonKey(name: _anyOfKey)
      required final List<OpenApiPathMethodParameterSchema>? anyOf,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      final String? $type})
      : _anyOf = anyOf,
        $type = $type ?? 'anyOf',
        super._();

  factory _$OpenApiPathMethodParameterSchemaAnyOfImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OpenApiPathMethodParameterSchemaAnyOfImplFromJson(json);

  final List<OpenApiPathMethodParameterSchema>? _anyOf;
  @override
  @OpenApiPathMethodParameterSchemaJsonMapConverter()
  @JsonKey(name: _anyOfKey)
  List<OpenApiPathMethodParameterSchema>? get anyOf {
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
    return 'OpenApiPathMethodParameterSchema.anyOf(anyOf: $anyOf, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiPathMethodParameterSchemaAnyOfImpl &&
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
                name: 'type',
                unknownEnumValue: OpenApiSchemaVariableType.$unknown)
            OpenApiSchemaVariableType? type,
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
            @OpenApiPathMethodParameterSchemaJsonMapConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiPathMethodParameterSchema>? anyOf,
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
                name: 'type',
                unknownEnumValue: OpenApiSchemaVariableType.$unknown)
            OpenApiSchemaVariableType? type,
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
            @OpenApiPathMethodParameterSchemaJsonMapConverter()
            @JsonKey(name: _anyOfKey)
            List<OpenApiPathMethodParameterSchema>? anyOf,
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
    return _$$OpenApiPathMethodParameterSchemaAnyOfImplToJson(
      this,
    );
  }
}

abstract class OpenApiPathMethodParameterSchemaAnyOf
    extends OpenApiPathMethodParameterSchema {
  const factory OpenApiPathMethodParameterSchemaAnyOf(
          {@OpenApiPathMethodParameterSchemaJsonMapConverter()
          @JsonKey(name: _anyOfKey)
          required final List<OpenApiPathMethodParameterSchema>? anyOf,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'description') final String? description}) =
      _$OpenApiPathMethodParameterSchemaAnyOfImpl;
  const OpenApiPathMethodParameterSchemaAnyOf._() : super._();

  factory OpenApiPathMethodParameterSchemaAnyOf.fromJson(
          Map<String, dynamic> json) =
      _$OpenApiPathMethodParameterSchemaAnyOfImpl.fromJson;

  @OpenApiPathMethodParameterSchemaJsonMapConverter()
  @JsonKey(name: _anyOfKey)
  List<OpenApiPathMethodParameterSchema>? get anyOf;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
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
