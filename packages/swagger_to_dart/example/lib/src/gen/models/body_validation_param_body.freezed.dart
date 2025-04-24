// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_validation_param_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BodyValidationParamBody {
  /// data, Arbitrary data object
  @JsonKey(name: BodyValidationParamBody.dataKey)
  Map<String, dynamic> get data;

  /// importance, Importance level from 0-10
  @JsonKey(name: BodyValidationParamBody.importanceKey)
  int get importance;

  /// Create a copy of BodyValidationParamBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BodyValidationParamBodyCopyWith<BodyValidationParamBody> get copyWith =>
      _$BodyValidationParamBodyCopyWithImpl<BodyValidationParamBody>(
          this as BodyValidationParamBody, _$identity);

  /// Serializes this BodyValidationParamBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BodyValidationParamBody &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.importance, importance) ||
                other.importance == importance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), importance);

  @override
  String toString() {
    return 'BodyValidationParamBody(data: $data, importance: $importance)';
  }
}

/// @nodoc
abstract mixin class $BodyValidationParamBodyCopyWith<$Res> {
  factory $BodyValidationParamBodyCopyWith(BodyValidationParamBody value,
          $Res Function(BodyValidationParamBody) _then) =
      _$BodyValidationParamBodyCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: BodyValidationParamBody.dataKey)
      Map<String, dynamic> data,
      @JsonKey(name: BodyValidationParamBody.importanceKey) int importance});
}

/// @nodoc
class _$BodyValidationParamBodyCopyWithImpl<$Res>
    implements $BodyValidationParamBodyCopyWith<$Res> {
  _$BodyValidationParamBodyCopyWithImpl(this._self, this._then);

  final BodyValidationParamBody _self;
  final $Res Function(BodyValidationParamBody) _then;

  /// Create a copy of BodyValidationParamBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? importance = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      importance: null == importance
          ? _self.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _BodyValidationParamBody extends BodyValidationParamBody {
  const _BodyValidationParamBody(
      {@JsonKey(name: BodyValidationParamBody.dataKey)
      required final Map<String, dynamic> data,
      @JsonKey(name: BodyValidationParamBody.importanceKey)
      required this.importance})
      : _data = data,
        super._();
  factory _BodyValidationParamBody.fromJson(Map<String, dynamic> json) =>
      _$BodyValidationParamBodyFromJson(json);

  /// data, Arbitrary data object
  final Map<String, dynamic> _data;

  /// data, Arbitrary data object
  @override
  @JsonKey(name: BodyValidationParamBody.dataKey)
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  /// importance, Importance level from 0-10
  @override
  @JsonKey(name: BodyValidationParamBody.importanceKey)
  final int importance;

  /// Create a copy of BodyValidationParamBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BodyValidationParamBodyCopyWith<_BodyValidationParamBody> get copyWith =>
      __$BodyValidationParamBodyCopyWithImpl<_BodyValidationParamBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BodyValidationParamBodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BodyValidationParamBody &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.importance, importance) ||
                other.importance == importance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), importance);

  @override
  String toString() {
    return 'BodyValidationParamBody(data: $data, importance: $importance)';
  }
}

/// @nodoc
abstract mixin class _$BodyValidationParamBodyCopyWith<$Res>
    implements $BodyValidationParamBodyCopyWith<$Res> {
  factory _$BodyValidationParamBodyCopyWith(_BodyValidationParamBody value,
          $Res Function(_BodyValidationParamBody) _then) =
      __$BodyValidationParamBodyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BodyValidationParamBody.dataKey)
      Map<String, dynamic> data,
      @JsonKey(name: BodyValidationParamBody.importanceKey) int importance});
}

/// @nodoc
class __$BodyValidationParamBodyCopyWithImpl<$Res>
    implements _$BodyValidationParamBodyCopyWith<$Res> {
  __$BodyValidationParamBodyCopyWithImpl(this._self, this._then);

  final _BodyValidationParamBody _self;
  final $Res Function(_BodyValidationParamBody) _then;

  /// Create a copy of BodyValidationParamBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? importance = null,
  }) {
    return _then(_BodyValidationParamBody(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      importance: null == importance
          ? _self.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
