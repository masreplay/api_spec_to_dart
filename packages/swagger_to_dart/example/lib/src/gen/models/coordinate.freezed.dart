// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coordinate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Coordinate {
  /// latitude
  @JsonKey(name: Coordinate.latitudeKey)
  double get latitude;

  /// longitude
  @JsonKey(name: Coordinate.longitudeKey)
  double get longitude;

  /// Create a copy of Coordinate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<Coordinate> get copyWith =>
      _$CoordinateCopyWithImpl<Coordinate>(this as Coordinate, _$identity);

  /// Serializes this Coordinate to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Coordinate &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @override
  String toString() {
    return 'Coordinate(latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class $CoordinateCopyWith<$Res> {
  factory $CoordinateCopyWith(
          Coordinate value, $Res Function(Coordinate) _then) =
      _$CoordinateCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: Coordinate.latitudeKey) double latitude,
      @JsonKey(name: Coordinate.longitudeKey) double longitude});
}

/// @nodoc
class _$CoordinateCopyWithImpl<$Res> implements $CoordinateCopyWith<$Res> {
  _$CoordinateCopyWithImpl(this._self, this._then);

  final Coordinate _self;
  final $Res Function(Coordinate) _then;

  /// Create a copy of Coordinate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_self.copyWith(
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [Coordinate].
extension CoordinatePatterns on Coordinate {
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
    TResult Function(_Coordinate value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Coordinate() when $default != null:
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
    TResult Function(_Coordinate value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Coordinate():
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
    TResult? Function(_Coordinate value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Coordinate() when $default != null:
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
    TResult Function(@JsonKey(name: Coordinate.latitudeKey) double latitude,
            @JsonKey(name: Coordinate.longitudeKey) double longitude)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Coordinate() when $default != null:
        return $default(_that.latitude, _that.longitude);
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
    TResult Function(@JsonKey(name: Coordinate.latitudeKey) double latitude,
            @JsonKey(name: Coordinate.longitudeKey) double longitude)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Coordinate():
        return $default(_that.latitude, _that.longitude);
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
    TResult? Function(@JsonKey(name: Coordinate.latitudeKey) double latitude,
            @JsonKey(name: Coordinate.longitudeKey) double longitude)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Coordinate() when $default != null:
        return $default(_that.latitude, _that.longitude);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _Coordinate extends Coordinate {
  const _Coordinate(
      {@JsonKey(name: Coordinate.latitudeKey) required this.latitude,
      @JsonKey(name: Coordinate.longitudeKey) required this.longitude})
      : super._();
  factory _Coordinate.fromJson(Map<String, dynamic> json) =>
      _$CoordinateFromJson(json);

  /// latitude
  @override
  @JsonKey(name: Coordinate.latitudeKey)
  final double latitude;

  /// longitude
  @override
  @JsonKey(name: Coordinate.longitudeKey)
  final double longitude;

  /// Create a copy of Coordinate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CoordinateCopyWith<_Coordinate> get copyWith =>
      __$CoordinateCopyWithImpl<_Coordinate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CoordinateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Coordinate &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @override
  String toString() {
    return 'Coordinate(latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class _$CoordinateCopyWith<$Res>
    implements $CoordinateCopyWith<$Res> {
  factory _$CoordinateCopyWith(
          _Coordinate value, $Res Function(_Coordinate) _then) =
      __$CoordinateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: Coordinate.latitudeKey) double latitude,
      @JsonKey(name: Coordinate.longitudeKey) double longitude});
}

/// @nodoc
class __$CoordinateCopyWithImpl<$Res> implements _$CoordinateCopyWith<$Res> {
  __$CoordinateCopyWithImpl(this._self, this._then);

  final _Coordinate _self;
  final $Res Function(_Coordinate) _then;

  /// Create a copy of Coordinate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_Coordinate(
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}
