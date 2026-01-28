// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_product_presentation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateProductPresentationDto {
  /// name
  @JsonKey(name: CreateProductPresentationDto.nameKey_)
  String get name;

  /// quantityMultiplier
  @JsonKey(name: CreateProductPresentationDto.quantityMultiplierKey_)
  int get quantityMultiplier;

  /// isDefault
  @JsonKey(name: CreateProductPresentationDto.isDefaultKey_)
  bool get isDefault;

  /// Create a copy of CreateProductPresentationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateProductPresentationDtoCopyWith<CreateProductPresentationDto>
      get copyWith => _$CreateProductPresentationDtoCopyWithImpl<
              CreateProductPresentationDto>(
          this as CreateProductPresentationDto, _$identity);

  /// Serializes this CreateProductPresentationDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateProductPresentationDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantityMultiplier, quantityMultiplier) ||
                other.quantityMultiplier == quantityMultiplier) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, quantityMultiplier, isDefault);

  @override
  String toString() {
    return 'CreateProductPresentationDto(name: $name, quantityMultiplier: $quantityMultiplier, isDefault: $isDefault)';
  }
}

/// @nodoc
abstract mixin class $CreateProductPresentationDtoCopyWith<$Res> {
  factory $CreateProductPresentationDtoCopyWith(
          CreateProductPresentationDto value,
          $Res Function(CreateProductPresentationDto) _then) =
      _$CreateProductPresentationDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: CreateProductPresentationDto.nameKey_) String name,
      @JsonKey(name: CreateProductPresentationDto.quantityMultiplierKey_)
      int quantityMultiplier,
      @JsonKey(name: CreateProductPresentationDto.isDefaultKey_)
      bool isDefault});
}

/// @nodoc
class _$CreateProductPresentationDtoCopyWithImpl<$Res>
    implements $CreateProductPresentationDtoCopyWith<$Res> {
  _$CreateProductPresentationDtoCopyWithImpl(this._self, this._then);

  final CreateProductPresentationDto _self;
  final $Res Function(CreateProductPresentationDto) _then;

  /// Create a copy of CreateProductPresentationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantityMultiplier = null,
    Object? isDefault = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantityMultiplier: null == quantityMultiplier
          ? _self.quantityMultiplier
          : quantityMultiplier // ignore: cast_nullable_to_non_nullable
              as int,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateProductPresentationDto].
extension CreateProductPresentationDtoPatterns on CreateProductPresentationDto {
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
    TResult Function(_CreateProductPresentationDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateProductPresentationDto() when $default != null:
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
    TResult Function(_CreateProductPresentationDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProductPresentationDto():
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
    TResult? Function(_CreateProductPresentationDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProductPresentationDto() when $default != null:
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
            @JsonKey(name: CreateProductPresentationDto.nameKey_) String name,
            @JsonKey(name: CreateProductPresentationDto.quantityMultiplierKey_)
            int quantityMultiplier,
            @JsonKey(name: CreateProductPresentationDto.isDefaultKey_)
            bool isDefault)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateProductPresentationDto() when $default != null:
        return $default(_that.name, _that.quantityMultiplier, _that.isDefault);
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
            @JsonKey(name: CreateProductPresentationDto.nameKey_) String name,
            @JsonKey(name: CreateProductPresentationDto.quantityMultiplierKey_)
            int quantityMultiplier,
            @JsonKey(name: CreateProductPresentationDto.isDefaultKey_)
            bool isDefault)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProductPresentationDto():
        return $default(_that.name, _that.quantityMultiplier, _that.isDefault);
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
            @JsonKey(name: CreateProductPresentationDto.nameKey_) String name,
            @JsonKey(name: CreateProductPresentationDto.quantityMultiplierKey_)
            int quantityMultiplier,
            @JsonKey(name: CreateProductPresentationDto.isDefaultKey_)
            bool isDefault)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProductPresentationDto() when $default != null:
        return $default(_that.name, _that.quantityMultiplier, _that.isDefault);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _CreateProductPresentationDto extends CreateProductPresentationDto {
  const _CreateProductPresentationDto(
      {@JsonKey(name: CreateProductPresentationDto.nameKey_) required this.name,
      @JsonKey(name: CreateProductPresentationDto.quantityMultiplierKey_)
      required this.quantityMultiplier,
      @JsonKey(name: CreateProductPresentationDto.isDefaultKey_)
      required this.isDefault})
      : super._();
  factory _CreateProductPresentationDto.fromJson(Map<String, dynamic> json) =>
      _$CreateProductPresentationDtoFromJson(json);

  /// name
  @override
  @JsonKey(name: CreateProductPresentationDto.nameKey_)
  final String name;

  /// quantityMultiplier
  @override
  @JsonKey(name: CreateProductPresentationDto.quantityMultiplierKey_)
  final int quantityMultiplier;

  /// isDefault
  @override
  @JsonKey(name: CreateProductPresentationDto.isDefaultKey_)
  final bool isDefault;

  /// Create a copy of CreateProductPresentationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateProductPresentationDtoCopyWith<_CreateProductPresentationDto>
      get copyWith => __$CreateProductPresentationDtoCopyWithImpl<
          _CreateProductPresentationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateProductPresentationDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateProductPresentationDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantityMultiplier, quantityMultiplier) ||
                other.quantityMultiplier == quantityMultiplier) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, quantityMultiplier, isDefault);

  @override
  String toString() {
    return 'CreateProductPresentationDto(name: $name, quantityMultiplier: $quantityMultiplier, isDefault: $isDefault)';
  }
}

/// @nodoc
abstract mixin class _$CreateProductPresentationDtoCopyWith<$Res>
    implements $CreateProductPresentationDtoCopyWith<$Res> {
  factory _$CreateProductPresentationDtoCopyWith(
          _CreateProductPresentationDto value,
          $Res Function(_CreateProductPresentationDto) _then) =
      __$CreateProductPresentationDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CreateProductPresentationDto.nameKey_) String name,
      @JsonKey(name: CreateProductPresentationDto.quantityMultiplierKey_)
      int quantityMultiplier,
      @JsonKey(name: CreateProductPresentationDto.isDefaultKey_)
      bool isDefault});
}

/// @nodoc
class __$CreateProductPresentationDtoCopyWithImpl<$Res>
    implements _$CreateProductPresentationDtoCopyWith<$Res> {
  __$CreateProductPresentationDtoCopyWithImpl(this._self, this._then);

  final _CreateProductPresentationDto _self;
  final $Res Function(_CreateProductPresentationDto) _then;

  /// Create a copy of CreateProductPresentationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? quantityMultiplier = null,
    Object? isDefault = null,
  }) {
    return _then(_CreateProductPresentationDto(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantityMultiplier: null == quantityMultiplier
          ? _self.quantityMultiplier
          : quantityMultiplier // ignore: cast_nullable_to_non_nullable
              as int,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}
