// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'swagger_to_dart_yaml.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SwaggerToDartYaml {
  SwaggerToDart get swaggerToDart;

  /// Create a copy of SwaggerToDartYaml
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SwaggerToDartYamlCopyWith<SwaggerToDartYaml> get copyWith =>
      _$SwaggerToDartYamlCopyWithImpl<SwaggerToDartYaml>(
          this as SwaggerToDartYaml, _$identity);

  /// Serializes this SwaggerToDartYaml to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SwaggerToDartYaml &&
            (identical(other.swaggerToDart, swaggerToDart) ||
                other.swaggerToDart == swaggerToDart));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, swaggerToDart);

  @override
  String toString() {
    return 'SwaggerToDartYaml(swaggerToDart: $swaggerToDart)';
  }
}

/// @nodoc
abstract mixin class $SwaggerToDartYamlCopyWith<$Res> {
  factory $SwaggerToDartYamlCopyWith(
          SwaggerToDartYaml value, $Res Function(SwaggerToDartYaml) _then) =
      _$SwaggerToDartYamlCopyWithImpl;
  @useResult
  $Res call({SwaggerToDart swaggerToDart});

  $SwaggerToDartCopyWith<$Res> get swaggerToDart;
}

/// @nodoc
class _$SwaggerToDartYamlCopyWithImpl<$Res>
    implements $SwaggerToDartYamlCopyWith<$Res> {
  _$SwaggerToDartYamlCopyWithImpl(this._self, this._then);

  final SwaggerToDartYaml _self;
  final $Res Function(SwaggerToDartYaml) _then;

  /// Create a copy of SwaggerToDartYaml
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? swaggerToDart = null,
  }) {
    return _then(_self.copyWith(
      swaggerToDart: null == swaggerToDart
          ? _self.swaggerToDart
          : swaggerToDart // ignore: cast_nullable_to_non_nullable
              as SwaggerToDart,
    ));
  }

  /// Create a copy of SwaggerToDartYaml
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SwaggerToDartCopyWith<$Res> get swaggerToDart {
    return $SwaggerToDartCopyWith<$Res>(_self.swaggerToDart, (value) {
      return _then(_self.copyWith(swaggerToDart: value));
    });
  }
}

/// @nodoc

@_jsonSerializable
class _SwaggerToDartYaml extends SwaggerToDartYaml {
  const _SwaggerToDartYaml({required this.swaggerToDart}) : super._();
  factory _SwaggerToDartYaml.fromJson(Map<String, dynamic> json) =>
      _$SwaggerToDartYamlFromJson(json);

  @override
  final SwaggerToDart swaggerToDart;

  /// Create a copy of SwaggerToDartYaml
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SwaggerToDartYamlCopyWith<_SwaggerToDartYaml> get copyWith =>
      __$SwaggerToDartYamlCopyWithImpl<_SwaggerToDartYaml>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SwaggerToDartYamlToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SwaggerToDartYaml &&
            (identical(other.swaggerToDart, swaggerToDart) ||
                other.swaggerToDart == swaggerToDart));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, swaggerToDart);

  @override
  String toString() {
    return 'SwaggerToDartYaml(swaggerToDart: $swaggerToDart)';
  }
}

/// @nodoc
abstract mixin class _$SwaggerToDartYamlCopyWith<$Res>
    implements $SwaggerToDartYamlCopyWith<$Res> {
  factory _$SwaggerToDartYamlCopyWith(
          _SwaggerToDartYaml value, $Res Function(_SwaggerToDartYaml) _then) =
      __$SwaggerToDartYamlCopyWithImpl;
  @override
  @useResult
  $Res call({SwaggerToDart swaggerToDart});

  @override
  $SwaggerToDartCopyWith<$Res> get swaggerToDart;
}

/// @nodoc
class __$SwaggerToDartYamlCopyWithImpl<$Res>
    implements _$SwaggerToDartYamlCopyWith<$Res> {
  __$SwaggerToDartYamlCopyWithImpl(this._self, this._then);

  final _SwaggerToDartYaml _self;
  final $Res Function(_SwaggerToDartYaml) _then;

  /// Create a copy of SwaggerToDartYaml
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? swaggerToDart = null,
  }) {
    return _then(_SwaggerToDartYaml(
      swaggerToDart: null == swaggerToDart
          ? _self.swaggerToDart
          : swaggerToDart // ignore: cast_nullable_to_non_nullable
              as SwaggerToDart,
    ));
  }

  /// Create a copy of SwaggerToDartYaml
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SwaggerToDartCopyWith<$Res> get swaggerToDart {
    return $SwaggerToDartCopyWith<$Res>(_self.swaggerToDart, (value) {
      return _then(_self.copyWith(swaggerToDart: value));
    });
  }
}

/// @nodoc
mixin _$JsonSerializableConfig {
  JsonSerializableConfigFallbackType get fallbackType;

  /// Create a copy of JsonSerializableConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JsonSerializableConfigCopyWith<JsonSerializableConfig> get copyWith =>
      _$JsonSerializableConfigCopyWithImpl<JsonSerializableConfig>(
          this as JsonSerializableConfig, _$identity);

  /// Serializes this JsonSerializableConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JsonSerializableConfig &&
            (identical(other.fallbackType, fallbackType) ||
                other.fallbackType == fallbackType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fallbackType);

  @override
  String toString() {
    return 'JsonSerializableConfig(fallbackType: $fallbackType)';
  }
}

/// @nodoc
abstract mixin class $JsonSerializableConfigCopyWith<$Res> {
  factory $JsonSerializableConfigCopyWith(JsonSerializableConfig value,
          $Res Function(JsonSerializableConfig) _then) =
      _$JsonSerializableConfigCopyWithImpl;
  @useResult
  $Res call({JsonSerializableConfigFallbackType fallbackType});
}

/// @nodoc
class _$JsonSerializableConfigCopyWithImpl<$Res>
    implements $JsonSerializableConfigCopyWith<$Res> {
  _$JsonSerializableConfigCopyWithImpl(this._self, this._then);

  final JsonSerializableConfig _self;
  final $Res Function(JsonSerializableConfig) _then;

  /// Create a copy of JsonSerializableConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fallbackType = null,
  }) {
    return _then(_self.copyWith(
      fallbackType: null == fallbackType
          ? _self.fallbackType
          : fallbackType // ignore: cast_nullable_to_non_nullable
              as JsonSerializableConfigFallbackType,
    ));
  }
}

/// @nodoc

@_jsonSerializable
class _JsonSerializableConfig extends JsonSerializableConfig {
  const _JsonSerializableConfig(
      {this.fallbackType = JsonSerializableConfigFallbackType.unknown})
      : super._();
  factory _JsonSerializableConfig.fromJson(Map<String, dynamic> json) =>
      _$JsonSerializableConfigFromJson(json);

  @override
  @JsonKey()
  final JsonSerializableConfigFallbackType fallbackType;

  /// Create a copy of JsonSerializableConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$JsonSerializableConfigCopyWith<_JsonSerializableConfig> get copyWith =>
      __$JsonSerializableConfigCopyWithImpl<_JsonSerializableConfig>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$JsonSerializableConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JsonSerializableConfig &&
            (identical(other.fallbackType, fallbackType) ||
                other.fallbackType == fallbackType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fallbackType);

  @override
  String toString() {
    return 'JsonSerializableConfig(fallbackType: $fallbackType)';
  }
}

/// @nodoc
abstract mixin class _$JsonSerializableConfigCopyWith<$Res>
    implements $JsonSerializableConfigCopyWith<$Res> {
  factory _$JsonSerializableConfigCopyWith(_JsonSerializableConfig value,
          $Res Function(_JsonSerializableConfig) _then) =
      __$JsonSerializableConfigCopyWithImpl;
  @override
  @useResult
  $Res call({JsonSerializableConfigFallbackType fallbackType});
}

/// @nodoc
class __$JsonSerializableConfigCopyWithImpl<$Res>
    implements _$JsonSerializableConfigCopyWith<$Res> {
  __$JsonSerializableConfigCopyWithImpl(this._self, this._then);

  final _JsonSerializableConfig _self;
  final $Res Function(_JsonSerializableConfig) _then;

  /// Create a copy of JsonSerializableConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fallbackType = null,
  }) {
    return _then(_JsonSerializableConfig(
      fallbackType: null == fallbackType
          ? _self.fallbackType
          : fallbackType // ignore: cast_nullable_to_non_nullable
              as JsonSerializableConfigFallbackType,
    ));
  }
}

/// @nodoc
mixin _$ApiClientConfig {
  bool get useClassForQueryParameters;

  /// Create a copy of ApiClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiClientConfigCopyWith<ApiClientConfig> get copyWith =>
      _$ApiClientConfigCopyWithImpl<ApiClientConfig>(
          this as ApiClientConfig, _$identity);

  /// Serializes this ApiClientConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiClientConfig &&
            (identical(other.useClassForQueryParameters,
                    useClassForQueryParameters) ||
                other.useClassForQueryParameters ==
                    useClassForQueryParameters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, useClassForQueryParameters);

  @override
  String toString() {
    return 'ApiClientConfig(useClassForQueryParameters: $useClassForQueryParameters)';
  }
}

/// @nodoc
abstract mixin class $ApiClientConfigCopyWith<$Res> {
  factory $ApiClientConfigCopyWith(
          ApiClientConfig value, $Res Function(ApiClientConfig) _then) =
      _$ApiClientConfigCopyWithImpl;
  @useResult
  $Res call({bool useClassForQueryParameters});
}

/// @nodoc
class _$ApiClientConfigCopyWithImpl<$Res>
    implements $ApiClientConfigCopyWith<$Res> {
  _$ApiClientConfigCopyWithImpl(this._self, this._then);

  final ApiClientConfig _self;
  final $Res Function(ApiClientConfig) _then;

  /// Create a copy of ApiClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? useClassForQueryParameters = null,
  }) {
    return _then(_self.copyWith(
      useClassForQueryParameters: null == useClassForQueryParameters
          ? _self.useClassForQueryParameters
          : useClassForQueryParameters // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@_jsonSerializable
class _ApiClientConfig extends ApiClientConfig {
  const _ApiClientConfig({this.useClassForQueryParameters = false}) : super._();
  factory _ApiClientConfig.fromJson(Map<String, dynamic> json) =>
      _$ApiClientConfigFromJson(json);

  @override
  @JsonKey()
  final bool useClassForQueryParameters;

  /// Create a copy of ApiClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApiClientConfigCopyWith<_ApiClientConfig> get copyWith =>
      __$ApiClientConfigCopyWithImpl<_ApiClientConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ApiClientConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiClientConfig &&
            (identical(other.useClassForQueryParameters,
                    useClassForQueryParameters) ||
                other.useClassForQueryParameters ==
                    useClassForQueryParameters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, useClassForQueryParameters);

  @override
  String toString() {
    return 'ApiClientConfig(useClassForQueryParameters: $useClassForQueryParameters)';
  }
}

/// @nodoc
abstract mixin class _$ApiClientConfigCopyWith<$Res>
    implements $ApiClientConfigCopyWith<$Res> {
  factory _$ApiClientConfigCopyWith(
          _ApiClientConfig value, $Res Function(_ApiClientConfig) _then) =
      __$ApiClientConfigCopyWithImpl;
  @override
  @useResult
  $Res call({bool useClassForQueryParameters});
}

/// @nodoc
class __$ApiClientConfigCopyWithImpl<$Res>
    implements _$ApiClientConfigCopyWith<$Res> {
  __$ApiClientConfigCopyWithImpl(this._self, this._then);

  final _ApiClientConfig _self;
  final $Res Function(_ApiClientConfig) _then;

  /// Create a copy of ApiClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? useClassForQueryParameters = null,
  }) {
    return _then(_ApiClientConfig(
      useClassForQueryParameters: null == useClassForQueryParameters
          ? _self.useClassForQueryParameters
          : useClassForQueryParameters // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$SwaggerToDart {
  String? get url;
  String get inputDirectory;
  String get outputDirectory;
  String get apiClientClassName;
  List<String> get imports;
  List<String> get skippedParameters;
  JsonSerializableConfig get jsonSerializable;
  ApiClientConfig get apiClient;

  /// Create a copy of SwaggerToDart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SwaggerToDartCopyWith<SwaggerToDart> get copyWith =>
      _$SwaggerToDartCopyWithImpl<SwaggerToDart>(
          this as SwaggerToDart, _$identity);

  /// Serializes this SwaggerToDart to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SwaggerToDart &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.inputDirectory, inputDirectory) ||
                other.inputDirectory == inputDirectory) &&
            (identical(other.outputDirectory, outputDirectory) ||
                other.outputDirectory == outputDirectory) &&
            (identical(other.apiClientClassName, apiClientClassName) ||
                other.apiClientClassName == apiClientClassName) &&
            const DeepCollectionEquality().equals(other.imports, imports) &&
            const DeepCollectionEquality()
                .equals(other.skippedParameters, skippedParameters) &&
            (identical(other.jsonSerializable, jsonSerializable) ||
                other.jsonSerializable == jsonSerializable) &&
            (identical(other.apiClient, apiClient) ||
                other.apiClient == apiClient));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      url,
      inputDirectory,
      outputDirectory,
      apiClientClassName,
      const DeepCollectionEquality().hash(imports),
      const DeepCollectionEquality().hash(skippedParameters),
      jsonSerializable,
      apiClient);

  @override
  String toString() {
    return 'SwaggerToDart(url: $url, inputDirectory: $inputDirectory, outputDirectory: $outputDirectory, apiClientClassName: $apiClientClassName, imports: $imports, skippedParameters: $skippedParameters, jsonSerializable: $jsonSerializable, apiClient: $apiClient)';
  }
}

/// @nodoc
abstract mixin class $SwaggerToDartCopyWith<$Res> {
  factory $SwaggerToDartCopyWith(
          SwaggerToDart value, $Res Function(SwaggerToDart) _then) =
      _$SwaggerToDartCopyWithImpl;
  @useResult
  $Res call(
      {String? url,
      String inputDirectory,
      String outputDirectory,
      String apiClientClassName,
      List<String> imports,
      List<String> skippedParameters,
      JsonSerializableConfig jsonSerializable,
      ApiClientConfig apiClient});

  $JsonSerializableConfigCopyWith<$Res> get jsonSerializable;
  $ApiClientConfigCopyWith<$Res> get apiClient;
}

/// @nodoc
class _$SwaggerToDartCopyWithImpl<$Res>
    implements $SwaggerToDartCopyWith<$Res> {
  _$SwaggerToDartCopyWithImpl(this._self, this._then);

  final SwaggerToDart _self;
  final $Res Function(SwaggerToDart) _then;

  /// Create a copy of SwaggerToDart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? inputDirectory = null,
    Object? outputDirectory = null,
    Object? apiClientClassName = null,
    Object? imports = null,
    Object? skippedParameters = null,
    Object? jsonSerializable = null,
    Object? apiClient = null,
  }) {
    return _then(_self.copyWith(
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      inputDirectory: null == inputDirectory
          ? _self.inputDirectory
          : inputDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      outputDirectory: null == outputDirectory
          ? _self.outputDirectory
          : outputDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      apiClientClassName: null == apiClientClassName
          ? _self.apiClientClassName
          : apiClientClassName // ignore: cast_nullable_to_non_nullable
              as String,
      imports: null == imports
          ? _self.imports
          : imports // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skippedParameters: null == skippedParameters
          ? _self.skippedParameters
          : skippedParameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      jsonSerializable: null == jsonSerializable
          ? _self.jsonSerializable
          : jsonSerializable // ignore: cast_nullable_to_non_nullable
              as JsonSerializableConfig,
      apiClient: null == apiClient
          ? _self.apiClient
          : apiClient // ignore: cast_nullable_to_non_nullable
              as ApiClientConfig,
    ));
  }

  /// Create a copy of SwaggerToDart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JsonSerializableConfigCopyWith<$Res> get jsonSerializable {
    return $JsonSerializableConfigCopyWith<$Res>(_self.jsonSerializable,
        (value) {
      return _then(_self.copyWith(jsonSerializable: value));
    });
  }

  /// Create a copy of SwaggerToDart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiClientConfigCopyWith<$Res> get apiClient {
    return $ApiClientConfigCopyWith<$Res>(_self.apiClient, (value) {
      return _then(_self.copyWith(apiClient: value));
    });
  }
}

/// @nodoc

@_jsonSerializable
class _SwaggerToDart implements SwaggerToDart {
  _SwaggerToDart(
      {this.url,
      this.inputDirectory = 'schema/swagger.json',
      this.outputDirectory = 'lib/src/gen',
      this.apiClientClassName = 'ApiClient',
      final List<String> imports = const [],
      final List<String> skippedParameters = const [],
      this.jsonSerializable = const JsonSerializableConfig(),
      this.apiClient = const ApiClientConfig()})
      : _imports = imports,
        _skippedParameters = skippedParameters;
  factory _SwaggerToDart.fromJson(Map<String, dynamic> json) =>
      _$SwaggerToDartFromJson(json);

  @override
  final String? url;
  @override
  @JsonKey()
  final String inputDirectory;
  @override
  @JsonKey()
  final String outputDirectory;
  @override
  @JsonKey()
  final String apiClientClassName;
  final List<String> _imports;
  @override
  @JsonKey()
  List<String> get imports {
    if (_imports is EqualUnmodifiableListView) return _imports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imports);
  }

  final List<String> _skippedParameters;
  @override
  @JsonKey()
  List<String> get skippedParameters {
    if (_skippedParameters is EqualUnmodifiableListView)
      return _skippedParameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skippedParameters);
  }

  @override
  @JsonKey()
  final JsonSerializableConfig jsonSerializable;
  @override
  @JsonKey()
  final ApiClientConfig apiClient;

  /// Create a copy of SwaggerToDart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SwaggerToDartCopyWith<_SwaggerToDart> get copyWith =>
      __$SwaggerToDartCopyWithImpl<_SwaggerToDart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SwaggerToDartToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SwaggerToDart &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.inputDirectory, inputDirectory) ||
                other.inputDirectory == inputDirectory) &&
            (identical(other.outputDirectory, outputDirectory) ||
                other.outputDirectory == outputDirectory) &&
            (identical(other.apiClientClassName, apiClientClassName) ||
                other.apiClientClassName == apiClientClassName) &&
            const DeepCollectionEquality().equals(other._imports, _imports) &&
            const DeepCollectionEquality()
                .equals(other._skippedParameters, _skippedParameters) &&
            (identical(other.jsonSerializable, jsonSerializable) ||
                other.jsonSerializable == jsonSerializable) &&
            (identical(other.apiClient, apiClient) ||
                other.apiClient == apiClient));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      url,
      inputDirectory,
      outputDirectory,
      apiClientClassName,
      const DeepCollectionEquality().hash(_imports),
      const DeepCollectionEquality().hash(_skippedParameters),
      jsonSerializable,
      apiClient);

  @override
  String toString() {
    return 'SwaggerToDart(url: $url, inputDirectory: $inputDirectory, outputDirectory: $outputDirectory, apiClientClassName: $apiClientClassName, imports: $imports, skippedParameters: $skippedParameters, jsonSerializable: $jsonSerializable, apiClient: $apiClient)';
  }
}

/// @nodoc
abstract mixin class _$SwaggerToDartCopyWith<$Res>
    implements $SwaggerToDartCopyWith<$Res> {
  factory _$SwaggerToDartCopyWith(
          _SwaggerToDart value, $Res Function(_SwaggerToDart) _then) =
      __$SwaggerToDartCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? url,
      String inputDirectory,
      String outputDirectory,
      String apiClientClassName,
      List<String> imports,
      List<String> skippedParameters,
      JsonSerializableConfig jsonSerializable,
      ApiClientConfig apiClient});

  @override
  $JsonSerializableConfigCopyWith<$Res> get jsonSerializable;
  @override
  $ApiClientConfigCopyWith<$Res> get apiClient;
}

/// @nodoc
class __$SwaggerToDartCopyWithImpl<$Res>
    implements _$SwaggerToDartCopyWith<$Res> {
  __$SwaggerToDartCopyWithImpl(this._self, this._then);

  final _SwaggerToDart _self;
  final $Res Function(_SwaggerToDart) _then;

  /// Create a copy of SwaggerToDart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = freezed,
    Object? inputDirectory = null,
    Object? outputDirectory = null,
    Object? apiClientClassName = null,
    Object? imports = null,
    Object? skippedParameters = null,
    Object? jsonSerializable = null,
    Object? apiClient = null,
  }) {
    return _then(_SwaggerToDart(
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      inputDirectory: null == inputDirectory
          ? _self.inputDirectory
          : inputDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      outputDirectory: null == outputDirectory
          ? _self.outputDirectory
          : outputDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      apiClientClassName: null == apiClientClassName
          ? _self.apiClientClassName
          : apiClientClassName // ignore: cast_nullable_to_non_nullable
              as String,
      imports: null == imports
          ? _self._imports
          : imports // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skippedParameters: null == skippedParameters
          ? _self._skippedParameters
          : skippedParameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      jsonSerializable: null == jsonSerializable
          ? _self.jsonSerializable
          : jsonSerializable // ignore: cast_nullable_to_non_nullable
              as JsonSerializableConfig,
      apiClient: null == apiClient
          ? _self.apiClient
          : apiClient // ignore: cast_nullable_to_non_nullable
              as ApiClientConfig,
    ));
  }

  /// Create a copy of SwaggerToDart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JsonSerializableConfigCopyWith<$Res> get jsonSerializable {
    return $JsonSerializableConfigCopyWith<$Res>(_self.jsonSerializable,
        (value) {
      return _then(_self.copyWith(jsonSerializable: value));
    });
  }

  /// Create a copy of SwaggerToDart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiClientConfigCopyWith<$Res> get apiClient {
    return $ApiClientConfigCopyWith<$Res>(_self.apiClient, (value) {
      return _then(_self.copyWith(apiClient: value));
    });
  }
}
