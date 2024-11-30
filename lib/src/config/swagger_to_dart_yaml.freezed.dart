// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'swagger_to_dart_yaml.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SwaggerToDartYaml _$SwaggerToDartYamlFromJson(Map<String, dynamic> json) {
  return _SwaggerToDartYaml.fromJson(json);
}

/// @nodoc
mixin _$SwaggerToDartYaml {
  String get inputDirectory => throw _privateConstructorUsedError;
  String get outputDirectory => throw _privateConstructorUsedError;
  String get apiClientClassName => throw _privateConstructorUsedError;
  List<String> get skippedParameters => throw _privateConstructorUsedError;

  /// Serializes this SwaggerToDartYaml to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SwaggerToDartYaml
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SwaggerToDartYamlCopyWith<SwaggerToDartYaml> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwaggerToDartYamlCopyWith<$Res> {
  factory $SwaggerToDartYamlCopyWith(
          SwaggerToDartYaml value, $Res Function(SwaggerToDartYaml) then) =
      _$SwaggerToDartYamlCopyWithImpl<$Res, SwaggerToDartYaml>;
  @useResult
  $Res call(
      {String inputDirectory,
      String outputDirectory,
      String apiClientClassName,
      List<String> skippedParameters});
}

/// @nodoc
class _$SwaggerToDartYamlCopyWithImpl<$Res, $Val extends SwaggerToDartYaml>
    implements $SwaggerToDartYamlCopyWith<$Res> {
  _$SwaggerToDartYamlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwaggerToDartYaml
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputDirectory = null,
    Object? outputDirectory = null,
    Object? apiClientClassName = null,
    Object? skippedParameters = null,
  }) {
    return _then(_value.copyWith(
      inputDirectory: null == inputDirectory
          ? _value.inputDirectory
          : inputDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      outputDirectory: null == outputDirectory
          ? _value.outputDirectory
          : outputDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      apiClientClassName: null == apiClientClassName
          ? _value.apiClientClassName
          : apiClientClassName // ignore: cast_nullable_to_non_nullable
              as String,
      skippedParameters: null == skippedParameters
          ? _value.skippedParameters
          : skippedParameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SwaggerToDartYamlImplCopyWith<$Res>
    implements $SwaggerToDartYamlCopyWith<$Res> {
  factory _$$SwaggerToDartYamlImplCopyWith(_$SwaggerToDartYamlImpl value,
          $Res Function(_$SwaggerToDartYamlImpl) then) =
      __$$SwaggerToDartYamlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String inputDirectory,
      String outputDirectory,
      String apiClientClassName,
      List<String> skippedParameters});
}

/// @nodoc
class __$$SwaggerToDartYamlImplCopyWithImpl<$Res>
    extends _$SwaggerToDartYamlCopyWithImpl<$Res, _$SwaggerToDartYamlImpl>
    implements _$$SwaggerToDartYamlImplCopyWith<$Res> {
  __$$SwaggerToDartYamlImplCopyWithImpl(_$SwaggerToDartYamlImpl _value,
      $Res Function(_$SwaggerToDartYamlImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwaggerToDartYaml
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputDirectory = null,
    Object? outputDirectory = null,
    Object? apiClientClassName = null,
    Object? skippedParameters = null,
  }) {
    return _then(_$SwaggerToDartYamlImpl(
      inputDirectory: null == inputDirectory
          ? _value.inputDirectory
          : inputDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      outputDirectory: null == outputDirectory
          ? _value.outputDirectory
          : outputDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      apiClientClassName: null == apiClientClassName
          ? _value.apiClientClassName
          : apiClientClassName // ignore: cast_nullable_to_non_nullable
              as String,
      skippedParameters: null == skippedParameters
          ? _value._skippedParameters
          : skippedParameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SwaggerToDartYamlImpl extends _SwaggerToDartYaml {
  const _$SwaggerToDartYamlImpl(
      {required this.inputDirectory,
      required this.outputDirectory,
      required this.apiClientClassName,
      required final List<String> skippedParameters})
      : _skippedParameters = skippedParameters,
        super._();

  factory _$SwaggerToDartYamlImpl.fromJson(Map<String, dynamic> json) =>
      _$$SwaggerToDartYamlImplFromJson(json);

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

  @override
  String toString() {
    return 'SwaggerToDartYaml(inputDirectory: $inputDirectory, outputDirectory: $outputDirectory, apiClientClassName: $apiClientClassName, skippedParameters: $skippedParameters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwaggerToDartYamlImpl &&
            (identical(other.inputDirectory, inputDirectory) ||
                other.inputDirectory == inputDirectory) &&
            (identical(other.outputDirectory, outputDirectory) ||
                other.outputDirectory == outputDirectory) &&
            (identical(other.apiClientClassName, apiClientClassName) ||
                other.apiClientClassName == apiClientClassName) &&
            const DeepCollectionEquality()
                .equals(other._skippedParameters, _skippedParameters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      inputDirectory,
      outputDirectory,
      apiClientClassName,
      const DeepCollectionEquality().hash(_skippedParameters));

  /// Create a copy of SwaggerToDartYaml
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwaggerToDartYamlImplCopyWith<_$SwaggerToDartYamlImpl> get copyWith =>
      __$$SwaggerToDartYamlImplCopyWithImpl<_$SwaggerToDartYamlImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SwaggerToDartYamlImplToJson(
      this,
    );
  }
}

abstract class _SwaggerToDartYaml extends SwaggerToDartYaml {
  const factory _SwaggerToDartYaml(
      {required final String inputDirectory,
      required final String outputDirectory,
      required final String apiClientClassName,
      required final List<String> skippedParameters}) = _$SwaggerToDartYamlImpl;
  const _SwaggerToDartYaml._() : super._();

  factory _SwaggerToDartYaml.fromJson(Map<String, dynamic> json) =
      _$SwaggerToDartYamlImpl.fromJson;

  @override
  String get inputDirectory;
  @override
  String get outputDirectory;
  @override
  String get apiClientClassName;
  @override
  List<String> get skippedParameters;

  /// Create a copy of SwaggerToDartYaml
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwaggerToDartYamlImplCopyWith<_$SwaggerToDartYamlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
