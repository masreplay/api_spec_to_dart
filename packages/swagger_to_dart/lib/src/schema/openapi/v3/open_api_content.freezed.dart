// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_api_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OpenApiContent {
  @JsonKey(name: 'application/json')
  OpenApiContentSchema? get applicationJson;
  @JsonKey(name: 'application/x-www-form-urlencoded')
  OpenApiContentSchema? get applicationXWwwFormUrlencoded;
  @JsonKey(name: 'multipart/form-data')
  OpenApiContentSchema? get multipartFormData;

  /// Create a copy of OpenApiContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenApiContentCopyWith<OpenApiContent> get copyWith =>
      _$OpenApiContentCopyWithImpl<OpenApiContent>(
          this as OpenApiContent, _$identity);

  /// Serializes this OpenApiContent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenApiContent &&
            (identical(other.applicationJson, applicationJson) ||
                other.applicationJson == applicationJson) &&
            (identical(other.applicationXWwwFormUrlencoded,
                    applicationXWwwFormUrlencoded) ||
                other.applicationXWwwFormUrlencoded ==
                    applicationXWwwFormUrlencoded) &&
            (identical(other.multipartFormData, multipartFormData) ||
                other.multipartFormData == multipartFormData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, applicationJson,
      applicationXWwwFormUrlencoded, multipartFormData);

  @override
  String toString() {
    return 'OpenApiContent(applicationJson: $applicationJson, applicationXWwwFormUrlencoded: $applicationXWwwFormUrlencoded, multipartFormData: $multipartFormData)';
  }
}

/// @nodoc
abstract mixin class $OpenApiContentCopyWith<$Res> {
  factory $OpenApiContentCopyWith(
          OpenApiContent value, $Res Function(OpenApiContent) _then) =
      _$OpenApiContentCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'application/json') OpenApiContentSchema? applicationJson,
      @JsonKey(name: 'application/x-www-form-urlencoded')
      OpenApiContentSchema? applicationXWwwFormUrlencoded,
      @JsonKey(name: 'multipart/form-data')
      OpenApiContentSchema? multipartFormData});

  $OpenApiContentSchemaCopyWith<$Res>? get applicationJson;
  $OpenApiContentSchemaCopyWith<$Res>? get applicationXWwwFormUrlencoded;
  $OpenApiContentSchemaCopyWith<$Res>? get multipartFormData;
}

/// @nodoc
class _$OpenApiContentCopyWithImpl<$Res>
    implements $OpenApiContentCopyWith<$Res> {
  _$OpenApiContentCopyWithImpl(this._self, this._then);

  final OpenApiContent _self;
  final $Res Function(OpenApiContent) _then;

  /// Create a copy of OpenApiContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicationJson = freezed,
    Object? applicationXWwwFormUrlencoded = freezed,
    Object? multipartFormData = freezed,
  }) {
    return _then(_self.copyWith(
      applicationJson: freezed == applicationJson
          ? _self.applicationJson
          : applicationJson // ignore: cast_nullable_to_non_nullable
              as OpenApiContentSchema?,
      applicationXWwwFormUrlencoded: freezed == applicationXWwwFormUrlencoded
          ? _self.applicationXWwwFormUrlencoded
          : applicationXWwwFormUrlencoded // ignore: cast_nullable_to_non_nullable
              as OpenApiContentSchema?,
      multipartFormData: freezed == multipartFormData
          ? _self.multipartFormData
          : multipartFormData // ignore: cast_nullable_to_non_nullable
              as OpenApiContentSchema?,
    ));
  }

  /// Create a copy of OpenApiContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiContentSchemaCopyWith<$Res>? get applicationJson {
    if (_self.applicationJson == null) {
      return null;
    }

    return $OpenApiContentSchemaCopyWith<$Res>(_self.applicationJson!, (value) {
      return _then(_self.copyWith(applicationJson: value));
    });
  }

  /// Create a copy of OpenApiContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiContentSchemaCopyWith<$Res>? get applicationXWwwFormUrlencoded {
    if (_self.applicationXWwwFormUrlencoded == null) {
      return null;
    }

    return $OpenApiContentSchemaCopyWith<$Res>(
        _self.applicationXWwwFormUrlencoded!, (value) {
      return _then(_self.copyWith(applicationXWwwFormUrlencoded: value));
    });
  }

  /// Create a copy of OpenApiContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiContentSchemaCopyWith<$Res>? get multipartFormData {
    if (_self.multipartFormData == null) {
      return null;
    }

    return $OpenApiContentSchemaCopyWith<$Res>(_self.multipartFormData!,
        (value) {
      return _then(_self.copyWith(multipartFormData: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _OpenApiContent extends OpenApiContent {
  const _OpenApiContent(
      {@JsonKey(name: 'application/json') required this.applicationJson,
      @JsonKey(name: 'application/x-www-form-urlencoded')
      required this.applicationXWwwFormUrlencoded,
      @JsonKey(name: 'multipart/form-data') required this.multipartFormData})
      : super._();
  factory _OpenApiContent.fromJson(Map<String, dynamic> json) =>
      _$OpenApiContentFromJson(json);

  @override
  @JsonKey(name: 'application/json')
  final OpenApiContentSchema? applicationJson;
  @override
  @JsonKey(name: 'application/x-www-form-urlencoded')
  final OpenApiContentSchema? applicationXWwwFormUrlencoded;
  @override
  @JsonKey(name: 'multipart/form-data')
  final OpenApiContentSchema? multipartFormData;

  /// Create a copy of OpenApiContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OpenApiContentCopyWith<_OpenApiContent> get copyWith =>
      __$OpenApiContentCopyWithImpl<_OpenApiContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OpenApiContentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenApiContent &&
            (identical(other.applicationJson, applicationJson) ||
                other.applicationJson == applicationJson) &&
            (identical(other.applicationXWwwFormUrlencoded,
                    applicationXWwwFormUrlencoded) ||
                other.applicationXWwwFormUrlencoded ==
                    applicationXWwwFormUrlencoded) &&
            (identical(other.multipartFormData, multipartFormData) ||
                other.multipartFormData == multipartFormData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, applicationJson,
      applicationXWwwFormUrlencoded, multipartFormData);

  @override
  String toString() {
    return 'OpenApiContent(applicationJson: $applicationJson, applicationXWwwFormUrlencoded: $applicationXWwwFormUrlencoded, multipartFormData: $multipartFormData)';
  }
}

/// @nodoc
abstract mixin class _$OpenApiContentCopyWith<$Res>
    implements $OpenApiContentCopyWith<$Res> {
  factory _$OpenApiContentCopyWith(
          _OpenApiContent value, $Res Function(_OpenApiContent) _then) =
      __$OpenApiContentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'application/json') OpenApiContentSchema? applicationJson,
      @JsonKey(name: 'application/x-www-form-urlencoded')
      OpenApiContentSchema? applicationXWwwFormUrlencoded,
      @JsonKey(name: 'multipart/form-data')
      OpenApiContentSchema? multipartFormData});

  @override
  $OpenApiContentSchemaCopyWith<$Res>? get applicationJson;
  @override
  $OpenApiContentSchemaCopyWith<$Res>? get applicationXWwwFormUrlencoded;
  @override
  $OpenApiContentSchemaCopyWith<$Res>? get multipartFormData;
}

/// @nodoc
class __$OpenApiContentCopyWithImpl<$Res>
    implements _$OpenApiContentCopyWith<$Res> {
  __$OpenApiContentCopyWithImpl(this._self, this._then);

  final _OpenApiContent _self;
  final $Res Function(_OpenApiContent) _then;

  /// Create a copy of OpenApiContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? applicationJson = freezed,
    Object? applicationXWwwFormUrlencoded = freezed,
    Object? multipartFormData = freezed,
  }) {
    return _then(_OpenApiContent(
      applicationJson: freezed == applicationJson
          ? _self.applicationJson
          : applicationJson // ignore: cast_nullable_to_non_nullable
              as OpenApiContentSchema?,
      applicationXWwwFormUrlencoded: freezed == applicationXWwwFormUrlencoded
          ? _self.applicationXWwwFormUrlencoded
          : applicationXWwwFormUrlencoded // ignore: cast_nullable_to_non_nullable
              as OpenApiContentSchema?,
      multipartFormData: freezed == multipartFormData
          ? _self.multipartFormData
          : multipartFormData // ignore: cast_nullable_to_non_nullable
              as OpenApiContentSchema?,
    ));
  }

  /// Create a copy of OpenApiContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiContentSchemaCopyWith<$Res>? get applicationJson {
    if (_self.applicationJson == null) {
      return null;
    }

    return $OpenApiContentSchemaCopyWith<$Res>(_self.applicationJson!, (value) {
      return _then(_self.copyWith(applicationJson: value));
    });
  }

  /// Create a copy of OpenApiContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiContentSchemaCopyWith<$Res>? get applicationXWwwFormUrlencoded {
    if (_self.applicationXWwwFormUrlencoded == null) {
      return null;
    }

    return $OpenApiContentSchemaCopyWith<$Res>(
        _self.applicationXWwwFormUrlencoded!, (value) {
      return _then(_self.copyWith(applicationXWwwFormUrlencoded: value));
    });
  }

  /// Create a copy of OpenApiContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiContentSchemaCopyWith<$Res>? get multipartFormData {
    if (_self.multipartFormData == null) {
      return null;
    }

    return $OpenApiContentSchemaCopyWith<$Res>(_self.multipartFormData!,
        (value) {
      return _then(_self.copyWith(multipartFormData: value));
    });
  }
}

/// @nodoc
mixin _$OpenApiContentSchema {
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'schema')
  OpenApiSchema get schema;

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
            (identical(other.schema, schema) || other.schema == schema));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, schema);

  @override
  String toString() {
    return 'OpenApiContentSchema(schema: $schema)';
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
      OpenApiSchema schema});

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
  }) {
    return _then(_self.copyWith(
      schema: null == schema
          ? _self.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as OpenApiSchema,
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

/// @nodoc
@JsonSerializable()
class _OpenApiContentSchema extends OpenApiContentSchema {
  const _OpenApiContentSchema(
      {@OpenApiSchemaJsonConverter()
      @JsonKey(name: 'schema')
      required this.schema})
      : super._();
  factory _OpenApiContentSchema.fromJson(Map<String, dynamic> json) =>
      _$OpenApiContentSchemaFromJson(json);

  @override
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'schema')
  final OpenApiSchema schema;

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
            (identical(other.schema, schema) || other.schema == schema));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, schema);

  @override
  String toString() {
    return 'OpenApiContentSchema(schema: $schema)';
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
      OpenApiSchema schema});

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
  }) {
    return _then(_OpenApiContentSchema(
      schema: null == schema
          ? _self.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as OpenApiSchema,
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
