// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateCategoryDto {
  /// name
  @JsonKey(name: UpdateCategoryDto.nameKey_)
  String? get name;

  /// parentId
  @JsonKey(name: UpdateCategoryDto.parentIdKey_)
  String? get parentId;

  /// defaultMarkupPercentage
  @JsonKey(name: UpdateCategoryDto.defaultMarkupPercentageKey_)
  double? get defaultMarkupPercentage;

  /// Create a copy of UpdateCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateCategoryDtoCopyWith<UpdateCategoryDto> get copyWith =>
      _$UpdateCategoryDtoCopyWithImpl<UpdateCategoryDto>(
          this as UpdateCategoryDto, _$identity);

  /// Serializes this UpdateCategoryDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateCategoryDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(
                    other.defaultMarkupPercentage, defaultMarkupPercentage) ||
                other.defaultMarkupPercentage == defaultMarkupPercentage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, parentId, defaultMarkupPercentage);

  @override
  String toString() {
    return 'UpdateCategoryDto(name: $name, parentId: $parentId, defaultMarkupPercentage: $defaultMarkupPercentage)';
  }
}

/// @nodoc
abstract mixin class $UpdateCategoryDtoCopyWith<$Res> {
  factory $UpdateCategoryDtoCopyWith(
          UpdateCategoryDto value, $Res Function(UpdateCategoryDto) _then) =
      _$UpdateCategoryDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: UpdateCategoryDto.nameKey_) String? name,
      @JsonKey(name: UpdateCategoryDto.parentIdKey_) String? parentId,
      @JsonKey(name: UpdateCategoryDto.defaultMarkupPercentageKey_)
      double? defaultMarkupPercentage});
}

/// @nodoc
class _$UpdateCategoryDtoCopyWithImpl<$Res>
    implements $UpdateCategoryDtoCopyWith<$Res> {
  _$UpdateCategoryDtoCopyWithImpl(this._self, this._then);

  final UpdateCategoryDto _self;
  final $Res Function(UpdateCategoryDto) _then;

  /// Create a copy of UpdateCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? parentId = freezed,
    Object? defaultMarkupPercentage = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _self.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultMarkupPercentage: freezed == defaultMarkupPercentage
          ? _self.defaultMarkupPercentage
          : defaultMarkupPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateCategoryDto].
extension UpdateCategoryDtoPatterns on UpdateCategoryDto {
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
    TResult Function(_UpdateCategoryDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateCategoryDto() when $default != null:
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
    TResult Function(_UpdateCategoryDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateCategoryDto():
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
    TResult? Function(_UpdateCategoryDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateCategoryDto() when $default != null:
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
            @JsonKey(name: UpdateCategoryDto.nameKey_) String? name,
            @JsonKey(name: UpdateCategoryDto.parentIdKey_) String? parentId,
            @JsonKey(name: UpdateCategoryDto.defaultMarkupPercentageKey_)
            double? defaultMarkupPercentage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateCategoryDto() when $default != null:
        return $default(
            _that.name, _that.parentId, _that.defaultMarkupPercentage);
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
            @JsonKey(name: UpdateCategoryDto.nameKey_) String? name,
            @JsonKey(name: UpdateCategoryDto.parentIdKey_) String? parentId,
            @JsonKey(name: UpdateCategoryDto.defaultMarkupPercentageKey_)
            double? defaultMarkupPercentage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateCategoryDto():
        return $default(
            _that.name, _that.parentId, _that.defaultMarkupPercentage);
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
            @JsonKey(name: UpdateCategoryDto.nameKey_) String? name,
            @JsonKey(name: UpdateCategoryDto.parentIdKey_) String? parentId,
            @JsonKey(name: UpdateCategoryDto.defaultMarkupPercentageKey_)
            double? defaultMarkupPercentage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateCategoryDto() when $default != null:
        return $default(
            _that.name, _that.parentId, _that.defaultMarkupPercentage);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _UpdateCategoryDto extends UpdateCategoryDto {
  const _UpdateCategoryDto(
      {@JsonKey(name: UpdateCategoryDto.nameKey_) this.name,
      @JsonKey(name: UpdateCategoryDto.parentIdKey_) this.parentId,
      @JsonKey(name: UpdateCategoryDto.defaultMarkupPercentageKey_)
      this.defaultMarkupPercentage})
      : super._();
  factory _UpdateCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateCategoryDtoFromJson(json);

  /// name
  @override
  @JsonKey(name: UpdateCategoryDto.nameKey_)
  final String? name;

  /// parentId
  @override
  @JsonKey(name: UpdateCategoryDto.parentIdKey_)
  final String? parentId;

  /// defaultMarkupPercentage
  @override
  @JsonKey(name: UpdateCategoryDto.defaultMarkupPercentageKey_)
  final double? defaultMarkupPercentage;

  /// Create a copy of UpdateCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateCategoryDtoCopyWith<_UpdateCategoryDto> get copyWith =>
      __$UpdateCategoryDtoCopyWithImpl<_UpdateCategoryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateCategoryDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateCategoryDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(
                    other.defaultMarkupPercentage, defaultMarkupPercentage) ||
                other.defaultMarkupPercentage == defaultMarkupPercentage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, parentId, defaultMarkupPercentage);

  @override
  String toString() {
    return 'UpdateCategoryDto(name: $name, parentId: $parentId, defaultMarkupPercentage: $defaultMarkupPercentage)';
  }
}

/// @nodoc
abstract mixin class _$UpdateCategoryDtoCopyWith<$Res>
    implements $UpdateCategoryDtoCopyWith<$Res> {
  factory _$UpdateCategoryDtoCopyWith(
          _UpdateCategoryDto value, $Res Function(_UpdateCategoryDto) _then) =
      __$UpdateCategoryDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UpdateCategoryDto.nameKey_) String? name,
      @JsonKey(name: UpdateCategoryDto.parentIdKey_) String? parentId,
      @JsonKey(name: UpdateCategoryDto.defaultMarkupPercentageKey_)
      double? defaultMarkupPercentage});
}

/// @nodoc
class __$UpdateCategoryDtoCopyWithImpl<$Res>
    implements _$UpdateCategoryDtoCopyWith<$Res> {
  __$UpdateCategoryDtoCopyWithImpl(this._self, this._then);

  final _UpdateCategoryDto _self;
  final $Res Function(_UpdateCategoryDto) _then;

  /// Create a copy of UpdateCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? parentId = freezed,
    Object? defaultMarkupPercentage = freezed,
  }) {
    return _then(_UpdateCategoryDto(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _self.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultMarkupPercentage: freezed == defaultMarkupPercentage
          ? _self.defaultMarkupPercentage
          : defaultMarkupPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}
