// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coordinate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoordinateModel {
  /// coordinate
  @JsonKey(name: CoordinateModel.coordinateKey)
  dynamic get coordinate;

  /// latitude
  @JsonKey(name: CoordinateModel.latitudeKey)
  double? get latitude;

  /// longitude
  @JsonKey(name: CoordinateModel.longitudeKey)
  double? get longitude;

  /// Create a copy of CoordinateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoordinateModelCopyWith<CoordinateModel> get copyWith =>
      _$CoordinateModelCopyWithImpl<CoordinateModel>(
          this as CoordinateModel, _$identity);

  /// Serializes this CoordinateModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoordinateModel &&
            const DeepCollectionEquality()
                .equals(other.coordinate, coordinate) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(coordinate), latitude, longitude);

  @override
  String toString() {
    return 'CoordinateModel(coordinate: $coordinate, latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class $CoordinateModelCopyWith<$Res> {
  factory $CoordinateModelCopyWith(
          CoordinateModel value, $Res Function(CoordinateModel) _then) =
      _$CoordinateModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: CoordinateModel.coordinateKey) dynamic coordinate,
      @JsonKey(name: CoordinateModel.latitudeKey) double? latitude,
      @JsonKey(name: CoordinateModel.longitudeKey) double? longitude});
}

/// @nodoc
class _$CoordinateModelCopyWithImpl<$Res>
    implements $CoordinateModelCopyWith<$Res> {
  _$CoordinateModelCopyWithImpl(this._self, this._then);

  final CoordinateModel _self;
  final $Res Function(CoordinateModel) _then;

  /// Create a copy of CoordinateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinate = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_self.copyWith(
      coordinate: freezed == coordinate
          ? _self.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CoordinateModel].
extension CoordinateModelPatterns on CoordinateModel {
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
    TResult Function(_CoordinateModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CoordinateModel() when $default != null:
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
    TResult Function(_CoordinateModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoordinateModel():
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
    TResult? Function(_CoordinateModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoordinateModel() when $default != null:
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
            @JsonKey(name: CoordinateModel.coordinateKey) dynamic coordinate,
            @JsonKey(name: CoordinateModel.latitudeKey) double? latitude,
            @JsonKey(name: CoordinateModel.longitudeKey) double? longitude)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CoordinateModel() when $default != null:
        return $default(_that.coordinate, _that.latitude, _that.longitude);
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
            @JsonKey(name: CoordinateModel.coordinateKey) dynamic coordinate,
            @JsonKey(name: CoordinateModel.latitudeKey) double? latitude,
            @JsonKey(name: CoordinateModel.longitudeKey) double? longitude)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoordinateModel():
        return $default(_that.coordinate, _that.latitude, _that.longitude);
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
            @JsonKey(name: CoordinateModel.coordinateKey) dynamic coordinate,
            @JsonKey(name: CoordinateModel.latitudeKey) double? latitude,
            @JsonKey(name: CoordinateModel.longitudeKey) double? longitude)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoordinateModel() when $default != null:
        return $default(_that.coordinate, _that.latitude, _that.longitude);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _CoordinateModel extends CoordinateModel {
  const _CoordinateModel(
      {@JsonKey(name: CoordinateModel.coordinateKey) required this.coordinate,
      @JsonKey(name: CoordinateModel.latitudeKey) required this.latitude,
      @JsonKey(name: CoordinateModel.longitudeKey) required this.longitude})
      : super._();
  factory _CoordinateModel.fromJson(Map<String, dynamic> json) =>
      _$CoordinateModelFromJson(json);

  /// coordinate
  @override
  @JsonKey(name: CoordinateModel.coordinateKey)
  final dynamic coordinate;

  /// latitude
  @override
  @JsonKey(name: CoordinateModel.latitudeKey)
  final double? latitude;

  /// longitude
  @override
  @JsonKey(name: CoordinateModel.longitudeKey)
  final double? longitude;

  /// Create a copy of CoordinateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CoordinateModelCopyWith<_CoordinateModel> get copyWith =>
      __$CoordinateModelCopyWithImpl<_CoordinateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CoordinateModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoordinateModel &&
            const DeepCollectionEquality()
                .equals(other.coordinate, coordinate) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(coordinate), latitude, longitude);

  @override
  String toString() {
    return 'CoordinateModel(coordinate: $coordinate, latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class _$CoordinateModelCopyWith<$Res>
    implements $CoordinateModelCopyWith<$Res> {
  factory _$CoordinateModelCopyWith(
          _CoordinateModel value, $Res Function(_CoordinateModel) _then) =
      __$CoordinateModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CoordinateModel.coordinateKey) dynamic coordinate,
      @JsonKey(name: CoordinateModel.latitudeKey) double? latitude,
      @JsonKey(name: CoordinateModel.longitudeKey) double? longitude});
}

/// @nodoc
class __$CoordinateModelCopyWithImpl<$Res>
    implements _$CoordinateModelCopyWith<$Res> {
  __$CoordinateModelCopyWithImpl(this._self, this._then);

  final _CoordinateModel _self;
  final $Res Function(_CoordinateModel) _then;

  /// Create a copy of CoordinateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? coordinate = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_CoordinateModel(
      coordinate: freezed == coordinate
          ? _self.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}
