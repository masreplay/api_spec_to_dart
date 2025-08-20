// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_api_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OpenApiContentSchema {
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'schema')
  OpenApiSchema get schema;
  @JsonKey(name: 'example')
  Object? get example;

  /// Create a copy of OpenApiContentSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenApiContentSchemaCopyWith<OpenApiContentSchema> get copyWith =>
      _$OpenApiContentSchemaCopyWithImpl<OpenApiContentSchema>(
          this as OpenApiContentSchema, _$identity);

  /// Serializes this OpenApiContentSchema to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenApiContentSchema &&
            (identical(other.schema, schema) || other.schema == schema) &&
            const DeepCollectionEquality().equals(other.example, example));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, schema, const DeepCollectionEquality().hash(example));

  @override
  String toString() {
    return 'OpenApiContentSchema(schema: $schema, example: $example)';
  }
}

/// @nodoc
abstract mixin class $OpenApiContentSchemaCopyWith<$Res> {
  factory $OpenApiContentSchemaCopyWith(OpenApiContentSchema value,
          $Res Function(OpenApiContentSchema) _then) =
      _$OpenApiContentSchemaCopyWithImpl;
  @useResult
  $Res call(
      {@OpenApiSchemaJsonConverter()
      @JsonKey(name: 'schema')
      OpenApiSchema schema,
      @JsonKey(name: 'example') Object? example});

  $OpenApiSchemaCopyWith<$Res> get schema;
}

/// @nodoc
class _$OpenApiContentSchemaCopyWithImpl<$Res>
    implements $OpenApiContentSchemaCopyWith<$Res> {
  _$OpenApiContentSchemaCopyWithImpl(this._self, this._then);

  final OpenApiContentSchema _self;
  final $Res Function(OpenApiContentSchema) _then;

  /// Create a copy of OpenApiContentSchema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schema = null,
    Object? example = freezed,
  }) {
    return _then(_self.copyWith(
      schema: null == schema
          ? _self.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as OpenApiSchema,
      example: freezed == example ? _self.example : example,
    ));
  }

  /// Create a copy of OpenApiContentSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiSchemaCopyWith<$Res> get schema {
    return $OpenApiSchemaCopyWith<$Res>(_self.schema, (value) {
      return _then(_self.copyWith(schema: value));
    });
  }
}

/// Adds pattern-matching-related methods to [OpenApiContentSchema].
extension OpenApiContentSchemaPatterns on OpenApiContentSchema {
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
    TResult Function(_OpenApiContentSchema value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OpenApiContentSchema() when $default != null:
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
    TResult Function(_OpenApiContentSchema value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiContentSchema():
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
    TResult? Function(_OpenApiContentSchema value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiContentSchema() when $default != null:
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
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'schema')
            OpenApiSchema schema,
            @JsonKey(name: 'example') Object? example)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OpenApiContentSchema() when $default != null:
        return $default(_that.schema, _that.example);
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
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'schema')
            OpenApiSchema schema,
            @JsonKey(name: 'example') Object? example)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiContentSchema():
        return $default(_that.schema, _that.example);
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
            @OpenApiSchemaJsonConverter()
            @JsonKey(name: 'schema')
            OpenApiSchema schema,
            @JsonKey(name: 'example') Object? example)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OpenApiContentSchema() when $default != null:
        return $default(_that.schema, _that.example);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OpenApiContentSchema extends OpenApiContentSchema {
  const _OpenApiContentSchema(
      {@OpenApiSchemaJsonConverter()
      @JsonKey(name: 'schema')
      required this.schema,
      @JsonKey(name: 'example') this.example})
      : super._();
  factory _OpenApiContentSchema.fromJson(Map<String, dynamic> json) =>
      _$OpenApiContentSchemaFromJson(json);

  @override
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'schema')
  final OpenApiSchema schema;
  @override
  @JsonKey(name: 'example')
  final Object? example;

  /// Create a copy of OpenApiContentSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OpenApiContentSchemaCopyWith<_OpenApiContentSchema> get copyWith =>
      __$OpenApiContentSchemaCopyWithImpl<_OpenApiContentSchema>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OpenApiContentSchemaToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenApiContentSchema &&
            (identical(other.schema, schema) || other.schema == schema) &&
            const DeepCollectionEquality().equals(other.example, example));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, schema, const DeepCollectionEquality().hash(example));

  @override
  String toString() {
    return 'OpenApiContentSchema(schema: $schema, example: $example)';
  }
}

/// @nodoc
abstract mixin class _$OpenApiContentSchemaCopyWith<$Res>
    implements $OpenApiContentSchemaCopyWith<$Res> {
  factory _$OpenApiContentSchemaCopyWith(_OpenApiContentSchema value,
          $Res Function(_OpenApiContentSchema) _then) =
      __$OpenApiContentSchemaCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@OpenApiSchemaJsonConverter()
      @JsonKey(name: 'schema')
      OpenApiSchema schema,
      @JsonKey(name: 'example') Object? example});

  @override
  $OpenApiSchemaCopyWith<$Res> get schema;
}

/// @nodoc
class __$OpenApiContentSchemaCopyWithImpl<$Res>
    implements _$OpenApiContentSchemaCopyWith<$Res> {
  __$OpenApiContentSchemaCopyWithImpl(this._self, this._then);

  final _OpenApiContentSchema _self;
  final $Res Function(_OpenApiContentSchema) _then;

  /// Create a copy of OpenApiContentSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? schema = null,
    Object? example = freezed,
  }) {
    return _then(_OpenApiContentSchema(
      schema: null == schema
          ? _self.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as OpenApiSchema,
      example: freezed == example ? _self.example : example,
    ));
  }

  /// Create a copy of OpenApiContentSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiSchemaCopyWith<$Res> get schema {
    return $OpenApiSchemaCopyWith<$Res>(_self.schema, (value) {
      return _then(_self.copyWith(schema: value));
    });
  }
}
