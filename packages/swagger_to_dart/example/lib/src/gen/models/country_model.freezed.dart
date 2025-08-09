// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CountryModel {
  /// alpha2
  @JsonKey(name: CountryModel.alpha2Key)
  String? get alpha2;

  /// alpha3
  @JsonKey(name: CountryModel.alpha3Key)
  String? get alpha3;

  /// numeric
  @JsonKey(name: CountryModel.numericKey)
  String? get numeric;

  /// shortName
  @JsonKey(name: CountryModel.shortNameKey)
  String? get shortName;

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CountryModelCopyWith<CountryModel> get copyWith =>
      _$CountryModelCopyWithImpl<CountryModel>(
          this as CountryModel, _$identity);

  /// Serializes this CountryModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CountryModel &&
            (identical(other.alpha2, alpha2) || other.alpha2 == alpha2) &&
            (identical(other.alpha3, alpha3) || other.alpha3 == alpha3) &&
            (identical(other.numeric, numeric) || other.numeric == numeric) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, alpha2, alpha3, numeric, shortName);

  @override
  String toString() {
    return 'CountryModel(alpha2: $alpha2, alpha3: $alpha3, numeric: $numeric, shortName: $shortName)';
  }
}

/// @nodoc
abstract mixin class $CountryModelCopyWith<$Res> {
  factory $CountryModelCopyWith(
          CountryModel value, $Res Function(CountryModel) _then) =
      _$CountryModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: CountryModel.alpha2Key) String? alpha2,
      @JsonKey(name: CountryModel.alpha3Key) String? alpha3,
      @JsonKey(name: CountryModel.numericKey) String? numeric,
      @JsonKey(name: CountryModel.shortNameKey) String? shortName});
}

/// @nodoc
class _$CountryModelCopyWithImpl<$Res> implements $CountryModelCopyWith<$Res> {
  _$CountryModelCopyWithImpl(this._self, this._then);

  final CountryModel _self;
  final $Res Function(CountryModel) _then;

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alpha2 = freezed,
    Object? alpha3 = freezed,
    Object? numeric = freezed,
    Object? shortName = freezed,
  }) {
    return _then(_self.copyWith(
      alpha2: freezed == alpha2
          ? _self.alpha2
          : alpha2 // ignore: cast_nullable_to_non_nullable
              as String?,
      alpha3: freezed == alpha3
          ? _self.alpha3
          : alpha3 // ignore: cast_nullable_to_non_nullable
              as String?,
      numeric: freezed == numeric
          ? _self.numeric
          : numeric // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: freezed == shortName
          ? _self.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CountryModel].
extension CountryModelPatterns on CountryModel {
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
    TResult Function(_CountryModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CountryModel() when $default != null:
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
    TResult Function(_CountryModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CountryModel():
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
    TResult? Function(_CountryModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CountryModel() when $default != null:
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
            @JsonKey(name: CountryModel.alpha2Key) String? alpha2,
            @JsonKey(name: CountryModel.alpha3Key) String? alpha3,
            @JsonKey(name: CountryModel.numericKey) String? numeric,
            @JsonKey(name: CountryModel.shortNameKey) String? shortName)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CountryModel() when $default != null:
        return $default(
            _that.alpha2, _that.alpha3, _that.numeric, _that.shortName);
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
            @JsonKey(name: CountryModel.alpha2Key) String? alpha2,
            @JsonKey(name: CountryModel.alpha3Key) String? alpha3,
            @JsonKey(name: CountryModel.numericKey) String? numeric,
            @JsonKey(name: CountryModel.shortNameKey) String? shortName)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CountryModel():
        return $default(
            _that.alpha2, _that.alpha3, _that.numeric, _that.shortName);
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
            @JsonKey(name: CountryModel.alpha2Key) String? alpha2,
            @JsonKey(name: CountryModel.alpha3Key) String? alpha3,
            @JsonKey(name: CountryModel.numericKey) String? numeric,
            @JsonKey(name: CountryModel.shortNameKey) String? shortName)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CountryModel() when $default != null:
        return $default(
            _that.alpha2, _that.alpha3, _that.numeric, _that.shortName);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _CountryModel extends CountryModel {
  const _CountryModel(
      {@JsonKey(name: CountryModel.alpha2Key) required this.alpha2,
      @JsonKey(name: CountryModel.alpha3Key) required this.alpha3,
      @JsonKey(name: CountryModel.numericKey) required this.numeric,
      @JsonKey(name: CountryModel.shortNameKey) required this.shortName})
      : super._();
  factory _CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);

  /// alpha2
  @override
  @JsonKey(name: CountryModel.alpha2Key)
  final String? alpha2;

  /// alpha3
  @override
  @JsonKey(name: CountryModel.alpha3Key)
  final String? alpha3;

  /// numeric
  @override
  @JsonKey(name: CountryModel.numericKey)
  final String? numeric;

  /// shortName
  @override
  @JsonKey(name: CountryModel.shortNameKey)
  final String? shortName;

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CountryModelCopyWith<_CountryModel> get copyWith =>
      __$CountryModelCopyWithImpl<_CountryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CountryModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CountryModel &&
            (identical(other.alpha2, alpha2) || other.alpha2 == alpha2) &&
            (identical(other.alpha3, alpha3) || other.alpha3 == alpha3) &&
            (identical(other.numeric, numeric) || other.numeric == numeric) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, alpha2, alpha3, numeric, shortName);

  @override
  String toString() {
    return 'CountryModel(alpha2: $alpha2, alpha3: $alpha3, numeric: $numeric, shortName: $shortName)';
  }
}

/// @nodoc
abstract mixin class _$CountryModelCopyWith<$Res>
    implements $CountryModelCopyWith<$Res> {
  factory _$CountryModelCopyWith(
          _CountryModel value, $Res Function(_CountryModel) _then) =
      __$CountryModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CountryModel.alpha2Key) String? alpha2,
      @JsonKey(name: CountryModel.alpha3Key) String? alpha3,
      @JsonKey(name: CountryModel.numericKey) String? numeric,
      @JsonKey(name: CountryModel.shortNameKey) String? shortName});
}

/// @nodoc
class __$CountryModelCopyWithImpl<$Res>
    implements _$CountryModelCopyWith<$Res> {
  __$CountryModelCopyWithImpl(this._self, this._then);

  final _CountryModel _self;
  final $Res Function(_CountryModel) _then;

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? alpha2 = freezed,
    Object? alpha3 = freezed,
    Object? numeric = freezed,
    Object? shortName = freezed,
  }) {
    return _then(_CountryModel(
      alpha2: freezed == alpha2
          ? _self.alpha2
          : alpha2 // ignore: cast_nullable_to_non_nullable
              as String?,
      alpha3: freezed == alpha3
          ? _self.alpha3
          : alpha3 // ignore: cast_nullable_to_non_nullable
              as String?,
      numeric: freezed == numeric
          ? _self.numeric
          : numeric // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: freezed == shortName
          ? _self.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}
