// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_error_custom_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedErrorCustomQueryParameters {
  /// code
  @JsonKey(name: AdvancedErrorCustomQueryParameters.codeKey)
  int get code;

  /// Create a copy of AdvancedErrorCustomQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedErrorCustomQueryParametersCopyWith<
          AdvancedErrorCustomQueryParameters>
      get copyWith => _$AdvancedErrorCustomQueryParametersCopyWithImpl<
              AdvancedErrorCustomQueryParameters>(
          this as AdvancedErrorCustomQueryParameters, _$identity);

  /// Serializes this AdvancedErrorCustomQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedErrorCustomQueryParameters &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  @override
  String toString() {
    return 'AdvancedErrorCustomQueryParameters(code: $code)';
  }
}

/// @nodoc
abstract mixin class $AdvancedErrorCustomQueryParametersCopyWith<$Res> {
  factory $AdvancedErrorCustomQueryParametersCopyWith(
          AdvancedErrorCustomQueryParameters value,
          $Res Function(AdvancedErrorCustomQueryParameters) _then) =
      _$AdvancedErrorCustomQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedErrorCustomQueryParameters.codeKey) int code});
}

/// @nodoc
class _$AdvancedErrorCustomQueryParametersCopyWithImpl<$Res>
    implements $AdvancedErrorCustomQueryParametersCopyWith<$Res> {
  _$AdvancedErrorCustomQueryParametersCopyWithImpl(this._self, this._then);

  final AdvancedErrorCustomQueryParameters _self;
  final $Res Function(AdvancedErrorCustomQueryParameters) _then;

  /// Create a copy of AdvancedErrorCustomQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [AdvancedErrorCustomQueryParameters].
extension AdvancedErrorCustomQueryParametersPatterns
    on AdvancedErrorCustomQueryParameters {
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
    TResult Function(_AdvancedErrorCustomQueryParameters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AdvancedErrorCustomQueryParameters() when $default != null:
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
    TResult Function(_AdvancedErrorCustomQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedErrorCustomQueryParameters():
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
    TResult? Function(_AdvancedErrorCustomQueryParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedErrorCustomQueryParameters() when $default != null:
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
            @JsonKey(name: AdvancedErrorCustomQueryParameters.codeKey)
            int code)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AdvancedErrorCustomQueryParameters() when $default != null:
        return $default(_that.code);
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
            @JsonKey(name: AdvancedErrorCustomQueryParameters.codeKey) int code)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedErrorCustomQueryParameters():
        return $default(_that.code);
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
            @JsonKey(name: AdvancedErrorCustomQueryParameters.codeKey)
            int code)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedErrorCustomQueryParameters() when $default != null:
        return $default(_that.code);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _AdvancedErrorCustomQueryParameters
    extends AdvancedErrorCustomQueryParameters {
  const _AdvancedErrorCustomQueryParameters(
      {@JsonKey(name: AdvancedErrorCustomQueryParameters.codeKey)
      required this.code})
      : super._();
  factory _AdvancedErrorCustomQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$AdvancedErrorCustomQueryParametersFromJson(json);

  /// code
  @override
  @JsonKey(name: AdvancedErrorCustomQueryParameters.codeKey)
  final int code;

  /// Create a copy of AdvancedErrorCustomQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedErrorCustomQueryParametersCopyWith<
          _AdvancedErrorCustomQueryParameters>
      get copyWith => __$AdvancedErrorCustomQueryParametersCopyWithImpl<
          _AdvancedErrorCustomQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedErrorCustomQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedErrorCustomQueryParameters &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  @override
  String toString() {
    return 'AdvancedErrorCustomQueryParameters(code: $code)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedErrorCustomQueryParametersCopyWith<$Res>
    implements $AdvancedErrorCustomQueryParametersCopyWith<$Res> {
  factory _$AdvancedErrorCustomQueryParametersCopyWith(
          _AdvancedErrorCustomQueryParameters value,
          $Res Function(_AdvancedErrorCustomQueryParameters) _then) =
      __$AdvancedErrorCustomQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedErrorCustomQueryParameters.codeKey) int code});
}

/// @nodoc
class __$AdvancedErrorCustomQueryParametersCopyWithImpl<$Res>
    implements _$AdvancedErrorCustomQueryParametersCopyWith<$Res> {
  __$AdvancedErrorCustomQueryParametersCopyWithImpl(this._self, this._then);

  final _AdvancedErrorCustomQueryParameters _self;
  final $Res Function(_AdvancedErrorCustomQueryParameters) _then;

  /// Create a copy of AdvancedErrorCustomQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
  }) {
    return _then(_AdvancedErrorCustomQueryParameters(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
