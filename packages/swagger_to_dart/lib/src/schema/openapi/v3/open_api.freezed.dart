// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OpenApi {
  @JsonKey(name: 'openapi')
  String? get openapi;
  @JsonKey(name: 'info')
  OpenApiInfo? get info;
  @JsonKey(name: 'servers')
  List<OpenApiServer>? get servers;
  @JsonKey(name: 'paths')
  OpenApiPaths? get paths;
  @JsonKey(name: 'components')
  OpenApiComponents? get components;
  @JsonKey(name: 'tags')
  List<OpenApiTag>? get tags;
  Map<String, dynamic>? get extraJson;

  /// Create a copy of OpenApi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenApiCopyWith<OpenApi> get copyWith =>
      _$OpenApiCopyWithImpl<OpenApi>(this as OpenApi, _$identity);

  /// Serializes this OpenApi to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenApi &&
            (identical(other.openapi, openapi) || other.openapi == openapi) &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other.servers, servers) &&
            const DeepCollectionEquality().equals(other.paths, paths) &&
            (identical(other.components, components) ||
                other.components == components) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality().equals(other.extraJson, extraJson));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      openapi,
      info,
      const DeepCollectionEquality().hash(servers),
      const DeepCollectionEquality().hash(paths),
      components,
      const DeepCollectionEquality().hash(tags),
      const DeepCollectionEquality().hash(extraJson));

  @override
  String toString() {
    return 'OpenApi(openapi: $openapi, info: $info, servers: $servers, paths: $paths, components: $components, tags: $tags, extraJson: $extraJson)';
  }
}

/// @nodoc
abstract mixin class $OpenApiCopyWith<$Res> {
  factory $OpenApiCopyWith(OpenApi value, $Res Function(OpenApi) _then) =
      _$OpenApiCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'openapi') String? openapi,
      @JsonKey(name: 'info') OpenApiInfo? info,
      @JsonKey(name: 'servers') List<OpenApiServer>? servers,
      @JsonKey(name: 'paths') OpenApiPaths? paths,
      @JsonKey(name: 'components') OpenApiComponents? components,
      @JsonKey(name: 'tags') List<OpenApiTag>? tags,
      Map<String, dynamic>? extraJson});

  $OpenApiInfoCopyWith<$Res>? get info;
  $OpenApiComponentsCopyWith<$Res>? get components;
}

/// @nodoc
class _$OpenApiCopyWithImpl<$Res> implements $OpenApiCopyWith<$Res> {
  _$OpenApiCopyWithImpl(this._self, this._then);

  final OpenApi _self;
  final $Res Function(OpenApi) _then;

  /// Create a copy of OpenApi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openapi = freezed,
    Object? info = freezed,
    Object? servers = freezed,
    Object? paths = freezed,
    Object? components = freezed,
    Object? tags = freezed,
    Object? extraJson = freezed,
  }) {
    return _then(_self.copyWith(
      openapi: freezed == openapi
          ? _self.openapi
          : openapi // ignore: cast_nullable_to_non_nullable
              as String?,
      info: freezed == info
          ? _self.info
          : info // ignore: cast_nullable_to_non_nullable
              as OpenApiInfo?,
      servers: freezed == servers
          ? _self.servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<OpenApiServer>?,
      paths: freezed == paths
          ? _self.paths
          : paths // ignore: cast_nullable_to_non_nullable
              as OpenApiPaths?,
      components: freezed == components
          ? _self.components
          : components // ignore: cast_nullable_to_non_nullable
              as OpenApiComponents?,
      tags: freezed == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<OpenApiTag>?,
      extraJson: freezed == extraJson
          ? _self.extraJson
          : extraJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of OpenApi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiInfoCopyWith<$Res>? get info {
    if (_self.info == null) {
      return null;
    }

    return $OpenApiInfoCopyWith<$Res>(_self.info!, (value) {
      return _then(_self.copyWith(info: value));
    });
  }

  /// Create a copy of OpenApi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiComponentsCopyWith<$Res>? get components {
    if (_self.components == null) {
      return null;
    }

    return $OpenApiComponentsCopyWith<$Res>(_self.components!, (value) {
      return _then(_self.copyWith(components: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _OpenApi extends OpenApi {
  const _OpenApi(
      {@JsonKey(name: 'openapi') this.openapi,
      @JsonKey(name: 'info') this.info,
      @JsonKey(name: 'servers') final List<OpenApiServer>? servers,
      @JsonKey(name: 'paths') final OpenApiPaths? paths,
      @JsonKey(name: 'components') this.components,
      @JsonKey(name: 'tags') final List<OpenApiTag>? tags,
      final Map<String, dynamic>? extraJson})
      : _servers = servers,
        _paths = paths,
        _tags = tags,
        _extraJson = extraJson,
        super._();
  factory _OpenApi.fromJson(Map<String, dynamic> json) =>
      _$OpenApiFromJson(json);

  @override
  @JsonKey(name: 'openapi')
  final String? openapi;
  @override
  @JsonKey(name: 'info')
  final OpenApiInfo? info;
  final List<OpenApiServer>? _servers;
  @override
  @JsonKey(name: 'servers')
  List<OpenApiServer>? get servers {
    final value = _servers;
    if (value == null) return null;
    if (_servers is EqualUnmodifiableListView) return _servers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final OpenApiPaths? _paths;
  @override
  @JsonKey(name: 'paths')
  OpenApiPaths? get paths {
    final value = _paths;
    if (value == null) return null;
    if (_paths is EqualUnmodifiableMapView) return _paths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'components')
  final OpenApiComponents? components;
  final List<OpenApiTag>? _tags;
  @override
  @JsonKey(name: 'tags')
  List<OpenApiTag>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _extraJson;
  @override
  Map<String, dynamic>? get extraJson {
    final value = _extraJson;
    if (value == null) return null;
    if (_extraJson is EqualUnmodifiableMapView) return _extraJson;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of OpenApi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OpenApiCopyWith<_OpenApi> get copyWith =>
      __$OpenApiCopyWithImpl<_OpenApi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OpenApiToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenApi &&
            (identical(other.openapi, openapi) || other.openapi == openapi) &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._servers, _servers) &&
            const DeepCollectionEquality().equals(other._paths, _paths) &&
            (identical(other.components, components) ||
                other.components == components) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._extraJson, _extraJson));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      openapi,
      info,
      const DeepCollectionEquality().hash(_servers),
      const DeepCollectionEquality().hash(_paths),
      components,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_extraJson));

  @override
  String toString() {
    return 'OpenApi(openapi: $openapi, info: $info, servers: $servers, paths: $paths, components: $components, tags: $tags, extraJson: $extraJson)';
  }
}

/// @nodoc
abstract mixin class _$OpenApiCopyWith<$Res> implements $OpenApiCopyWith<$Res> {
  factory _$OpenApiCopyWith(_OpenApi value, $Res Function(_OpenApi) _then) =
      __$OpenApiCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'openapi') String? openapi,
      @JsonKey(name: 'info') OpenApiInfo? info,
      @JsonKey(name: 'servers') List<OpenApiServer>? servers,
      @JsonKey(name: 'paths') OpenApiPaths? paths,
      @JsonKey(name: 'components') OpenApiComponents? components,
      @JsonKey(name: 'tags') List<OpenApiTag>? tags,
      Map<String, dynamic>? extraJson});

  @override
  $OpenApiInfoCopyWith<$Res>? get info;
  @override
  $OpenApiComponentsCopyWith<$Res>? get components;
}

/// @nodoc
class __$OpenApiCopyWithImpl<$Res> implements _$OpenApiCopyWith<$Res> {
  __$OpenApiCopyWithImpl(this._self, this._then);

  final _OpenApi _self;
  final $Res Function(_OpenApi) _then;

  /// Create a copy of OpenApi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? openapi = freezed,
    Object? info = freezed,
    Object? servers = freezed,
    Object? paths = freezed,
    Object? components = freezed,
    Object? tags = freezed,
    Object? extraJson = freezed,
  }) {
    return _then(_OpenApi(
      openapi: freezed == openapi
          ? _self.openapi
          : openapi // ignore: cast_nullable_to_non_nullable
              as String?,
      info: freezed == info
          ? _self.info
          : info // ignore: cast_nullable_to_non_nullable
              as OpenApiInfo?,
      servers: freezed == servers
          ? _self._servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<OpenApiServer>?,
      paths: freezed == paths
          ? _self._paths
          : paths // ignore: cast_nullable_to_non_nullable
              as OpenApiPaths?,
      components: freezed == components
          ? _self.components
          : components // ignore: cast_nullable_to_non_nullable
              as OpenApiComponents?,
      tags: freezed == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<OpenApiTag>?,
      extraJson: freezed == extraJson
          ? _self._extraJson
          : extraJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of OpenApi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiInfoCopyWith<$Res>? get info {
    if (_self.info == null) {
      return null;
    }

    return $OpenApiInfoCopyWith<$Res>(_self.info!, (value) {
      return _then(_self.copyWith(info: value));
    });
  }

  /// Create a copy of OpenApi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiComponentsCopyWith<$Res>? get components {
    if (_self.components == null) {
      return null;
    }

    return $OpenApiComponentsCopyWith<$Res>(_self.components!, (value) {
      return _then(_self.copyWith(components: value));
    });
  }
}

/// @nodoc
mixin _$OpenApiTag {
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'description')
  String? get description;

  /// Create a copy of OpenApiTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenApiTagCopyWith<OpenApiTag> get copyWith =>
      _$OpenApiTagCopyWithImpl<OpenApiTag>(this as OpenApiTag, _$identity);

  /// Serializes this OpenApiTag to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenApiTag &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @override
  String toString() {
    return 'OpenApiTag(name: $name, description: $description)';
  }
}

/// @nodoc
abstract mixin class $OpenApiTagCopyWith<$Res> {
  factory $OpenApiTagCopyWith(
          OpenApiTag value, $Res Function(OpenApiTag) _then) =
      _$OpenApiTagCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$OpenApiTagCopyWithImpl<$Res> implements $OpenApiTagCopyWith<$Res> {
  _$OpenApiTagCopyWithImpl(this._self, this._then);

  final OpenApiTag _self;
  final $Res Function(OpenApiTag) _then;

  /// Create a copy of OpenApiTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _OpenApiTag extends OpenApiTag {
  const _OpenApiTag(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'description') required this.description})
      : super._();
  factory _OpenApiTag.fromJson(Map<String, dynamic> json) =>
      _$OpenApiTagFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String? description;

  /// Create a copy of OpenApiTag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OpenApiTagCopyWith<_OpenApiTag> get copyWith =>
      __$OpenApiTagCopyWithImpl<_OpenApiTag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OpenApiTagToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenApiTag &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @override
  String toString() {
    return 'OpenApiTag(name: $name, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$OpenApiTagCopyWith<$Res>
    implements $OpenApiTagCopyWith<$Res> {
  factory _$OpenApiTagCopyWith(
          _OpenApiTag value, $Res Function(_OpenApiTag) _then) =
      __$OpenApiTagCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$OpenApiTagCopyWithImpl<$Res> implements _$OpenApiTagCopyWith<$Res> {
  __$OpenApiTagCopyWithImpl(this._self, this._then);

  final _OpenApiTag _self;
  final $Res Function(_OpenApiTag) _then;

  /// Create a copy of OpenApiTag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_OpenApiTag(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$OpenApiServer {
  @JsonKey(name: 'url')
  Uri get url;
  @JsonKey(name: 'description')
  String? get description;

  /// Create a copy of OpenApiServer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenApiServerCopyWith<OpenApiServer> get copyWith =>
      _$OpenApiServerCopyWithImpl<OpenApiServer>(
          this as OpenApiServer, _$identity);

  /// Serializes this OpenApiServer to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenApiServer &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, description);

  @override
  String toString() {
    return 'OpenApiServer(url: $url, description: $description)';
  }
}

/// @nodoc
abstract mixin class $OpenApiServerCopyWith<$Res> {
  factory $OpenApiServerCopyWith(
          OpenApiServer value, $Res Function(OpenApiServer) _then) =
      _$OpenApiServerCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') Uri url,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$OpenApiServerCopyWithImpl<$Res>
    implements $OpenApiServerCopyWith<$Res> {
  _$OpenApiServerCopyWithImpl(this._self, this._then);

  final OpenApiServer _self;
  final $Res Function(OpenApiServer) _then;

  /// Create a copy of OpenApiServer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? description = freezed,
  }) {
    return _then(_self.copyWith(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _OpenApiServer extends OpenApiServer {
  const _OpenApiServer(
      {@JsonKey(name: 'url') required this.url,
      @JsonKey(name: 'description') required this.description})
      : super._();
  factory _OpenApiServer.fromJson(Map<String, dynamic> json) =>
      _$OpenApiServerFromJson(json);

  @override
  @JsonKey(name: 'url')
  final Uri url;
  @override
  @JsonKey(name: 'description')
  final String? description;

  /// Create a copy of OpenApiServer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OpenApiServerCopyWith<_OpenApiServer> get copyWith =>
      __$OpenApiServerCopyWithImpl<_OpenApiServer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OpenApiServerToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenApiServer &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, description);

  @override
  String toString() {
    return 'OpenApiServer(url: $url, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$OpenApiServerCopyWith<$Res>
    implements $OpenApiServerCopyWith<$Res> {
  factory _$OpenApiServerCopyWith(
          _OpenApiServer value, $Res Function(_OpenApiServer) _then) =
      __$OpenApiServerCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') Uri url,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$OpenApiServerCopyWithImpl<$Res>
    implements _$OpenApiServerCopyWith<$Res> {
  __$OpenApiServerCopyWithImpl(this._self, this._then);

  final _OpenApiServer _self;
  final $Res Function(_OpenApiServer) _then;

  /// Create a copy of OpenApiServer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
    Object? description = freezed,
  }) {
    return _then(_OpenApiServer(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}
