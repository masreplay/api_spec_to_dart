// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_error_custom_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedErrorCustomQueryParameters {
  /// code
  @JsonKey(name: AdvancedErrorCustomQueryParameters.codeKey)
  int get code;

  /// Create a copy of AdvancedErrorCustomQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedErrorCustomQueryParametersCopyWith<
    AdvancedErrorCustomQueryParameters
  >
  get copyWith => _$AdvancedErrorCustomQueryParametersCopyWithImpl<
    AdvancedErrorCustomQueryParameters
  >(this as AdvancedErrorCustomQueryParameters, _$identity);

  /// Serializes this AdvancedErrorCustomQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedErrorCustomQueryParameters &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  @override
  String toString() {
    return 'AdvancedErrorCustomQueryParameters(code: $code)';
  }
}

/// @nodoc
abstract mixin class $AdvancedErrorCustomQueryParametersCopyWith<$Res> {
  factory $AdvancedErrorCustomQueryParametersCopyWith(
    AdvancedErrorCustomQueryParameters value,
    $Res Function(AdvancedErrorCustomQueryParameters) _then,
  ) = _$AdvancedErrorCustomQueryParametersCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: AdvancedErrorCustomQueryParameters.codeKey) int code,
  });
}

/// @nodoc
class _$AdvancedErrorCustomQueryParametersCopyWithImpl<$Res>
    implements $AdvancedErrorCustomQueryParametersCopyWith<$Res> {
  _$AdvancedErrorCustomQueryParametersCopyWithImpl(this._self, this._then);

  final AdvancedErrorCustomQueryParameters _self;
  final $Res Function(AdvancedErrorCustomQueryParameters) _then;

  /// Create a copy of AdvancedErrorCustomQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null}) {
    return _then(
      _self.copyWith(
        code:
            null == code
                ? _self.code
                : code // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

@jsonSerializable
class _AdvancedErrorCustomQueryParameters
    extends AdvancedErrorCustomQueryParameters {
  const _AdvancedErrorCustomQueryParameters({
    @JsonKey(name: AdvancedErrorCustomQueryParameters.codeKey)
    required this.code,
  }) : super._();
  factory _AdvancedErrorCustomQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$AdvancedErrorCustomQueryParametersFromJson(json);

  /// code
  @override
  @JsonKey(name: AdvancedErrorCustomQueryParameters.codeKey)
  final int code;

  /// Create a copy of AdvancedErrorCustomQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedErrorCustomQueryParametersCopyWith<
    _AdvancedErrorCustomQueryParameters
  >
  get copyWith => __$AdvancedErrorCustomQueryParametersCopyWithImpl<
    _AdvancedErrorCustomQueryParameters
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedErrorCustomQueryParametersToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedErrorCustomQueryParameters &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  @override
  String toString() {
    return 'AdvancedErrorCustomQueryParameters(code: $code)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedErrorCustomQueryParametersCopyWith<$Res>
    implements $AdvancedErrorCustomQueryParametersCopyWith<$Res> {
  factory _$AdvancedErrorCustomQueryParametersCopyWith(
    _AdvancedErrorCustomQueryParameters value,
    $Res Function(_AdvancedErrorCustomQueryParameters) _then,
  ) = __$AdvancedErrorCustomQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: AdvancedErrorCustomQueryParameters.codeKey) int code,
  });
}

/// @nodoc
class __$AdvancedErrorCustomQueryParametersCopyWithImpl<$Res>
    implements _$AdvancedErrorCustomQueryParametersCopyWith<$Res> {
  __$AdvancedErrorCustomQueryParametersCopyWithImpl(this._self, this._then);

  final _AdvancedErrorCustomQueryParameters _self;
  final $Res Function(_AdvancedErrorCustomQueryParameters) _then;

  /// Create a copy of AdvancedErrorCustomQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? code = null}) {
    return _then(
      _AdvancedErrorCustomQueryParameters(
        code:
            null == code
                ? _self.code
                : code // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}
