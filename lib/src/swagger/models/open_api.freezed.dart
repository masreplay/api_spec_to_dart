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
  @JsonKey(name: 'paths')
  Map<String, Map<OpenApiPathMethodType, OpenApiPathMethod>> get paths =>
      throw _privateConstructorUsedError;
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
      @JsonKey(name: 'paths')
      Map<String, Map<OpenApiPathMethodType, OpenApiPathMethod>> paths,
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
      paths: null == paths
          ? _value.paths
          : paths // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<OpenApiPathMethodType, OpenApiPathMethod>>,
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
      @JsonKey(name: 'paths')
      Map<String, Map<OpenApiPathMethodType, OpenApiPathMethod>> paths,
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
      paths: null == paths
          ? _value._paths
          : paths // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<OpenApiPathMethodType, OpenApiPathMethod>>,
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
      @JsonKey(name: 'paths')
      required final Map<String, Map<OpenApiPathMethodType, OpenApiPathMethod>>
          paths,
      @JsonKey(name: 'components') required this.components})
      : _paths = paths,
        super._();

  factory _$OpenApiImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiImplFromJson(json);

  @override
  @JsonKey(name: 'openapi')
  final String openapi;
  @override
  @JsonKey(name: 'info')
  final OpenApiInfo info;
  final Map<String, Map<OpenApiPathMethodType, OpenApiPathMethod>> _paths;
  @override
  @JsonKey(name: 'paths')
  Map<String, Map<OpenApiPathMethodType, OpenApiPathMethod>> get paths {
    if (_paths is EqualUnmodifiableMapView) return _paths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_paths);
  }

  @override
  @JsonKey(name: 'components')
  final OpenApiComponents components;

  @override
  String toString() {
    return 'OpenApi(openapi: $openapi, info: $info, paths: $paths, components: $components)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiImpl &&
            (identical(other.openapi, openapi) || other.openapi == openapi) &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._paths, _paths) &&
            (identical(other.components, components) ||
                other.components == components));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, openapi, info,
      const DeepCollectionEquality().hash(_paths), components);

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
      @JsonKey(name: 'paths')
      required final Map<String, Map<OpenApiPathMethodType, OpenApiPathMethod>>
          paths,
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
  @JsonKey(name: 'paths')
  Map<String, Map<OpenApiPathMethodType, OpenApiPathMethod>> get paths;
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
