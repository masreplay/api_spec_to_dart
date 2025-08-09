// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_get_categories_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GenericGetCategoriesQueryParameters {
  /// page
  @JsonKey(name: GenericGetCategoriesQueryParameters.pageKey)
  int get page;

  /// perPage
  @JsonKey(name: GenericGetCategoriesQueryParameters.perPageKey)
  int get perPage;

  /// Create a copy of GenericGetCategoriesQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GenericGetCategoriesQueryParametersCopyWith<
          GenericGetCategoriesQueryParameters>
      get copyWith => _$GenericGetCategoriesQueryParametersCopyWithImpl<
              GenericGetCategoriesQueryParameters>(
          this as GenericGetCategoriesQueryParameters, _$identity);

  /// Serializes this GenericGetCategoriesQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenericGetCategoriesQueryParameters &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage);

  @override
  String toString() {
    return 'GenericGetCategoriesQueryParameters(page: $page, perPage: $perPage)';
  }
}

/// @nodoc
abstract mixin class $GenericGetCategoriesQueryParametersCopyWith<$Res> {
  factory $GenericGetCategoriesQueryParametersCopyWith(
          GenericGetCategoriesQueryParameters value,
          $Res Function(GenericGetCategoriesQueryParameters) _then) =
      _$GenericGetCategoriesQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: GenericGetCategoriesQueryParameters.pageKey) int page,
      @JsonKey(name: GenericGetCategoriesQueryParameters.perPageKey)
      int perPage});
}

/// @nodoc
class _$GenericGetCategoriesQueryParametersCopyWithImpl<$Res>
    implements $GenericGetCategoriesQueryParametersCopyWith<$Res> {
  _$GenericGetCategoriesQueryParametersCopyWithImpl(this._self, this._then);

  final GenericGetCategoriesQueryParameters _self;
  final $Res Function(GenericGetCategoriesQueryParameters) _then;

  /// Create a copy of GenericGetCategoriesQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_self.copyWith(
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [GenericGetCategoriesQueryParameters].
extension GenericGetCategoriesQueryParametersPatterns
    on GenericGetCategoriesQueryParameters {
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
    TResult Function(_GenericGetCategoriesQueryParameters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GenericGetCategoriesQueryParameters() when $default != null:
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
    TResult Function(_GenericGetCategoriesQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenericGetCategoriesQueryParameters():
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
    TResult? Function(_GenericGetCategoriesQueryParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenericGetCategoriesQueryParameters() when $default != null:
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
            @JsonKey(name: GenericGetCategoriesQueryParameters.pageKey)
            int page,
            @JsonKey(name: GenericGetCategoriesQueryParameters.perPageKey)
            int perPage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GenericGetCategoriesQueryParameters() when $default != null:
        return $default(_that.page, _that.perPage);
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
            @JsonKey(name: GenericGetCategoriesQueryParameters.pageKey)
            int page,
            @JsonKey(name: GenericGetCategoriesQueryParameters.perPageKey)
            int perPage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenericGetCategoriesQueryParameters():
        return $default(_that.page, _that.perPage);
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
            @JsonKey(name: GenericGetCategoriesQueryParameters.pageKey)
            int page,
            @JsonKey(name: GenericGetCategoriesQueryParameters.perPageKey)
            int perPage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenericGetCategoriesQueryParameters() when $default != null:
        return $default(_that.page, _that.perPage);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _GenericGetCategoriesQueryParameters
    extends GenericGetCategoriesQueryParameters {
  const _GenericGetCategoriesQueryParameters(
      {@JsonKey(name: GenericGetCategoriesQueryParameters.pageKey)
      this.page = 1,
      @JsonKey(name: GenericGetCategoriesQueryParameters.perPageKey)
      this.perPage = 10})
      : super._();
  factory _GenericGetCategoriesQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$GenericGetCategoriesQueryParametersFromJson(json);

  /// page
  @override
  @JsonKey(name: GenericGetCategoriesQueryParameters.pageKey)
  final int page;

  /// perPage
  @override
  @JsonKey(name: GenericGetCategoriesQueryParameters.perPageKey)
  final int perPage;

  /// Create a copy of GenericGetCategoriesQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GenericGetCategoriesQueryParametersCopyWith<
          _GenericGetCategoriesQueryParameters>
      get copyWith => __$GenericGetCategoriesQueryParametersCopyWithImpl<
          _GenericGetCategoriesQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GenericGetCategoriesQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenericGetCategoriesQueryParameters &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage);

  @override
  String toString() {
    return 'GenericGetCategoriesQueryParameters(page: $page, perPage: $perPage)';
  }
}

/// @nodoc
abstract mixin class _$GenericGetCategoriesQueryParametersCopyWith<$Res>
    implements $GenericGetCategoriesQueryParametersCopyWith<$Res> {
  factory _$GenericGetCategoriesQueryParametersCopyWith(
          _GenericGetCategoriesQueryParameters value,
          $Res Function(_GenericGetCategoriesQueryParameters) _then) =
      __$GenericGetCategoriesQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: GenericGetCategoriesQueryParameters.pageKey) int page,
      @JsonKey(name: GenericGetCategoriesQueryParameters.perPageKey)
      int perPage});
}

/// @nodoc
class __$GenericGetCategoriesQueryParametersCopyWithImpl<$Res>
    implements _$GenericGetCategoriesQueryParametersCopyWith<$Res> {
  __$GenericGetCategoriesQueryParametersCopyWithImpl(this._self, this._then);

  final _GenericGetCategoriesQueryParameters _self;
  final $Res Function(_GenericGetCategoriesQueryParameters) _then;

  /// Create a copy of GenericGetCategoriesQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_GenericGetCategoriesQueryParameters(
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
