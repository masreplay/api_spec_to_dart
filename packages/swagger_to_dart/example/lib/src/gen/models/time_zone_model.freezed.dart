// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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
  @JsonKey(name: TimeZoneModel.timezoneKey_)
  Timezone get timezone;

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
  $Res call({@JsonKey(name: TimeZoneModel.timezoneKey_) Timezone timezone});
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
              as Timezone,
    ));
  }
}

/// Adds pattern-matching-related methods to [TimeZoneModel].
extension TimeZoneModelPatterns on TimeZoneModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TimeZoneModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TimeZoneModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TimeZoneModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TimeZoneModel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TimeZoneModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TimeZoneModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: TimeZoneModel.timezoneKey_) Timezone timezone)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TimeZoneModel() when $default != null:
        return $default(_that.timezone);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: TimeZoneModel.timezoneKey_) Timezone timezone)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TimeZoneModel():
        return $default(_that.timezone);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: TimeZoneModel.timezoneKey_) Timezone timezone)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TimeZoneModel() when $default != null:
        return $default(_that.timezone);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _TimeZoneModel extends TimeZoneModel {
  const _TimeZoneModel(
      {@JsonKey(name: TimeZoneModel.timezoneKey_) required this.timezone})
      : super._();
  factory _TimeZoneModel.fromJson(Map<String, dynamic> json) =>
      _$TimeZoneModelFromJson(json);

  /// timezone
  @override
  @JsonKey(name: TimeZoneModel.timezoneKey_)
  final Timezone timezone;

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
  $Res call({@JsonKey(name: TimeZoneModel.timezoneKey_) Timezone timezone});
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
              as Timezone,
    ));
  }
}
