// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_api_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpenApiContent _$OpenApiContentFromJson(Map<String, dynamic> json) {
  return _OpenApiContent.fromJson(json);
}

/// @nodoc
mixin _$OpenApiContent {
  @JsonKey(name: 'application/json')
  OpenApiContentSchema? get applicationJson =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'application/x-www-form-urlencoded')
  OpenApiContentSchema? get applicationXWwwFormUrlencoded =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'multipart/form-data')
  OpenApiContentSchema? get multipartFormData =>
      throw _privateConstructorUsedError;

  /// Serializes this OpenApiContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenApiContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenApiContentCopyWith<OpenApiContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenApiContentCopyWith<$Res> {
  factory $OpenApiContentCopyWith(
          OpenApiContent value, $Res Function(OpenApiContent) then) =
      _$OpenApiContentCopyWithImpl<$Res, OpenApiContent>;
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
class _$OpenApiContentCopyWithImpl<$Res, $Val extends OpenApiContent>
    implements $OpenApiContentCopyWith<$Res> {
  _$OpenApiContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenApiContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicationJson = freezed,
    Object? applicationXWwwFormUrlencoded = freezed,
    Object? multipartFormData = freezed,
  }) {
    return _then(_value.copyWith(
      applicationJson: freezed == applicationJson
          ? _value.applicationJson
          : applicationJson // ignore: cast_nullable_to_non_nullable
              as OpenApiContentSchema?,
      applicationXWwwFormUrlencoded: freezed == applicationXWwwFormUrlencoded
          ? _value.applicationXWwwFormUrlencoded
          : applicationXWwwFormUrlencoded // ignore: cast_nullable_to_non_nullable
              as OpenApiContentSchema?,
      multipartFormData: freezed == multipartFormData
          ? _value.multipartFormData
          : multipartFormData // ignore: cast_nullable_to_non_nullable
              as OpenApiContentSchema?,
    ) as $Val);
  }

  /// Create a copy of OpenApiContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiContentSchemaCopyWith<$Res>? get applicationJson {
    if (_value.applicationJson == null) {
      return null;
    }

    return $OpenApiContentSchemaCopyWith<$Res>(_value.applicationJson!,
        (value) {
      return _then(_value.copyWith(applicationJson: value) as $Val);
    });
  }

  /// Create a copy of OpenApiContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiContentSchemaCopyWith<$Res>? get applicationXWwwFormUrlencoded {
    if (_value.applicationXWwwFormUrlencoded == null) {
      return null;
    }

    return $OpenApiContentSchemaCopyWith<$Res>(
        _value.applicationXWwwFormUrlencoded!, (value) {
      return _then(
          _value.copyWith(applicationXWwwFormUrlencoded: value) as $Val);
    });
  }

  /// Create a copy of OpenApiContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiContentSchemaCopyWith<$Res>? get multipartFormData {
    if (_value.multipartFormData == null) {
      return null;
    }

    return $OpenApiContentSchemaCopyWith<$Res>(_value.multipartFormData!,
        (value) {
      return _then(_value.copyWith(multipartFormData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OpenApiContentImplCopyWith<$Res>
    implements $OpenApiContentCopyWith<$Res> {
  factory _$$OpenApiContentImplCopyWith(_$OpenApiContentImpl value,
          $Res Function(_$OpenApiContentImpl) then) =
      __$$OpenApiContentImplCopyWithImpl<$Res>;
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
class __$$OpenApiContentImplCopyWithImpl<$Res>
    extends _$OpenApiContentCopyWithImpl<$Res, _$OpenApiContentImpl>
    implements _$$OpenApiContentImplCopyWith<$Res> {
  __$$OpenApiContentImplCopyWithImpl(
      _$OpenApiContentImpl _value, $Res Function(_$OpenApiContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenApiContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicationJson = freezed,
    Object? applicationXWwwFormUrlencoded = freezed,
    Object? multipartFormData = freezed,
  }) {
    return _then(_$OpenApiContentImpl(
      applicationJson: freezed == applicationJson
          ? _value.applicationJson
          : applicationJson // ignore: cast_nullable_to_non_nullable
              as OpenApiContentSchema?,
      applicationXWwwFormUrlencoded: freezed == applicationXWwwFormUrlencoded
          ? _value.applicationXWwwFormUrlencoded
          : applicationXWwwFormUrlencoded // ignore: cast_nullable_to_non_nullable
              as OpenApiContentSchema?,
      multipartFormData: freezed == multipartFormData
          ? _value.multipartFormData
          : multipartFormData // ignore: cast_nullable_to_non_nullable
              as OpenApiContentSchema?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenApiContentImpl extends _OpenApiContent {
  _$OpenApiContentImpl(
      {@JsonKey(name: 'application/json') required this.applicationJson,
      @JsonKey(name: 'application/x-www-form-urlencoded')
      required this.applicationXWwwFormUrlencoded,
      @JsonKey(name: 'multipart/form-data') required this.multipartFormData})
      : super._();

  factory _$OpenApiContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiContentImplFromJson(json);

  @override
  @JsonKey(name: 'application/json')
  final OpenApiContentSchema? applicationJson;
  @override
  @JsonKey(name: 'application/x-www-form-urlencoded')
  final OpenApiContentSchema? applicationXWwwFormUrlencoded;
  @override
  @JsonKey(name: 'multipart/form-data')
  final OpenApiContentSchema? multipartFormData;

  @override
  String toString() {
    return 'OpenApiContent(applicationJson: $applicationJson, applicationXWwwFormUrlencoded: $applicationXWwwFormUrlencoded, multipartFormData: $multipartFormData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiContentImpl &&
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

  /// Create a copy of OpenApiContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenApiContentImplCopyWith<_$OpenApiContentImpl> get copyWith =>
      __$$OpenApiContentImplCopyWithImpl<_$OpenApiContentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiContentImplToJson(
      this,
    );
  }
}

abstract class _OpenApiContent extends OpenApiContent {
  factory _OpenApiContent(
          {@JsonKey(name: 'application/json')
          required final OpenApiContentSchema? applicationJson,
          @JsonKey(name: 'application/x-www-form-urlencoded')
          required final OpenApiContentSchema? applicationXWwwFormUrlencoded,
          @JsonKey(name: 'multipart/form-data')
          required final OpenApiContentSchema? multipartFormData}) =
      _$OpenApiContentImpl;
  _OpenApiContent._() : super._();

  factory _OpenApiContent.fromJson(Map<String, dynamic> json) =
      _$OpenApiContentImpl.fromJson;

  @override
  @JsonKey(name: 'application/json')
  OpenApiContentSchema? get applicationJson;
  @override
  @JsonKey(name: 'application/x-www-form-urlencoded')
  OpenApiContentSchema? get applicationXWwwFormUrlencoded;
  @override
  @JsonKey(name: 'multipart/form-data')
  OpenApiContentSchema? get multipartFormData;

  /// Create a copy of OpenApiContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenApiContentImplCopyWith<_$OpenApiContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenApiContentSchema _$OpenApiContentSchemaFromJson(Map<String, dynamic> json) {
  return _OpenApiContentSchema.fromJson(json);
}

/// @nodoc
mixin _$OpenApiContentSchema {
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'schema')
  OpenApiSchema get schema => throw _privateConstructorUsedError;

  /// Serializes this OpenApiContentSchema to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenApiContentSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenApiContentSchemaCopyWith<OpenApiContentSchema> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenApiContentSchemaCopyWith<$Res> {
  factory $OpenApiContentSchemaCopyWith(OpenApiContentSchema value,
          $Res Function(OpenApiContentSchema) then) =
      _$OpenApiContentSchemaCopyWithImpl<$Res, OpenApiContentSchema>;
  @useResult
  $Res call(
      {@OpenApiSchemaJsonConverter()
      @JsonKey(name: 'schema')
      OpenApiSchema schema});

  $OpenApiSchemaCopyWith<$Res> get schema;
}

/// @nodoc
class _$OpenApiContentSchemaCopyWithImpl<$Res,
        $Val extends OpenApiContentSchema>
    implements $OpenApiContentSchemaCopyWith<$Res> {
  _$OpenApiContentSchemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenApiContentSchema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schema = null,
  }) {
    return _then(_value.copyWith(
      schema: null == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as OpenApiSchema,
    ) as $Val);
  }

  /// Create a copy of OpenApiContentSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiSchemaCopyWith<$Res> get schema {
    return $OpenApiSchemaCopyWith<$Res>(_value.schema, (value) {
      return _then(_value.copyWith(schema: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OpenApiContentSchemaImplCopyWith<$Res>
    implements $OpenApiContentSchemaCopyWith<$Res> {
  factory _$$OpenApiContentSchemaImplCopyWith(_$OpenApiContentSchemaImpl value,
          $Res Function(_$OpenApiContentSchemaImpl) then) =
      __$$OpenApiContentSchemaImplCopyWithImpl<$Res>;
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
class __$$OpenApiContentSchemaImplCopyWithImpl<$Res>
    extends _$OpenApiContentSchemaCopyWithImpl<$Res, _$OpenApiContentSchemaImpl>
    implements _$$OpenApiContentSchemaImplCopyWith<$Res> {
  __$$OpenApiContentSchemaImplCopyWithImpl(_$OpenApiContentSchemaImpl _value,
      $Res Function(_$OpenApiContentSchemaImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenApiContentSchema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schema = null,
  }) {
    return _then(_$OpenApiContentSchemaImpl(
      schema: null == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as OpenApiSchema,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenApiContentSchemaImpl implements _OpenApiContentSchema {
  _$OpenApiContentSchemaImpl(
      {@OpenApiSchemaJsonConverter()
      @JsonKey(name: 'schema')
      required this.schema});

  factory _$OpenApiContentSchemaImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiContentSchemaImplFromJson(json);

  @override
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'schema')
  final OpenApiSchema schema;

  @override
  String toString() {
    return 'OpenApiContentSchema(schema: $schema)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiContentSchemaImpl &&
            (identical(other.schema, schema) || other.schema == schema));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, schema);

  /// Create a copy of OpenApiContentSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenApiContentSchemaImplCopyWith<_$OpenApiContentSchemaImpl>
      get copyWith =>
          __$$OpenApiContentSchemaImplCopyWithImpl<_$OpenApiContentSchemaImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiContentSchemaImplToJson(
      this,
    );
  }
}

abstract class _OpenApiContentSchema implements OpenApiContentSchema {
  factory _OpenApiContentSchema(
      {@OpenApiSchemaJsonConverter()
      @JsonKey(name: 'schema')
      required final OpenApiSchema schema}) = _$OpenApiContentSchemaImpl;

  factory _OpenApiContentSchema.fromJson(Map<String, dynamic> json) =
      _$OpenApiContentSchemaImpl.fromJson;

  @override
  @OpenApiSchemaJsonConverter()
  @JsonKey(name: 'schema')
  OpenApiSchema get schema;

  /// Create a copy of OpenApiContentSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenApiContentSchemaImplCopyWith<_$OpenApiContentSchemaImpl>
      get copyWith => throw _privateConstructorUsedError;
}
