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
  String get openapi;
  @JsonKey(name: 'info')
  OpenApiInfo get info;
  @JsonKey(name: 'servers')
  List<OpenApiServer>? get servers;
  @JsonKey(name: 'paths')
  OpenApiPaths? get paths;
  @JsonKey(name: 'components')
  OpenApiComponents? get components;

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
                other.components == components));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      openapi,
      info,
      const DeepCollectionEquality().hash(servers),
      const DeepCollectionEquality().hash(paths),
      components);

  @override
  String toString() {
    return 'OpenApi(openapi: $openapi, info: $info, servers: $servers, paths: $paths, components: $components)';
  }
}

/// @nodoc
abstract mixin class $OpenApiCopyWith<$Res> {
  factory $OpenApiCopyWith(OpenApi value, $Res Function(OpenApi) _then) =
      _$OpenApiCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'openapi') String openapi,
      @JsonKey(name: 'info') OpenApiInfo info,
      @JsonKey(name: 'servers') List<OpenApiServer>? servers,
      @JsonKey(name: 'paths') OpenApiPaths? paths,
      @JsonKey(name: 'components') OpenApiComponents? components});

  $OpenApiInfoCopyWith<$Res> get info;
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
    Object? openapi = null,
    Object? info = null,
    Object? servers = freezed,
    Object? paths = freezed,
    Object? components = freezed,
  }) {
    return _then(_self.copyWith(
      openapi: null == openapi
          ? _self.openapi
          : openapi // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _self.info
          : info // ignore: cast_nullable_to_non_nullable
              as OpenApiInfo,
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
    ));
  }

  /// Create a copy of OpenApi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiInfoCopyWith<$Res> get info {
    return $OpenApiInfoCopyWith<$Res>(_self.info, (value) {
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
      {@JsonKey(name: 'openapi') required this.openapi,
      @JsonKey(name: 'info') required this.info,
      @JsonKey(name: 'servers') required final List<OpenApiServer>? servers,
      @JsonKey(name: 'paths') required final OpenApiPaths? paths,
      @JsonKey(name: 'components') required this.components})
      : _servers = servers,
        _paths = paths,
        super._();
  factory _OpenApi.fromJson(Map<String, dynamic> json) =>
      _$OpenApiFromJson(json);

  @override
  @JsonKey(name: 'openapi')
  final String openapi;
  @override
  @JsonKey(name: 'info')
  final OpenApiInfo info;
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
                other.components == components));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      openapi,
      info,
      const DeepCollectionEquality().hash(_servers),
      const DeepCollectionEquality().hash(_paths),
      components);

  @override
  String toString() {
    return 'OpenApi(openapi: $openapi, info: $info, servers: $servers, paths: $paths, components: $components)';
  }
}

/// @nodoc
abstract mixin class _$OpenApiCopyWith<$Res> implements $OpenApiCopyWith<$Res> {
  factory _$OpenApiCopyWith(_OpenApi value, $Res Function(_OpenApi) _then) =
      __$OpenApiCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'openapi') String openapi,
      @JsonKey(name: 'info') OpenApiInfo info,
      @JsonKey(name: 'servers') List<OpenApiServer>? servers,
      @JsonKey(name: 'paths') OpenApiPaths? paths,
      @JsonKey(name: 'components') OpenApiComponents? components});

  @override
  $OpenApiInfoCopyWith<$Res> get info;
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
    Object? openapi = null,
    Object? info = null,
    Object? servers = freezed,
    Object? paths = freezed,
    Object? components = freezed,
  }) {
    return _then(_OpenApi(
      openapi: null == openapi
          ? _self.openapi
          : openapi // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _self.info
          : info // ignore: cast_nullable_to_non_nullable
              as OpenApiInfo,
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
    ));
  }

  /// Create a copy of OpenApi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiInfoCopyWith<$Res> get info {
    return $OpenApiInfoCopyWith<$Res>(_self.info, (value) {
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
