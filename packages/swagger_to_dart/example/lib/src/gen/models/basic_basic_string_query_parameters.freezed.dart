// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_basic_string_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BasicBasicStringQueryParameters {
  /// text
  @JsonKey(name: BasicBasicStringQueryParameters.textKey)
  String get text;

  /// Create a copy of BasicBasicStringQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BasicBasicStringQueryParametersCopyWith<BasicBasicStringQueryParameters>
      get copyWith => _$BasicBasicStringQueryParametersCopyWithImpl<
              BasicBasicStringQueryParameters>(
          this as BasicBasicStringQueryParameters, _$identity);

  /// Serializes this BasicBasicStringQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BasicBasicStringQueryParameters &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @override
  String toString() {
    return 'BasicBasicStringQueryParameters(text: $text)';
  }
}

/// @nodoc
abstract mixin class $BasicBasicStringQueryParametersCopyWith<$Res> {
  factory $BasicBasicStringQueryParametersCopyWith(
          BasicBasicStringQueryParameters value,
          $Res Function(BasicBasicStringQueryParameters) _then) =
      _$BasicBasicStringQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: BasicBasicStringQueryParameters.textKey) String text});
}

/// @nodoc
class _$BasicBasicStringQueryParametersCopyWithImpl<$Res>
    implements $BasicBasicStringQueryParametersCopyWith<$Res> {
  _$BasicBasicStringQueryParametersCopyWithImpl(this._self, this._then);

  final BasicBasicStringQueryParameters _self;
  final $Res Function(BasicBasicStringQueryParameters) _then;

  /// Create a copy of BasicBasicStringQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_self.copyWith(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [BasicBasicStringQueryParameters].
extension BasicBasicStringQueryParametersPatterns
    on BasicBasicStringQueryParameters {
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
    TResult Function(_BasicBasicStringQueryParameters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BasicBasicStringQueryParameters() when $default != null:
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
    TResult Function(_BasicBasicStringQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BasicBasicStringQueryParameters():
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
    TResult? Function(_BasicBasicStringQueryParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BasicBasicStringQueryParameters() when $default != null:
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
            @JsonKey(name: BasicBasicStringQueryParameters.textKey)
            String text)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BasicBasicStringQueryParameters() when $default != null:
        return $default(_that.text);
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
            @JsonKey(name: BasicBasicStringQueryParameters.textKey) String text)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BasicBasicStringQueryParameters():
        return $default(_that.text);
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
            @JsonKey(name: BasicBasicStringQueryParameters.textKey)
            String text)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BasicBasicStringQueryParameters() when $default != null:
        return $default(_that.text);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _BasicBasicStringQueryParameters extends BasicBasicStringQueryParameters {
  const _BasicBasicStringQueryParameters(
      {@JsonKey(name: BasicBasicStringQueryParameters.textKey)
      required this.text})
      : super._();
  factory _BasicBasicStringQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$BasicBasicStringQueryParametersFromJson(json);

  /// text
  @override
  @JsonKey(name: BasicBasicStringQueryParameters.textKey)
  final String text;

  /// Create a copy of BasicBasicStringQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BasicBasicStringQueryParametersCopyWith<_BasicBasicStringQueryParameters>
      get copyWith => __$BasicBasicStringQueryParametersCopyWithImpl<
          _BasicBasicStringQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BasicBasicStringQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BasicBasicStringQueryParameters &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @override
  String toString() {
    return 'BasicBasicStringQueryParameters(text: $text)';
  }
}

/// @nodoc
abstract mixin class _$BasicBasicStringQueryParametersCopyWith<$Res>
    implements $BasicBasicStringQueryParametersCopyWith<$Res> {
  factory _$BasicBasicStringQueryParametersCopyWith(
          _BasicBasicStringQueryParameters value,
          $Res Function(_BasicBasicStringQueryParameters) _then) =
      __$BasicBasicStringQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BasicBasicStringQueryParameters.textKey) String text});
}

/// @nodoc
class __$BasicBasicStringQueryParametersCopyWithImpl<$Res>
    implements _$BasicBasicStringQueryParametersCopyWith<$Res> {
  __$BasicBasicStringQueryParametersCopyWithImpl(this._self, this._then);

  final _BasicBasicStringQueryParameters _self;
  final $Res Function(_BasicBasicStringQueryParameters) _then;

  /// Create a copy of BasicBasicStringQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = null,
  }) {
    return _then(_BasicBasicStringQueryParameters(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
