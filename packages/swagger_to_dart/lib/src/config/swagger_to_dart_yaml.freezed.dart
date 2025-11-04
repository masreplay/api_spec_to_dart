// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'swagger_to_dart_yaml.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SwaggerToDartYaml {
  @JsonKey(name: 'swagger_to_dart')
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
  $Res call({@JsonKey(name: 'swagger_to_dart') SwaggerToDart swaggerToDart});

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

/// Adds pattern-matching-related methods to [SwaggerToDartYaml].
extension SwaggerToDartYamlPatterns on SwaggerToDartYaml {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SwaggerToDartYaml value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SwaggerToDartYaml() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SwaggerToDartYaml value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SwaggerToDartYaml():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SwaggerToDartYaml value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SwaggerToDartYaml() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'swagger_to_dart') SwaggerToDart swaggerToDart)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SwaggerToDartYaml() when $default != null:
        return $default(_that.swaggerToDart);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'swagger_to_dart') SwaggerToDart swaggerToDart)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SwaggerToDartYaml():
        return $default(_that.swaggerToDart);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'swagger_to_dart') SwaggerToDart swaggerToDart)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SwaggerToDartYaml() when $default != null:
        return $default(_that.swaggerToDart);
      case _:
        return null;
    }
  }
}

/// @nodoc

@_jsonSerializable
class _SwaggerToDartYaml extends SwaggerToDartYaml {
  const _SwaggerToDartYaml(
      {@JsonKey(name: 'swagger_to_dart') required this.swaggerToDart})
      : super._();
  factory _SwaggerToDartYaml.fromJson(Map<String, dynamic> json) =>
      _$SwaggerToDartYamlFromJson(json);

  @override
  @JsonKey(name: 'swagger_to_dart')
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
  $Res call({@JsonKey(name: 'swagger_to_dart') SwaggerToDart swaggerToDart});

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
mixin _$ModelConfig {
  @JsonKey(name: 'support_generic_arguments')
  bool get supportGenericArguments;
  @JsonKey(name: 'union_class_fallback_name')
  String? get unionClassFallbackName;
  @JsonKey(name: 'enum_fallback_type')
  EnumFallbackType get enumFallbackType;
  @JsonKey(name: 'remove_model_prefixes')
  List<String> get removeModelPrefixes;

  /// Create a copy of ModelConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModelConfigCopyWith<ModelConfig> get copyWith =>
      _$ModelConfigCopyWithImpl<ModelConfig>(this as ModelConfig, _$identity);

  /// Serializes this ModelConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModelConfig &&
            (identical(
                    other.supportGenericArguments, supportGenericArguments) ||
                other.supportGenericArguments == supportGenericArguments) &&
            (identical(other.unionClassFallbackName, unionClassFallbackName) ||
                other.unionClassFallbackName == unionClassFallbackName) &&
            (identical(other.enumFallbackType, enumFallbackType) ||
                other.enumFallbackType == enumFallbackType) &&
            const DeepCollectionEquality()
                .equals(other.removeModelPrefixes, removeModelPrefixes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      supportGenericArguments,
      unionClassFallbackName,
      enumFallbackType,
      const DeepCollectionEquality().hash(removeModelPrefixes));

  @override
  String toString() {
    return 'ModelConfig(supportGenericArguments: $supportGenericArguments, unionClassFallbackName: $unionClassFallbackName, enumFallbackType: $enumFallbackType, removeModelPrefixes: $removeModelPrefixes)';
  }
}

/// @nodoc
abstract mixin class $ModelConfigCopyWith<$Res> {
  factory $ModelConfigCopyWith(
          ModelConfig value, $Res Function(ModelConfig) _then) =
      _$ModelConfigCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'support_generic_arguments') bool supportGenericArguments,
      @JsonKey(name: 'union_class_fallback_name')
      String? unionClassFallbackName,
      @JsonKey(name: 'enum_fallback_type') EnumFallbackType enumFallbackType,
      @JsonKey(name: 'remove_model_prefixes')
      List<String> removeModelPrefixes});
}

/// @nodoc
class _$ModelConfigCopyWithImpl<$Res> implements $ModelConfigCopyWith<$Res> {
  _$ModelConfigCopyWithImpl(this._self, this._then);

  final ModelConfig _self;
  final $Res Function(ModelConfig) _then;

  /// Create a copy of ModelConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supportGenericArguments = null,
    Object? unionClassFallbackName = freezed,
    Object? enumFallbackType = null,
    Object? removeModelPrefixes = null,
  }) {
    return _then(_self.copyWith(
      supportGenericArguments: null == supportGenericArguments
          ? _self.supportGenericArguments
          : supportGenericArguments // ignore: cast_nullable_to_non_nullable
              as bool,
      unionClassFallbackName: freezed == unionClassFallbackName
          ? _self.unionClassFallbackName
          : unionClassFallbackName // ignore: cast_nullable_to_non_nullable
              as String?,
      enumFallbackType: null == enumFallbackType
          ? _self.enumFallbackType
          : enumFallbackType // ignore: cast_nullable_to_non_nullable
              as EnumFallbackType,
      removeModelPrefixes: null == removeModelPrefixes
          ? _self.removeModelPrefixes
          : removeModelPrefixes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [ModelConfig].
extension ModelConfigPatterns on ModelConfig {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ModelConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ModelConfig() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ModelConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModelConfig():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ModelConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModelConfig() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'support_generic_arguments')
            bool supportGenericArguments,
            @JsonKey(name: 'union_class_fallback_name')
            String? unionClassFallbackName,
            @JsonKey(name: 'enum_fallback_type')
            EnumFallbackType enumFallbackType,
            @JsonKey(name: 'remove_model_prefixes')
            List<String> removeModelPrefixes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ModelConfig() when $default != null:
        return $default(
            _that.supportGenericArguments,
            _that.unionClassFallbackName,
            _that.enumFallbackType,
            _that.removeModelPrefixes);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'support_generic_arguments')
            bool supportGenericArguments,
            @JsonKey(name: 'union_class_fallback_name')
            String? unionClassFallbackName,
            @JsonKey(name: 'enum_fallback_type')
            EnumFallbackType enumFallbackType,
            @JsonKey(name: 'remove_model_prefixes')
            List<String> removeModelPrefixes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModelConfig():
        return $default(
            _that.supportGenericArguments,
            _that.unionClassFallbackName,
            _that.enumFallbackType,
            _that.removeModelPrefixes);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'support_generic_arguments')
            bool supportGenericArguments,
            @JsonKey(name: 'union_class_fallback_name')
            String? unionClassFallbackName,
            @JsonKey(name: 'enum_fallback_type')
            EnumFallbackType enumFallbackType,
            @JsonKey(name: 'remove_model_prefixes')
            List<String> removeModelPrefixes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModelConfig() when $default != null:
        return $default(
            _that.supportGenericArguments,
            _that.unionClassFallbackName,
            _that.enumFallbackType,
            _that.removeModelPrefixes);
      case _:
        return null;
    }
  }
}

/// @nodoc

@_jsonSerializable
class _ModelConfig extends ModelConfig {
  const _ModelConfig(
      {@JsonKey(name: 'support_generic_arguments')
      this.supportGenericArguments = false,
      @JsonKey(name: 'union_class_fallback_name') this.unionClassFallbackName,
      @JsonKey(name: 'enum_fallback_type')
      this.enumFallbackType = EnumFallbackType.unknown,
      @JsonKey(name: 'remove_model_prefixes')
      final List<String> removeModelPrefixes = const []})
      : _removeModelPrefixes = removeModelPrefixes,
        super._();
  factory _ModelConfig.fromJson(Map<String, dynamic> json) =>
      _$ModelConfigFromJson(json);

  @override
  @JsonKey(name: 'support_generic_arguments')
  final bool supportGenericArguments;
  @override
  @JsonKey(name: 'union_class_fallback_name')
  final String? unionClassFallbackName;
  @override
  @JsonKey(name: 'enum_fallback_type')
  final EnumFallbackType enumFallbackType;
  final List<String> _removeModelPrefixes;
  @override
  @JsonKey(name: 'remove_model_prefixes')
  List<String> get removeModelPrefixes {
    if (_removeModelPrefixes is EqualUnmodifiableListView)
      return _removeModelPrefixes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_removeModelPrefixes);
  }

  /// Create a copy of ModelConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModelConfigCopyWith<_ModelConfig> get copyWith =>
      __$ModelConfigCopyWithImpl<_ModelConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ModelConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModelConfig &&
            (identical(
                    other.supportGenericArguments, supportGenericArguments) ||
                other.supportGenericArguments == supportGenericArguments) &&
            (identical(other.unionClassFallbackName, unionClassFallbackName) ||
                other.unionClassFallbackName == unionClassFallbackName) &&
            (identical(other.enumFallbackType, enumFallbackType) ||
                other.enumFallbackType == enumFallbackType) &&
            const DeepCollectionEquality()
                .equals(other._removeModelPrefixes, _removeModelPrefixes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      supportGenericArguments,
      unionClassFallbackName,
      enumFallbackType,
      const DeepCollectionEquality().hash(_removeModelPrefixes));

  @override
  String toString() {
    return 'ModelConfig(supportGenericArguments: $supportGenericArguments, unionClassFallbackName: $unionClassFallbackName, enumFallbackType: $enumFallbackType, removeModelPrefixes: $removeModelPrefixes)';
  }
}

/// @nodoc
abstract mixin class _$ModelConfigCopyWith<$Res>
    implements $ModelConfigCopyWith<$Res> {
  factory _$ModelConfigCopyWith(
          _ModelConfig value, $Res Function(_ModelConfig) _then) =
      __$ModelConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'support_generic_arguments') bool supportGenericArguments,
      @JsonKey(name: 'union_class_fallback_name')
      String? unionClassFallbackName,
      @JsonKey(name: 'enum_fallback_type') EnumFallbackType enumFallbackType,
      @JsonKey(name: 'remove_model_prefixes')
      List<String> removeModelPrefixes});
}

/// @nodoc
class __$ModelConfigCopyWithImpl<$Res> implements _$ModelConfigCopyWith<$Res> {
  __$ModelConfigCopyWithImpl(this._self, this._then);

  final _ModelConfig _self;
  final $Res Function(_ModelConfig) _then;

  /// Create a copy of ModelConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? supportGenericArguments = null,
    Object? unionClassFallbackName = freezed,
    Object? enumFallbackType = null,
    Object? removeModelPrefixes = null,
  }) {
    return _then(_ModelConfig(
      supportGenericArguments: null == supportGenericArguments
          ? _self.supportGenericArguments
          : supportGenericArguments // ignore: cast_nullable_to_non_nullable
              as bool,
      unionClassFallbackName: freezed == unionClassFallbackName
          ? _self.unionClassFallbackName
          : unionClassFallbackName // ignore: cast_nullable_to_non_nullable
              as String?,
      enumFallbackType: null == enumFallbackType
          ? _self.enumFallbackType
          : enumFallbackType // ignore: cast_nullable_to_non_nullable
              as EnumFallbackType,
      removeModelPrefixes: null == removeModelPrefixes
          ? _self._removeModelPrefixes
          : removeModelPrefixes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
mixin _$ApiClientConfig {
  @JsonKey(name: 'base_api_client_class_name')
  String get baseApiClientClassName;
  @JsonKey(name: 'use_class_for_query_parameters')
  bool get useClassForQueryParameters;
  @JsonKey(name: 'use_class_for_multipart_form_data')
  bool get useClassForMultipartFormData;
  @JsonKey(name: 'skipped_parameters')
  List<String> get skippedParameters;

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
            (identical(other.baseApiClientClassName, baseApiClientClassName) ||
                other.baseApiClientClassName == baseApiClientClassName) &&
            (identical(other.useClassForQueryParameters,
                    useClassForQueryParameters) ||
                other.useClassForQueryParameters ==
                    useClassForQueryParameters) &&
            (identical(other.useClassForMultipartFormData,
                    useClassForMultipartFormData) ||
                other.useClassForMultipartFormData ==
                    useClassForMultipartFormData) &&
            const DeepCollectionEquality()
                .equals(other.skippedParameters, skippedParameters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      baseApiClientClassName,
      useClassForQueryParameters,
      useClassForMultipartFormData,
      const DeepCollectionEquality().hash(skippedParameters));

  @override
  String toString() {
    return 'ApiClientConfig(baseApiClientClassName: $baseApiClientClassName, useClassForQueryParameters: $useClassForQueryParameters, useClassForMultipartFormData: $useClassForMultipartFormData, skippedParameters: $skippedParameters)';
  }
}

/// @nodoc
abstract mixin class $ApiClientConfigCopyWith<$Res> {
  factory $ApiClientConfigCopyWith(
          ApiClientConfig value, $Res Function(ApiClientConfig) _then) =
      _$ApiClientConfigCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'base_api_client_class_name')
      String baseApiClientClassName,
      @JsonKey(name: 'use_class_for_query_parameters')
      bool useClassForQueryParameters,
      @JsonKey(name: 'use_class_for_multipart_form_data')
      bool useClassForMultipartFormData,
      @JsonKey(name: 'skipped_parameters') List<String> skippedParameters});
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
    Object? baseApiClientClassName = null,
    Object? useClassForQueryParameters = null,
    Object? useClassForMultipartFormData = null,
    Object? skippedParameters = null,
  }) {
    return _then(_self.copyWith(
      baseApiClientClassName: null == baseApiClientClassName
          ? _self.baseApiClientClassName
          : baseApiClientClassName // ignore: cast_nullable_to_non_nullable
              as String,
      useClassForQueryParameters: null == useClassForQueryParameters
          ? _self.useClassForQueryParameters
          : useClassForQueryParameters // ignore: cast_nullable_to_non_nullable
              as bool,
      useClassForMultipartFormData: null == useClassForMultipartFormData
          ? _self.useClassForMultipartFormData
          : useClassForMultipartFormData // ignore: cast_nullable_to_non_nullable
              as bool,
      skippedParameters: null == skippedParameters
          ? _self.skippedParameters
          : skippedParameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [ApiClientConfig].
extension ApiClientConfigPatterns on ApiClientConfig {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ApiClientConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApiClientConfig() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ApiClientConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiClientConfig():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ApiClientConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiClientConfig() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'base_api_client_class_name')
            String baseApiClientClassName,
            @JsonKey(name: 'use_class_for_query_parameters')
            bool useClassForQueryParameters,
            @JsonKey(name: 'use_class_for_multipart_form_data')
            bool useClassForMultipartFormData,
            @JsonKey(name: 'skipped_parameters')
            List<String> skippedParameters)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApiClientConfig() when $default != null:
        return $default(
            _that.baseApiClientClassName,
            _that.useClassForQueryParameters,
            _that.useClassForMultipartFormData,
            _that.skippedParameters);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'base_api_client_class_name')
            String baseApiClientClassName,
            @JsonKey(name: 'use_class_for_query_parameters')
            bool useClassForQueryParameters,
            @JsonKey(name: 'use_class_for_multipart_form_data')
            bool useClassForMultipartFormData,
            @JsonKey(name: 'skipped_parameters') List<String> skippedParameters)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiClientConfig():
        return $default(
            _that.baseApiClientClassName,
            _that.useClassForQueryParameters,
            _that.useClassForMultipartFormData,
            _that.skippedParameters);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'base_api_client_class_name')
            String baseApiClientClassName,
            @JsonKey(name: 'use_class_for_query_parameters')
            bool useClassForQueryParameters,
            @JsonKey(name: 'use_class_for_multipart_form_data')
            bool useClassForMultipartFormData,
            @JsonKey(name: 'skipped_parameters')
            List<String> skippedParameters)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiClientConfig() when $default != null:
        return $default(
            _that.baseApiClientClassName,
            _that.useClassForQueryParameters,
            _that.useClassForMultipartFormData,
            _that.skippedParameters);
      case _:
        return null;
    }
  }
}

/// @nodoc

@_jsonSerializable
class _ApiClientConfig extends ApiClientConfig {
  const _ApiClientConfig(
      {@JsonKey(name: 'base_api_client_class_name')
      this.baseApiClientClassName = 'BaseApiClient',
      @JsonKey(name: 'use_class_for_query_parameters')
      this.useClassForQueryParameters = false,
      @JsonKey(name: 'use_class_for_multipart_form_data')
      this.useClassForMultipartFormData = false,
      @JsonKey(name: 'skipped_parameters')
      final List<String> skippedParameters = const []})
      : _skippedParameters = skippedParameters,
        super._();
  factory _ApiClientConfig.fromJson(Map<String, dynamic> json) =>
      _$ApiClientConfigFromJson(json);

  @override
  @JsonKey(name: 'base_api_client_class_name')
  final String baseApiClientClassName;
  @override
  @JsonKey(name: 'use_class_for_query_parameters')
  final bool useClassForQueryParameters;
  @override
  @JsonKey(name: 'use_class_for_multipart_form_data')
  final bool useClassForMultipartFormData;
  final List<String> _skippedParameters;
  @override
  @JsonKey(name: 'skipped_parameters')
  List<String> get skippedParameters {
    if (_skippedParameters is EqualUnmodifiableListView)
      return _skippedParameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skippedParameters);
  }

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
            (identical(other.baseApiClientClassName, baseApiClientClassName) ||
                other.baseApiClientClassName == baseApiClientClassName) &&
            (identical(other.useClassForQueryParameters,
                    useClassForQueryParameters) ||
                other.useClassForQueryParameters ==
                    useClassForQueryParameters) &&
            (identical(other.useClassForMultipartFormData,
                    useClassForMultipartFormData) ||
                other.useClassForMultipartFormData ==
                    useClassForMultipartFormData) &&
            const DeepCollectionEquality()
                .equals(other._skippedParameters, _skippedParameters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      baseApiClientClassName,
      useClassForQueryParameters,
      useClassForMultipartFormData,
      const DeepCollectionEquality().hash(_skippedParameters));

  @override
  String toString() {
    return 'ApiClientConfig(baseApiClientClassName: $baseApiClientClassName, useClassForQueryParameters: $useClassForQueryParameters, useClassForMultipartFormData: $useClassForMultipartFormData, skippedParameters: $skippedParameters)';
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
  $Res call(
      {@JsonKey(name: 'base_api_client_class_name')
      String baseApiClientClassName,
      @JsonKey(name: 'use_class_for_query_parameters')
      bool useClassForQueryParameters,
      @JsonKey(name: 'use_class_for_multipart_form_data')
      bool useClassForMultipartFormData,
      @JsonKey(name: 'skipped_parameters') List<String> skippedParameters});
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
    Object? baseApiClientClassName = null,
    Object? useClassForQueryParameters = null,
    Object? useClassForMultipartFormData = null,
    Object? skippedParameters = null,
  }) {
    return _then(_ApiClientConfig(
      baseApiClientClassName: null == baseApiClientClassName
          ? _self.baseApiClientClassName
          : baseApiClientClassName // ignore: cast_nullable_to_non_nullable
              as String,
      useClassForQueryParameters: null == useClassForQueryParameters
          ? _self.useClassForQueryParameters
          : useClassForQueryParameters // ignore: cast_nullable_to_non_nullable
              as bool,
      useClassForMultipartFormData: null == useClassForMultipartFormData
          ? _self.useClassForMultipartFormData
          : useClassForMultipartFormData // ignore: cast_nullable_to_non_nullable
              as bool,
      skippedParameters: null == skippedParameters
          ? _self._skippedParameters
          : skippedParameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
mixin _$SwaggerToDart {
  @JsonKey(name: 'url')
  String? get url;
  @JsonKey(name: 'generation_source')
  GenerationSource? get generationSource;
  @JsonKey(name: 'input_directory')
  String get inputDirectory;
  @JsonKey(name: 'output_directory')
  String get outputDirectory;
  @JsonKey(name: 'model')
  ModelConfig get model;
  @JsonKey(name: 'api_client')
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
            (identical(other.generationSource, generationSource) ||
                other.generationSource == generationSource) &&
            (identical(other.inputDirectory, inputDirectory) ||
                other.inputDirectory == inputDirectory) &&
            (identical(other.outputDirectory, outputDirectory) ||
                other.outputDirectory == outputDirectory) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.apiClient, apiClient) ||
                other.apiClient == apiClient));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, generationSource,
      inputDirectory, outputDirectory, model, apiClient);

  @override
  String toString() {
    return 'SwaggerToDart(url: $url, generationSource: $generationSource, inputDirectory: $inputDirectory, outputDirectory: $outputDirectory, model: $model, apiClient: $apiClient)';
  }
}

/// @nodoc
abstract mixin class $SwaggerToDartCopyWith<$Res> {
  factory $SwaggerToDartCopyWith(
          SwaggerToDart value, $Res Function(SwaggerToDart) _then) =
      _$SwaggerToDartCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'generation_source') GenerationSource? generationSource,
      @JsonKey(name: 'input_directory') String inputDirectory,
      @JsonKey(name: 'output_directory') String outputDirectory,
      @JsonKey(name: 'model') ModelConfig model,
      @JsonKey(name: 'api_client') ApiClientConfig apiClient});

  $ModelConfigCopyWith<$Res> get model;
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
    Object? generationSource = freezed,
    Object? inputDirectory = null,
    Object? outputDirectory = null,
    Object? model = null,
    Object? apiClient = null,
  }) {
    return _then(_self.copyWith(
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      generationSource: freezed == generationSource
          ? _self.generationSource
          : generationSource // ignore: cast_nullable_to_non_nullable
              as GenerationSource?,
      inputDirectory: null == inputDirectory
          ? _self.inputDirectory
          : inputDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      outputDirectory: null == outputDirectory
          ? _self.outputDirectory
          : outputDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as ModelConfig,
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
  $ModelConfigCopyWith<$Res> get model {
    return $ModelConfigCopyWith<$Res>(_self.model, (value) {
      return _then(_self.copyWith(model: value));
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

/// Adds pattern-matching-related methods to [SwaggerToDart].
extension SwaggerToDartPatterns on SwaggerToDart {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SwaggerToDart value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SwaggerToDart() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SwaggerToDart value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SwaggerToDart():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SwaggerToDart value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SwaggerToDart() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'url') String? url,
            @JsonKey(name: 'generation_source')
            GenerationSource? generationSource,
            @JsonKey(name: 'input_directory') String inputDirectory,
            @JsonKey(name: 'output_directory') String outputDirectory,
            @JsonKey(name: 'model') ModelConfig model,
            @JsonKey(name: 'api_client') ApiClientConfig apiClient)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SwaggerToDart() when $default != null:
        return $default(_that.url, _that.generationSource, _that.inputDirectory,
            _that.outputDirectory, _that.model, _that.apiClient);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'url') String? url,
            @JsonKey(name: 'generation_source')
            GenerationSource? generationSource,
            @JsonKey(name: 'input_directory') String inputDirectory,
            @JsonKey(name: 'output_directory') String outputDirectory,
            @JsonKey(name: 'model') ModelConfig model,
            @JsonKey(name: 'api_client') ApiClientConfig apiClient)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SwaggerToDart():
        return $default(_that.url, _that.generationSource, _that.inputDirectory,
            _that.outputDirectory, _that.model, _that.apiClient);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'url') String? url,
            @JsonKey(name: 'generation_source')
            GenerationSource? generationSource,
            @JsonKey(name: 'input_directory') String inputDirectory,
            @JsonKey(name: 'output_directory') String outputDirectory,
            @JsonKey(name: 'model') ModelConfig model,
            @JsonKey(name: 'api_client') ApiClientConfig apiClient)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SwaggerToDart() when $default != null:
        return $default(_that.url, _that.generationSource, _that.inputDirectory,
            _that.outputDirectory, _that.model, _that.apiClient);
      case _:
        return null;
    }
  }
}

/// @nodoc

@_jsonSerializable
class _SwaggerToDart extends SwaggerToDart {
  const _SwaggerToDart(
      {@JsonKey(name: 'url') this.url,
      @JsonKey(name: 'generation_source') this.generationSource,
      @JsonKey(name: 'input_directory')
      this.inputDirectory = 'schema/swagger.json',
      @JsonKey(name: 'output_directory') this.outputDirectory = 'lib/src/gen',
      @JsonKey(name: 'model') this.model = const ModelConfig(),
      @JsonKey(name: 'api_client') this.apiClient = const ApiClientConfig()})
      : super._();
  factory _SwaggerToDart.fromJson(Map<String, dynamic> json) =>
      _$SwaggerToDartFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'generation_source')
  final GenerationSource? generationSource;
  @override
  @JsonKey(name: 'input_directory')
  final String inputDirectory;
  @override
  @JsonKey(name: 'output_directory')
  final String outputDirectory;
  @override
  @JsonKey(name: 'model')
  final ModelConfig model;
  @override
  @JsonKey(name: 'api_client')
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
            (identical(other.generationSource, generationSource) ||
                other.generationSource == generationSource) &&
            (identical(other.inputDirectory, inputDirectory) ||
                other.inputDirectory == inputDirectory) &&
            (identical(other.outputDirectory, outputDirectory) ||
                other.outputDirectory == outputDirectory) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.apiClient, apiClient) ||
                other.apiClient == apiClient));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, generationSource,
      inputDirectory, outputDirectory, model, apiClient);

  @override
  String toString() {
    return 'SwaggerToDart(url: $url, generationSource: $generationSource, inputDirectory: $inputDirectory, outputDirectory: $outputDirectory, model: $model, apiClient: $apiClient)';
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
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'generation_source') GenerationSource? generationSource,
      @JsonKey(name: 'input_directory') String inputDirectory,
      @JsonKey(name: 'output_directory') String outputDirectory,
      @JsonKey(name: 'model') ModelConfig model,
      @JsonKey(name: 'api_client') ApiClientConfig apiClient});

  @override
  $ModelConfigCopyWith<$Res> get model;
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
    Object? generationSource = freezed,
    Object? inputDirectory = null,
    Object? outputDirectory = null,
    Object? model = null,
    Object? apiClient = null,
  }) {
    return _then(_SwaggerToDart(
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      generationSource: freezed == generationSource
          ? _self.generationSource
          : generationSource // ignore: cast_nullable_to_non_nullable
              as GenerationSource?,
      inputDirectory: null == inputDirectory
          ? _self.inputDirectory
          : inputDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      outputDirectory: null == outputDirectory
          ? _self.outputDirectory
          : outputDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as ModelConfig,
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
  $ModelConfigCopyWith<$Res> get model {
    return $ModelConfigCopyWith<$Res>(_self.model, (value) {
      return _then(_self.copyWith(model: value));
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
