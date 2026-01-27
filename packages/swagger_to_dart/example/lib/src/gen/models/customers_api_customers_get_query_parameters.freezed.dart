// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customers_api_customers_get_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomersApiCustomersGetQueryParameters {
  /// search
  @JsonKey(name: CustomersApiCustomersGetQueryParameters.searchKey_)
  String? get search;

  /// requireFullPaymentOnClose
  @JsonKey(
      name:
          CustomersApiCustomersGetQueryParameters.requireFullPaymentOnCloseKey_)
  bool? get requireFullPaymentOnClose;

  /// Create a copy of CustomersApiCustomersGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomersApiCustomersGetQueryParametersCopyWith<
          CustomersApiCustomersGetQueryParameters>
      get copyWith => _$CustomersApiCustomersGetQueryParametersCopyWithImpl<
              CustomersApiCustomersGetQueryParameters>(
          this as CustomersApiCustomersGetQueryParameters, _$identity);

  /// Serializes this CustomersApiCustomersGetQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomersApiCustomersGetQueryParameters &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.requireFullPaymentOnClose,
                    requireFullPaymentOnClose) ||
                other.requireFullPaymentOnClose == requireFullPaymentOnClose));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, search, requireFullPaymentOnClose);

  @override
  String toString() {
    return 'CustomersApiCustomersGetQueryParameters(search: $search, requireFullPaymentOnClose: $requireFullPaymentOnClose)';
  }
}

/// @nodoc
abstract mixin class $CustomersApiCustomersGetQueryParametersCopyWith<$Res> {
  factory $CustomersApiCustomersGetQueryParametersCopyWith(
          CustomersApiCustomersGetQueryParameters value,
          $Res Function(CustomersApiCustomersGetQueryParameters) _then) =
      _$CustomersApiCustomersGetQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: CustomersApiCustomersGetQueryParameters.searchKey_)
      String? search,
      @JsonKey(
          name: CustomersApiCustomersGetQueryParameters
              .requireFullPaymentOnCloseKey_)
      bool? requireFullPaymentOnClose});
}

/// @nodoc
class _$CustomersApiCustomersGetQueryParametersCopyWithImpl<$Res>
    implements $CustomersApiCustomersGetQueryParametersCopyWith<$Res> {
  _$CustomersApiCustomersGetQueryParametersCopyWithImpl(this._self, this._then);

  final CustomersApiCustomersGetQueryParameters _self;
  final $Res Function(CustomersApiCustomersGetQueryParameters) _then;

  /// Create a copy of CustomersApiCustomersGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
    Object? requireFullPaymentOnClose = freezed,
  }) {
    return _then(_self.copyWith(
      search: freezed == search
          ? _self.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      requireFullPaymentOnClose: freezed == requireFullPaymentOnClose
          ? _self.requireFullPaymentOnClose
          : requireFullPaymentOnClose // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CustomersApiCustomersGetQueryParameters].
extension CustomersApiCustomersGetQueryParametersPatterns
    on CustomersApiCustomersGetQueryParameters {
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
    TResult Function(_CustomersApiCustomersGetQueryParameters value)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CustomersApiCustomersGetQueryParameters() when $default != null:
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
    TResult Function(_CustomersApiCustomersGetQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomersApiCustomersGetQueryParameters():
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
    TResult? Function(_CustomersApiCustomersGetQueryParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomersApiCustomersGetQueryParameters() when $default != null:
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
            @JsonKey(name: CustomersApiCustomersGetQueryParameters.searchKey_)
            String? search,
            @JsonKey(
                name: CustomersApiCustomersGetQueryParameters
                    .requireFullPaymentOnCloseKey_)
            bool? requireFullPaymentOnClose)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CustomersApiCustomersGetQueryParameters() when $default != null:
        return $default(_that.search, _that.requireFullPaymentOnClose);
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
            @JsonKey(name: CustomersApiCustomersGetQueryParameters.searchKey_)
            String? search,
            @JsonKey(
                name: CustomersApiCustomersGetQueryParameters
                    .requireFullPaymentOnCloseKey_)
            bool? requireFullPaymentOnClose)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomersApiCustomersGetQueryParameters():
        return $default(_that.search, _that.requireFullPaymentOnClose);
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
            @JsonKey(name: CustomersApiCustomersGetQueryParameters.searchKey_)
            String? search,
            @JsonKey(
                name: CustomersApiCustomersGetQueryParameters
                    .requireFullPaymentOnCloseKey_)
            bool? requireFullPaymentOnClose)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomersApiCustomersGetQueryParameters() when $default != null:
        return $default(_that.search, _that.requireFullPaymentOnClose);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _CustomersApiCustomersGetQueryParameters
    extends CustomersApiCustomersGetQueryParameters {
  const _CustomersApiCustomersGetQueryParameters(
      {@JsonKey(name: CustomersApiCustomersGetQueryParameters.searchKey_)
      this.search,
      @JsonKey(
          name: CustomersApiCustomersGetQueryParameters
              .requireFullPaymentOnCloseKey_)
      this.requireFullPaymentOnClose})
      : super._();
  factory _CustomersApiCustomersGetQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$CustomersApiCustomersGetQueryParametersFromJson(json);

  /// search
  @override
  @JsonKey(name: CustomersApiCustomersGetQueryParameters.searchKey_)
  final String? search;

  /// requireFullPaymentOnClose
  @override
  @JsonKey(
      name:
          CustomersApiCustomersGetQueryParameters.requireFullPaymentOnCloseKey_)
  final bool? requireFullPaymentOnClose;

  /// Create a copy of CustomersApiCustomersGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomersApiCustomersGetQueryParametersCopyWith<
          _CustomersApiCustomersGetQueryParameters>
      get copyWith => __$CustomersApiCustomersGetQueryParametersCopyWithImpl<
          _CustomersApiCustomersGetQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomersApiCustomersGetQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomersApiCustomersGetQueryParameters &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.requireFullPaymentOnClose,
                    requireFullPaymentOnClose) ||
                other.requireFullPaymentOnClose == requireFullPaymentOnClose));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, search, requireFullPaymentOnClose);

  @override
  String toString() {
    return 'CustomersApiCustomersGetQueryParameters(search: $search, requireFullPaymentOnClose: $requireFullPaymentOnClose)';
  }
}

/// @nodoc
abstract mixin class _$CustomersApiCustomersGetQueryParametersCopyWith<$Res>
    implements $CustomersApiCustomersGetQueryParametersCopyWith<$Res> {
  factory _$CustomersApiCustomersGetQueryParametersCopyWith(
          _CustomersApiCustomersGetQueryParameters value,
          $Res Function(_CustomersApiCustomersGetQueryParameters) _then) =
      __$CustomersApiCustomersGetQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CustomersApiCustomersGetQueryParameters.searchKey_)
      String? search,
      @JsonKey(
          name: CustomersApiCustomersGetQueryParameters
              .requireFullPaymentOnCloseKey_)
      bool? requireFullPaymentOnClose});
}

/// @nodoc
class __$CustomersApiCustomersGetQueryParametersCopyWithImpl<$Res>
    implements _$CustomersApiCustomersGetQueryParametersCopyWith<$Res> {
  __$CustomersApiCustomersGetQueryParametersCopyWithImpl(
      this._self, this._then);

  final _CustomersApiCustomersGetQueryParameters _self;
  final $Res Function(_CustomersApiCustomersGetQueryParameters) _then;

  /// Create a copy of CustomersApiCustomersGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? search = freezed,
    Object? requireFullPaymentOnClose = freezed,
  }) {
    return _then(_CustomersApiCustomersGetQueryParameters(
      search: freezed == search
          ? _self.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      requireFullPaymentOnClose: freezed == requireFullPaymentOnClose
          ? _self.requireFullPaymentOnClose
          : requireFullPaymentOnClose // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}
