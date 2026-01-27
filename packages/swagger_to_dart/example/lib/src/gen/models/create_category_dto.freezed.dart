// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateCategoryDto {
  /// name
  @JsonKey(name: CreateCategoryDto.nameKey_)
  String get name;

  /// parentId
  @JsonKey(name: CreateCategoryDto.parentIdKey_)
  String? get parentId;

  /// defaultMarkupPercentage
  @JsonKey(name: CreateCategoryDto.defaultMarkupPercentageKey_)
  double? get defaultMarkupPercentage;

  /// Create a copy of CreateCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateCategoryDtoCopyWith<CreateCategoryDto> get copyWith =>
      _$CreateCategoryDtoCopyWithImpl<CreateCategoryDto>(
          this as CreateCategoryDto, _$identity);

  /// Serializes this CreateCategoryDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateCategoryDto &&
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
    return 'CreateCategoryDto(name: $name, parentId: $parentId, defaultMarkupPercentage: $defaultMarkupPercentage)';
  }
}

/// @nodoc
abstract mixin class $CreateCategoryDtoCopyWith<$Res> {
  factory $CreateCategoryDtoCopyWith(
          CreateCategoryDto value, $Res Function(CreateCategoryDto) _then) =
      _$CreateCategoryDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: CreateCategoryDto.nameKey_) String name,
      @JsonKey(name: CreateCategoryDto.parentIdKey_) String? parentId,
      @JsonKey(name: CreateCategoryDto.defaultMarkupPercentageKey_)
      double? defaultMarkupPercentage});
}

/// @nodoc
class _$CreateCategoryDtoCopyWithImpl<$Res>
    implements $CreateCategoryDtoCopyWith<$Res> {
  _$CreateCategoryDtoCopyWithImpl(this._self, this._then);

  final CreateCategoryDto _self;
  final $Res Function(CreateCategoryDto) _then;

  /// Create a copy of CreateCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? parentId = freezed,
    Object? defaultMarkupPercentage = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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

/// Adds pattern-matching-related methods to [CreateCategoryDto].
extension CreateCategoryDtoPatterns on CreateCategoryDto {
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
    TResult Function(_CreateCategoryDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateCategoryDto() when $default != null:
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
    TResult Function(_CreateCategoryDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCategoryDto():
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
    TResult? Function(_CreateCategoryDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCategoryDto() when $default != null:
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
            @JsonKey(name: CreateCategoryDto.nameKey_) String name,
            @JsonKey(name: CreateCategoryDto.parentIdKey_) String? parentId,
            @JsonKey(name: CreateCategoryDto.defaultMarkupPercentageKey_)
            double? defaultMarkupPercentage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateCategoryDto() when $default != null:
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
            @JsonKey(name: CreateCategoryDto.nameKey_) String name,
            @JsonKey(name: CreateCategoryDto.parentIdKey_) String? parentId,
            @JsonKey(name: CreateCategoryDto.defaultMarkupPercentageKey_)
            double? defaultMarkupPercentage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCategoryDto():
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
            @JsonKey(name: CreateCategoryDto.nameKey_) String name,
            @JsonKey(name: CreateCategoryDto.parentIdKey_) String? parentId,
            @JsonKey(name: CreateCategoryDto.defaultMarkupPercentageKey_)
            double? defaultMarkupPercentage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCategoryDto() when $default != null:
        return $default(
            _that.name, _that.parentId, _that.defaultMarkupPercentage);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _CreateCategoryDto extends CreateCategoryDto {
  const _CreateCategoryDto(
      {@JsonKey(name: CreateCategoryDto.nameKey_) required this.name,
      @JsonKey(name: CreateCategoryDto.parentIdKey_) this.parentId,
      @JsonKey(name: CreateCategoryDto.defaultMarkupPercentageKey_)
      this.defaultMarkupPercentage})
      : super._();
  factory _CreateCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryDtoFromJson(json);

  /// name
  @override
  @JsonKey(name: CreateCategoryDto.nameKey_)
  final String name;

  /// parentId
  @override
  @JsonKey(name: CreateCategoryDto.parentIdKey_)
  final String? parentId;

  /// defaultMarkupPercentage
  @override
  @JsonKey(name: CreateCategoryDto.defaultMarkupPercentageKey_)
  final double? defaultMarkupPercentage;

  /// Create a copy of CreateCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateCategoryDtoCopyWith<_CreateCategoryDto> get copyWith =>
      __$CreateCategoryDtoCopyWithImpl<_CreateCategoryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateCategoryDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateCategoryDto &&
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
    return 'CreateCategoryDto(name: $name, parentId: $parentId, defaultMarkupPercentage: $defaultMarkupPercentage)';
  }
}

/// @nodoc
abstract mixin class _$CreateCategoryDtoCopyWith<$Res>
    implements $CreateCategoryDtoCopyWith<$Res> {
  factory _$CreateCategoryDtoCopyWith(
          _CreateCategoryDto value, $Res Function(_CreateCategoryDto) _then) =
      __$CreateCategoryDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CreateCategoryDto.nameKey_) String name,
      @JsonKey(name: CreateCategoryDto.parentIdKey_) String? parentId,
      @JsonKey(name: CreateCategoryDto.defaultMarkupPercentageKey_)
      double? defaultMarkupPercentage});
}

/// @nodoc
class __$CreateCategoryDtoCopyWithImpl<$Res>
    implements _$CreateCategoryDtoCopyWith<$Res> {
  __$CreateCategoryDtoCopyWithImpl(this._self, this._then);

  final _CreateCategoryDto _self;
  final $Res Function(_CreateCategoryDto) _then;

  /// Create a copy of CreateCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? parentId = freezed,
    Object? defaultMarkupPercentage = freezed,
  }) {
    return _then(_CreateCategoryDto(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
