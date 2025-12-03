// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aba_routing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ABARoutingModel {
  /// routingNumber
  @JsonKey(name: ABARoutingModel.routingNumberKey_)
  String get routingNumber;

  /// Create a copy of ABARoutingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ABARoutingModelCopyWith<ABARoutingModel> get copyWith =>
      _$ABARoutingModelCopyWithImpl<ABARoutingModel>(
          this as ABARoutingModel, _$identity);

  /// Serializes this ABARoutingModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ABARoutingModel &&
            (identical(other.routingNumber, routingNumber) ||
                other.routingNumber == routingNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, routingNumber);

  @override
  String toString() {
    return 'ABARoutingModel(routingNumber: $routingNumber)';
  }
}

/// @nodoc
abstract mixin class $ABARoutingModelCopyWith<$Res> {
  factory $ABARoutingModelCopyWith(
          ABARoutingModel value, $Res Function(ABARoutingModel) _then) =
      _$ABARoutingModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ABARoutingModel.routingNumberKey_) String routingNumber});
}

/// @nodoc
class _$ABARoutingModelCopyWithImpl<$Res>
    implements $ABARoutingModelCopyWith<$Res> {
  _$ABARoutingModelCopyWithImpl(this._self, this._then);

  final ABARoutingModel _self;
  final $Res Function(ABARoutingModel) _then;

  /// Create a copy of ABARoutingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routingNumber = null,
  }) {
    return _then(_self.copyWith(
      routingNumber: null == routingNumber
          ? _self.routingNumber
          : routingNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ABARoutingModel].
extension ABARoutingModelPatterns on ABARoutingModel {
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
    TResult Function(_ABARoutingModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ABARoutingModel() when $default != null:
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
    TResult Function(_ABARoutingModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ABARoutingModel():
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
    TResult? Function(_ABARoutingModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ABARoutingModel() when $default != null:
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
            @JsonKey(name: ABARoutingModel.routingNumberKey_)
            String routingNumber)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ABARoutingModel() when $default != null:
        return $default(_that.routingNumber);
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
            @JsonKey(name: ABARoutingModel.routingNumberKey_)
            String routingNumber)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ABARoutingModel():
        return $default(_that.routingNumber);
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
            @JsonKey(name: ABARoutingModel.routingNumberKey_)
            String routingNumber)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ABARoutingModel() when $default != null:
        return $default(_that.routingNumber);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _ABARoutingModel extends ABARoutingModel {
  const _ABARoutingModel(
      {@JsonKey(name: ABARoutingModel.routingNumberKey_)
      required this.routingNumber})
      : super._();
  factory _ABARoutingModel.fromJson(Map<String, dynamic> json) =>
      _$ABARoutingModelFromJson(json);

  /// routingNumber
  @override
  @JsonKey(name: ABARoutingModel.routingNumberKey_)
  final String routingNumber;

  /// Create a copy of ABARoutingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ABARoutingModelCopyWith<_ABARoutingModel> get copyWith =>
      __$ABARoutingModelCopyWithImpl<_ABARoutingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ABARoutingModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ABARoutingModel &&
            (identical(other.routingNumber, routingNumber) ||
                other.routingNumber == routingNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, routingNumber);

  @override
  String toString() {
    return 'ABARoutingModel(routingNumber: $routingNumber)';
  }
}

/// @nodoc
abstract mixin class _$ABARoutingModelCopyWith<$Res>
    implements $ABARoutingModelCopyWith<$Res> {
  factory _$ABARoutingModelCopyWith(
          _ABARoutingModel value, $Res Function(_ABARoutingModel) _then) =
      __$ABARoutingModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ABARoutingModel.routingNumberKey_) String routingNumber});
}

/// @nodoc
class __$ABARoutingModelCopyWithImpl<$Res>
    implements _$ABARoutingModelCopyWith<$Res> {
  __$ABARoutingModelCopyWithImpl(this._self, this._then);

  final _ABARoutingModel _self;
  final $Res Function(_ABARoutingModel) _then;

  /// Create a copy of ABARoutingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? routingNumber = null,
  }) {
    return _then(_ABARoutingModel(
      routingNumber: null == routingNumber
          ? _self.routingNumber
          : routingNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
