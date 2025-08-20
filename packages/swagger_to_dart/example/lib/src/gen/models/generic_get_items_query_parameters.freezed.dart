// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_get_items_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GenericGetItemsQueryParameters {
  /// page
  @JsonKey(name: GenericGetItemsQueryParameters.pageKey)
  int get page;

  /// perPage
  @JsonKey(name: GenericGetItemsQueryParameters.perPageKey)
  int get perPage;

  /// Create a copy of GenericGetItemsQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GenericGetItemsQueryParametersCopyWith<GenericGetItemsQueryParameters>
      get copyWith => _$GenericGetItemsQueryParametersCopyWithImpl<
              GenericGetItemsQueryParameters>(
          this as GenericGetItemsQueryParameters, _$identity);

  /// Serializes this GenericGetItemsQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenericGetItemsQueryParameters &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage);

  @override
  String toString() {
    return 'GenericGetItemsQueryParameters(page: $page, perPage: $perPage)';
  }
}

/// @nodoc
abstract mixin class $GenericGetItemsQueryParametersCopyWith<$Res> {
  factory $GenericGetItemsQueryParametersCopyWith(
          GenericGetItemsQueryParameters value,
          $Res Function(GenericGetItemsQueryParameters) _then) =
      _$GenericGetItemsQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: GenericGetItemsQueryParameters.pageKey) int page,
      @JsonKey(name: GenericGetItemsQueryParameters.perPageKey) int perPage});
}

/// @nodoc
class _$GenericGetItemsQueryParametersCopyWithImpl<$Res>
    implements $GenericGetItemsQueryParametersCopyWith<$Res> {
  _$GenericGetItemsQueryParametersCopyWithImpl(this._self, this._then);

  final GenericGetItemsQueryParameters _self;
  final $Res Function(GenericGetItemsQueryParameters) _then;

  /// Create a copy of GenericGetItemsQueryParameters
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

/// Adds pattern-matching-related methods to [GenericGetItemsQueryParameters].
extension GenericGetItemsQueryParametersPatterns
    on GenericGetItemsQueryParameters {
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
    TResult Function(_GenericGetItemsQueryParameters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GenericGetItemsQueryParameters() when $default != null:
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
    TResult Function(_GenericGetItemsQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenericGetItemsQueryParameters():
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
    TResult? Function(_GenericGetItemsQueryParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenericGetItemsQueryParameters() when $default != null:
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
            @JsonKey(name: GenericGetItemsQueryParameters.pageKey) int page,
            @JsonKey(name: GenericGetItemsQueryParameters.perPageKey)
            int perPage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GenericGetItemsQueryParameters() when $default != null:
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
            @JsonKey(name: GenericGetItemsQueryParameters.pageKey) int page,
            @JsonKey(name: GenericGetItemsQueryParameters.perPageKey)
            int perPage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenericGetItemsQueryParameters():
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
            @JsonKey(name: GenericGetItemsQueryParameters.pageKey) int page,
            @JsonKey(name: GenericGetItemsQueryParameters.perPageKey)
            int perPage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenericGetItemsQueryParameters() when $default != null:
        return $default(_that.page, _that.perPage);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _GenericGetItemsQueryParameters extends GenericGetItemsQueryParameters {
  const _GenericGetItemsQueryParameters(
      {@JsonKey(name: GenericGetItemsQueryParameters.pageKey) this.page = 1,
      @JsonKey(name: GenericGetItemsQueryParameters.perPageKey)
      this.perPage = 10})
      : super._();
  factory _GenericGetItemsQueryParameters.fromJson(Map<String, dynamic> json) =>
      _$GenericGetItemsQueryParametersFromJson(json);

  /// page
  @override
  @JsonKey(name: GenericGetItemsQueryParameters.pageKey)
  final int page;

  /// perPage
  @override
  @JsonKey(name: GenericGetItemsQueryParameters.perPageKey)
  final int perPage;

  /// Create a copy of GenericGetItemsQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GenericGetItemsQueryParametersCopyWith<_GenericGetItemsQueryParameters>
      get copyWith => __$GenericGetItemsQueryParametersCopyWithImpl<
          _GenericGetItemsQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GenericGetItemsQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenericGetItemsQueryParameters &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage);

  @override
  String toString() {
    return 'GenericGetItemsQueryParameters(page: $page, perPage: $perPage)';
  }
}

/// @nodoc
abstract mixin class _$GenericGetItemsQueryParametersCopyWith<$Res>
    implements $GenericGetItemsQueryParametersCopyWith<$Res> {
  factory _$GenericGetItemsQueryParametersCopyWith(
          _GenericGetItemsQueryParameters value,
          $Res Function(_GenericGetItemsQueryParameters) _then) =
      __$GenericGetItemsQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: GenericGetItemsQueryParameters.pageKey) int page,
      @JsonKey(name: GenericGetItemsQueryParameters.perPageKey) int perPage});
}

/// @nodoc
class __$GenericGetItemsQueryParametersCopyWithImpl<$Res>
    implements _$GenericGetItemsQueryParametersCopyWith<$Res> {
  __$GenericGetItemsQueryParametersCopyWithImpl(this._self, this._then);

  final _GenericGetItemsQueryParameters _self;
  final $Res Function(_GenericGetItemsQueryParameters) _then;

  /// Create a copy of GenericGetItemsQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_GenericGetItemsQueryParameters(
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
