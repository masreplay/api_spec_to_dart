// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_api_paths.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OpenApiPath {
  OpenApiPathMethod? get get;
  OpenApiPathMethod? get post;
  OpenApiPathMethod? get put;
  OpenApiPathMethod? get delete;
  OpenApiPathMethod? get options;
  OpenApiPathMethod? get head;
  OpenApiPathMethod? get patch;
  OpenApiPathMethod? get trace;

  /// Create a copy of OpenApiPath
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenApiPathCopyWith<OpenApiPath> get copyWith =>
      _$OpenApiPathCopyWithImpl<OpenApiPath>(this as OpenApiPath, _$identity);

  /// Serializes this OpenApiPath to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenApiPath &&
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
  String toString() {
    return 'OpenApiPath(get: $get, post: $post, put: $put, delete: $delete, options: $options, head: $head, patch: $patch, trace: $trace)';
  }
}

/// @nodoc
abstract mixin class $OpenApiPathCopyWith<$Res> {
  factory $OpenApiPathCopyWith(
          OpenApiPath value, $Res Function(OpenApiPath) _then) =
      _$OpenApiPathCopyWithImpl;
  @useResult
  $Res call(
      {OpenApiPathMethod? get,
      OpenApiPathMethod? post,
      OpenApiPathMethod? put,
      OpenApiPathMethod? delete,
      OpenApiPathMethod? options,
      OpenApiPathMethod? head,
      OpenApiPathMethod? patch,
      OpenApiPathMethod? trace});

  $OpenApiPathMethodCopyWith<$Res>? get get;
  $OpenApiPathMethodCopyWith<$Res>? get post;
  $OpenApiPathMethodCopyWith<$Res>? get put;
  $OpenApiPathMethodCopyWith<$Res>? get delete;
  $OpenApiPathMethodCopyWith<$Res>? get options;
  $OpenApiPathMethodCopyWith<$Res>? get head;
  $OpenApiPathMethodCopyWith<$Res>? get patch;
  $OpenApiPathMethodCopyWith<$Res>? get trace;
}

/// @nodoc
class _$OpenApiPathCopyWithImpl<$Res> implements $OpenApiPathCopyWith<$Res> {
  _$OpenApiPathCopyWithImpl(this._self, this._then);

  final OpenApiPath _self;
  final $Res Function(OpenApiPath) _then;

  /// Create a copy of OpenApiPath
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? get = freezed,
    Object? post = freezed,
    Object? put = freezed,
    Object? delete = freezed,
    Object? options = freezed,
    Object? head = freezed,
    Object? patch = freezed,
    Object? trace = freezed,
  }) {
    return _then(_self.copyWith(
      get: freezed == get
          ? _self.get
          : get // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethod?,
      post: freezed == post
          ? _self.post
          : post // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethod?,
      put: freezed == put
          ? _self.put
          : put // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethod?,
      delete: freezed == delete
          ? _self.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethod?,
      options: freezed == options
          ? _self.options
          : options // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethod?,
      head: freezed == head
          ? _self.head
          : head // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethod?,
      patch: freezed == patch
          ? _self.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethod?,
      trace: freezed == trace
          ? _self.trace
          : trace // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethod?,
    ));
  }

  /// Create a copy of OpenApiPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodCopyWith<$Res>? get get {
    if (_self.get == null) {
      return null;
    }

    return $OpenApiPathMethodCopyWith<$Res>(_self.get!, (value) {
      return _then(_self.copyWith(get: value));
    });
  }

  /// Create a copy of OpenApiPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodCopyWith<$Res>? get post {
    if (_self.post == null) {
      return null;
    }

    return $OpenApiPathMethodCopyWith<$Res>(_self.post!, (value) {
      return _then(_self.copyWith(post: value));
    });
  }

  /// Create a copy of OpenApiPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodCopyWith<$Res>? get put {
    if (_self.put == null) {
      return null;
    }

    return $OpenApiPathMethodCopyWith<$Res>(_self.put!, (value) {
      return _then(_self.copyWith(put: value));
    });
  }

  /// Create a copy of OpenApiPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodCopyWith<$Res>? get delete {
    if (_self.delete == null) {
      return null;
    }

    return $OpenApiPathMethodCopyWith<$Res>(_self.delete!, (value) {
      return _then(_self.copyWith(delete: value));
    });
  }

  /// Create a copy of OpenApiPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodCopyWith<$Res>? get options {
    if (_self.options == null) {
      return null;
    }

    return $OpenApiPathMethodCopyWith<$Res>(_self.options!, (value) {
      return _then(_self.copyWith(options: value));
    });
  }

  /// Create a copy of OpenApiPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodCopyWith<$Res>? get head {
    if (_self.head == null) {
      return null;
    }

    return $OpenApiPathMethodCopyWith<$Res>(_self.head!, (value) {
      return _then(_self.copyWith(head: value));
    });
  }

  /// Create a copy of OpenApiPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodCopyWith<$Res>? get patch {
    if (_self.patch == null) {
      return null;
    }

    return $OpenApiPathMethodCopyWith<$Res>(_self.patch!, (value) {
      return _then(_self.copyWith(patch: value));
    });
  }

  /// Create a copy of OpenApiPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodCopyWith<$Res>? get trace {
    if (_self.trace == null) {
      return null;
    }

    return $OpenApiPathMethodCopyWith<$Res>(_self.trace!, (value) {
      return _then(_self.copyWith(trace: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _OpenApiPath extends OpenApiPath {
  const _OpenApiPath(
      {this.get,
      this.post,
      this.put,
      this.delete,
      this.options,
      this.head,
      this.patch,
      this.trace})
      : super._();
  factory _OpenApiPath.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathFromJson(json);

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

  /// Create a copy of OpenApiPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OpenApiPathCopyWith<_OpenApiPath> get copyWith =>
      __$OpenApiPathCopyWithImpl<_OpenApiPath>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OpenApiPathToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenApiPath &&
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
  String toString() {
    return 'OpenApiPath(get: $get, post: $post, put: $put, delete: $delete, options: $options, head: $head, patch: $patch, trace: $trace)';
  }
}

/// @nodoc
abstract mixin class _$OpenApiPathCopyWith<$Res>
    implements $OpenApiPathCopyWith<$Res> {
  factory _$OpenApiPathCopyWith(
          _OpenApiPath value, $Res Function(_OpenApiPath) _then) =
      __$OpenApiPathCopyWithImpl;
  @override
  @useResult
  $Res call(
      {OpenApiPathMethod? get,
      OpenApiPathMethod? post,
      OpenApiPathMethod? put,
      OpenApiPathMethod? delete,
      OpenApiPathMethod? options,
      OpenApiPathMethod? head,
      OpenApiPathMethod? patch,
      OpenApiPathMethod? trace});

  @override
  $OpenApiPathMethodCopyWith<$Res>? get get;
  @override
  $OpenApiPathMethodCopyWith<$Res>? get post;
  @override
  $OpenApiPathMethodCopyWith<$Res>? get put;
  @override
  $OpenApiPathMethodCopyWith<$Res>? get delete;
  @override
  $OpenApiPathMethodCopyWith<$Res>? get options;
  @override
  $OpenApiPathMethodCopyWith<$Res>? get head;
  @override
  $OpenApiPathMethodCopyWith<$Res>? get patch;
  @override
  $OpenApiPathMethodCopyWith<$Res>? get trace;
}

/// @nodoc
class __$OpenApiPathCopyWithImpl<$Res> implements _$OpenApiPathCopyWith<$Res> {
  __$OpenApiPathCopyWithImpl(this._self, this._then);

  final _OpenApiPath _self;
  final $Res Function(_OpenApiPath) _then;

  /// Create a copy of OpenApiPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? get = freezed,
    Object? post = freezed,
    Object? put = freezed,
    Object? delete = freezed,
    Object? options = freezed,
    Object? head = freezed,
    Object? patch = freezed,
    Object? trace = freezed,
  }) {
    return _then(_OpenApiPath(
      get: freezed == get
          ? _self.get
          : get // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethod?,
      post: freezed == post
          ? _self.post
          : post // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethod?,
      put: freezed == put
          ? _self.put
          : put // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethod?,
      delete: freezed == delete
          ? _self.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethod?,
      options: freezed == options
          ? _self.options
          : options // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethod?,
      head: freezed == head
          ? _self.head
          : head // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethod?,
      patch: freezed == patch
          ? _self.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethod?,
      trace: freezed == trace
          ? _self.trace
          : trace // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethod?,
    ));
  }

  /// Create a copy of OpenApiPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodCopyWith<$Res>? get get {
    if (_self.get == null) {
      return null;
    }

    return $OpenApiPathMethodCopyWith<$Res>(_self.get!, (value) {
      return _then(_self.copyWith(get: value));
    });
  }

  /// Create a copy of OpenApiPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodCopyWith<$Res>? get post {
    if (_self.post == null) {
      return null;
    }

    return $OpenApiPathMethodCopyWith<$Res>(_self.post!, (value) {
      return _then(_self.copyWith(post: value));
    });
  }

  /// Create a copy of OpenApiPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodCopyWith<$Res>? get put {
    if (_self.put == null) {
      return null;
    }

    return $OpenApiPathMethodCopyWith<$Res>(_self.put!, (value) {
      return _then(_self.copyWith(put: value));
    });
  }

  /// Create a copy of OpenApiPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodCopyWith<$Res>? get delete {
    if (_self.delete == null) {
      return null;
    }

    return $OpenApiPathMethodCopyWith<$Res>(_self.delete!, (value) {
      return _then(_self.copyWith(delete: value));
    });
  }

  /// Create a copy of OpenApiPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodCopyWith<$Res>? get options {
    if (_self.options == null) {
      return null;
    }

    return $OpenApiPathMethodCopyWith<$Res>(_self.options!, (value) {
      return _then(_self.copyWith(options: value));
    });
  }

  /// Create a copy of OpenApiPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodCopyWith<$Res>? get head {
    if (_self.head == null) {
      return null;
    }

    return $OpenApiPathMethodCopyWith<$Res>(_self.head!, (value) {
      return _then(_self.copyWith(head: value));
    });
  }

  /// Create a copy of OpenApiPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodCopyWith<$Res>? get patch {
    if (_self.patch == null) {
      return null;
    }

    return $OpenApiPathMethodCopyWith<$Res>(_self.patch!, (value) {
      return _then(_self.copyWith(patch: value));
    });
  }

  /// Create a copy of OpenApiPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodCopyWith<$Res>? get trace {
    if (_self.trace == null) {
      return null;
    }

    return $OpenApiPathMethodCopyWith<$Res>(_self.trace!, (value) {
      return _then(_self.copyWith(trace: value));
    });
  }
}

/// @nodoc
mixin _$OpenApiPathMethod {
  @JsonKey(name: 'tags')
  OpenApiPathMethodTags get tags;
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
  OpenApiPathMethodParameters? get parameters;
  @JsonKey(name: 'requestBody')
  OpenApiPathMethodRequestBody? get requestBody;
  @JsonKey(name: 'responses')
  OpenApiPathMethodResponses? get responses;

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
            const DeepCollectionEquality().equals(other.responses, responses));
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
      const DeepCollectionEquality().hash(responses));

  @override
  String toString() {
    return 'OpenApiPathMethod(tags: $tags, summary: $summary, description: $description, operationId: $operationId, deprecated: $deprecated, security: $security, parameters: $parameters, requestBody: $requestBody, responses: $responses)';
  }
}

/// @nodoc
abstract mixin class $OpenApiPathMethodCopyWith<$Res> {
  factory $OpenApiPathMethodCopyWith(
          OpenApiPathMethod value, $Res Function(OpenApiPathMethod) _then) =
      _$OpenApiPathMethodCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'tags') OpenApiPathMethodTags tags,
      @JsonKey(name: 'summary') String? summary,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'operationId') String? operationId,
      @JsonKey(name: 'deprecated') bool? deprecated,
      @JsonKey(name: 'security') List<Map<String, List<dynamic>>>? security,
      @JsonKey(name: 'parameters') OpenApiPathMethodParameters? parameters,
      @JsonKey(name: 'requestBody') OpenApiPathMethodRequestBody? requestBody,
      @JsonKey(name: 'responses') OpenApiPathMethodResponses? responses});

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
    Object? tags = null,
    Object? summary = freezed,
    Object? description = freezed,
    Object? operationId = freezed,
    Object? deprecated = freezed,
    Object? security = freezed,
    Object? parameters = freezed,
    Object? requestBody = freezed,
    Object? responses = freezed,
  }) {
    return _then(_self.copyWith(
      tags: null == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethodTags,
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
              as OpenApiPathMethodParameters?,
      requestBody: freezed == requestBody
          ? _self.requestBody
          : requestBody // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethodRequestBody?,
      responses: freezed == responses
          ? _self.responses
          : responses // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethodResponses?,
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
@JsonSerializable()
class _OpenApiPathMethod extends OpenApiPathMethod {
  const _OpenApiPathMethod(
      {@JsonKey(name: 'tags') required final OpenApiPathMethodTags tags,
      @JsonKey(name: 'summary') required this.summary,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'operationId') required this.operationId,
      @JsonKey(name: 'deprecated') required this.deprecated,
      @JsonKey(name: 'security')
      final List<Map<String, List<dynamic>>>? security,
      @JsonKey(name: 'parameters')
      required final OpenApiPathMethodParameters? parameters,
      @JsonKey(name: 'requestBody') required this.requestBody,
      @JsonKey(name: 'responses')
      required final OpenApiPathMethodResponses? responses})
      : _tags = tags,
        _security = security,
        _parameters = parameters,
        _responses = responses,
        super._();
  factory _OpenApiPathMethod.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathMethodFromJson(json);

  final OpenApiPathMethodTags _tags;
  @override
  @JsonKey(name: 'tags')
  OpenApiPathMethodTags get tags {
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

  final OpenApiPathMethodParameters? _parameters;
  @override
  @JsonKey(name: 'parameters')
  OpenApiPathMethodParameters? get parameters {
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
  String toString() {
    return 'OpenApiPathMethod(tags: $tags, summary: $summary, description: $description, operationId: $operationId, deprecated: $deprecated, security: $security, parameters: $parameters, requestBody: $requestBody, responses: $responses)';
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
      {@JsonKey(name: 'tags') OpenApiPathMethodTags tags,
      @JsonKey(name: 'summary') String? summary,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'operationId') String? operationId,
      @JsonKey(name: 'deprecated') bool? deprecated,
      @JsonKey(name: 'security') List<Map<String, List<dynamic>>>? security,
      @JsonKey(name: 'parameters') OpenApiPathMethodParameters? parameters,
      @JsonKey(name: 'requestBody') OpenApiPathMethodRequestBody? requestBody,
      @JsonKey(name: 'responses') OpenApiPathMethodResponses? responses});

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
    Object? tags = null,
    Object? summary = freezed,
    Object? description = freezed,
    Object? operationId = freezed,
    Object? deprecated = freezed,
    Object? security = freezed,
    Object? parameters = freezed,
    Object? requestBody = freezed,
    Object? responses = freezed,
  }) {
    return _then(_OpenApiPathMethod(
      tags: null == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethodTags,
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
              as OpenApiPathMethodParameters?,
      requestBody: freezed == requestBody
          ? _self.requestBody
          : requestBody // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethodRequestBody?,
      responses: freezed == responses
          ? _self._responses
          : responses // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethodResponses?,
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
  OpenApiSchema get schema;
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
      OpenApiSchema schema,
      String? description,
      Object? example});

  $OpenApiSchemaCopyWith<$Res> get schema;
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
    Object? schema = null,
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
      schema: null == schema
          ? _self.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as OpenApiSchema,
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
  $OpenApiSchemaCopyWith<$Res> get schema {
    return $OpenApiSchemaCopyWith<$Res>(_self.schema, (value) {
      return _then(_self.copyWith(schema: value));
    });
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
  final OpenApiSchema schema;
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
      OpenApiSchema schema,
      String? description,
      Object? example});

  @override
  $OpenApiSchemaCopyWith<$Res> get schema;
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
    Object? schema = null,
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
      schema: null == schema
          ? _self.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as OpenApiSchema,
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
  $OpenApiSchemaCopyWith<$Res> get schema {
    return $OpenApiSchemaCopyWith<$Res>(_self.schema, (value) {
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
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, description, content);

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

  $OpenApiContentCopyWith<$Res>? get content;
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

  /// Create a copy of OpenApiPathMethodResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiContentCopyWith<$Res>? get content {
    if (_self.content == null) {
      return null;
    }

    return $OpenApiContentCopyWith<$Res>(_self.content!, (value) {
      return _then(_self.copyWith(content: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _OpenApiPathMethodResponse implements OpenApiPathMethodResponse {
  _OpenApiPathMethodResponse(
      {@JsonKey(name: 'description') this.description,
      @JsonKey(name: 'content') required this.content});
  factory _OpenApiPathMethodResponse.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathMethodResponseFromJson(json);

  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'content')
  final OpenApiContent? content;

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
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, description, content);

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

  @override
  $OpenApiContentCopyWith<$Res>? get content;
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
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as OpenApiContent?,
    ));
  }

  /// Create a copy of OpenApiPathMethodResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiContentCopyWith<$Res>? get content {
    if (_self.content == null) {
      return null;
    }

    return $OpenApiContentCopyWith<$Res>(_self.content!, (value) {
      return _then(_self.copyWith(content: value));
    });
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
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, required_, content);

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

  $OpenApiContentCopyWith<$Res> get content;
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

  /// Create a copy of OpenApiPathMethodRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiContentCopyWith<$Res> get content {
    return $OpenApiContentCopyWith<$Res>(_self.content, (value) {
      return _then(_self.copyWith(content: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _OpenApiPathMethodRequestBody implements OpenApiPathMethodRequestBody {
  _OpenApiPathMethodRequestBody(
      {@JsonKey(name: 'required') this.required_,
      @JsonKey(name: 'content') required this.content});
  factory _OpenApiPathMethodRequestBody.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathMethodRequestBodyFromJson(json);

  @override
  @JsonKey(name: 'required')
  final bool? required_;
  @override
  @JsonKey(name: 'content')
  final OpenApiContent content;

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
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, required_, content);

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

  @override
  $OpenApiContentCopyWith<$Res> get content;
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
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as OpenApiContent,
    ));
  }

  /// Create a copy of OpenApiPathMethodRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiContentCopyWith<$Res> get content {
    return $OpenApiContentCopyWith<$Res>(_self.content, (value) {
      return _then(_self.copyWith(content: value));
    });
  }
}
