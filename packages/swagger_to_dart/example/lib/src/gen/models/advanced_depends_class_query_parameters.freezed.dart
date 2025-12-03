// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_depends_class_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedDependsClassQueryParameters {
  /// dbName
  @JsonKey(name: AdvancedDependsClassQueryParameters.dbNameKey_)
  String get dbName;

  /// Create a copy of AdvancedDependsClassQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedDependsClassQueryParametersCopyWith<
          AdvancedDependsClassQueryParameters>
      get copyWith => _$AdvancedDependsClassQueryParametersCopyWithImpl<
              AdvancedDependsClassQueryParameters>(
          this as AdvancedDependsClassQueryParameters, _$identity);

  /// Serializes this AdvancedDependsClassQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedDependsClassQueryParameters &&
            (identical(other.dbName, dbName) || other.dbName == dbName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dbName);

  @override
  String toString() {
    return 'AdvancedDependsClassQueryParameters(dbName: $dbName)';
  }
}

/// @nodoc
abstract mixin class $AdvancedDependsClassQueryParametersCopyWith<$Res> {
  factory $AdvancedDependsClassQueryParametersCopyWith(
          AdvancedDependsClassQueryParameters value,
          $Res Function(AdvancedDependsClassQueryParameters) _then) =
      _$AdvancedDependsClassQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedDependsClassQueryParameters.dbNameKey_)
      String dbName});
}

/// @nodoc
class _$AdvancedDependsClassQueryParametersCopyWithImpl<$Res>
    implements $AdvancedDependsClassQueryParametersCopyWith<$Res> {
  _$AdvancedDependsClassQueryParametersCopyWithImpl(this._self, this._then);

  final AdvancedDependsClassQueryParameters _self;
  final $Res Function(AdvancedDependsClassQueryParameters) _then;

  /// Create a copy of AdvancedDependsClassQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dbName = null,
  }) {
    return _then(_self.copyWith(
      dbName: null == dbName
          ? _self.dbName
          : dbName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AdvancedDependsClassQueryParameters].
extension AdvancedDependsClassQueryParametersPatterns
    on AdvancedDependsClassQueryParameters {
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
    TResult Function(_AdvancedDependsClassQueryParameters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AdvancedDependsClassQueryParameters() when $default != null:
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
    TResult Function(_AdvancedDependsClassQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedDependsClassQueryParameters():
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
    TResult? Function(_AdvancedDependsClassQueryParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedDependsClassQueryParameters() when $default != null:
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
            @JsonKey(name: AdvancedDependsClassQueryParameters.dbNameKey_)
            String dbName)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AdvancedDependsClassQueryParameters() when $default != null:
        return $default(_that.dbName);
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
            @JsonKey(name: AdvancedDependsClassQueryParameters.dbNameKey_)
            String dbName)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedDependsClassQueryParameters():
        return $default(_that.dbName);
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
            @JsonKey(name: AdvancedDependsClassQueryParameters.dbNameKey_)
            String dbName)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedDependsClassQueryParameters() when $default != null:
        return $default(_that.dbName);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _AdvancedDependsClassQueryParameters
    extends AdvancedDependsClassQueryParameters {
  const _AdvancedDependsClassQueryParameters(
      {@JsonKey(name: AdvancedDependsClassQueryParameters.dbNameKey_)
      this.dbName = 'default'})
      : super._();
  factory _AdvancedDependsClassQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$AdvancedDependsClassQueryParametersFromJson(json);

  /// dbName
  @override
  @JsonKey(name: AdvancedDependsClassQueryParameters.dbNameKey_)
  final String dbName;

  /// Create a copy of AdvancedDependsClassQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedDependsClassQueryParametersCopyWith<
          _AdvancedDependsClassQueryParameters>
      get copyWith => __$AdvancedDependsClassQueryParametersCopyWithImpl<
          _AdvancedDependsClassQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedDependsClassQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedDependsClassQueryParameters &&
            (identical(other.dbName, dbName) || other.dbName == dbName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dbName);

  @override
  String toString() {
    return 'AdvancedDependsClassQueryParameters(dbName: $dbName)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedDependsClassQueryParametersCopyWith<$Res>
    implements $AdvancedDependsClassQueryParametersCopyWith<$Res> {
  factory _$AdvancedDependsClassQueryParametersCopyWith(
          _AdvancedDependsClassQueryParameters value,
          $Res Function(_AdvancedDependsClassQueryParameters) _then) =
      __$AdvancedDependsClassQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedDependsClassQueryParameters.dbNameKey_)
      String dbName});
}

/// @nodoc
class __$AdvancedDependsClassQueryParametersCopyWithImpl<$Res>
    implements _$AdvancedDependsClassQueryParametersCopyWith<$Res> {
  __$AdvancedDependsClassQueryParametersCopyWithImpl(this._self, this._then);

  final _AdvancedDependsClassQueryParameters _self;
  final $Res Function(_AdvancedDependsClassQueryParameters) _then;

  /// Create a copy of AdvancedDependsClassQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dbName = null,
  }) {
    return _then(_AdvancedDependsClassQueryParameters(
      dbName: null == dbName
          ? _self.dbName
          : dbName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
