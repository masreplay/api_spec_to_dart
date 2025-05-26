// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_basic_boolean_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BasicBasicBooleanQueryParameters {
  /// flag
  @JsonKey(name: BasicBasicBooleanQueryParameters.flagKey)
  bool get flag;

  /// Create a copy of BasicBasicBooleanQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BasicBasicBooleanQueryParametersCopyWith<BasicBasicBooleanQueryParameters>
  get copyWith => _$BasicBasicBooleanQueryParametersCopyWithImpl<
    BasicBasicBooleanQueryParameters
  >(this as BasicBasicBooleanQueryParameters, _$identity);

  /// Serializes this BasicBasicBooleanQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BasicBasicBooleanQueryParameters &&
            (identical(other.flag, flag) || other.flag == flag));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, flag);

  @override
  String toString() {
    return 'BasicBasicBooleanQueryParameters(flag: $flag)';
  }
}

/// @nodoc
abstract mixin class $BasicBasicBooleanQueryParametersCopyWith<$Res> {
  factory $BasicBasicBooleanQueryParametersCopyWith(
    BasicBasicBooleanQueryParameters value,
    $Res Function(BasicBasicBooleanQueryParameters) _then,
  ) = _$BasicBasicBooleanQueryParametersCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: BasicBasicBooleanQueryParameters.flagKey) bool flag,
  });
}

/// @nodoc
class _$BasicBasicBooleanQueryParametersCopyWithImpl<$Res>
    implements $BasicBasicBooleanQueryParametersCopyWith<$Res> {
  _$BasicBasicBooleanQueryParametersCopyWithImpl(this._self, this._then);

  final BasicBasicBooleanQueryParameters _self;
  final $Res Function(BasicBasicBooleanQueryParameters) _then;

  /// Create a copy of BasicBasicBooleanQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? flag = null}) {
    return _then(
      _self.copyWith(
        flag:
            null == flag
                ? _self.flag
                : flag // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

@jsonSerializable
class _BasicBasicBooleanQueryParameters
    extends BasicBasicBooleanQueryParameters {
  const _BasicBasicBooleanQueryParameters({
    @JsonKey(name: BasicBasicBooleanQueryParameters.flagKey) this.flag = false,
  }) : super._();
  factory _BasicBasicBooleanQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$BasicBasicBooleanQueryParametersFromJson(json);

  /// flag
  @override
  @JsonKey(name: BasicBasicBooleanQueryParameters.flagKey)
  final bool flag;

  /// Create a copy of BasicBasicBooleanQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BasicBasicBooleanQueryParametersCopyWith<_BasicBasicBooleanQueryParameters>
  get copyWith => __$BasicBasicBooleanQueryParametersCopyWithImpl<
    _BasicBasicBooleanQueryParameters
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BasicBasicBooleanQueryParametersToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BasicBasicBooleanQueryParameters &&
            (identical(other.flag, flag) || other.flag == flag));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, flag);

  @override
  String toString() {
    return 'BasicBasicBooleanQueryParameters(flag: $flag)';
  }
}

/// @nodoc
abstract mixin class _$BasicBasicBooleanQueryParametersCopyWith<$Res>
    implements $BasicBasicBooleanQueryParametersCopyWith<$Res> {
  factory _$BasicBasicBooleanQueryParametersCopyWith(
    _BasicBasicBooleanQueryParameters value,
    $Res Function(_BasicBasicBooleanQueryParameters) _then,
  ) = __$BasicBasicBooleanQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: BasicBasicBooleanQueryParameters.flagKey) bool flag,
  });
}

/// @nodoc
class __$BasicBasicBooleanQueryParametersCopyWithImpl<$Res>
    implements _$BasicBasicBooleanQueryParametersCopyWith<$Res> {
  __$BasicBasicBooleanQueryParametersCopyWithImpl(this._self, this._then);

  final _BasicBasicBooleanQueryParameters _self;
  final $Res Function(_BasicBasicBooleanQueryParameters) _then;

  /// Create a copy of BasicBasicBooleanQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? flag = null}) {
    return _then(
      _BasicBasicBooleanQueryParameters(
        flag:
            null == flag
                ? _self.flag
                : flag // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}
