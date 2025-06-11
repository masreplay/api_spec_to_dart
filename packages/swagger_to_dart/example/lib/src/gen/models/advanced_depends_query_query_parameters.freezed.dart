// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_depends_query_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedDependsQueryQueryParameters {
  /// q
  @JsonKey(name: AdvancedDependsQueryQueryParameters.qKey)
  String? get q;

  /// skip
  @JsonKey(name: AdvancedDependsQueryQueryParameters.skipKey)
  int get skip;

  /// limit
  @JsonKey(name: AdvancedDependsQueryQueryParameters.limitKey)
  int get limit;

  /// Create a copy of AdvancedDependsQueryQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedDependsQueryQueryParametersCopyWith<
          AdvancedDependsQueryQueryParameters>
      get copyWith => _$AdvancedDependsQueryQueryParametersCopyWithImpl<
              AdvancedDependsQueryQueryParameters>(
          this as AdvancedDependsQueryQueryParameters, _$identity);

  /// Serializes this AdvancedDependsQueryQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedDependsQueryQueryParameters &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, q, skip, limit);

  @override
  String toString() {
    return 'AdvancedDependsQueryQueryParameters(q: $q, skip: $skip, limit: $limit)';
  }
}

/// @nodoc
abstract mixin class $AdvancedDependsQueryQueryParametersCopyWith<$Res> {
  factory $AdvancedDependsQueryQueryParametersCopyWith(
          AdvancedDependsQueryQueryParameters value,
          $Res Function(AdvancedDependsQueryQueryParameters) _then) =
      _$AdvancedDependsQueryQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedDependsQueryQueryParameters.qKey) String? q,
      @JsonKey(name: AdvancedDependsQueryQueryParameters.skipKey) int skip,
      @JsonKey(name: AdvancedDependsQueryQueryParameters.limitKey) int limit});
}

/// @nodoc
class _$AdvancedDependsQueryQueryParametersCopyWithImpl<$Res>
    implements $AdvancedDependsQueryQueryParametersCopyWith<$Res> {
  _$AdvancedDependsQueryQueryParametersCopyWithImpl(this._self, this._then);

  final AdvancedDependsQueryQueryParameters _self;
  final $Res Function(AdvancedDependsQueryQueryParameters) _then;

  /// Create a copy of AdvancedDependsQueryQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = freezed,
    Object? skip = null,
    Object? limit = null,
  }) {
    return _then(_self.copyWith(
      q: freezed == q
          ? _self.q
          : q // ignore: cast_nullable_to_non_nullable
              as String?,
      skip: null == skip
          ? _self.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _AdvancedDependsQueryQueryParameters
    extends AdvancedDependsQueryQueryParameters {
  const _AdvancedDependsQueryQueryParameters(
      {@JsonKey(name: AdvancedDependsQueryQueryParameters.qKey) required this.q,
      @JsonKey(name: AdvancedDependsQueryQueryParameters.skipKey) this.skip = 0,
      @JsonKey(name: AdvancedDependsQueryQueryParameters.limitKey)
      this.limit = 100})
      : super._();
  factory _AdvancedDependsQueryQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$AdvancedDependsQueryQueryParametersFromJson(json);

  /// q
  @override
  @JsonKey(name: AdvancedDependsQueryQueryParameters.qKey)
  final String? q;

  /// skip
  @override
  @JsonKey(name: AdvancedDependsQueryQueryParameters.skipKey)
  final int skip;

  /// limit
  @override
  @JsonKey(name: AdvancedDependsQueryQueryParameters.limitKey)
  final int limit;

  /// Create a copy of AdvancedDependsQueryQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedDependsQueryQueryParametersCopyWith<
          _AdvancedDependsQueryQueryParameters>
      get copyWith => __$AdvancedDependsQueryQueryParametersCopyWithImpl<
          _AdvancedDependsQueryQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedDependsQueryQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedDependsQueryQueryParameters &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, q, skip, limit);

  @override
  String toString() {
    return 'AdvancedDependsQueryQueryParameters(q: $q, skip: $skip, limit: $limit)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedDependsQueryQueryParametersCopyWith<$Res>
    implements $AdvancedDependsQueryQueryParametersCopyWith<$Res> {
  factory _$AdvancedDependsQueryQueryParametersCopyWith(
          _AdvancedDependsQueryQueryParameters value,
          $Res Function(_AdvancedDependsQueryQueryParameters) _then) =
      __$AdvancedDependsQueryQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedDependsQueryQueryParameters.qKey) String? q,
      @JsonKey(name: AdvancedDependsQueryQueryParameters.skipKey) int skip,
      @JsonKey(name: AdvancedDependsQueryQueryParameters.limitKey) int limit});
}

/// @nodoc
class __$AdvancedDependsQueryQueryParametersCopyWithImpl<$Res>
    implements _$AdvancedDependsQueryQueryParametersCopyWith<$Res> {
  __$AdvancedDependsQueryQueryParametersCopyWithImpl(this._self, this._then);

  final _AdvancedDependsQueryQueryParameters _self;
  final $Res Function(_AdvancedDependsQueryQueryParameters) _then;

  /// Create a copy of AdvancedDependsQueryQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? q = freezed,
    Object? skip = null,
    Object? limit = null,
  }) {
    return _then(_AdvancedDependsQueryQueryParameters(
      q: freezed == q
          ? _self.q
          : q // ignore: cast_nullable_to_non_nullable
              as String?,
      skip: null == skip
          ? _self.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
