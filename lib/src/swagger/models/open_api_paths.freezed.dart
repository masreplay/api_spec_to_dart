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
      @JsonKey(name: 'parameters')
      List<OpenApiPathMethodParameter> parameters});
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
      @JsonKey(name: 'parameters')
      List<OpenApiPathMethodParameter> parameters});
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
      required final List<OpenApiPathMethodParameter> parameters})
      : _tags = tags,
        _parameters = parameters,
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

  @override
  String toString() {
    return 'OpenApiPathMethod(tags: $tags, summary: $summary, operationId: $operationId, parameters: $parameters)';
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
                .equals(other._parameters, _parameters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tags),
      summary,
      operationId,
      const DeepCollectionEquality().hash(_parameters));

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
          required final List<OpenApiPathMethodParameter> parameters}) =
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
  /// Serializes this OpenApiPathMethodParameter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenApiPathMethodParameterCopyWith<$Res> {
  factory $OpenApiPathMethodParameterCopyWith(OpenApiPathMethodParameter value,
          $Res Function(OpenApiPathMethodParameter) then) =
      _$OpenApiPathMethodParameterCopyWithImpl<$Res,
          OpenApiPathMethodParameter>;
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
}

/// @nodoc
abstract class _$$OpenApiPathMethodParameterImplCopyWith<$Res> {
  factory _$$OpenApiPathMethodParameterImplCopyWith(
          _$OpenApiPathMethodParameterImpl value,
          $Res Function(_$OpenApiPathMethodParameterImpl) then) =
      __$$OpenApiPathMethodParameterImplCopyWithImpl<$Res>;
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
}

/// @nodoc
@JsonSerializable()
class _$OpenApiPathMethodParameterImpl extends _OpenApiPathMethodParameter {
  const _$OpenApiPathMethodParameterImpl() : super._();

  factory _$OpenApiPathMethodParameterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OpenApiPathMethodParameterImplFromJson(json);

  @override
  String toString() {
    return 'OpenApiPathMethodParameter()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiPathMethodParameterImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiPathMethodParameterImplToJson(
      this,
    );
  }
}

abstract class _OpenApiPathMethodParameter extends OpenApiPathMethodParameter {
  const factory _OpenApiPathMethodParameter() =
      _$OpenApiPathMethodParameterImpl;
  const _OpenApiPathMethodParameter._() : super._();

  factory _OpenApiPathMethodParameter.fromJson(Map<String, dynamic> json) =
      _$OpenApiPathMethodParameterImpl.fromJson;
}
