// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_special_uuid_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedSpecialUuidQueryParameters {
  /// id
  @JsonKey(name: AdvancedSpecialUuidQueryParameters.idKey_)
  String get id;

  /// Create a copy of AdvancedSpecialUuidQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedSpecialUuidQueryParametersCopyWith<
          AdvancedSpecialUuidQueryParameters>
      get copyWith => _$AdvancedSpecialUuidQueryParametersCopyWithImpl<
              AdvancedSpecialUuidQueryParameters>(
          this as AdvancedSpecialUuidQueryParameters, _$identity);

  /// Serializes this AdvancedSpecialUuidQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedSpecialUuidQueryParameters &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'AdvancedSpecialUuidQueryParameters(id: $id)';
  }
}

/// @nodoc
abstract mixin class $AdvancedSpecialUuidQueryParametersCopyWith<$Res> {
  factory $AdvancedSpecialUuidQueryParametersCopyWith(
          AdvancedSpecialUuidQueryParameters value,
          $Res Function(AdvancedSpecialUuidQueryParameters) _then) =
      _$AdvancedSpecialUuidQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedSpecialUuidQueryParameters.idKey_) String id});
}

/// @nodoc
class _$AdvancedSpecialUuidQueryParametersCopyWithImpl<$Res>
    implements $AdvancedSpecialUuidQueryParametersCopyWith<$Res> {
  _$AdvancedSpecialUuidQueryParametersCopyWithImpl(this._self, this._then);

  final AdvancedSpecialUuidQueryParameters _self;
  final $Res Function(AdvancedSpecialUuidQueryParameters) _then;

  /// Create a copy of AdvancedSpecialUuidQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AdvancedSpecialUuidQueryParameters].
extension AdvancedSpecialUuidQueryParametersPatterns
    on AdvancedSpecialUuidQueryParameters {
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
    TResult Function(_AdvancedSpecialUuidQueryParameters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AdvancedSpecialUuidQueryParameters() when $default != null:
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
    TResult Function(_AdvancedSpecialUuidQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedSpecialUuidQueryParameters():
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
    TResult? Function(_AdvancedSpecialUuidQueryParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedSpecialUuidQueryParameters() when $default != null:
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
            @JsonKey(name: AdvancedSpecialUuidQueryParameters.idKey_)
            String id)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AdvancedSpecialUuidQueryParameters() when $default != null:
        return $default(_that.id);
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
            @JsonKey(name: AdvancedSpecialUuidQueryParameters.idKey_) String id)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedSpecialUuidQueryParameters():
        return $default(_that.id);
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
            @JsonKey(name: AdvancedSpecialUuidQueryParameters.idKey_)
            String id)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedSpecialUuidQueryParameters() when $default != null:
        return $default(_that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _AdvancedSpecialUuidQueryParameters
    extends AdvancedSpecialUuidQueryParameters {
  const _AdvancedSpecialUuidQueryParameters(
      {@JsonKey(name: AdvancedSpecialUuidQueryParameters.idKey_)
      required this.id})
      : super._();
  factory _AdvancedSpecialUuidQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$AdvancedSpecialUuidQueryParametersFromJson(json);

  /// id
  @override
  @JsonKey(name: AdvancedSpecialUuidQueryParameters.idKey_)
  final String id;

  /// Create a copy of AdvancedSpecialUuidQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedSpecialUuidQueryParametersCopyWith<
          _AdvancedSpecialUuidQueryParameters>
      get copyWith => __$AdvancedSpecialUuidQueryParametersCopyWithImpl<
          _AdvancedSpecialUuidQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedSpecialUuidQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedSpecialUuidQueryParameters &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'AdvancedSpecialUuidQueryParameters(id: $id)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedSpecialUuidQueryParametersCopyWith<$Res>
    implements $AdvancedSpecialUuidQueryParametersCopyWith<$Res> {
  factory _$AdvancedSpecialUuidQueryParametersCopyWith(
          _AdvancedSpecialUuidQueryParameters value,
          $Res Function(_AdvancedSpecialUuidQueryParameters) _then) =
      __$AdvancedSpecialUuidQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedSpecialUuidQueryParameters.idKey_) String id});
}

/// @nodoc
class __$AdvancedSpecialUuidQueryParametersCopyWithImpl<$Res>
    implements _$AdvancedSpecialUuidQueryParametersCopyWith<$Res> {
  __$AdvancedSpecialUuidQueryParametersCopyWithImpl(this._self, this._then);

  final _AdvancedSpecialUuidQueryParameters _self;
  final $Res Function(_AdvancedSpecialUuidQueryParameters) _then;

  /// Create a copy of AdvancedSpecialUuidQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(_AdvancedSpecialUuidQueryParameters(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
