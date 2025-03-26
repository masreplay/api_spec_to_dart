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
  String get inputDirectory;
  String get outputDirectory;
  String get apiClientClassName;
  List<String> get skippedParameters;
  List<String> get imports;

  /// Create a copy of SwaggerToDartYaml
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SwaggerToDartYamlCopyWith<SwaggerToDartYaml> get copyWith =>
      _$SwaggerToDartYamlCopyWithImpl<SwaggerToDartYaml>(
        this as SwaggerToDartYaml,
        _$identity,
      );

  /// Serializes this SwaggerToDartYaml to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SwaggerToDartYaml &&
            (identical(other.inputDirectory, inputDirectory) ||
                other.inputDirectory == inputDirectory) &&
            (identical(other.outputDirectory, outputDirectory) ||
                other.outputDirectory == outputDirectory) &&
            (identical(other.apiClientClassName, apiClientClassName) ||
                other.apiClientClassName == apiClientClassName) &&
            const DeepCollectionEquality().equals(
              other.skippedParameters,
              skippedParameters,
            ) &&
            const DeepCollectionEquality().equals(other.imports, imports));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    inputDirectory,
    outputDirectory,
    apiClientClassName,
    const DeepCollectionEquality().hash(skippedParameters),
    const DeepCollectionEquality().hash(imports),
  );

  @override
  String toString() {
    return 'SwaggerToDartYaml(inputDirectory: $inputDirectory, outputDirectory: $outputDirectory, apiClientClassName: $apiClientClassName, skippedParameters: $skippedParameters, imports: $imports)';
  }
}

/// @nodoc
abstract mixin class $SwaggerToDartYamlCopyWith<$Res> {
  factory $SwaggerToDartYamlCopyWith(
    SwaggerToDartYaml value,
    $Res Function(SwaggerToDartYaml) _then,
  ) = _$SwaggerToDartYamlCopyWithImpl;
  @useResult
  $Res call({
    String inputDirectory,
    String outputDirectory,
    String apiClientClassName,
    List<String> skippedParameters,
    List<String> imports,
  });
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
    Object? inputDirectory = null,
    Object? outputDirectory = null,
    Object? apiClientClassName = null,
    Object? skippedParameters = null,
    Object? imports = null,
  }) {
    return _then(
      _self.copyWith(
        inputDirectory:
            null == inputDirectory
                ? _self.inputDirectory
                : inputDirectory // ignore: cast_nullable_to_non_nullable
                    as String,
        outputDirectory:
            null == outputDirectory
                ? _self.outputDirectory
                : outputDirectory // ignore: cast_nullable_to_non_nullable
                    as String,
        apiClientClassName:
            null == apiClientClassName
                ? _self.apiClientClassName
                : apiClientClassName // ignore: cast_nullable_to_non_nullable
                    as String,
        skippedParameters:
            null == skippedParameters
                ? _self.skippedParameters
                : skippedParameters // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        imports:
            null == imports
                ? _self.imports
                : imports // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _SwaggerToDartYaml extends SwaggerToDartYaml {
  const _SwaggerToDartYaml({
    required this.inputDirectory,
    required this.outputDirectory,
    required this.apiClientClassName,
    required final List<String> skippedParameters,
    required final List<String> imports,
  }) : _skippedParameters = skippedParameters,
       _imports = imports,
       super._();
  factory _SwaggerToDartYaml.fromJson(Map<String, dynamic> json) =>
      _$SwaggerToDartYamlFromJson(json);

  @override
  final String inputDirectory;
  @override
  final String outputDirectory;
  @override
  final String apiClientClassName;
  final List<String> _skippedParameters;
  @override
  List<String> get skippedParameters {
    if (_skippedParameters is EqualUnmodifiableListView)
      return _skippedParameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skippedParameters);
  }

  final List<String> _imports;
  @override
  List<String> get imports {
    if (_imports is EqualUnmodifiableListView) return _imports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imports);
  }

  /// Create a copy of SwaggerToDartYaml
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SwaggerToDartYamlCopyWith<_SwaggerToDartYaml> get copyWith =>
      __$SwaggerToDartYamlCopyWithImpl<_SwaggerToDartYaml>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SwaggerToDartYamlToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SwaggerToDartYaml &&
            (identical(other.inputDirectory, inputDirectory) ||
                other.inputDirectory == inputDirectory) &&
            (identical(other.outputDirectory, outputDirectory) ||
                other.outputDirectory == outputDirectory) &&
            (identical(other.apiClientClassName, apiClientClassName) ||
                other.apiClientClassName == apiClientClassName) &&
            const DeepCollectionEquality().equals(
              other._skippedParameters,
              _skippedParameters,
            ) &&
            const DeepCollectionEquality().equals(other._imports, _imports));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    inputDirectory,
    outputDirectory,
    apiClientClassName,
    const DeepCollectionEquality().hash(_skippedParameters),
    const DeepCollectionEquality().hash(_imports),
  );

  @override
  String toString() {
    return 'SwaggerToDartYaml(inputDirectory: $inputDirectory, outputDirectory: $outputDirectory, apiClientClassName: $apiClientClassName, skippedParameters: $skippedParameters, imports: $imports)';
  }
}

/// @nodoc
abstract mixin class _$SwaggerToDartYamlCopyWith<$Res>
    implements $SwaggerToDartYamlCopyWith<$Res> {
  factory _$SwaggerToDartYamlCopyWith(
    _SwaggerToDartYaml value,
    $Res Function(_SwaggerToDartYaml) _then,
  ) = __$SwaggerToDartYamlCopyWithImpl;
  @override
  @useResult
  $Res call({
    String inputDirectory,
    String outputDirectory,
    String apiClientClassName,
    List<String> skippedParameters,
    List<String> imports,
  });
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
    Object? inputDirectory = null,
    Object? outputDirectory = null,
    Object? apiClientClassName = null,
    Object? skippedParameters = null,
    Object? imports = null,
  }) {
    return _then(
      _SwaggerToDartYaml(
        inputDirectory:
            null == inputDirectory
                ? _self.inputDirectory
                : inputDirectory // ignore: cast_nullable_to_non_nullable
                    as String,
        outputDirectory:
            null == outputDirectory
                ? _self.outputDirectory
                : outputDirectory // ignore: cast_nullable_to_non_nullable
                    as String,
        apiClientClassName:
            null == apiClientClassName
                ? _self.apiClientClassName
                : apiClientClassName // ignore: cast_nullable_to_non_nullable
                    as String,
        skippedParameters:
            null == skippedParameters
                ? _self._skippedParameters
                : skippedParameters // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        imports:
            null == imports
                ? _self._imports
                : imports // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}
