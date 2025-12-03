// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_api_paths.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OpenApiPathMethod {
  @JsonKey(name: 'tags')
  List<String>? get tags;
  @JsonKey(name: 'summary')
  String? get summary;
  @JsonKey(name: 'description')
  String? get description;
  @JsonKey(name: 'operationId')
  String? get operationId;
  @JsonKey(name: 'deprecated')
  bool? get deprecated;
  @JsonKey(name: 'security')
  List<Map<String, List<dynamic>>>? get security;
  @JsonKey(name: 'parameters')
  List<OpenApiPathMethodParameter>? get parameters;
  @JsonKey(name: 'requestBody')
  OpenApiPathMethodRequestBody? get requestBody;
  @JsonKey(name: 'responses')
  OpenApiPathMethodResponses? get responses;
  @JsonKey(readValue: _jsonReadValue)
  Map<String, dynamic>? get json;

  /// Create a copy of OpenApiPathMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodCopyWith<OpenApiPathMethod> get copyWith =>
      _$OpenApiPathMethodCopyWithImpl<OpenApiPathMethod>(
          this as OpenApiPathMethod, _$identity);

  /// Serializes this OpenApiPathMethod to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenApiPathMethod &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.operationId, operationId) ||
                other.operationId == operationId) &&
            (identical(other.deprecated, deprecated) ||
                other.deprecated == deprecated) &&
            const DeepCollectionEquality().equals(other.security, security) &&
            const DeepCollectionEquality()
                .equals(other.parameters, parameters) &&
            (identical(other.requestBody, requestBody) ||
                other.requestBody == requestBody) &&
            const DeepCollectionEquality().equals(other.responses, responses) &&
            const DeepCollectionEquality().equals(other.json, json));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tags),
      summary,
      description,
      operationId,
      deprecated,
      const DeepCollectionEquality().hash(security),
      const DeepCollectionEquality().hash(parameters),
      requestBody,
      const DeepCollectionEquality().hash(responses),
      const DeepCollectionEquality().hash(json));

  @override
  String toString() {
    return 'OpenApiPathMethod(tags: $tags, summary: $summary, description: $description, operationId: $operationId, deprecated: $deprecated, security: $security, parameters: $parameters, requestBody: $requestBody, responses: $responses, json: $json)';
  }
}

/// @nodoc
abstract mixin class $OpenApiPathMethodCopyWith<$Res> {
  factory $OpenApiPathMethodCopyWith(
          OpenApiPathMethod value, $Res Function(OpenApiPathMethod) _then) =
      _$OpenApiPathMethodCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'tags') List<String>? tags,
      @JsonKey(name: 'summary') String? summary,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'operationId') String? operationId,
      @JsonKey(name: 'deprecated') bool? deprecated,
      @JsonKey(name: 'security') List<Map<String, List<dynamic>>>? security,
      @JsonKey(name: 'parameters') List<OpenApiPathMethodParameter>? parameters,
      @JsonKey(name: 'requestBody') OpenApiPathMethodRequestBody? requestBody,
      @JsonKey(name: 'responses') OpenApiPathMethodResponses? responses,
      @JsonKey(readValue: _jsonReadValue) Map<String, dynamic>? json});

  $OpenApiPathMethodRequestBodyCopyWith<$Res>? get requestBody;
}

/// @nodoc
class _$OpenApiPathMethodCopyWithImpl<$Res>
    implements $OpenApiPathMethodCopyWith<$Res> {
  _$OpenApiPathMethodCopyWithImpl(this._self, this._then);

  final OpenApiPathMethod _self;
  final $Res Function(OpenApiPathMethod) _then;

  /// Create a copy of OpenApiPathMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = freezed,
    Object? summary = freezed,
    Object? description = freezed,
    Object? operationId = freezed,
    Object? deprecated = freezed,
    Object? security = freezed,
    Object? parameters = freezed,
    Object? requestBody = freezed,
    Object? responses = freezed,
    Object? json = freezed,
  }) {
    return _then(_self.copyWith(
      tags: freezed == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      summary: freezed == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      operationId: freezed == operationId
          ? _self.operationId
          : operationId // ignore: cast_nullable_to_non_nullable
              as String?,
      deprecated: freezed == deprecated
          ? _self.deprecated
          : deprecated // ignore: cast_nullable_to_non_nullable
              as bool?,
      security: freezed == security
          ? _self.security
          : security // ignore: cast_nullable_to_non_nullable
              as List<Map<String, List<dynamic>>>?,
      parameters: freezed == parameters
          ? _self.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<OpenApiPathMethodParameter>?,
      requestBody: freezed == requestBody
          ? _self.requestBody
          : requestBody // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethodRequestBody?,
      responses: freezed == responses
          ? _self.responses
          : responses // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethodResponses?,
      json: freezed == json
          ? _self.json
          : json // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of OpenApiPathMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodRequestBodyCopyWith<$Res>? get requestBody {
    if (_self.requestBody == null) {
      return null;
    }

    return $OpenApiPathMethodRequestBodyCopyWith<$Res>(_self.requestBody!,
        (value) {
      return _then(_self.copyWith(requestBody: value));
    });
  }
}

/// Adds pattern-matching-related methods to [OpenApiPathMethod].
extension OpenApiPathMethodPatterns on OpenApiPathMethod {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OpenApiPathMethod value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethod() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OpenApiPathMethod value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethod():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OpenApiPathMethod value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethod() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'tags') List<String>? tags,
            @JsonKey(name: 'summary') String? summary,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'operationId') String? operationId,
            @JsonKey(name: 'deprecated') bool? deprecated,
            @JsonKey(name: 'security')
            List<Map<String, List<dynamic>>>? security,
            @JsonKey(name: 'parameters')
            List<OpenApiPathMethodParameter>? parameters,
            @JsonKey(name: 'requestBody')
            OpenApiPathMethodRequestBody? requestBody,
            @JsonKey(name: 'responses') OpenApiPathMethodResponses? responses,
            @JsonKey(readValue: _jsonReadValue) Map<String, dynamic>? json)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethod() when $default != null:
        return $default(
            _that.tags,
            _that.summary,
            _that.description,
            _that.operationId,
            _that.deprecated,
            _that.security,
            _that.parameters,
            _that.requestBody,
            _that.responses,
            _that.json);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'tags') List<String>? tags,
            @JsonKey(name: 'summary') String? summary,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'operationId') String? operationId,
            @JsonKey(name: 'deprecated') bool? deprecated,
            @JsonKey(name: 'security')
            List<Map<String, List<dynamic>>>? security,
            @JsonKey(name: 'parameters')
            List<OpenApiPathMethodParameter>? parameters,
            @JsonKey(name: 'requestBody')
            OpenApiPathMethodRequestBody? requestBody,
            @JsonKey(name: 'responses') OpenApiPathMethodResponses? responses,
            @JsonKey(readValue: _jsonReadValue) Map<String, dynamic>? json)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethod():
        return $default(
            _that.tags,
            _that.summary,
            _that.description,
            _that.operationId,
            _that.deprecated,
            _that.security,
            _that.parameters,
            _that.requestBody,
            _that.responses,
            _that.json);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'tags') List<String>? tags,
            @JsonKey(name: 'summary') String? summary,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'operationId') String? operationId,
            @JsonKey(name: 'deprecated') bool? deprecated,
            @JsonKey(name: 'security')
            List<Map<String, List<dynamic>>>? security,
            @JsonKey(name: 'parameters')
            List<OpenApiPathMethodParameter>? parameters,
            @JsonKey(name: 'requestBody')
            OpenApiPathMethodRequestBody? requestBody,
            @JsonKey(name: 'responses') OpenApiPathMethodResponses? responses,
            @JsonKey(readValue: _jsonReadValue) Map<String, dynamic>? json)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethod() when $default != null:
        return $default(
            _that.tags,
            _that.summary,
            _that.description,
            _that.operationId,
            _that.deprecated,
            _that.security,
            _that.parameters,
            _that.requestBody,
            _that.responses,
            _that.json);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OpenApiPathMethod extends OpenApiPathMethod {
  const _OpenApiPathMethod(
      {@JsonKey(name: 'tags') final List<String>? tags,
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
      required final OpenApiPathMethodResponses? responses,
      @JsonKey(readValue: _jsonReadValue) final Map<String, dynamic>? json})
      : _tags = tags,
        _security = security,
        _parameters = parameters,
        _responses = responses,
        _json = json,
        super._();
  factory _OpenApiPathMethod.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathMethodFromJson(json);

  final List<String>? _tags;
  @override
  @JsonKey(name: 'tags')
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'summary')
  final String? summary;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'operationId')
  final String? operationId;
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
  final OpenApiPathMethodResponses? _responses;
  @override
  @JsonKey(name: 'responses')
  OpenApiPathMethodResponses? get responses {
    final value = _responses;
    if (value == null) return null;
    if (_responses is EqualUnmodifiableMapView) return _responses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _json;
  @override
  @JsonKey(readValue: _jsonReadValue)
  Map<String, dynamic>? get json {
    final value = _json;
    if (value == null) return null;
    if (_json is EqualUnmodifiableMapView) return _json;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of OpenApiPathMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OpenApiPathMethodCopyWith<_OpenApiPathMethod> get copyWith =>
      __$OpenApiPathMethodCopyWithImpl<_OpenApiPathMethod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OpenApiPathMethodToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenApiPathMethod &&
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
                .equals(other._responses, _responses) &&
            const DeepCollectionEquality().equals(other._json, _json));
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
      const DeepCollectionEquality().hash(_responses),
      const DeepCollectionEquality().hash(_json));

  @override
  String toString() {
    return 'OpenApiPathMethod(tags: $tags, summary: $summary, description: $description, operationId: $operationId, deprecated: $deprecated, security: $security, parameters: $parameters, requestBody: $requestBody, responses: $responses, json: $json)';
  }
}

/// @nodoc
abstract mixin class _$OpenApiPathMethodCopyWith<$Res>
    implements $OpenApiPathMethodCopyWith<$Res> {
  factory _$OpenApiPathMethodCopyWith(
          _OpenApiPathMethod value, $Res Function(_OpenApiPathMethod) _then) =
      __$OpenApiPathMethodCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'tags') List<String>? tags,
      @JsonKey(name: 'summary') String? summary,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'operationId') String? operationId,
      @JsonKey(name: 'deprecated') bool? deprecated,
      @JsonKey(name: 'security') List<Map<String, List<dynamic>>>? security,
      @JsonKey(name: 'parameters') List<OpenApiPathMethodParameter>? parameters,
      @JsonKey(name: 'requestBody') OpenApiPathMethodRequestBody? requestBody,
      @JsonKey(name: 'responses') OpenApiPathMethodResponses? responses,
      @JsonKey(readValue: _jsonReadValue) Map<String, dynamic>? json});

  @override
  $OpenApiPathMethodRequestBodyCopyWith<$Res>? get requestBody;
}

/// @nodoc
class __$OpenApiPathMethodCopyWithImpl<$Res>
    implements _$OpenApiPathMethodCopyWith<$Res> {
  __$OpenApiPathMethodCopyWithImpl(this._self, this._then);

  final _OpenApiPathMethod _self;
  final $Res Function(_OpenApiPathMethod) _then;

  /// Create a copy of OpenApiPathMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tags = freezed,
    Object? summary = freezed,
    Object? description = freezed,
    Object? operationId = freezed,
    Object? deprecated = freezed,
    Object? security = freezed,
    Object? parameters = freezed,
    Object? requestBody = freezed,
    Object? responses = freezed,
    Object? json = freezed,
  }) {
    return _then(_OpenApiPathMethod(
      tags: freezed == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      summary: freezed == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      operationId: freezed == operationId
          ? _self.operationId
          : operationId // ignore: cast_nullable_to_non_nullable
              as String?,
      deprecated: freezed == deprecated
          ? _self.deprecated
          : deprecated // ignore: cast_nullable_to_non_nullable
              as bool?,
      security: freezed == security
          ? _self._security
          : security // ignore: cast_nullable_to_non_nullable
              as List<Map<String, List<dynamic>>>?,
      parameters: freezed == parameters
          ? _self._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<OpenApiPathMethodParameter>?,
      requestBody: freezed == requestBody
          ? _self.requestBody
          : requestBody // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethodRequestBody?,
      responses: freezed == responses
          ? _self._responses
          : responses // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethodResponses?,
      json: freezed == json
          ? _self._json
          : json // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of OpenApiPathMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodRequestBodyCopyWith<$Res>? get requestBody {
    if (_self.requestBody == null) {
      return null;
    }

    return $OpenApiPathMethodRequestBodyCopyWith<$Res>(_self.requestBody!,
        (value) {
      return _then(_self.copyWith(requestBody: value));
    });
  }
}

/// @nodoc
mixin _$OpenApiPathMethodParameter {
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'in')
  OpenApiPathMethodParameterType get in_;
  @JsonKey(name: 'required')
  bool? get required_;
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'schema')
  OpenApiSchema? get schema;
  String? get description;
  Object? get example;

  /// Create a copy of OpenApiPathMethodParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodParameterCopyWith<OpenApiPathMethodParameter>
      get copyWith =>
          _$OpenApiPathMethodParameterCopyWithImpl<OpenApiPathMethodParameter>(
              this as OpenApiPathMethodParameter, _$identity);

  /// Serializes this OpenApiPathMethodParameter to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenApiPathMethodParameter &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.in_, in_) || other.in_ == in_) &&
            (identical(other.required_, required_) ||
                other.required_ == required_) &&
            (identical(other.schema, schema) || other.schema == schema) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.example, example));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, in_, required_, schema,
      description, const DeepCollectionEquality().hash(example));

  @override
  String toString() {
    return 'OpenApiPathMethodParameter(name: $name, in_: $in_, required_: $required_, schema: $schema, description: $description, example: $example)';
  }
}

/// @nodoc
abstract mixin class $OpenApiPathMethodParameterCopyWith<$Res> {
  factory $OpenApiPathMethodParameterCopyWith(OpenApiPathMethodParameter value,
          $Res Function(OpenApiPathMethodParameter) _then) =
      _$OpenApiPathMethodParameterCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'in') OpenApiPathMethodParameterType in_,
      @JsonKey(name: 'required') bool? required_,
      @OpenApiSchemaJsonConverter()
      @JsonKey(name: 'schema')
      OpenApiSchema? schema,
      String? description,
      Object? example});

  $OpenApiSchemaCopyWith<$Res>? get schema;
}

/// @nodoc
class _$OpenApiPathMethodParameterCopyWithImpl<$Res>
    implements $OpenApiPathMethodParameterCopyWith<$Res> {
  _$OpenApiPathMethodParameterCopyWithImpl(this._self, this._then);

  final OpenApiPathMethodParameter _self;
  final $Res Function(OpenApiPathMethodParameter) _then;

  /// Create a copy of OpenApiPathMethodParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? in_ = null,
    Object? required_ = freezed,
    Object? schema = freezed,
    Object? description = freezed,
    Object? example = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      in_: null == in_
          ? _self.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethodParameterType,
      required_: freezed == required_
          ? _self.required_
          : required_ // ignore: cast_nullable_to_non_nullable
              as bool?,
      schema: freezed == schema
          ? _self.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as OpenApiSchema?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      example: freezed == example ? _self.example : example,
    ));
  }

  /// Create a copy of OpenApiPathMethodParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiSchemaCopyWith<$Res>? get schema {
    if (_self.schema == null) {
      return null;
    }

    return $OpenApiSchemaCopyWith<$Res>(_self.schema!, (value) {
      return _then(_self.copyWith(schema: value));
    });
  }
}

/// Adds pattern-matching-related methods to [OpenApiPathMethodParameter].
extension OpenApiPathMethodParameterPatterns on OpenApiPathMethodParameter {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OpenApiPathMethodParameter value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethodParameter() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OpenApiPathMethodParameter value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethodParameter():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OpenApiPathMethodParameter value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethodParameter() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'in') OpenApiPathMethodParameterType in_,
            @JsonKey(name: 'required') bool? required_,
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'schema')
            OpenApiSchema? schema,
            String? description,
            Object? example)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethodParameter() when $default != null:
        return $default(_that.name, _that.in_, _that.required_, _that.schema,
            _that.description, _that.example);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'in') OpenApiPathMethodParameterType in_,
            @JsonKey(name: 'required') bool? required_,
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'schema')
            OpenApiSchema? schema,
            String? description,
            Object? example)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethodParameter():
        return $default(_that.name, _that.in_, _that.required_, _that.schema,
            _that.description, _that.example);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'in') OpenApiPathMethodParameterType in_,
            @JsonKey(name: 'required') bool? required_,
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'schema')
            OpenApiSchema? schema,
            String? description,
            Object? example)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethodParameter() when $default != null:
        return $default(_that.name, _that.in_, _that.required_, _that.schema,
            _that.description, _that.example);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OpenApiPathMethodParameter extends OpenApiPathMethodParameter {
  const _OpenApiPathMethodParameter(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'in') required this.in_,
      @JsonKey(name: 'required') required this.required_,
      @OpenApiSchemaJsonConverter()
      @JsonKey(name: 'schema')
      required this.schema,
      this.description,
      this.example})
      : super._();
  factory _OpenApiPathMethodParameter.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathMethodParameterFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'in')
  final OpenApiPathMethodParameterType in_;
  @override
  @JsonKey(name: 'required')
  final bool? required_;
  @override
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'schema')
  final OpenApiSchema? schema;
  @override
  final String? description;
  @override
  final Object? example;

  /// Create a copy of OpenApiPathMethodParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OpenApiPathMethodParameterCopyWith<_OpenApiPathMethodParameter>
      get copyWith => __$OpenApiPathMethodParameterCopyWithImpl<
          _OpenApiPathMethodParameter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OpenApiPathMethodParameterToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenApiPathMethodParameter &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.in_, in_) || other.in_ == in_) &&
            (identical(other.required_, required_) ||
                other.required_ == required_) &&
            (identical(other.schema, schema) || other.schema == schema) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.example, example));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, in_, required_, schema,
      description, const DeepCollectionEquality().hash(example));

  @override
  String toString() {
    return 'OpenApiPathMethodParameter(name: $name, in_: $in_, required_: $required_, schema: $schema, description: $description, example: $example)';
  }
}

/// @nodoc
abstract mixin class _$OpenApiPathMethodParameterCopyWith<$Res>
    implements $OpenApiPathMethodParameterCopyWith<$Res> {
  factory _$OpenApiPathMethodParameterCopyWith(
          _OpenApiPathMethodParameter value,
          $Res Function(_OpenApiPathMethodParameter) _then) =
      __$OpenApiPathMethodParameterCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'in') OpenApiPathMethodParameterType in_,
      @JsonKey(name: 'required') bool? required_,
      @OpenApiSchemaJsonConverter()
      @JsonKey(name: 'schema')
      OpenApiSchema? schema,
      String? description,
      Object? example});

  @override
  $OpenApiSchemaCopyWith<$Res>? get schema;
}

/// @nodoc
class __$OpenApiPathMethodParameterCopyWithImpl<$Res>
    implements _$OpenApiPathMethodParameterCopyWith<$Res> {
  __$OpenApiPathMethodParameterCopyWithImpl(this._self, this._then);

  final _OpenApiPathMethodParameter _self;
  final $Res Function(_OpenApiPathMethodParameter) _then;

  /// Create a copy of OpenApiPathMethodParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? in_ = null,
    Object? required_ = freezed,
    Object? schema = freezed,
    Object? description = freezed,
    Object? example = freezed,
  }) {
    return _then(_OpenApiPathMethodParameter(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      in_: null == in_
          ? _self.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethodParameterType,
      required_: freezed == required_
          ? _self.required_
          : required_ // ignore: cast_nullable_to_non_nullable
              as bool?,
      schema: freezed == schema
          ? _self.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as OpenApiSchema?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      example: freezed == example ? _self.example : example,
    ));
  }

  /// Create a copy of OpenApiPathMethodParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiSchemaCopyWith<$Res>? get schema {
    if (_self.schema == null) {
      return null;
    }

    return $OpenApiSchemaCopyWith<$Res>(_self.schema!, (value) {
      return _then(_self.copyWith(schema: value));
    });
  }
}

/// @nodoc
mixin _$OpenApiPathMethodResponse {
  @JsonKey(name: 'description')
  String? get description;
  @JsonKey(name: 'content')
  OpenApiContent? get content;

  /// Create a copy of OpenApiPathMethodResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodResponseCopyWith<OpenApiPathMethodResponse> get copyWith =>
      _$OpenApiPathMethodResponseCopyWithImpl<OpenApiPathMethodResponse>(
          this as OpenApiPathMethodResponse, _$identity);

  /// Serializes this OpenApiPathMethodResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenApiPathMethodResponse &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, description, const DeepCollectionEquality().hash(content));

  @override
  String toString() {
    return 'OpenApiPathMethodResponse(description: $description, content: $content)';
  }
}

/// @nodoc
abstract mixin class $OpenApiPathMethodResponseCopyWith<$Res> {
  factory $OpenApiPathMethodResponseCopyWith(OpenApiPathMethodResponse value,
          $Res Function(OpenApiPathMethodResponse) _then) =
      _$OpenApiPathMethodResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'description') String? description,
      @JsonKey(name: 'content') OpenApiContent? content});
}

/// @nodoc
class _$OpenApiPathMethodResponseCopyWithImpl<$Res>
    implements $OpenApiPathMethodResponseCopyWith<$Res> {
  _$OpenApiPathMethodResponseCopyWithImpl(this._self, this._then);

  final OpenApiPathMethodResponse _self;
  final $Res Function(OpenApiPathMethodResponse) _then;

  /// Create a copy of OpenApiPathMethodResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? content = freezed,
  }) {
    return _then(_self.copyWith(
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as OpenApiContent?,
    ));
  }
}

/// Adds pattern-matching-related methods to [OpenApiPathMethodResponse].
extension OpenApiPathMethodResponsePatterns on OpenApiPathMethodResponse {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OpenApiPathMethodResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethodResponse() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OpenApiPathMethodResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethodResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OpenApiPathMethodResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethodResponse() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'description') String? description,
            @JsonKey(name: 'content') OpenApiContent? content)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethodResponse() when $default != null:
        return $default(_that.description, _that.content);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'description') String? description,
            @JsonKey(name: 'content') OpenApiContent? content)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethodResponse():
        return $default(_that.description, _that.content);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: 'description') String? description,
            @JsonKey(name: 'content') OpenApiContent? content)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethodResponse() when $default != null:
        return $default(_that.description, _that.content);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OpenApiPathMethodResponse extends OpenApiPathMethodResponse {
  const _OpenApiPathMethodResponse(
      {@JsonKey(name: 'description') this.description,
      @JsonKey(name: 'content') required final OpenApiContent? content})
      : _content = content,
        super._();
  factory _OpenApiPathMethodResponse.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathMethodResponseFromJson(json);

  @override
  @JsonKey(name: 'description')
  final String? description;
  final OpenApiContent? _content;
  @override
  @JsonKey(name: 'content')
  OpenApiContent? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableMapView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of OpenApiPathMethodResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OpenApiPathMethodResponseCopyWith<_OpenApiPathMethodResponse>
      get copyWith =>
          __$OpenApiPathMethodResponseCopyWithImpl<_OpenApiPathMethodResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OpenApiPathMethodResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenApiPathMethodResponse &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._content, _content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, description, const DeepCollectionEquality().hash(_content));

  @override
  String toString() {
    return 'OpenApiPathMethodResponse(description: $description, content: $content)';
  }
}

/// @nodoc
abstract mixin class _$OpenApiPathMethodResponseCopyWith<$Res>
    implements $OpenApiPathMethodResponseCopyWith<$Res> {
  factory _$OpenApiPathMethodResponseCopyWith(_OpenApiPathMethodResponse value,
          $Res Function(_OpenApiPathMethodResponse) _then) =
      __$OpenApiPathMethodResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'description') String? description,
      @JsonKey(name: 'content') OpenApiContent? content});
}

/// @nodoc
class __$OpenApiPathMethodResponseCopyWithImpl<$Res>
    implements _$OpenApiPathMethodResponseCopyWith<$Res> {
  __$OpenApiPathMethodResponseCopyWithImpl(this._self, this._then);

  final _OpenApiPathMethodResponse _self;
  final $Res Function(_OpenApiPathMethodResponse) _then;

  /// Create a copy of OpenApiPathMethodResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? description = freezed,
    Object? content = freezed,
  }) {
    return _then(_OpenApiPathMethodResponse(
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self._content
          : content // ignore: cast_nullable_to_non_nullable
              as OpenApiContent?,
    ));
  }
}

/// @nodoc
mixin _$OpenApiPathMethodRequestBody {
  @JsonKey(name: 'required')
  bool? get required_;
  @JsonKey(name: 'content')
  OpenApiContent get content;

  /// Create a copy of OpenApiPathMethodRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodRequestBodyCopyWith<OpenApiPathMethodRequestBody>
      get copyWith => _$OpenApiPathMethodRequestBodyCopyWithImpl<
              OpenApiPathMethodRequestBody>(
          this as OpenApiPathMethodRequestBody, _$identity);

  /// Serializes this OpenApiPathMethodRequestBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenApiPathMethodRequestBody &&
            (identical(other.required_, required_) ||
                other.required_ == required_) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, required_, const DeepCollectionEquality().hash(content));

  @override
  String toString() {
    return 'OpenApiPathMethodRequestBody(required_: $required_, content: $content)';
  }
}

/// @nodoc
abstract mixin class $OpenApiPathMethodRequestBodyCopyWith<$Res> {
  factory $OpenApiPathMethodRequestBodyCopyWith(
          OpenApiPathMethodRequestBody value,
          $Res Function(OpenApiPathMethodRequestBody) _then) =
      _$OpenApiPathMethodRequestBodyCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'required') bool? required_,
      @JsonKey(name: 'content') OpenApiContent content});
}

/// @nodoc
class _$OpenApiPathMethodRequestBodyCopyWithImpl<$Res>
    implements $OpenApiPathMethodRequestBodyCopyWith<$Res> {
  _$OpenApiPathMethodRequestBodyCopyWithImpl(this._self, this._then);

  final OpenApiPathMethodRequestBody _self;
  final $Res Function(OpenApiPathMethodRequestBody) _then;

  /// Create a copy of OpenApiPathMethodRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? required_ = freezed,
    Object? content = null,
  }) {
    return _then(_self.copyWith(
      required_: freezed == required_
          ? _self.required_
          : required_ // ignore: cast_nullable_to_non_nullable
              as bool?,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as OpenApiContent,
    ));
  }
}

/// Adds pattern-matching-related methods to [OpenApiPathMethodRequestBody].
extension OpenApiPathMethodRequestBodyPatterns on OpenApiPathMethodRequestBody {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OpenApiPathMethodRequestBody value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethodRequestBody() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OpenApiPathMethodRequestBody value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethodRequestBody():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OpenApiPathMethodRequestBody value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethodRequestBody() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'required') bool? required_,
            @JsonKey(name: 'content') OpenApiContent content)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethodRequestBody() when $default != null:
        return $default(_that.required_, _that.content);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'required') bool? required_,
            @JsonKey(name: 'content') OpenApiContent content)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethodRequestBody():
        return $default(_that.required_, _that.content);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: 'required') bool? required_,
            @JsonKey(name: 'content') OpenApiContent content)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiPathMethodRequestBody() when $default != null:
        return $default(_that.required_, _that.content);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OpenApiPathMethodRequestBody extends OpenApiPathMethodRequestBody {
  const _OpenApiPathMethodRequestBody(
      {@JsonKey(name: 'required') this.required_,
      @JsonKey(name: 'content') required final OpenApiContent content})
      : _content = content,
        super._();
  factory _OpenApiPathMethodRequestBody.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathMethodRequestBodyFromJson(json);

  @override
  @JsonKey(name: 'required')
  final bool? required_;
  final OpenApiContent _content;
  @override
  @JsonKey(name: 'content')
  OpenApiContent get content {
    if (_content is EqualUnmodifiableMapView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_content);
  }

  /// Create a copy of OpenApiPathMethodRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OpenApiPathMethodRequestBodyCopyWith<_OpenApiPathMethodRequestBody>
      get copyWith => __$OpenApiPathMethodRequestBodyCopyWithImpl<
          _OpenApiPathMethodRequestBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OpenApiPathMethodRequestBodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenApiPathMethodRequestBody &&
            (identical(other.required_, required_) ||
                other.required_ == required_) &&
            const DeepCollectionEquality().equals(other._content, _content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, required_, const DeepCollectionEquality().hash(_content));

  @override
  String toString() {
    return 'OpenApiPathMethodRequestBody(required_: $required_, content: $content)';
  }
}

/// @nodoc
abstract mixin class _$OpenApiPathMethodRequestBodyCopyWith<$Res>
    implements $OpenApiPathMethodRequestBodyCopyWith<$Res> {
  factory _$OpenApiPathMethodRequestBodyCopyWith(
          _OpenApiPathMethodRequestBody value,
          $Res Function(_OpenApiPathMethodRequestBody) _then) =
      __$OpenApiPathMethodRequestBodyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'required') bool? required_,
      @JsonKey(name: 'content') OpenApiContent content});
}

/// @nodoc
class __$OpenApiPathMethodRequestBodyCopyWithImpl<$Res>
    implements _$OpenApiPathMethodRequestBodyCopyWith<$Res> {
  __$OpenApiPathMethodRequestBodyCopyWithImpl(this._self, this._then);

  final _OpenApiPathMethodRequestBody _self;
  final $Res Function(_OpenApiPathMethodRequestBody) _then;

  /// Create a copy of OpenApiPathMethodRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? required_ = freezed,
    Object? content = null,
  }) {
    return _then(_OpenApiPathMethodRequestBody(
      required_: freezed == required_
          ? _self.required_
          : required_ // ignore: cast_nullable_to_non_nullable
              as bool?,
      content: null == content
          ? _self._content
          : content // ignore: cast_nullable_to_non_nullable
              as OpenApiContent,
    ));
  }
}
