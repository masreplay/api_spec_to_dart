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
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'openapi') String openapi,
            @JsonKey(name: 'info') OpenApiInfo info,
            @JsonKey(name: 'servers') List<OpenApiServer>? servers,
            @JsonKey(name: 'paths') Map<String, OpenApiPath> paths,
            @JsonKey(name: 'components') OpenApiComponents components)
        $default,
  ) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'openapi') String openapi,
            @JsonKey(name: 'info') OpenApiInfo info,
            @JsonKey(name: 'servers') List<OpenApiServer>? servers,
            @JsonKey(name: 'paths') Map<String, OpenApiPath> paths,
            @JsonKey(name: 'components') OpenApiComponents components)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this OpenApi to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'openapi') String openapi,
            @JsonKey(name: 'info') OpenApiInfo info,
            @JsonKey(name: 'servers') List<OpenApiServer>? servers,
            @JsonKey(name: 'paths') Map<String, OpenApiPath> paths,
            @JsonKey(name: 'components') OpenApiComponents components)
        $default,
  ) {
    return $default(openapi, info, servers, paths, components);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'openapi') String openapi,
            @JsonKey(name: 'info') OpenApiInfo info,
            @JsonKey(name: 'servers') List<OpenApiServer>? servers,
            @JsonKey(name: 'paths') Map<String, OpenApiPath> paths,
            @JsonKey(name: 'components') OpenApiComponents components)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(openapi, info, servers, paths, components);
    }
    return orElse();
  }

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
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'url') Uri url,
            @JsonKey(name: 'description') String? description)
        $default,
  ) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'url') Uri url,
            @JsonKey(name: 'description') String? description)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this OpenApiServer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'url') Uri url,
            @JsonKey(name: 'description') String? description)
        $default,
  ) {
    return $default(url, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'url') Uri url,
            @JsonKey(name: 'description') String? description)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(url, description);
    }
    return orElse();
  }

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
}
