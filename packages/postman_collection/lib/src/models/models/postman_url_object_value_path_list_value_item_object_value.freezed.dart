// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_url_object_value_path_list_value_item_object_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanUrlObjectValuePathListValueItemObjectValue {
  /// type
  @JsonKey(name: PostmanUrlObjectValuePathListValueItemObjectValue.typeKey_)
  String? get type;

  /// value
  @JsonKey(name: PostmanUrlObjectValuePathListValueItemObjectValue.valueKey_)
  String? get value;

  /// Create a copy of PostmanUrlObjectValuePathListValueItemObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanUrlObjectValuePathListValueItemObjectValueCopyWith<
    PostmanUrlObjectValuePathListValueItemObjectValue
  >
  get copyWith =>
      _$PostmanUrlObjectValuePathListValueItemObjectValueCopyWithImpl<
        PostmanUrlObjectValuePathListValueItemObjectValue
      >(this as PostmanUrlObjectValuePathListValueItemObjectValue, _$identity);

  /// Serializes this PostmanUrlObjectValuePathListValueItemObjectValue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanUrlObjectValuePathListValueItemObjectValue;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanUrlObjectValuePathListValueItemObjectValue &&
            (identical(other.type, _this.type) || other.type == _this.type) &&
            (identical(other.value, _this.value) ||
                other.value == _this.value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanUrlObjectValuePathListValueItemObjectValue;
    return Object.hash(runtimeType, _this.type, _this.value);
  }

  @override
  String toString() {
    final _this = this as PostmanUrlObjectValuePathListValueItemObjectValue;
    return 'PostmanUrlObjectValuePathListValueItemObjectValue(type: ${_this.type}, value: ${_this.value})';
  }
}

/// @nodoc
abstract mixin class $PostmanUrlObjectValuePathListValueItemObjectValueCopyWith<
  $Res
> {
  factory $PostmanUrlObjectValuePathListValueItemObjectValueCopyWith(
    PostmanUrlObjectValuePathListValueItemObjectValue value,
    $Res Function(PostmanUrlObjectValuePathListValueItemObjectValue) _then,
  ) = _$PostmanUrlObjectValuePathListValueItemObjectValueCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanUrlObjectValuePathListValueItemObjectValue.typeKey_)
    String? type,
    @JsonKey(name: PostmanUrlObjectValuePathListValueItemObjectValue.valueKey_)
    String? value,
  });
}

/// @nodoc
class _$PostmanUrlObjectValuePathListValueItemObjectValueCopyWithImpl<$Res>
    implements
        $PostmanUrlObjectValuePathListValueItemObjectValueCopyWith<$Res> {
  _$PostmanUrlObjectValuePathListValueItemObjectValueCopyWithImpl(
    this._self,
    this._then,
  );

  final PostmanUrlObjectValuePathListValueItemObjectValue _self;
  final $Res Function(PostmanUrlObjectValuePathListValueItemObjectValue) _then;

  /// Create a copy of PostmanUrlObjectValuePathListValueItemObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = freezed, Object? value = freezed}) {
    return _then(
      PostmanUrlObjectValuePathListValueItemObjectValue(
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        value: freezed == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanUrlObjectValuePathListValueItemObjectValue].
extension PostmanUrlObjectValuePathListValueItemObjectValuePatterns
    on PostmanUrlObjectValuePathListValueItemObjectValue {
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
    TResult Function(_PostmanUrlObjectValuePathListValueItemObjectValue value)?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanUrlObjectValuePathListValueItemObjectValue()
          when $default != null:
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
    TResult Function(_PostmanUrlObjectValuePathListValueItemObjectValue value)
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanUrlObjectValuePathListValueItemObjectValue():
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
    TResult? Function(_PostmanUrlObjectValuePathListValueItemObjectValue value)?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanUrlObjectValuePathListValueItemObjectValue()
          when $default != null:
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
      @JsonKey(name: PostmanUrlObjectValuePathListValueItemObjectValue.typeKey_)
      String? type,
      @JsonKey(
        name: PostmanUrlObjectValuePathListValueItemObjectValue.valueKey_,
      )
      String? value,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanUrlObjectValuePathListValueItemObjectValue()
          when $default != null:
        return $default(_that.type, _that.value);
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
      @JsonKey(name: PostmanUrlObjectValuePathListValueItemObjectValue.typeKey_)
      String? type,
      @JsonKey(
        name: PostmanUrlObjectValuePathListValueItemObjectValue.valueKey_,
      )
      String? value,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanUrlObjectValuePathListValueItemObjectValue():
        return $default(_that.type, _that.value);
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
      @JsonKey(name: PostmanUrlObjectValuePathListValueItemObjectValue.typeKey_)
      String? type,
      @JsonKey(
        name: PostmanUrlObjectValuePathListValueItemObjectValue.valueKey_,
      )
      String? value,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanUrlObjectValuePathListValueItemObjectValue()
          when $default != null:
        return $default(_that.type, _that.value);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanUrlObjectValuePathListValueItemObjectValue
    extends PostmanUrlObjectValuePathListValueItemObjectValue {
  const _PostmanUrlObjectValuePathListValueItemObjectValue({
    @JsonKey(name: PostmanUrlObjectValuePathListValueItemObjectValue.typeKey_)
    this.type,
    @JsonKey(name: PostmanUrlObjectValuePathListValueItemObjectValue.valueKey_)
    this.value,
  }) : super._();
  factory _PostmanUrlObjectValuePathListValueItemObjectValue.fromJson(
    Map<String, dynamic> json,
  ) => _$PostmanUrlObjectValuePathListValueItemObjectValueFromJson(json);

  /// type
  @override
  @JsonKey(name: PostmanUrlObjectValuePathListValueItemObjectValue.typeKey_)
  final String? type;

  /// value
  @override
  @JsonKey(name: PostmanUrlObjectValuePathListValueItemObjectValue.valueKey_)
  final String? value;

  /// Create a copy of PostmanUrlObjectValuePathListValueItemObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanUrlObjectValuePathListValueItemObjectValueCopyWith<
    _PostmanUrlObjectValuePathListValueItemObjectValue
  >
  get copyWith =>
      __$PostmanUrlObjectValuePathListValueItemObjectValueCopyWithImpl<
        _PostmanUrlObjectValuePathListValueItemObjectValue
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanUrlObjectValuePathListValueItemObjectValueToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanUrlObjectValuePathListValueItemObjectValue &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, type, value);
  }

  @override
  String toString() {
    return 'PostmanUrlObjectValuePathListValueItemObjectValue(type: $type, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$PostmanUrlObjectValuePathListValueItemObjectValueCopyWith<
  $Res
>
    implements
        $PostmanUrlObjectValuePathListValueItemObjectValueCopyWith<$Res> {
  factory _$PostmanUrlObjectValuePathListValueItemObjectValueCopyWith(
    _PostmanUrlObjectValuePathListValueItemObjectValue value,
    $Res Function(_PostmanUrlObjectValuePathListValueItemObjectValue) _then,
  ) = __$PostmanUrlObjectValuePathListValueItemObjectValueCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanUrlObjectValuePathListValueItemObjectValue.typeKey_)
    String? type,
    @JsonKey(name: PostmanUrlObjectValuePathListValueItemObjectValue.valueKey_)
    String? value,
  });
}

/// @nodoc
class __$PostmanUrlObjectValuePathListValueItemObjectValueCopyWithImpl<$Res>
    implements
        _$PostmanUrlObjectValuePathListValueItemObjectValueCopyWith<$Res> {
  __$PostmanUrlObjectValuePathListValueItemObjectValueCopyWithImpl(
    this._self,
    this._then,
  );

  final _PostmanUrlObjectValuePathListValueItemObjectValue _self;
  final $Res Function(_PostmanUrlObjectValuePathListValueItemObjectValue) _then;

  /// Create a copy of PostmanUrlObjectValuePathListValueItemObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = freezed, Object? value = freezed}) {
    return _then(
      _PostmanUrlObjectValuePathListValueItemObjectValue(
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        value: freezed == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
