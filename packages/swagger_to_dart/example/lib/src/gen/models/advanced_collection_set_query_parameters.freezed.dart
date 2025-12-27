// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_collection_set_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedCollectionSetQueryParameters {
  /// items
  @JsonKey(name: AdvancedCollectionSetQueryParameters.itemsKey_)
  List<int> get items;

  /// Create a copy of AdvancedCollectionSetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedCollectionSetQueryParametersCopyWith<
          AdvancedCollectionSetQueryParameters>
      get copyWith => _$AdvancedCollectionSetQueryParametersCopyWithImpl<
              AdvancedCollectionSetQueryParameters>(
          this as AdvancedCollectionSetQueryParameters, _$identity);

  /// Serializes this AdvancedCollectionSetQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedCollectionSetQueryParameters &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @override
  String toString() {
    return 'AdvancedCollectionSetQueryParameters(items: $items)';
  }
}

/// @nodoc
abstract mixin class $AdvancedCollectionSetQueryParametersCopyWith<$Res> {
  factory $AdvancedCollectionSetQueryParametersCopyWith(
          AdvancedCollectionSetQueryParameters value,
          $Res Function(AdvancedCollectionSetQueryParameters) _then) =
      _$AdvancedCollectionSetQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedCollectionSetQueryParameters.itemsKey_)
      List<int> items});
}

/// @nodoc
class _$AdvancedCollectionSetQueryParametersCopyWithImpl<$Res>
    implements $AdvancedCollectionSetQueryParametersCopyWith<$Res> {
  _$AdvancedCollectionSetQueryParametersCopyWithImpl(this._self, this._then);

  final AdvancedCollectionSetQueryParameters _self;
  final $Res Function(AdvancedCollectionSetQueryParameters) _then;

  /// Create a copy of AdvancedCollectionSetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_self.copyWith(
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// Adds pattern-matching-related methods to [AdvancedCollectionSetQueryParameters].
extension AdvancedCollectionSetQueryParametersPatterns
    on AdvancedCollectionSetQueryParameters {
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
    TResult Function(_AdvancedCollectionSetQueryParameters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AdvancedCollectionSetQueryParameters() when $default != null:
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
    TResult Function(_AdvancedCollectionSetQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedCollectionSetQueryParameters():
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
    TResult? Function(_AdvancedCollectionSetQueryParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedCollectionSetQueryParameters() when $default != null:
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
            @JsonKey(name: AdvancedCollectionSetQueryParameters.itemsKey_)
            List<int> items)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AdvancedCollectionSetQueryParameters() when $default != null:
        return $default(_that.items);
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
            @JsonKey(name: AdvancedCollectionSetQueryParameters.itemsKey_)
            List<int> items)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedCollectionSetQueryParameters():
        return $default(_that.items);
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
            @JsonKey(name: AdvancedCollectionSetQueryParameters.itemsKey_)
            List<int> items)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedCollectionSetQueryParameters() when $default != null:
        return $default(_that.items);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _AdvancedCollectionSetQueryParameters
    extends AdvancedCollectionSetQueryParameters {
  const _AdvancedCollectionSetQueryParameters(
      {@JsonKey(name: AdvancedCollectionSetQueryParameters.itemsKey_)
      final List<int> items = const [1, 2, 3]})
      : _items = items,
        super._();
  factory _AdvancedCollectionSetQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$AdvancedCollectionSetQueryParametersFromJson(json);

  /// items
  final List<int> _items;

  /// items
  @override
  @JsonKey(name: AdvancedCollectionSetQueryParameters.itemsKey_)
  List<int> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// Create a copy of AdvancedCollectionSetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedCollectionSetQueryParametersCopyWith<
          _AdvancedCollectionSetQueryParameters>
      get copyWith => __$AdvancedCollectionSetQueryParametersCopyWithImpl<
          _AdvancedCollectionSetQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedCollectionSetQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedCollectionSetQueryParameters &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @override
  String toString() {
    return 'AdvancedCollectionSetQueryParameters(items: $items)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedCollectionSetQueryParametersCopyWith<$Res>
    implements $AdvancedCollectionSetQueryParametersCopyWith<$Res> {
  factory _$AdvancedCollectionSetQueryParametersCopyWith(
          _AdvancedCollectionSetQueryParameters value,
          $Res Function(_AdvancedCollectionSetQueryParameters) _then) =
      __$AdvancedCollectionSetQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedCollectionSetQueryParameters.itemsKey_)
      List<int> items});
}

/// @nodoc
class __$AdvancedCollectionSetQueryParametersCopyWithImpl<$Res>
    implements _$AdvancedCollectionSetQueryParametersCopyWith<$Res> {
  __$AdvancedCollectionSetQueryParametersCopyWithImpl(this._self, this._then);

  final _AdvancedCollectionSetQueryParameters _self;
  final $Res Function(_AdvancedCollectionSetQueryParameters) _then;

  /// Create a copy of AdvancedCollectionSetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = null,
  }) {
    return _then(_AdvancedCollectionSetQueryParameters(
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}
