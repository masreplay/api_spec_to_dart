// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryDto {
  /// id
  @JsonKey(name: CategoryDto.idKey_)
  String get id;

  /// name
  @JsonKey(name: CategoryDto.nameKey_)
  String get name;

  /// parentId
  @JsonKey(name: CategoryDto.parentIdKey_)
  String? get parentId;

  /// defaultMarkupPercentage
  @JsonKey(name: CategoryDto.defaultMarkupPercentageKey_)
  double? get defaultMarkupPercentage;

  /// children
  @JsonKey(name: CategoryDto.childrenKey_)
  List<CategoryDto> get children;

  /// Create a copy of CategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryDtoCopyWith<CategoryDto> get copyWith =>
      _$CategoryDtoCopyWithImpl<CategoryDto>(this as CategoryDto, _$identity);

  /// Serializes this CategoryDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(
                    other.defaultMarkupPercentage, defaultMarkupPercentage) ||
                other.defaultMarkupPercentage == defaultMarkupPercentage) &&
            const DeepCollectionEquality().equals(other.children, children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, parentId,
      defaultMarkupPercentage, const DeepCollectionEquality().hash(children));

  @override
  String toString() {
    return 'CategoryDto(id: $id, name: $name, parentId: $parentId, defaultMarkupPercentage: $defaultMarkupPercentage, children: $children)';
  }
}

/// @nodoc
abstract mixin class $CategoryDtoCopyWith<$Res> {
  factory $CategoryDtoCopyWith(
          CategoryDto value, $Res Function(CategoryDto) _then) =
      _$CategoryDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: CategoryDto.idKey_) String id,
      @JsonKey(name: CategoryDto.nameKey_) String name,
      @JsonKey(name: CategoryDto.parentIdKey_) String? parentId,
      @JsonKey(name: CategoryDto.defaultMarkupPercentageKey_)
      double? defaultMarkupPercentage,
      @JsonKey(name: CategoryDto.childrenKey_) List<CategoryDto> children});
}

/// @nodoc
class _$CategoryDtoCopyWithImpl<$Res> implements $CategoryDtoCopyWith<$Res> {
  _$CategoryDtoCopyWithImpl(this._self, this._then);

  final CategoryDto _self;
  final $Res Function(CategoryDto) _then;

  /// Create a copy of CategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? parentId = freezed,
    Object? defaultMarkupPercentage = freezed,
    Object? children = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      children: null == children
          ? _self.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<CategoryDto>,
    ));
  }
}

/// Adds pattern-matching-related methods to [CategoryDto].
extension CategoryDtoPatterns on CategoryDto {
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
    TResult Function(_CategoryDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryDto() when $default != null:
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
    TResult Function(_CategoryDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryDto():
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
    TResult? Function(_CategoryDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryDto() when $default != null:
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
            @JsonKey(name: CategoryDto.idKey_) String id,
            @JsonKey(name: CategoryDto.nameKey_) String name,
            @JsonKey(name: CategoryDto.parentIdKey_) String? parentId,
            @JsonKey(name: CategoryDto.defaultMarkupPercentageKey_)
            double? defaultMarkupPercentage,
            @JsonKey(name: CategoryDto.childrenKey_)
            List<CategoryDto> children)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryDto() when $default != null:
        return $default(_that.id, _that.name, _that.parentId,
            _that.defaultMarkupPercentage, _that.children);
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
            @JsonKey(name: CategoryDto.idKey_) String id,
            @JsonKey(name: CategoryDto.nameKey_) String name,
            @JsonKey(name: CategoryDto.parentIdKey_) String? parentId,
            @JsonKey(name: CategoryDto.defaultMarkupPercentageKey_)
            double? defaultMarkupPercentage,
            @JsonKey(name: CategoryDto.childrenKey_) List<CategoryDto> children)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryDto():
        return $default(_that.id, _that.name, _that.parentId,
            _that.defaultMarkupPercentage, _that.children);
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
            @JsonKey(name: CategoryDto.idKey_) String id,
            @JsonKey(name: CategoryDto.nameKey_) String name,
            @JsonKey(name: CategoryDto.parentIdKey_) String? parentId,
            @JsonKey(name: CategoryDto.defaultMarkupPercentageKey_)
            double? defaultMarkupPercentage,
            @JsonKey(name: CategoryDto.childrenKey_)
            List<CategoryDto> children)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryDto() when $default != null:
        return $default(_that.id, _that.name, _that.parentId,
            _that.defaultMarkupPercentage, _that.children);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _CategoryDto extends CategoryDto {
  const _CategoryDto(
      {@JsonKey(name: CategoryDto.idKey_) required this.id,
      @JsonKey(name: CategoryDto.nameKey_) required this.name,
      @JsonKey(name: CategoryDto.parentIdKey_) this.parentId,
      @JsonKey(name: CategoryDto.defaultMarkupPercentageKey_)
      this.defaultMarkupPercentage,
      @JsonKey(name: CategoryDto.childrenKey_)
      required final List<CategoryDto> children})
      : _children = children,
        super._();
  factory _CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);

  /// id
  @override
  @JsonKey(name: CategoryDto.idKey_)
  final String id;

  /// name
  @override
  @JsonKey(name: CategoryDto.nameKey_)
  final String name;

  /// parentId
  @override
  @JsonKey(name: CategoryDto.parentIdKey_)
  final String? parentId;

  /// defaultMarkupPercentage
  @override
  @JsonKey(name: CategoryDto.defaultMarkupPercentageKey_)
  final double? defaultMarkupPercentage;

  /// children
  final List<CategoryDto> _children;

  /// children
  @override
  @JsonKey(name: CategoryDto.childrenKey_)
  List<CategoryDto> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  /// Create a copy of CategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryDtoCopyWith<_CategoryDto> get copyWith =>
      __$CategoryDtoCopyWithImpl<_CategoryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(
                    other.defaultMarkupPercentage, defaultMarkupPercentage) ||
                other.defaultMarkupPercentage == defaultMarkupPercentage) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, parentId,
      defaultMarkupPercentage, const DeepCollectionEquality().hash(_children));

  @override
  String toString() {
    return 'CategoryDto(id: $id, name: $name, parentId: $parentId, defaultMarkupPercentage: $defaultMarkupPercentage, children: $children)';
  }
}

/// @nodoc
abstract mixin class _$CategoryDtoCopyWith<$Res>
    implements $CategoryDtoCopyWith<$Res> {
  factory _$CategoryDtoCopyWith(
          _CategoryDto value, $Res Function(_CategoryDto) _then) =
      __$CategoryDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CategoryDto.idKey_) String id,
      @JsonKey(name: CategoryDto.nameKey_) String name,
      @JsonKey(name: CategoryDto.parentIdKey_) String? parentId,
      @JsonKey(name: CategoryDto.defaultMarkupPercentageKey_)
      double? defaultMarkupPercentage,
      @JsonKey(name: CategoryDto.childrenKey_) List<CategoryDto> children});
}

/// @nodoc
class __$CategoryDtoCopyWithImpl<$Res> implements _$CategoryDtoCopyWith<$Res> {
  __$CategoryDtoCopyWithImpl(this._self, this._then);

  final _CategoryDto _self;
  final $Res Function(_CategoryDto) _then;

  /// Create a copy of CategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? parentId = freezed,
    Object? defaultMarkupPercentage = freezed,
    Object? children = null,
  }) {
    return _then(_CategoryDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      children: null == children
          ? _self._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<CategoryDto>,
    ));
  }
}
