// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_zone_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TimeZoneModel {
  /// timezone
  @JsonKey(name: TimeZoneModel.timezoneKey)
  String get timezone;

  /// Create a copy of TimeZoneModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TimeZoneModelCopyWith<TimeZoneModel> get copyWith =>
      _$TimeZoneModelCopyWithImpl<TimeZoneModel>(
          this as TimeZoneModel, _$identity);

  /// Serializes this TimeZoneModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TimeZoneModel &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timezone);

  @override
  String toString() {
    return 'TimeZoneModel(timezone: $timezone)';
  }
}

/// @nodoc
abstract mixin class $TimeZoneModelCopyWith<$Res> {
  factory $TimeZoneModelCopyWith(
          TimeZoneModel value, $Res Function(TimeZoneModel) _then) =
      _$TimeZoneModelCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: TimeZoneModel.timezoneKey) String timezone});
}

/// @nodoc
class _$TimeZoneModelCopyWithImpl<$Res>
    implements $TimeZoneModelCopyWith<$Res> {
  _$TimeZoneModelCopyWithImpl(this._self, this._then);

  final TimeZoneModel _self;
  final $Res Function(TimeZoneModel) _then;

  /// Create a copy of TimeZoneModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timezone = null,
  }) {
    return _then(_self.copyWith(
      timezone: null == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _TimeZoneModel extends TimeZoneModel {
  const _TimeZoneModel(
      {@JsonKey(name: TimeZoneModel.timezoneKey) required this.timezone})
      : super._();
  factory _TimeZoneModel.fromJson(Map<String, dynamic> json) =>
      _$TimeZoneModelFromJson(json);

  /// timezone
  @override
  @JsonKey(name: TimeZoneModel.timezoneKey)
  final String timezone;

  /// Create a copy of TimeZoneModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TimeZoneModelCopyWith<_TimeZoneModel> get copyWith =>
      __$TimeZoneModelCopyWithImpl<_TimeZoneModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TimeZoneModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimeZoneModel &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timezone);

  @override
  String toString() {
    return 'TimeZoneModel(timezone: $timezone)';
  }
}

/// @nodoc
abstract mixin class _$TimeZoneModelCopyWith<$Res>
    implements $TimeZoneModelCopyWith<$Res> {
  factory _$TimeZoneModelCopyWith(
          _TimeZoneModel value, $Res Function(_TimeZoneModel) _then) =
      __$TimeZoneModelCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: TimeZoneModel.timezoneKey) String timezone});
}

/// @nodoc
class __$TimeZoneModelCopyWithImpl<$Res>
    implements _$TimeZoneModelCopyWith<$Res> {
  __$TimeZoneModelCopyWithImpl(this._self, this._then);

  final _TimeZoneModel _self;
  final $Res Function(_TimeZoneModel) _then;

  /// Create a copy of TimeZoneModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? timezone = null,
  }) {
    return _then(_TimeZoneModel(
      timezone: null == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
