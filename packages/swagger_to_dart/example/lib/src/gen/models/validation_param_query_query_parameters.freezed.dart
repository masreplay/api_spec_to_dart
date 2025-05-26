// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_param_query_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidationParamQueryQueryParameters {
  /// q
  @JsonKey(name: ValidationParamQueryQueryParameters.qKey)
  String? get q;

  /// skip
  @JsonKey(name: ValidationParamQueryQueryParameters.skipKey)
  int get skip;

  /// limit
  @JsonKey(name: ValidationParamQueryQueryParameters.limitKey)
  int get limit;

  /// Create a copy of ValidationParamQueryQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValidationParamQueryQueryParametersCopyWith<
    ValidationParamQueryQueryParameters
  >
  get copyWith => _$ValidationParamQueryQueryParametersCopyWithImpl<
    ValidationParamQueryQueryParameters
  >(this as ValidationParamQueryQueryParameters, _$identity);

  /// Serializes this ValidationParamQueryQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidationParamQueryQueryParameters &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, q, skip, limit);

  @override
  String toString() {
    return 'ValidationParamQueryQueryParameters(q: $q, skip: $skip, limit: $limit)';
  }
}

/// @nodoc
abstract mixin class $ValidationParamQueryQueryParametersCopyWith<$Res> {
  factory $ValidationParamQueryQueryParametersCopyWith(
    ValidationParamQueryQueryParameters value,
    $Res Function(ValidationParamQueryQueryParameters) _then,
  ) = _$ValidationParamQueryQueryParametersCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: ValidationParamQueryQueryParameters.qKey) String? q,
    @JsonKey(name: ValidationParamQueryQueryParameters.skipKey) int skip,
    @JsonKey(name: ValidationParamQueryQueryParameters.limitKey) int limit,
  });
}

/// @nodoc
class _$ValidationParamQueryQueryParametersCopyWithImpl<$Res>
    implements $ValidationParamQueryQueryParametersCopyWith<$Res> {
  _$ValidationParamQueryQueryParametersCopyWithImpl(this._self, this._then);

  final ValidationParamQueryQueryParameters _self;
  final $Res Function(ValidationParamQueryQueryParameters) _then;

  /// Create a copy of ValidationParamQueryQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? q = freezed, Object? skip = null, Object? limit = null}) {
    return _then(
      _self.copyWith(
        q:
            freezed == q
                ? _self.q
                : q // ignore: cast_nullable_to_non_nullable
                    as String?,
        skip:
            null == skip
                ? _self.skip
                : skip // ignore: cast_nullable_to_non_nullable
                    as int,
        limit:
            null == limit
                ? _self.limit
                : limit // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

@jsonSerializable
class _ValidationParamQueryQueryParameters
    extends ValidationParamQueryQueryParameters {
  const _ValidationParamQueryQueryParameters({
    @JsonKey(name: ValidationParamQueryQueryParameters.qKey) required this.q,
    @JsonKey(name: ValidationParamQueryQueryParameters.skipKey) this.skip = 0,
    @JsonKey(name: ValidationParamQueryQueryParameters.limitKey)
    this.limit = 10,
  }) : super._();
  factory _ValidationParamQueryQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$ValidationParamQueryQueryParametersFromJson(json);

  /// q
  @override
  @JsonKey(name: ValidationParamQueryQueryParameters.qKey)
  final String? q;

  /// skip
  @override
  @JsonKey(name: ValidationParamQueryQueryParameters.skipKey)
  final int skip;

  /// limit
  @override
  @JsonKey(name: ValidationParamQueryQueryParameters.limitKey)
  final int limit;

  /// Create a copy of ValidationParamQueryQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValidationParamQueryQueryParametersCopyWith<
    _ValidationParamQueryQueryParameters
  >
  get copyWith => __$ValidationParamQueryQueryParametersCopyWithImpl<
    _ValidationParamQueryQueryParameters
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ValidationParamQueryQueryParametersToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValidationParamQueryQueryParameters &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, q, skip, limit);

  @override
  String toString() {
    return 'ValidationParamQueryQueryParameters(q: $q, skip: $skip, limit: $limit)';
  }
}

/// @nodoc
abstract mixin class _$ValidationParamQueryQueryParametersCopyWith<$Res>
    implements $ValidationParamQueryQueryParametersCopyWith<$Res> {
  factory _$ValidationParamQueryQueryParametersCopyWith(
    _ValidationParamQueryQueryParameters value,
    $Res Function(_ValidationParamQueryQueryParameters) _then,
  ) = __$ValidationParamQueryQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: ValidationParamQueryQueryParameters.qKey) String? q,
    @JsonKey(name: ValidationParamQueryQueryParameters.skipKey) int skip,
    @JsonKey(name: ValidationParamQueryQueryParameters.limitKey) int limit,
  });
}

/// @nodoc
class __$ValidationParamQueryQueryParametersCopyWithImpl<$Res>
    implements _$ValidationParamQueryQueryParametersCopyWith<$Res> {
  __$ValidationParamQueryQueryParametersCopyWithImpl(this._self, this._then);

  final _ValidationParamQueryQueryParameters _self;
  final $Res Function(_ValidationParamQueryQueryParameters) _then;

  /// Create a copy of ValidationParamQueryQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? q = freezed, Object? skip = null, Object? limit = null}) {
    return _then(
      _ValidationParamQueryQueryParameters(
        q:
            freezed == q
                ? _self.q
                : q // ignore: cast_nullable_to_non_nullable
                    as String?,
        skip:
            null == skip
                ? _self.skip
                : skip // ignore: cast_nullable_to_non_nullable
                    as int,
        limit:
            null == limit
                ? _self.limit
                : limit // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}
