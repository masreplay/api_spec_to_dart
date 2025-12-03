// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_union_simple_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedUnionSimpleQueryParameters {
  /// value
  @JsonKey(name: AdvancedUnionSimpleQueryParameters.valueKey_)
  dynamic get value;

  /// Create a copy of AdvancedUnionSimpleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedUnionSimpleQueryParametersCopyWith<
          AdvancedUnionSimpleQueryParameters>
      get copyWith => _$AdvancedUnionSimpleQueryParametersCopyWithImpl<
              AdvancedUnionSimpleQueryParameters>(
          this as AdvancedUnionSimpleQueryParameters, _$identity);

  /// Serializes this AdvancedUnionSimpleQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedUnionSimpleQueryParameters &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'AdvancedUnionSimpleQueryParameters(value: $value)';
  }
}

/// @nodoc
abstract mixin class $AdvancedUnionSimpleQueryParametersCopyWith<$Res> {
  factory $AdvancedUnionSimpleQueryParametersCopyWith(
          AdvancedUnionSimpleQueryParameters value,
          $Res Function(AdvancedUnionSimpleQueryParameters) _then) =
      _$AdvancedUnionSimpleQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedUnionSimpleQueryParameters.valueKey_)
      dynamic value});
}

/// @nodoc
class _$AdvancedUnionSimpleQueryParametersCopyWithImpl<$Res>
    implements $AdvancedUnionSimpleQueryParametersCopyWith<$Res> {
  _$AdvancedUnionSimpleQueryParametersCopyWithImpl(this._self, this._then);

  final AdvancedUnionSimpleQueryParameters _self;
  final $Res Function(AdvancedUnionSimpleQueryParameters) _then;

  /// Create a copy of AdvancedUnionSimpleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_self.copyWith(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// Adds pattern-matching-related methods to [AdvancedUnionSimpleQueryParameters].
extension AdvancedUnionSimpleQueryParametersPatterns
    on AdvancedUnionSimpleQueryParameters {
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
    TResult Function(_AdvancedUnionSimpleQueryParameters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AdvancedUnionSimpleQueryParameters() when $default != null:
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
    TResult Function(_AdvancedUnionSimpleQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedUnionSimpleQueryParameters():
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
    TResult? Function(_AdvancedUnionSimpleQueryParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedUnionSimpleQueryParameters() when $default != null:
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
            @JsonKey(name: AdvancedUnionSimpleQueryParameters.valueKey_)
            dynamic value)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AdvancedUnionSimpleQueryParameters() when $default != null:
        return $default(_that.value);
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
            @JsonKey(name: AdvancedUnionSimpleQueryParameters.valueKey_)
            dynamic value)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedUnionSimpleQueryParameters():
        return $default(_that.value);
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
            @JsonKey(name: AdvancedUnionSimpleQueryParameters.valueKey_)
            dynamic value)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedUnionSimpleQueryParameters() when $default != null:
        return $default(_that.value);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _AdvancedUnionSimpleQueryParameters
    extends AdvancedUnionSimpleQueryParameters {
  const _AdvancedUnionSimpleQueryParameters(
      {@JsonKey(name: AdvancedUnionSimpleQueryParameters.valueKey_)
      required this.value})
      : super._();
  factory _AdvancedUnionSimpleQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$AdvancedUnionSimpleQueryParametersFromJson(json);

  /// value
  @override
  @JsonKey(name: AdvancedUnionSimpleQueryParameters.valueKey_)
  final dynamic value;

  /// Create a copy of AdvancedUnionSimpleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedUnionSimpleQueryParametersCopyWith<
          _AdvancedUnionSimpleQueryParameters>
      get copyWith => __$AdvancedUnionSimpleQueryParametersCopyWithImpl<
          _AdvancedUnionSimpleQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedUnionSimpleQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedUnionSimpleQueryParameters &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'AdvancedUnionSimpleQueryParameters(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedUnionSimpleQueryParametersCopyWith<$Res>
    implements $AdvancedUnionSimpleQueryParametersCopyWith<$Res> {
  factory _$AdvancedUnionSimpleQueryParametersCopyWith(
          _AdvancedUnionSimpleQueryParameters value,
          $Res Function(_AdvancedUnionSimpleQueryParameters) _then) =
      __$AdvancedUnionSimpleQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedUnionSimpleQueryParameters.valueKey_)
      dynamic value});
}

/// @nodoc
class __$AdvancedUnionSimpleQueryParametersCopyWithImpl<$Res>
    implements _$AdvancedUnionSimpleQueryParametersCopyWith<$Res> {
  __$AdvancedUnionSimpleQueryParametersCopyWithImpl(this._self, this._then);

  final _AdvancedUnionSimpleQueryParameters _self;
  final $Res Function(_AdvancedUnionSimpleQueryParameters) _then;

  /// Create a copy of AdvancedUnionSimpleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_AdvancedUnionSimpleQueryParameters(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}
