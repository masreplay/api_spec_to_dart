// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_api_users_get_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UsersApiUsersGetQueryParameters {
  /// active
  @JsonKey(name: UsersApiUsersGetQueryParameters.activeKey_)
  bool? get active;

  /// search
  @JsonKey(name: UsersApiUsersGetQueryParameters.searchKey_)
  String? get search;

  /// Create a copy of UsersApiUsersGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UsersApiUsersGetQueryParametersCopyWith<UsersApiUsersGetQueryParameters>
      get copyWith => _$UsersApiUsersGetQueryParametersCopyWithImpl<
              UsersApiUsersGetQueryParameters>(
          this as UsersApiUsersGetQueryParameters, _$identity);

  /// Serializes this UsersApiUsersGetQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UsersApiUsersGetQueryParameters &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.search, search) || other.search == search));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, active, search);

  @override
  String toString() {
    return 'UsersApiUsersGetQueryParameters(active: $active, search: $search)';
  }
}

/// @nodoc
abstract mixin class $UsersApiUsersGetQueryParametersCopyWith<$Res> {
  factory $UsersApiUsersGetQueryParametersCopyWith(
          UsersApiUsersGetQueryParameters value,
          $Res Function(UsersApiUsersGetQueryParameters) _then) =
      _$UsersApiUsersGetQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: UsersApiUsersGetQueryParameters.activeKey_) bool? active,
      @JsonKey(name: UsersApiUsersGetQueryParameters.searchKey_)
      String? search});
}

/// @nodoc
class _$UsersApiUsersGetQueryParametersCopyWithImpl<$Res>
    implements $UsersApiUsersGetQueryParametersCopyWith<$Res> {
  _$UsersApiUsersGetQueryParametersCopyWithImpl(this._self, this._then);

  final UsersApiUsersGetQueryParameters _self;
  final $Res Function(UsersApiUsersGetQueryParameters) _then;

  /// Create a copy of UsersApiUsersGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = freezed,
    Object? search = freezed,
  }) {
    return _then(_self.copyWith(
      active: freezed == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      search: freezed == search
          ? _self.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UsersApiUsersGetQueryParameters].
extension UsersApiUsersGetQueryParametersPatterns
    on UsersApiUsersGetQueryParameters {
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
    TResult Function(_UsersApiUsersGetQueryParameters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UsersApiUsersGetQueryParameters() when $default != null:
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
    TResult Function(_UsersApiUsersGetQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UsersApiUsersGetQueryParameters():
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
    TResult? Function(_UsersApiUsersGetQueryParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UsersApiUsersGetQueryParameters() when $default != null:
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
            @JsonKey(name: UsersApiUsersGetQueryParameters.activeKey_)
            bool? active,
            @JsonKey(name: UsersApiUsersGetQueryParameters.searchKey_)
            String? search)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UsersApiUsersGetQueryParameters() when $default != null:
        return $default(_that.active, _that.search);
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
            @JsonKey(name: UsersApiUsersGetQueryParameters.activeKey_)
            bool? active,
            @JsonKey(name: UsersApiUsersGetQueryParameters.searchKey_)
            String? search)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UsersApiUsersGetQueryParameters():
        return $default(_that.active, _that.search);
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
            @JsonKey(name: UsersApiUsersGetQueryParameters.activeKey_)
            bool? active,
            @JsonKey(name: UsersApiUsersGetQueryParameters.searchKey_)
            String? search)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UsersApiUsersGetQueryParameters() when $default != null:
        return $default(_that.active, _that.search);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _UsersApiUsersGetQueryParameters extends UsersApiUsersGetQueryParameters {
  const _UsersApiUsersGetQueryParameters(
      {@JsonKey(name: UsersApiUsersGetQueryParameters.activeKey_) this.active,
      @JsonKey(name: UsersApiUsersGetQueryParameters.searchKey_) this.search})
      : super._();
  factory _UsersApiUsersGetQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$UsersApiUsersGetQueryParametersFromJson(json);

  /// active
  @override
  @JsonKey(name: UsersApiUsersGetQueryParameters.activeKey_)
  final bool? active;

  /// search
  @override
  @JsonKey(name: UsersApiUsersGetQueryParameters.searchKey_)
  final String? search;

  /// Create a copy of UsersApiUsersGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UsersApiUsersGetQueryParametersCopyWith<_UsersApiUsersGetQueryParameters>
      get copyWith => __$UsersApiUsersGetQueryParametersCopyWithImpl<
          _UsersApiUsersGetQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UsersApiUsersGetQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsersApiUsersGetQueryParameters &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.search, search) || other.search == search));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, active, search);

  @override
  String toString() {
    return 'UsersApiUsersGetQueryParameters(active: $active, search: $search)';
  }
}

/// @nodoc
abstract mixin class _$UsersApiUsersGetQueryParametersCopyWith<$Res>
    implements $UsersApiUsersGetQueryParametersCopyWith<$Res> {
  factory _$UsersApiUsersGetQueryParametersCopyWith(
          _UsersApiUsersGetQueryParameters value,
          $Res Function(_UsersApiUsersGetQueryParameters) _then) =
      __$UsersApiUsersGetQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UsersApiUsersGetQueryParameters.activeKey_) bool? active,
      @JsonKey(name: UsersApiUsersGetQueryParameters.searchKey_)
      String? search});
}

/// @nodoc
class __$UsersApiUsersGetQueryParametersCopyWithImpl<$Res>
    implements _$UsersApiUsersGetQueryParametersCopyWith<$Res> {
  __$UsersApiUsersGetQueryParametersCopyWithImpl(this._self, this._then);

  final _UsersApiUsersGetQueryParameters _self;
  final $Res Function(_UsersApiUsersGetQueryParameters) _then;

  /// Create a copy of UsersApiUsersGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? active = freezed,
    Object? search = freezed,
  }) {
    return _then(_UsersApiUsersGetQueryParameters(
      active: freezed == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      search: freezed == search
          ? _self.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}
