// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pubspec_yaml.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PubspecYaml {
  String get name;
  String get version;
  String? get description;
  String? get homepage;
  Map<String, String>? get environment;
  Map<String, dynamic>? get dependencies;
  Map<String, dynamic>? get devDependencies;
  Map<String, dynamic>? get flutter;

  /// Create a copy of PubspecYaml
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PubspecYamlCopyWith<PubspecYaml> get copyWith =>
      _$PubspecYamlCopyWithImpl<PubspecYaml>(this as PubspecYaml, _$identity);

  /// Serializes this PubspecYaml to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PubspecYaml &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            const DeepCollectionEquality().equals(
              other.environment,
              environment,
            ) &&
            const DeepCollectionEquality().equals(
              other.dependencies,
              dependencies,
            ) &&
            const DeepCollectionEquality().equals(
              other.devDependencies,
              devDependencies,
            ) &&
            const DeepCollectionEquality().equals(other.flutter, flutter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    version,
    description,
    homepage,
    const DeepCollectionEquality().hash(environment),
    const DeepCollectionEquality().hash(dependencies),
    const DeepCollectionEquality().hash(devDependencies),
    const DeepCollectionEquality().hash(flutter),
  );

  @override
  String toString() {
    return 'PubspecYaml(name: $name, version: $version, description: $description, homepage: $homepage, environment: $environment, dependencies: $dependencies, devDependencies: $devDependencies, flutter: $flutter)';
  }
}

/// @nodoc
abstract mixin class $PubspecYamlCopyWith<$Res> {
  factory $PubspecYamlCopyWith(
    PubspecYaml value,
    $Res Function(PubspecYaml) _then,
  ) = _$PubspecYamlCopyWithImpl;
  @useResult
  $Res call({
    String name,
    String version,
    String? description,
    String? homepage,
    Map<String, String>? environment,
    Map<String, dynamic>? dependencies,
    Map<String, dynamic>? devDependencies,
    Map<String, dynamic>? flutter,
  });
}

/// @nodoc
class _$PubspecYamlCopyWithImpl<$Res> implements $PubspecYamlCopyWith<$Res> {
  _$PubspecYamlCopyWithImpl(this._self, this._then);

  final PubspecYaml _self;
  final $Res Function(PubspecYaml) _then;

  /// Create a copy of PubspecYaml
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? version = null,
    Object? description = freezed,
    Object? homepage = freezed,
    Object? environment = freezed,
    Object? dependencies = freezed,
    Object? devDependencies = freezed,
    Object? flutter = freezed,
  }) {
    return _then(
      _self.copyWith(
        name:
            null == name
                ? _self.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        version:
            null == version
                ? _self.version
                : version // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            freezed == description
                ? _self.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        homepage:
            freezed == homepage
                ? _self.homepage
                : homepage // ignore: cast_nullable_to_non_nullable
                    as String?,
        environment:
            freezed == environment
                ? _self.environment
                : environment // ignore: cast_nullable_to_non_nullable
                    as Map<String, String>?,
        dependencies:
            freezed == dependencies
                ? _self.dependencies
                : dependencies // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
        devDependencies:
            freezed == devDependencies
                ? _self.devDependencies
                : devDependencies // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
        flutter:
            freezed == flutter
                ? _self.flutter
                : flutter // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _PubspecYaml extends PubspecYaml {
  const _PubspecYaml({
    required this.name,
    this.version = '0.0.0',
    this.description,
    this.homepage,
    final Map<String, String>? environment,
    final Map<String, dynamic>? dependencies,
    final Map<String, dynamic>? devDependencies,
    final Map<String, dynamic>? flutter,
  }) : _environment = environment,
       _dependencies = dependencies,
       _devDependencies = devDependencies,
       _flutter = flutter,
       super._();
  factory _PubspecYaml.fromJson(Map<String, dynamic> json) =>
      _$PubspecYamlFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final String version;
  @override
  final String? description;
  @override
  final String? homepage;
  final Map<String, String>? _environment;
  @override
  Map<String, String>? get environment {
    final value = _environment;
    if (value == null) return null;
    if (_environment is EqualUnmodifiableMapView) return _environment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _dependencies;
  @override
  Map<String, dynamic>? get dependencies {
    final value = _dependencies;
    if (value == null) return null;
    if (_dependencies is EqualUnmodifiableMapView) return _dependencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _devDependencies;
  @override
  Map<String, dynamic>? get devDependencies {
    final value = _devDependencies;
    if (value == null) return null;
    if (_devDependencies is EqualUnmodifiableMapView) return _devDependencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _flutter;
  @override
  Map<String, dynamic>? get flutter {
    final value = _flutter;
    if (value == null) return null;
    if (_flutter is EqualUnmodifiableMapView) return _flutter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of PubspecYaml
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PubspecYamlCopyWith<_PubspecYaml> get copyWith =>
      __$PubspecYamlCopyWithImpl<_PubspecYaml>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PubspecYamlToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PubspecYaml &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            const DeepCollectionEquality().equals(
              other._environment,
              _environment,
            ) &&
            const DeepCollectionEquality().equals(
              other._dependencies,
              _dependencies,
            ) &&
            const DeepCollectionEquality().equals(
              other._devDependencies,
              _devDependencies,
            ) &&
            const DeepCollectionEquality().equals(other._flutter, _flutter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    version,
    description,
    homepage,
    const DeepCollectionEquality().hash(_environment),
    const DeepCollectionEquality().hash(_dependencies),
    const DeepCollectionEquality().hash(_devDependencies),
    const DeepCollectionEquality().hash(_flutter),
  );

  @override
  String toString() {
    return 'PubspecYaml(name: $name, version: $version, description: $description, homepage: $homepage, environment: $environment, dependencies: $dependencies, devDependencies: $devDependencies, flutter: $flutter)';
  }
}

/// @nodoc
abstract mixin class _$PubspecYamlCopyWith<$Res>
    implements $PubspecYamlCopyWith<$Res> {
  factory _$PubspecYamlCopyWith(
    _PubspecYaml value,
    $Res Function(_PubspecYaml) _then,
  ) = __$PubspecYamlCopyWithImpl;
  @override
  @useResult
  $Res call({
    String name,
    String version,
    String? description,
    String? homepage,
    Map<String, String>? environment,
    Map<String, dynamic>? dependencies,
    Map<String, dynamic>? devDependencies,
    Map<String, dynamic>? flutter,
  });
}

/// @nodoc
class __$PubspecYamlCopyWithImpl<$Res> implements _$PubspecYamlCopyWith<$Res> {
  __$PubspecYamlCopyWithImpl(this._self, this._then);

  final _PubspecYaml _self;
  final $Res Function(_PubspecYaml) _then;

  /// Create a copy of PubspecYaml
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? version = null,
    Object? description = freezed,
    Object? homepage = freezed,
    Object? environment = freezed,
    Object? dependencies = freezed,
    Object? devDependencies = freezed,
    Object? flutter = freezed,
  }) {
    return _then(
      _PubspecYaml(
        name:
            null == name
                ? _self.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        version:
            null == version
                ? _self.version
                : version // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            freezed == description
                ? _self.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        homepage:
            freezed == homepage
                ? _self.homepage
                : homepage // ignore: cast_nullable_to_non_nullable
                    as String?,
        environment:
            freezed == environment
                ? _self._environment
                : environment // ignore: cast_nullable_to_non_nullable
                    as Map<String, String>?,
        dependencies:
            freezed == dependencies
                ? _self._dependencies
                : dependencies // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
        devDependencies:
            freezed == devDependencies
                ? _self._devDependencies
                : devDependencies // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
        flutter:
            freezed == flutter
                ? _self._flutter
                : flutter // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
      ),
    );
  }
}
