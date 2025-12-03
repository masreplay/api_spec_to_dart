// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_get_nested_base_and_pagination_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GenericGetNestedBaseAndPaginationQueryParameters {
  /// page
  @JsonKey(name: GenericGetNestedBaseAndPaginationQueryParameters.pageKey_)
  int get page;

  /// perPage
  @JsonKey(name: GenericGetNestedBaseAndPaginationQueryParameters.perPageKey_)
  int get perPage;

  /// Create a copy of GenericGetNestedBaseAndPaginationQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GenericGetNestedBaseAndPaginationQueryParametersCopyWith<
          GenericGetNestedBaseAndPaginationQueryParameters>
      get copyWith =>
          _$GenericGetNestedBaseAndPaginationQueryParametersCopyWithImpl<
                  GenericGetNestedBaseAndPaginationQueryParameters>(
              this as GenericGetNestedBaseAndPaginationQueryParameters,
              _$identity);

  /// Serializes this GenericGetNestedBaseAndPaginationQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenericGetNestedBaseAndPaginationQueryParameters &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage);

  @override
  String toString() {
    return 'GenericGetNestedBaseAndPaginationQueryParameters(page: $page, perPage: $perPage)';
  }
}

/// @nodoc
abstract mixin class $GenericGetNestedBaseAndPaginationQueryParametersCopyWith<
    $Res> {
  factory $GenericGetNestedBaseAndPaginationQueryParametersCopyWith(
          GenericGetNestedBaseAndPaginationQueryParameters value,
          $Res Function(GenericGetNestedBaseAndPaginationQueryParameters)
              _then) =
      _$GenericGetNestedBaseAndPaginationQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: GenericGetNestedBaseAndPaginationQueryParameters.pageKey_)
      int page,
      @JsonKey(
          name: GenericGetNestedBaseAndPaginationQueryParameters.perPageKey_)
      int perPage});
}

/// @nodoc
class _$GenericGetNestedBaseAndPaginationQueryParametersCopyWithImpl<$Res>
    implements $GenericGetNestedBaseAndPaginationQueryParametersCopyWith<$Res> {
  _$GenericGetNestedBaseAndPaginationQueryParametersCopyWithImpl(
      this._self, this._then);

  final GenericGetNestedBaseAndPaginationQueryParameters _self;
  final $Res Function(GenericGetNestedBaseAndPaginationQueryParameters) _then;

  /// Create a copy of GenericGetNestedBaseAndPaginationQueryParameters
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

/// Adds pattern-matching-related methods to [GenericGetNestedBaseAndPaginationQueryParameters].
extension GenericGetNestedBaseAndPaginationQueryParametersPatterns
    on GenericGetNestedBaseAndPaginationQueryParameters {
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
    TResult Function(_GenericGetNestedBaseAndPaginationQueryParameters value)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GenericGetNestedBaseAndPaginationQueryParameters()
          when $default != null:
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
    TResult Function(_GenericGetNestedBaseAndPaginationQueryParameters value)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenericGetNestedBaseAndPaginationQueryParameters():
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
    TResult? Function(_GenericGetNestedBaseAndPaginationQueryParameters value)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenericGetNestedBaseAndPaginationQueryParameters()
          when $default != null:
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
            @JsonKey(
                name: GenericGetNestedBaseAndPaginationQueryParameters.pageKey_)
            int page,
            @JsonKey(
                name: GenericGetNestedBaseAndPaginationQueryParameters
                    .perPageKey_)
            int perPage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GenericGetNestedBaseAndPaginationQueryParameters()
          when $default != null:
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
            @JsonKey(
                name: GenericGetNestedBaseAndPaginationQueryParameters.pageKey_)
            int page,
            @JsonKey(
                name: GenericGetNestedBaseAndPaginationQueryParameters
                    .perPageKey_)
            int perPage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenericGetNestedBaseAndPaginationQueryParameters():
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
            @JsonKey(
                name: GenericGetNestedBaseAndPaginationQueryParameters.pageKey_)
            int page,
            @JsonKey(
                name: GenericGetNestedBaseAndPaginationQueryParameters
                    .perPageKey_)
            int perPage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenericGetNestedBaseAndPaginationQueryParameters()
          when $default != null:
        return $default(_that.page, _that.perPage);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _GenericGetNestedBaseAndPaginationQueryParameters
    extends GenericGetNestedBaseAndPaginationQueryParameters {
  const _GenericGetNestedBaseAndPaginationQueryParameters(
      {@JsonKey(name: GenericGetNestedBaseAndPaginationQueryParameters.pageKey_)
      this.page = 1,
      @JsonKey(
          name: GenericGetNestedBaseAndPaginationQueryParameters.perPageKey_)
      this.perPage = 10})
      : super._();
  factory _GenericGetNestedBaseAndPaginationQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$GenericGetNestedBaseAndPaginationQueryParametersFromJson(json);

  /// page
  @override
  @JsonKey(name: GenericGetNestedBaseAndPaginationQueryParameters.pageKey_)
  final int page;

  /// perPage
  @override
  @JsonKey(name: GenericGetNestedBaseAndPaginationQueryParameters.perPageKey_)
  final int perPage;

  /// Create a copy of GenericGetNestedBaseAndPaginationQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GenericGetNestedBaseAndPaginationQueryParametersCopyWith<
          _GenericGetNestedBaseAndPaginationQueryParameters>
      get copyWith =>
          __$GenericGetNestedBaseAndPaginationQueryParametersCopyWithImpl<
                  _GenericGetNestedBaseAndPaginationQueryParameters>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GenericGetNestedBaseAndPaginationQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenericGetNestedBaseAndPaginationQueryParameters &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage);

  @override
  String toString() {
    return 'GenericGetNestedBaseAndPaginationQueryParameters(page: $page, perPage: $perPage)';
  }
}

/// @nodoc
abstract mixin class _$GenericGetNestedBaseAndPaginationQueryParametersCopyWith<
        $Res>
    implements $GenericGetNestedBaseAndPaginationQueryParametersCopyWith<$Res> {
  factory _$GenericGetNestedBaseAndPaginationQueryParametersCopyWith(
          _GenericGetNestedBaseAndPaginationQueryParameters value,
          $Res Function(_GenericGetNestedBaseAndPaginationQueryParameters)
              _then) =
      __$GenericGetNestedBaseAndPaginationQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: GenericGetNestedBaseAndPaginationQueryParameters.pageKey_)
      int page,
      @JsonKey(
          name: GenericGetNestedBaseAndPaginationQueryParameters.perPageKey_)
      int perPage});
}

/// @nodoc
class __$GenericGetNestedBaseAndPaginationQueryParametersCopyWithImpl<$Res>
    implements
        _$GenericGetNestedBaseAndPaginationQueryParametersCopyWith<$Res> {
  __$GenericGetNestedBaseAndPaginationQueryParametersCopyWithImpl(
      this._self, this._then);

  final _GenericGetNestedBaseAndPaginationQueryParameters _self;
  final $Res Function(_GenericGetNestedBaseAndPaginationQueryParameters) _then;

  /// Create a copy of GenericGetNestedBaseAndPaginationQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_GenericGetNestedBaseAndPaginationQueryParameters(
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
