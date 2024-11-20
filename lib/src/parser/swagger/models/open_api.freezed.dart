// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpenApi _$OpenApiFromJson(Map<String, dynamic> json) {
  return _OpenApi.fromJson(json);
}

/// @nodoc
mixin _$OpenApi {
  @JsonKey(name: 'openapi')
  String get openapi => throw _privateConstructorUsedError;
  @JsonKey(name: 'info')
  OpenApiInfo get info => throw _privateConstructorUsedError;
  @JsonKey(name: 'servers')
  List<OpenApiServer>? get servers => throw _privateConstructorUsedError;
  @JsonKey(name: 'paths')
  Map<String, OpenApiPath> get paths => throw _privateConstructorUsedError;
  @JsonKey(name: 'components')
  OpenApiComponents get components => throw _privateConstructorUsedError;

  /// Serializes this OpenApi to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenApi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenApiCopyWith<OpenApi> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenApiCopyWith<$Res> {
  factory $OpenApiCopyWith(OpenApi value, $Res Function(OpenApi) then) =
      _$OpenApiCopyWithImpl<$Res, OpenApi>;
  @useResult
  $Res call(
      {@JsonKey(name: 'openapi') String openapi,
      @JsonKey(name: 'info') OpenApiInfo info,
      @JsonKey(name: 'servers') List<OpenApiServer>? servers,
      @JsonKey(name: 'paths') Map<String, OpenApiPath> paths,
      @JsonKey(name: 'components') OpenApiComponents components});

  $OpenApiInfoCopyWith<$Res> get info;
  $OpenApiComponentsCopyWith<$Res> get components;
}

/// @nodoc
class _$OpenApiCopyWithImpl<$Res, $Val extends OpenApi>
    implements $OpenApiCopyWith<$Res> {
  _$OpenApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenApi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openapi = null,
    Object? info = null,
    Object? servers = freezed,
    Object? paths = null,
    Object? components = null,
  }) {
    return _then(_value.copyWith(
      openapi: null == openapi
          ? _value.openapi
          : openapi // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as OpenApiInfo,
      servers: freezed == servers
          ? _value.servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<OpenApiServer>?,
      paths: null == paths
          ? _value.paths
          : paths // ignore: cast_nullable_to_non_nullable
              as Map<String, OpenApiPath>,
      components: null == components
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as OpenApiComponents,
    ) as $Val);
  }

  /// Create a copy of OpenApi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiInfoCopyWith<$Res> get info {
    return $OpenApiInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }

  /// Create a copy of OpenApi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiComponentsCopyWith<$Res> get components {
    return $OpenApiComponentsCopyWith<$Res>(_value.components, (value) {
      return _then(_value.copyWith(components: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OpenApiImplCopyWith<$Res> implements $OpenApiCopyWith<$Res> {
  factory _$$OpenApiImplCopyWith(
          _$OpenApiImpl value, $Res Function(_$OpenApiImpl) then) =
      __$$OpenApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'openapi') String openapi,
      @JsonKey(name: 'info') OpenApiInfo info,
      @JsonKey(name: 'servers') List<OpenApiServer>? servers,
      @JsonKey(name: 'paths') Map<String, OpenApiPath> paths,
      @JsonKey(name: 'components') OpenApiComponents components});

  @override
  $OpenApiInfoCopyWith<$Res> get info;
  @override
  $OpenApiComponentsCopyWith<$Res> get components;
}

/// @nodoc
class __$$OpenApiImplCopyWithImpl<$Res>
    extends _$OpenApiCopyWithImpl<$Res, _$OpenApiImpl>
    implements _$$OpenApiImplCopyWith<$Res> {
  __$$OpenApiImplCopyWithImpl(
      _$OpenApiImpl _value, $Res Function(_$OpenApiImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenApi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openapi = null,
    Object? info = null,
    Object? servers = freezed,
    Object? paths = null,
    Object? components = null,
  }) {
    return _then(_$OpenApiImpl(
      openapi: null == openapi
          ? _value.openapi
          : openapi // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as OpenApiInfo,
      servers: freezed == servers
          ? _value._servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<OpenApiServer>?,
      paths: null == paths
          ? _value._paths
          : paths // ignore: cast_nullable_to_non_nullable
              as Map<String, OpenApiPath>,
      components: null == components
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as OpenApiComponents,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenApiImpl extends _OpenApi {
  const _$OpenApiImpl(
      {@JsonKey(name: 'openapi') required this.openapi,
      @JsonKey(name: 'info') required this.info,
      @JsonKey(name: 'servers') required final List<OpenApiServer>? servers,
      @JsonKey(name: 'paths') required final Map<String, OpenApiPath> paths,
      @JsonKey(name: 'components') required this.components})
      : _servers = servers,
        _paths = paths,
        super._();

  factory _$OpenApiImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiImplFromJson(json);

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

  final Map<String, OpenApiPath> _paths;
  @override
  @JsonKey(name: 'paths')
  Map<String, OpenApiPath> get paths {
    if (_paths is EqualUnmodifiableMapView) return _paths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_paths);
  }

  @override
  @JsonKey(name: 'components')
  final OpenApiComponents components;

  @override
  String toString() {
    return 'OpenApi(openapi: $openapi, info: $info, servers: $servers, paths: $paths, components: $components)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiImpl &&
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

  /// Create a copy of OpenApi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenApiImplCopyWith<_$OpenApiImpl> get copyWith =>
      __$$OpenApiImplCopyWithImpl<_$OpenApiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiImplToJson(
      this,
    );
  }
}

abstract class _OpenApi extends OpenApi {
  const factory _OpenApi(
      {@JsonKey(name: 'openapi') required final String openapi,
      @JsonKey(name: 'info') required final OpenApiInfo info,
      @JsonKey(name: 'servers') required final List<OpenApiServer>? servers,
      @JsonKey(name: 'paths') required final Map<String, OpenApiPath> paths,
      @JsonKey(name: 'components')
      required final OpenApiComponents components}) = _$OpenApiImpl;
  const _OpenApi._() : super._();

  factory _OpenApi.fromJson(Map<String, dynamic> json) = _$OpenApiImpl.fromJson;

  @override
  @JsonKey(name: 'openapi')
  String get openapi;
  @override
  @JsonKey(name: 'info')
  OpenApiInfo get info;
  @override
  @JsonKey(name: 'servers')
  List<OpenApiServer>? get servers;
  @override
  @JsonKey(name: 'paths')
  Map<String, OpenApiPath> get paths;
  @override
  @JsonKey(name: 'components')
  OpenApiComponents get components;

  /// Create a copy of OpenApi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenApiImplCopyWith<_$OpenApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenApiServer _$OpenApiServerFromJson(Map<String, dynamic> json) {
  return _OpenApiServer.fromJson(json);
}

/// @nodoc
mixin _$OpenApiServer {
  @JsonKey(name: 'url')
  Uri get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this OpenApiServer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenApiServer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenApiServerCopyWith<OpenApiServer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenApiServerCopyWith<$Res> {
  factory $OpenApiServerCopyWith(
          OpenApiServer value, $Res Function(OpenApiServer) then) =
      _$OpenApiServerCopyWithImpl<$Res, OpenApiServer>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') Uri url,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$OpenApiServerCopyWithImpl<$Res, $Val extends OpenApiServer>
    implements $OpenApiServerCopyWith<$Res> {
  _$OpenApiServerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenApiServer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenApiServerImplCopyWith<$Res>
    implements $OpenApiServerCopyWith<$Res> {
  factory _$$OpenApiServerImplCopyWith(
          _$OpenApiServerImpl value, $Res Function(_$OpenApiServerImpl) then) =
      __$$OpenApiServerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') Uri url,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$$OpenApiServerImplCopyWithImpl<$Res>
    extends _$OpenApiServerCopyWithImpl<$Res, _$OpenApiServerImpl>
    implements _$$OpenApiServerImplCopyWith<$Res> {
  __$$OpenApiServerImplCopyWithImpl(
      _$OpenApiServerImpl _value, $Res Function(_$OpenApiServerImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenApiServer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? description = freezed,
  }) {
    return _then(_$OpenApiServerImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenApiServerImpl extends _OpenApiServer {
  const _$OpenApiServerImpl(
      {@JsonKey(name: 'url') required this.url,
      @JsonKey(name: 'description') required this.description})
      : super._();

  factory _$OpenApiServerImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiServerImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final Uri url;
  @override
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString() {
    return 'OpenApiServer(url: $url, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiServerImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, description);

  /// Create a copy of OpenApiServer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenApiServerImplCopyWith<_$OpenApiServerImpl> get copyWith =>
      __$$OpenApiServerImplCopyWithImpl<_$OpenApiServerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiServerImplToJson(
      this,
    );
  }
}

abstract class _OpenApiServer extends OpenApiServer {
  const factory _OpenApiServer(
          {@JsonKey(name: 'url') required final Uri url,
          @JsonKey(name: 'description') required final String? description}) =
      _$OpenApiServerImpl;
  const _OpenApiServer._() : super._();

  factory _OpenApiServer.fromJson(Map<String, dynamic> json) =
      _$OpenApiServerImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  Uri get url;
  @override
  @JsonKey(name: 'description')
  String? get description;

  /// Create a copy of OpenApiServer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenApiServerImplCopyWith<_$OpenApiServerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
