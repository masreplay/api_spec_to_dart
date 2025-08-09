// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_validation_param_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BodyValidationParamBody {
  /// data
  @JsonKey(name: BodyValidationParamBody.dataKey)
  Map<String, dynamic> get data;

  /// importance
  @JsonKey(name: BodyValidationParamBody.importanceKey)
  int get importance;

  /// Create a copy of BodyValidationParamBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BodyValidationParamBodyCopyWith<BodyValidationParamBody> get copyWith =>
      _$BodyValidationParamBodyCopyWithImpl<BodyValidationParamBody>(
          this as BodyValidationParamBody, _$identity);

  /// Serializes this BodyValidationParamBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BodyValidationParamBody &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.importance, importance) ||
                other.importance == importance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), importance);

  @override
  String toString() {
    return 'BodyValidationParamBody(data: $data, importance: $importance)';
  }
}

/// @nodoc
abstract mixin class $BodyValidationParamBodyCopyWith<$Res> {
  factory $BodyValidationParamBodyCopyWith(BodyValidationParamBody value,
          $Res Function(BodyValidationParamBody) _then) =
      _$BodyValidationParamBodyCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: BodyValidationParamBody.dataKey)
      Map<String, dynamic> data,
      @JsonKey(name: BodyValidationParamBody.importanceKey) int importance});
}

/// @nodoc
class _$BodyValidationParamBodyCopyWithImpl<$Res>
    implements $BodyValidationParamBodyCopyWith<$Res> {
  _$BodyValidationParamBodyCopyWithImpl(this._self, this._then);

  final BodyValidationParamBody _self;
  final $Res Function(BodyValidationParamBody) _then;

  /// Create a copy of BodyValidationParamBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? importance = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      importance: null == importance
          ? _self.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [BodyValidationParamBody].
extension BodyValidationParamBodyPatterns on BodyValidationParamBody {
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
    TResult Function(_BodyValidationParamBody value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BodyValidationParamBody() when $default != null:
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
    TResult Function(_BodyValidationParamBody value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodyValidationParamBody():
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
    TResult? Function(_BodyValidationParamBody value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodyValidationParamBody() when $default != null:
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
            @JsonKey(name: BodyValidationParamBody.dataKey)
            Map<String, dynamic> data,
            @JsonKey(name: BodyValidationParamBody.importanceKey)
            int importance)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BodyValidationParamBody() when $default != null:
        return $default(_that.data, _that.importance);
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
            @JsonKey(name: BodyValidationParamBody.dataKey)
            Map<String, dynamic> data,
            @JsonKey(name: BodyValidationParamBody.importanceKey)
            int importance)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodyValidationParamBody():
        return $default(_that.data, _that.importance);
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
            @JsonKey(name: BodyValidationParamBody.dataKey)
            Map<String, dynamic> data,
            @JsonKey(name: BodyValidationParamBody.importanceKey)
            int importance)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodyValidationParamBody() when $default != null:
        return $default(_that.data, _that.importance);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _BodyValidationParamBody extends BodyValidationParamBody {
  const _BodyValidationParamBody(
      {@JsonKey(name: BodyValidationParamBody.dataKey)
      required final Map<String, dynamic> data,
      @JsonKey(name: BodyValidationParamBody.importanceKey)
      required this.importance})
      : _data = data,
        super._();
  factory _BodyValidationParamBody.fromJson(Map<String, dynamic> json) =>
      _$BodyValidationParamBodyFromJson(json);

  /// data
  final Map<String, dynamic> _data;

  /// data
  @override
  @JsonKey(name: BodyValidationParamBody.dataKey)
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  /// importance
  @override
  @JsonKey(name: BodyValidationParamBody.importanceKey)
  final int importance;

  /// Create a copy of BodyValidationParamBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BodyValidationParamBodyCopyWith<_BodyValidationParamBody> get copyWith =>
      __$BodyValidationParamBodyCopyWithImpl<_BodyValidationParamBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BodyValidationParamBodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BodyValidationParamBody &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.importance, importance) ||
                other.importance == importance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), importance);

  @override
  String toString() {
    return 'BodyValidationParamBody(data: $data, importance: $importance)';
  }
}

/// @nodoc
abstract mixin class _$BodyValidationParamBodyCopyWith<$Res>
    implements $BodyValidationParamBodyCopyWith<$Res> {
  factory _$BodyValidationParamBodyCopyWith(_BodyValidationParamBody value,
          $Res Function(_BodyValidationParamBody) _then) =
      __$BodyValidationParamBodyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BodyValidationParamBody.dataKey)
      Map<String, dynamic> data,
      @JsonKey(name: BodyValidationParamBody.importanceKey) int importance});
}

/// @nodoc
class __$BodyValidationParamBodyCopyWithImpl<$Res>
    implements _$BodyValidationParamBodyCopyWith<$Res> {
  __$BodyValidationParamBodyCopyWithImpl(this._self, this._then);

  final _BodyValidationParamBody _self;
  final $Res Function(_BodyValidationParamBody) _then;

  /// Create a copy of BodyValidationParamBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? importance = null,
  }) {
    return _then(_BodyValidationParamBody(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      importance: null == importance
          ? _self.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
