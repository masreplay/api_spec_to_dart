// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LanguageModel {
  /// alpha2
  @JsonKey(name: LanguageModel.alpha2Key_)
  String? get alpha2;

  /// name
  @JsonKey(name: LanguageModel.nameKey_)
  String? get name;

  /// iso6393
  @JsonKey(name: LanguageModel.iso6393Key_)
  Iso6393? get iso6393;

  /// iso6395
  @JsonKey(name: LanguageModel.iso6395Key_)
  Iso6395? get iso6395;

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LanguageModelCopyWith<LanguageModel> get copyWith =>
      _$LanguageModelCopyWithImpl<LanguageModel>(
          this as LanguageModel, _$identity);

  /// Serializes this LanguageModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LanguageModel &&
            (identical(other.alpha2, alpha2) || other.alpha2 == alpha2) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iso6393, iso6393) || other.iso6393 == iso6393) &&
            (identical(other.iso6395, iso6395) || other.iso6395 == iso6395));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, alpha2, name, iso6393, iso6395);

  @override
  String toString() {
    return 'LanguageModel(alpha2: $alpha2, name: $name, iso6393: $iso6393, iso6395: $iso6395)';
  }
}

/// @nodoc
abstract mixin class $LanguageModelCopyWith<$Res> {
  factory $LanguageModelCopyWith(
          LanguageModel value, $Res Function(LanguageModel) _then) =
      _$LanguageModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: LanguageModel.alpha2Key_) String? alpha2,
      @JsonKey(name: LanguageModel.nameKey_) String? name,
      @JsonKey(name: LanguageModel.iso6393Key_) Iso6393? iso6393,
      @JsonKey(name: LanguageModel.iso6395Key_) Iso6395? iso6395});
}

/// @nodoc
class _$LanguageModelCopyWithImpl<$Res>
    implements $LanguageModelCopyWith<$Res> {
  _$LanguageModelCopyWithImpl(this._self, this._then);

  final LanguageModel _self;
  final $Res Function(LanguageModel) _then;

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alpha2 = freezed,
    Object? name = freezed,
    Object? iso6393 = freezed,
    Object? iso6395 = freezed,
  }) {
    return _then(_self.copyWith(
      alpha2: freezed == alpha2
          ? _self.alpha2
          : alpha2 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      iso6393: freezed == iso6393
          ? _self.iso6393
          : iso6393 // ignore: cast_nullable_to_non_nullable
              as Iso6393?,
      iso6395: freezed == iso6395
          ? _self.iso6395
          : iso6395 // ignore: cast_nullable_to_non_nullable
              as Iso6395?,
    ));
  }
}

/// Adds pattern-matching-related methods to [LanguageModel].
extension LanguageModelPatterns on LanguageModel {
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
    TResult Function(_LanguageModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LanguageModel() when $default != null:
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
    TResult Function(_LanguageModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LanguageModel():
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
    TResult? Function(_LanguageModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LanguageModel() when $default != null:
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
            @JsonKey(name: LanguageModel.alpha2Key_) String? alpha2,
            @JsonKey(name: LanguageModel.nameKey_) String? name,
            @JsonKey(name: LanguageModel.iso6393Key_) Iso6393? iso6393,
            @JsonKey(name: LanguageModel.iso6395Key_) Iso6395? iso6395)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LanguageModel() when $default != null:
        return $default(_that.alpha2, _that.name, _that.iso6393, _that.iso6395);
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
            @JsonKey(name: LanguageModel.alpha2Key_) String? alpha2,
            @JsonKey(name: LanguageModel.nameKey_) String? name,
            @JsonKey(name: LanguageModel.iso6393Key_) Iso6393? iso6393,
            @JsonKey(name: LanguageModel.iso6395Key_) Iso6395? iso6395)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LanguageModel():
        return $default(_that.alpha2, _that.name, _that.iso6393, _that.iso6395);
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
            @JsonKey(name: LanguageModel.alpha2Key_) String? alpha2,
            @JsonKey(name: LanguageModel.nameKey_) String? name,
            @JsonKey(name: LanguageModel.iso6393Key_) Iso6393? iso6393,
            @JsonKey(name: LanguageModel.iso6395Key_) Iso6395? iso6395)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LanguageModel() when $default != null:
        return $default(_that.alpha2, _that.name, _that.iso6393, _that.iso6395);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _LanguageModel extends LanguageModel {
  const _LanguageModel(
      {@JsonKey(name: LanguageModel.alpha2Key_) this.alpha2,
      @JsonKey(name: LanguageModel.nameKey_) this.name,
      @JsonKey(name: LanguageModel.iso6393Key_) this.iso6393,
      @JsonKey(name: LanguageModel.iso6395Key_) this.iso6395})
      : super._();
  factory _LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);

  /// alpha2
  @override
  @JsonKey(name: LanguageModel.alpha2Key_)
  final String? alpha2;

  /// name
  @override
  @JsonKey(name: LanguageModel.nameKey_)
  final String? name;

  /// iso6393
  @override
  @JsonKey(name: LanguageModel.iso6393Key_)
  final Iso6393? iso6393;

  /// iso6395
  @override
  @JsonKey(name: LanguageModel.iso6395Key_)
  final Iso6395? iso6395;

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LanguageModelCopyWith<_LanguageModel> get copyWith =>
      __$LanguageModelCopyWithImpl<_LanguageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LanguageModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LanguageModel &&
            (identical(other.alpha2, alpha2) || other.alpha2 == alpha2) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iso6393, iso6393) || other.iso6393 == iso6393) &&
            (identical(other.iso6395, iso6395) || other.iso6395 == iso6395));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, alpha2, name, iso6393, iso6395);

  @override
  String toString() {
    return 'LanguageModel(alpha2: $alpha2, name: $name, iso6393: $iso6393, iso6395: $iso6395)';
  }
}

/// @nodoc
abstract mixin class _$LanguageModelCopyWith<$Res>
    implements $LanguageModelCopyWith<$Res> {
  factory _$LanguageModelCopyWith(
          _LanguageModel value, $Res Function(_LanguageModel) _then) =
      __$LanguageModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: LanguageModel.alpha2Key_) String? alpha2,
      @JsonKey(name: LanguageModel.nameKey_) String? name,
      @JsonKey(name: LanguageModel.iso6393Key_) Iso6393? iso6393,
      @JsonKey(name: LanguageModel.iso6395Key_) Iso6395? iso6395});
}

/// @nodoc
class __$LanguageModelCopyWithImpl<$Res>
    implements _$LanguageModelCopyWith<$Res> {
  __$LanguageModelCopyWithImpl(this._self, this._then);

  final _LanguageModel _self;
  final $Res Function(_LanguageModel) _then;

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? alpha2 = freezed,
    Object? name = freezed,
    Object? iso6393 = freezed,
    Object? iso6395 = freezed,
  }) {
    return _then(_LanguageModel(
      alpha2: freezed == alpha2
          ? _self.alpha2
          : alpha2 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      iso6393: freezed == iso6393
          ? _self.iso6393
          : iso6393 // ignore: cast_nullable_to_non_nullable
              as Iso6393?,
      iso6395: freezed == iso6395
          ? _self.iso6395
          : iso6395 // ignore: cast_nullable_to_non_nullable
              as Iso6395?,
    ));
  }
}
