// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryResponse {
  /// id
  @JsonKey(name: CategoryResponse.idKey)
  int get id;

  /// name
  @JsonKey(name: CategoryResponse.nameKey)
  String get name;

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryResponseCopyWith<CategoryResponse> get copyWith =>
      _$CategoryResponseCopyWithImpl<CategoryResponse>(
          this as CategoryResponse, _$identity);

  /// Serializes this CategoryResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'CategoryResponse(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $CategoryResponseCopyWith<$Res> {
  factory $CategoryResponseCopyWith(
          CategoryResponse value, $Res Function(CategoryResponse) _then) =
      _$CategoryResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: CategoryResponse.idKey) int id,
      @JsonKey(name: CategoryResponse.nameKey) String name});
}

/// @nodoc
class _$CategoryResponseCopyWithImpl<$Res>
    implements $CategoryResponseCopyWith<$Res> {
  _$CategoryResponseCopyWithImpl(this._self, this._then);

  final CategoryResponse _self;
  final $Res Function(CategoryResponse) _then;

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [CategoryResponse].
extension CategoryResponsePatterns on CategoryResponse {
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
    TResult Function(_CategoryResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryResponse() when $default != null:
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
    TResult Function(_CategoryResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryResponse():
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
    TResult? Function(_CategoryResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryResponse() when $default != null:
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
    TResult Function(@JsonKey(name: CategoryResponse.idKey) int id,
            @JsonKey(name: CategoryResponse.nameKey) String name)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryResponse() when $default != null:
        return $default(_that.id, _that.name);
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
    TResult Function(@JsonKey(name: CategoryResponse.idKey) int id,
            @JsonKey(name: CategoryResponse.nameKey) String name)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryResponse():
        return $default(_that.id, _that.name);
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
    TResult? Function(@JsonKey(name: CategoryResponse.idKey) int id,
            @JsonKey(name: CategoryResponse.nameKey) String name)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryResponse() when $default != null:
        return $default(_that.id, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _CategoryResponse extends CategoryResponse {
  const _CategoryResponse(
      {@JsonKey(name: CategoryResponse.idKey) required this.id,
      @JsonKey(name: CategoryResponse.nameKey) required this.name})
      : super._();
  factory _CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);

  /// id
  @override
  @JsonKey(name: CategoryResponse.idKey)
  final int id;

  /// name
  @override
  @JsonKey(name: CategoryResponse.nameKey)
  final String name;

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryResponseCopyWith<_CategoryResponse> get copyWith =>
      __$CategoryResponseCopyWithImpl<_CategoryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'CategoryResponse(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$CategoryResponseCopyWith<$Res>
    implements $CategoryResponseCopyWith<$Res> {
  factory _$CategoryResponseCopyWith(
          _CategoryResponse value, $Res Function(_CategoryResponse) _then) =
      __$CategoryResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CategoryResponse.idKey) int id,
      @JsonKey(name: CategoryResponse.nameKey) String name});
}

/// @nodoc
class __$CategoryResponseCopyWithImpl<$Res>
    implements _$CategoryResponseCopyWith<$Res> {
  __$CategoryResponseCopyWithImpl(this._self, this._then);

  final _CategoryResponse _self;
  final $Res Function(_CategoryResponse) _then;

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_CategoryResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
