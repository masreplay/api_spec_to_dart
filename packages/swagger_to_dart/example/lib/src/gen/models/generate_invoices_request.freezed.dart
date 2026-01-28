// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_invoices_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GenerateInvoicesRequest {
  /// orderIds
  @JsonKey(name: GenerateInvoicesRequest.orderIdsKey_)
  List<String> get orderIds;

  /// Create a copy of GenerateInvoicesRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GenerateInvoicesRequestCopyWith<GenerateInvoicesRequest> get copyWith =>
      _$GenerateInvoicesRequestCopyWithImpl<GenerateInvoicesRequest>(
          this as GenerateInvoicesRequest, _$identity);

  /// Serializes this GenerateInvoicesRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenerateInvoicesRequest &&
            const DeepCollectionEquality().equals(other.orderIds, orderIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(orderIds));

  @override
  String toString() {
    return 'GenerateInvoicesRequest(orderIds: $orderIds)';
  }
}

/// @nodoc
abstract mixin class $GenerateInvoicesRequestCopyWith<$Res> {
  factory $GenerateInvoicesRequestCopyWith(GenerateInvoicesRequest value,
          $Res Function(GenerateInvoicesRequest) _then) =
      _$GenerateInvoicesRequestCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: GenerateInvoicesRequest.orderIdsKey_)
      List<String> orderIds});
}

/// @nodoc
class _$GenerateInvoicesRequestCopyWithImpl<$Res>
    implements $GenerateInvoicesRequestCopyWith<$Res> {
  _$GenerateInvoicesRequestCopyWithImpl(this._self, this._then);

  final GenerateInvoicesRequest _self;
  final $Res Function(GenerateInvoicesRequest) _then;

  /// Create a copy of GenerateInvoicesRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderIds = null,
  }) {
    return _then(_self.copyWith(
      orderIds: null == orderIds
          ? _self.orderIds
          : orderIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [GenerateInvoicesRequest].
extension GenerateInvoicesRequestPatterns on GenerateInvoicesRequest {
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
    TResult Function(_GenerateInvoicesRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GenerateInvoicesRequest() when $default != null:
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
    TResult Function(_GenerateInvoicesRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenerateInvoicesRequest():
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
    TResult? Function(_GenerateInvoicesRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenerateInvoicesRequest() when $default != null:
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
            @JsonKey(name: GenerateInvoicesRequest.orderIdsKey_)
            List<String> orderIds)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GenerateInvoicesRequest() when $default != null:
        return $default(_that.orderIds);
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
            @JsonKey(name: GenerateInvoicesRequest.orderIdsKey_)
            List<String> orderIds)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenerateInvoicesRequest():
        return $default(_that.orderIds);
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
            @JsonKey(name: GenerateInvoicesRequest.orderIdsKey_)
            List<String> orderIds)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenerateInvoicesRequest() when $default != null:
        return $default(_that.orderIds);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _GenerateInvoicesRequest extends GenerateInvoicesRequest {
  const _GenerateInvoicesRequest(
      {@JsonKey(name: GenerateInvoicesRequest.orderIdsKey_)
      required final List<String> orderIds})
      : _orderIds = orderIds,
        super._();
  factory _GenerateInvoicesRequest.fromJson(Map<String, dynamic> json) =>
      _$GenerateInvoicesRequestFromJson(json);

  /// orderIds
  final List<String> _orderIds;

  /// orderIds
  @override
  @JsonKey(name: GenerateInvoicesRequest.orderIdsKey_)
  List<String> get orderIds {
    if (_orderIds is EqualUnmodifiableListView) return _orderIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderIds);
  }

  /// Create a copy of GenerateInvoicesRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GenerateInvoicesRequestCopyWith<_GenerateInvoicesRequest> get copyWith =>
      __$GenerateInvoicesRequestCopyWithImpl<_GenerateInvoicesRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GenerateInvoicesRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenerateInvoicesRequest &&
            const DeepCollectionEquality().equals(other._orderIds, _orderIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orderIds));

  @override
  String toString() {
    return 'GenerateInvoicesRequest(orderIds: $orderIds)';
  }
}

/// @nodoc
abstract mixin class _$GenerateInvoicesRequestCopyWith<$Res>
    implements $GenerateInvoicesRequestCopyWith<$Res> {
  factory _$GenerateInvoicesRequestCopyWith(_GenerateInvoicesRequest value,
          $Res Function(_GenerateInvoicesRequest) _then) =
      __$GenerateInvoicesRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: GenerateInvoicesRequest.orderIdsKey_)
      List<String> orderIds});
}

/// @nodoc
class __$GenerateInvoicesRequestCopyWithImpl<$Res>
    implements _$GenerateInvoicesRequestCopyWith<$Res> {
  __$GenerateInvoicesRequestCopyWithImpl(this._self, this._then);

  final _GenerateInvoicesRequest _self;
  final $Res Function(_GenerateInvoicesRequest) _then;

  /// Create a copy of GenerateInvoicesRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderIds = null,
  }) {
    return _then(_GenerateInvoicesRequest(
      orderIds: null == orderIds
          ? _self._orderIds
          : orderIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}
