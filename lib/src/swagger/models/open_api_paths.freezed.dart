// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_api_paths.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpenApiPathMethod _$OpenApiPathMethodFromJson(Map<String, dynamic> json) {
  return _OpenApiPathMethod.fromJson(json);
}

/// @nodoc
mixin _$OpenApiPathMethod {
  @JsonKey(name: 'tags')
  List<String> get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'summary')
  String? get summary => throw _privateConstructorUsedError;
  @JsonKey(name: 'operationId')
  String get operationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'parameters')
  List<OpenApiPathMethodParameter> get parameters =>
      throw _privateConstructorUsedError;
  Map<String, OpenApiPathMethodResponse>? get responses =>
      throw _privateConstructorUsedError;

  /// Serializes this OpenApiPathMethod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenApiPathMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenApiPathMethodCopyWith<OpenApiPathMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenApiPathMethodCopyWith<$Res> {
  factory $OpenApiPathMethodCopyWith(
          OpenApiPathMethod value, $Res Function(OpenApiPathMethod) then) =
      _$OpenApiPathMethodCopyWithImpl<$Res, OpenApiPathMethod>;
  @useResult
  $Res call(
      {@JsonKey(name: 'tags') List<String> tags,
      @JsonKey(name: 'summary') String? summary,
      @JsonKey(name: 'operationId') String operationId,
      @JsonKey(name: 'parameters') List<OpenApiPathMethodParameter> parameters,
      Map<String, OpenApiPathMethodResponse>? responses});
}

/// @nodoc
class _$OpenApiPathMethodCopyWithImpl<$Res, $Val extends OpenApiPathMethod>
    implements $OpenApiPathMethodCopyWith<$Res> {
  _$OpenApiPathMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenApiPathMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
    Object? summary = freezed,
    Object? operationId = null,
    Object? parameters = null,
    Object? responses = freezed,
  }) {
    return _then(_value.copyWith(
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      operationId: null == operationId
          ? _value.operationId
          : operationId // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<OpenApiPathMethodParameter>,
      responses: freezed == responses
          ? _value.responses
          : responses // ignore: cast_nullable_to_non_nullable
              as Map<String, OpenApiPathMethodResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenApiPathMethodImplCopyWith<$Res>
    implements $OpenApiPathMethodCopyWith<$Res> {
  factory _$$OpenApiPathMethodImplCopyWith(_$OpenApiPathMethodImpl value,
          $Res Function(_$OpenApiPathMethodImpl) then) =
      __$$OpenApiPathMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'tags') List<String> tags,
      @JsonKey(name: 'summary') String? summary,
      @JsonKey(name: 'operationId') String operationId,
      @JsonKey(name: 'parameters') List<OpenApiPathMethodParameter> parameters,
      Map<String, OpenApiPathMethodResponse>? responses});
}

/// @nodoc
class __$$OpenApiPathMethodImplCopyWithImpl<$Res>
    extends _$OpenApiPathMethodCopyWithImpl<$Res, _$OpenApiPathMethodImpl>
    implements _$$OpenApiPathMethodImplCopyWith<$Res> {
  __$$OpenApiPathMethodImplCopyWithImpl(_$OpenApiPathMethodImpl _value,
      $Res Function(_$OpenApiPathMethodImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenApiPathMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
    Object? summary = freezed,
    Object? operationId = null,
    Object? parameters = null,
    Object? responses = freezed,
  }) {
    return _then(_$OpenApiPathMethodImpl(
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      operationId: null == operationId
          ? _value.operationId
          : operationId // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<OpenApiPathMethodParameter>,
      responses: freezed == responses
          ? _value._responses
          : responses // ignore: cast_nullable_to_non_nullable
              as Map<String, OpenApiPathMethodResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenApiPathMethodImpl extends _OpenApiPathMethod {
  const _$OpenApiPathMethodImpl(
      {@JsonKey(name: 'tags') required final List<String> tags,
      @JsonKey(name: 'summary') required this.summary,
      @JsonKey(name: 'operationId') required this.operationId,
      @JsonKey(name: 'parameters')
      required final List<OpenApiPathMethodParameter> parameters,
      required final Map<String, OpenApiPathMethodResponse>? responses})
      : _tags = tags,
        _parameters = parameters,
        _responses = responses,
        super._();

  factory _$OpenApiPathMethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiPathMethodImplFromJson(json);

  final List<String> _tags;
  @override
  @JsonKey(name: 'tags')
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey(name: 'summary')
  final String? summary;
  @override
  @JsonKey(name: 'operationId')
  final String operationId;
  final List<OpenApiPathMethodParameter> _parameters;
  @override
  @JsonKey(name: 'parameters')
  List<OpenApiPathMethodParameter> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  final Map<String, OpenApiPathMethodResponse>? _responses;
  @override
  Map<String, OpenApiPathMethodResponse>? get responses {
    final value = _responses;
    if (value == null) return null;
    if (_responses is EqualUnmodifiableMapView) return _responses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'OpenApiPathMethod(tags: $tags, summary: $summary, operationId: $operationId, parameters: $parameters, responses: $responses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiPathMethodImpl &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.operationId, operationId) ||
                other.operationId == operationId) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            const DeepCollectionEquality()
                .equals(other._responses, _responses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tags),
      summary,
      operationId,
      const DeepCollectionEquality().hash(_parameters),
      const DeepCollectionEquality().hash(_responses));

  /// Create a copy of OpenApiPathMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenApiPathMethodImplCopyWith<_$OpenApiPathMethodImpl> get copyWith =>
      __$$OpenApiPathMethodImplCopyWithImpl<_$OpenApiPathMethodImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiPathMethodImplToJson(
      this,
    );
  }
}

abstract class _OpenApiPathMethod extends OpenApiPathMethod {
  const factory _OpenApiPathMethod(
          {@JsonKey(name: 'tags') required final List<String> tags,
          @JsonKey(name: 'summary') required final String? summary,
          @JsonKey(name: 'operationId') required final String operationId,
          @JsonKey(name: 'parameters')
          required final List<OpenApiPathMethodParameter> parameters,
          required final Map<String, OpenApiPathMethodResponse>? responses}) =
      _$OpenApiPathMethodImpl;
  const _OpenApiPathMethod._() : super._();

  factory _OpenApiPathMethod.fromJson(Map<String, dynamic> json) =
      _$OpenApiPathMethodImpl.fromJson;

  @override
  @JsonKey(name: 'tags')
  List<String> get tags;
  @override
  @JsonKey(name: 'summary')
  String? get summary;
  @override
  @JsonKey(name: 'operationId')
  String get operationId;
  @override
  @JsonKey(name: 'parameters')
  List<OpenApiPathMethodParameter> get parameters;
  @override
  Map<String, OpenApiPathMethodResponse>? get responses;

  /// Create a copy of OpenApiPathMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenApiPathMethodImplCopyWith<_$OpenApiPathMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenApiPathMethodParameter _$OpenApiPathMethodParameterFromJson(
    Map<String, dynamic> json) {
  return _OpenApiPathMethodParameter.fromJson(json);
}

/// @nodoc
mixin _$OpenApiPathMethodParameter {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'in')
  OpenApiPathMethodParameterType get in_ => throw _privateConstructorUsedError;
  @JsonKey(name: 'required')
  bool get required_ => throw _privateConstructorUsedError;
  @JsonKey(name: 'schema')
  OpenApiPathMethodParameterSchema get schema =>
      throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get example => throw _privateConstructorUsedError;

  /// Serializes this OpenApiPathMethodParameter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenApiPathMethodParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenApiPathMethodParameterCopyWith<OpenApiPathMethodParameter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenApiPathMethodParameterCopyWith<$Res> {
  factory $OpenApiPathMethodParameterCopyWith(OpenApiPathMethodParameter value,
          $Res Function(OpenApiPathMethodParameter) then) =
      _$OpenApiPathMethodParameterCopyWithImpl<$Res,
          OpenApiPathMethodParameter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'in') OpenApiPathMethodParameterType in_,
      @JsonKey(name: 'required') bool required_,
      @JsonKey(name: 'schema') OpenApiPathMethodParameterSchema schema,
      String? description,
      String? example});

  $OpenApiPathMethodParameterSchemaCopyWith<$Res> get schema;
}

/// @nodoc
class _$OpenApiPathMethodParameterCopyWithImpl<$Res,
        $Val extends OpenApiPathMethodParameter>
    implements $OpenApiPathMethodParameterCopyWith<$Res> {
  _$OpenApiPathMethodParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenApiPathMethodParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? in_ = null,
    Object? required_ = null,
    Object? schema = null,
    Object? description = freezed,
    Object? example = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      in_: null == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethodParameterType,
      required_: null == required_
          ? _value.required_
          : required_ // ignore: cast_nullable_to_non_nullable
              as bool,
      schema: null == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethodParameterSchema,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      example: freezed == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of OpenApiPathMethodParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiPathMethodParameterSchemaCopyWith<$Res> get schema {
    return $OpenApiPathMethodParameterSchemaCopyWith<$Res>(_value.schema,
        (value) {
      return _then(_value.copyWith(schema: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OpenApiPathMethodParameterImplCopyWith<$Res>
    implements $OpenApiPathMethodParameterCopyWith<$Res> {
  factory _$$OpenApiPathMethodParameterImplCopyWith(
          _$OpenApiPathMethodParameterImpl value,
          $Res Function(_$OpenApiPathMethodParameterImpl) then) =
      __$$OpenApiPathMethodParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'in') OpenApiPathMethodParameterType in_,
      @JsonKey(name: 'required') bool required_,
      @JsonKey(name: 'schema') OpenApiPathMethodParameterSchema schema,
      String? description,
      String? example});

  @override
  $OpenApiPathMethodParameterSchemaCopyWith<$Res> get schema;
}

/// @nodoc
class __$$OpenApiPathMethodParameterImplCopyWithImpl<$Res>
    extends _$OpenApiPathMethodParameterCopyWithImpl<$Res,
        _$OpenApiPathMethodParameterImpl>
    implements _$$OpenApiPathMethodParameterImplCopyWith<$Res> {
  __$$OpenApiPathMethodParameterImplCopyWithImpl(
      _$OpenApiPathMethodParameterImpl _value,
      $Res Function(_$OpenApiPathMethodParameterImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenApiPathMethodParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? in_ = null,
    Object? required_ = null,
    Object? schema = null,
    Object? description = freezed,
    Object? example = freezed,
  }) {
    return _then(_$OpenApiPathMethodParameterImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      in_: null == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethodParameterType,
      required_: null == required_
          ? _value.required_
          : required_ // ignore: cast_nullable_to_non_nullable
              as bool,
      schema: null == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethodParameterSchema,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      example: freezed == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenApiPathMethodParameterImpl extends _OpenApiPathMethodParameter {
  const _$OpenApiPathMethodParameterImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'in') required this.in_,
      @JsonKey(name: 'required') required this.required_,
      @JsonKey(name: 'schema') required this.schema,
      required this.description,
      required this.example})
      : super._();

  factory _$OpenApiPathMethodParameterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OpenApiPathMethodParameterImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'in')
  final OpenApiPathMethodParameterType in_;
  @override
  @JsonKey(name: 'required')
  final bool required_;
  @override
  @JsonKey(name: 'schema')
  final OpenApiPathMethodParameterSchema schema;
  @override
  final String? description;
  @override
  final String? example;

  @override
  String toString() {
    return 'OpenApiPathMethodParameter(name: $name, in_: $in_, required_: $required_, schema: $schema, description: $description, example: $example)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiPathMethodParameterImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.in_, in_) || other.in_ == in_) &&
            (identical(other.required_, required_) ||
                other.required_ == required_) &&
            (identical(other.schema, schema) || other.schema == schema) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.example, example) || other.example == example));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, in_, required_, schema, description, example);

  /// Create a copy of OpenApiPathMethodParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenApiPathMethodParameterImplCopyWith<_$OpenApiPathMethodParameterImpl>
      get copyWith => __$$OpenApiPathMethodParameterImplCopyWithImpl<
          _$OpenApiPathMethodParameterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiPathMethodParameterImplToJson(
      this,
    );
  }
}

abstract class _OpenApiPathMethodParameter extends OpenApiPathMethodParameter {
  const factory _OpenApiPathMethodParameter(
      {@JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'in') required final OpenApiPathMethodParameterType in_,
      @JsonKey(name: 'required') required final bool required_,
      @JsonKey(name: 'schema')
      required final OpenApiPathMethodParameterSchema schema,
      required final String? description,
      required final String? example}) = _$OpenApiPathMethodParameterImpl;
  const _OpenApiPathMethodParameter._() : super._();

  factory _OpenApiPathMethodParameter.fromJson(Map<String, dynamic> json) =
      _$OpenApiPathMethodParameterImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'in')
  OpenApiPathMethodParameterType get in_;
  @override
  @JsonKey(name: 'required')
  bool get required_;
  @override
  @JsonKey(name: 'schema')
  OpenApiPathMethodParameterSchema get schema;
  @override
  String? get description;
  @override
  String? get example;

  /// Create a copy of OpenApiPathMethodParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenApiPathMethodParameterImplCopyWith<_$OpenApiPathMethodParameterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OpenApiPathMethodParameterSchema _$OpenApiPathMethodParameterSchemaFromJson(
    Map<String, dynamic> json) {
  return _OpenApiPathMethodParameterSchema.fromJson(json);
}

/// @nodoc
mixin _$OpenApiPathMethodParameterSchema {
  OpenApiPathMethodParameterSchemaType get type =>
      throw _privateConstructorUsedError;
  String? get format => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get pattern => throw _privateConstructorUsedError;
  List<OpenApiPathMethodParameterSchema>? get anyOf =>
      throw _privateConstructorUsedError;
  dynamic get defaultValue => throw _privateConstructorUsedError;

  /// Serializes this OpenApiPathMethodParameterSchema to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenApiPathMethodParameterSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenApiPathMethodParameterSchemaCopyWith<OpenApiPathMethodParameterSchema>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenApiPathMethodParameterSchemaCopyWith<$Res> {
  factory $OpenApiPathMethodParameterSchemaCopyWith(
          OpenApiPathMethodParameterSchema value,
          $Res Function(OpenApiPathMethodParameterSchema) then) =
      _$OpenApiPathMethodParameterSchemaCopyWithImpl<$Res,
          OpenApiPathMethodParameterSchema>;
  @useResult
  $Res call(
      {OpenApiPathMethodParameterSchemaType type,
      String? format,
      String? description,
      String? title,
      String? pattern,
      List<OpenApiPathMethodParameterSchema>? anyOf,
      dynamic defaultValue});
}

/// @nodoc
class _$OpenApiPathMethodParameterSchemaCopyWithImpl<$Res,
        $Val extends OpenApiPathMethodParameterSchema>
    implements $OpenApiPathMethodParameterSchemaCopyWith<$Res> {
  _$OpenApiPathMethodParameterSchemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenApiPathMethodParameterSchema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? format = freezed,
    Object? description = freezed,
    Object? title = freezed,
    Object? pattern = freezed,
    Object? anyOf = freezed,
    Object? defaultValue = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethodParameterSchemaType,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      pattern: freezed == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String?,
      anyOf: freezed == anyOf
          ? _value.anyOf
          : anyOf // ignore: cast_nullable_to_non_nullable
              as List<OpenApiPathMethodParameterSchema>?,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenApiPathMethodParameterSchemaImplCopyWith<$Res>
    implements $OpenApiPathMethodParameterSchemaCopyWith<$Res> {
  factory _$$OpenApiPathMethodParameterSchemaImplCopyWith(
          _$OpenApiPathMethodParameterSchemaImpl value,
          $Res Function(_$OpenApiPathMethodParameterSchemaImpl) then) =
      __$$OpenApiPathMethodParameterSchemaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OpenApiPathMethodParameterSchemaType type,
      String? format,
      String? description,
      String? title,
      String? pattern,
      List<OpenApiPathMethodParameterSchema>? anyOf,
      dynamic defaultValue});
}

/// @nodoc
class __$$OpenApiPathMethodParameterSchemaImplCopyWithImpl<$Res>
    extends _$OpenApiPathMethodParameterSchemaCopyWithImpl<$Res,
        _$OpenApiPathMethodParameterSchemaImpl>
    implements _$$OpenApiPathMethodParameterSchemaImplCopyWith<$Res> {
  __$$OpenApiPathMethodParameterSchemaImplCopyWithImpl(
      _$OpenApiPathMethodParameterSchemaImpl _value,
      $Res Function(_$OpenApiPathMethodParameterSchemaImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenApiPathMethodParameterSchema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? format = freezed,
    Object? description = freezed,
    Object? title = freezed,
    Object? pattern = freezed,
    Object? anyOf = freezed,
    Object? defaultValue = freezed,
  }) {
    return _then(_$OpenApiPathMethodParameterSchemaImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OpenApiPathMethodParameterSchemaType,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      pattern: freezed == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String?,
      anyOf: freezed == anyOf
          ? _value._anyOf
          : anyOf // ignore: cast_nullable_to_non_nullable
              as List<OpenApiPathMethodParameterSchema>?,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenApiPathMethodParameterSchemaImpl
    extends _OpenApiPathMethodParameterSchema {
  const _$OpenApiPathMethodParameterSchemaImpl(
      {required this.type,
      required this.format,
      required this.description,
      required this.title,
      required this.pattern,
      required final List<OpenApiPathMethodParameterSchema>? anyOf,
      required this.defaultValue})
      : _anyOf = anyOf,
        super._();

  factory _$OpenApiPathMethodParameterSchemaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OpenApiPathMethodParameterSchemaImplFromJson(json);

  @override
  final OpenApiPathMethodParameterSchemaType type;
  @override
  final String? format;
  @override
  final String? description;
  @override
  final String? title;
  @override
  final String? pattern;
  final List<OpenApiPathMethodParameterSchema>? _anyOf;
  @override
  List<OpenApiPathMethodParameterSchema>? get anyOf {
    final value = _anyOf;
    if (value == null) return null;
    if (_anyOf is EqualUnmodifiableListView) return _anyOf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic defaultValue;

  @override
  String toString() {
    return 'OpenApiPathMethodParameterSchema(type: $type, format: $format, description: $description, title: $title, pattern: $pattern, anyOf: $anyOf, defaultValue: $defaultValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiPathMethodParameterSchemaImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.pattern, pattern) || other.pattern == pattern) &&
            const DeepCollectionEquality().equals(other._anyOf, _anyOf) &&
            const DeepCollectionEquality()
                .equals(other.defaultValue, defaultValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      format,
      description,
      title,
      pattern,
      const DeepCollectionEquality().hash(_anyOf),
      const DeepCollectionEquality().hash(defaultValue));

  /// Create a copy of OpenApiPathMethodParameterSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenApiPathMethodParameterSchemaImplCopyWith<
          _$OpenApiPathMethodParameterSchemaImpl>
      get copyWith => __$$OpenApiPathMethodParameterSchemaImplCopyWithImpl<
          _$OpenApiPathMethodParameterSchemaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiPathMethodParameterSchemaImplToJson(
      this,
    );
  }
}

abstract class _OpenApiPathMethodParameterSchema
    extends OpenApiPathMethodParameterSchema {
  const factory _OpenApiPathMethodParameterSchema(
          {required final OpenApiPathMethodParameterSchemaType type,
          required final String? format,
          required final String? description,
          required final String? title,
          required final String? pattern,
          required final List<OpenApiPathMethodParameterSchema>? anyOf,
          required final dynamic defaultValue}) =
      _$OpenApiPathMethodParameterSchemaImpl;
  const _OpenApiPathMethodParameterSchema._() : super._();

  factory _OpenApiPathMethodParameterSchema.fromJson(
          Map<String, dynamic> json) =
      _$OpenApiPathMethodParameterSchemaImpl.fromJson;

  @override
  OpenApiPathMethodParameterSchemaType get type;
  @override
  String? get format;
  @override
  String? get description;
  @override
  String? get title;
  @override
  String? get pattern;
  @override
  List<OpenApiPathMethodParameterSchema>? get anyOf;
  @override
  dynamic get defaultValue;

  /// Create a copy of OpenApiPathMethodParameterSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenApiPathMethodParameterSchemaImplCopyWith<
          _$OpenApiPathMethodParameterSchemaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OpenApiPathMethodResponse _$OpenApiPathMethodResponseFromJson(
    Map<String, dynamic> json) {
  return _OpenApiPathMethodResponse.fromJson(json);
}

/// @nodoc
mixin _$OpenApiPathMethodResponse {
  /// Serializes this OpenApiPathMethodResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenApiPathMethodResponseCopyWith<$Res> {
  factory $OpenApiPathMethodResponseCopyWith(OpenApiPathMethodResponse value,
          $Res Function(OpenApiPathMethodResponse) then) =
      _$OpenApiPathMethodResponseCopyWithImpl<$Res, OpenApiPathMethodResponse>;
}

/// @nodoc
class _$OpenApiPathMethodResponseCopyWithImpl<$Res,
        $Val extends OpenApiPathMethodResponse>
    implements $OpenApiPathMethodResponseCopyWith<$Res> {
  _$OpenApiPathMethodResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenApiPathMethodResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OpenApiPathMethodResponseImplCopyWith<$Res> {
  factory _$$OpenApiPathMethodResponseImplCopyWith(
          _$OpenApiPathMethodResponseImpl value,
          $Res Function(_$OpenApiPathMethodResponseImpl) then) =
      __$$OpenApiPathMethodResponseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpenApiPathMethodResponseImplCopyWithImpl<$Res>
    extends _$OpenApiPathMethodResponseCopyWithImpl<$Res,
        _$OpenApiPathMethodResponseImpl>
    implements _$$OpenApiPathMethodResponseImplCopyWith<$Res> {
  __$$OpenApiPathMethodResponseImplCopyWithImpl(
      _$OpenApiPathMethodResponseImpl _value,
      $Res Function(_$OpenApiPathMethodResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenApiPathMethodResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$OpenApiPathMethodResponseImpl implements _OpenApiPathMethodResponse {
  _$OpenApiPathMethodResponseImpl();

  factory _$OpenApiPathMethodResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiPathMethodResponseImplFromJson(json);

  @override
  String toString() {
    return 'OpenApiPathMethodResponse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiPathMethodResponseImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiPathMethodResponseImplToJson(
      this,
    );
  }
}

abstract class _OpenApiPathMethodResponse implements OpenApiPathMethodResponse {
  factory _OpenApiPathMethodResponse() = _$OpenApiPathMethodResponseImpl;

  factory _OpenApiPathMethodResponse.fromJson(Map<String, dynamic> json) =
      _$OpenApiPathMethodResponseImpl.fromJson;
}
