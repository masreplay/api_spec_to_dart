// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_number_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PhoneNumberModel {
  /// phone
  @JsonKey(name: PhoneNumberModel.phoneKey)
  String get phone;

  /// phone2
  @JsonKey(name: PhoneNumberModel.phone2Key)
  String get phone2;

  /// Create a copy of PhoneNumberModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PhoneNumberModelCopyWith<PhoneNumberModel> get copyWith =>
      _$PhoneNumberModelCopyWithImpl<PhoneNumberModel>(
          this as PhoneNumberModel, _$identity);

  /// Serializes this PhoneNumberModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PhoneNumberModel &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.phone2, phone2) || other.phone2 == phone2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone, phone2);

  @override
  String toString() {
    return 'PhoneNumberModel(phone: $phone, phone2: $phone2)';
  }
}

/// @nodoc
abstract mixin class $PhoneNumberModelCopyWith<$Res> {
  factory $PhoneNumberModelCopyWith(
          PhoneNumberModel value, $Res Function(PhoneNumberModel) _then) =
      _$PhoneNumberModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: PhoneNumberModel.phoneKey) String phone,
      @JsonKey(name: PhoneNumberModel.phone2Key) String phone2});
}

/// @nodoc
class _$PhoneNumberModelCopyWithImpl<$Res>
    implements $PhoneNumberModelCopyWith<$Res> {
  _$PhoneNumberModelCopyWithImpl(this._self, this._then);

  final PhoneNumberModel _self;
  final $Res Function(PhoneNumberModel) _then;

  /// Create a copy of PhoneNumberModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? phone2 = null,
  }) {
    return _then(_self.copyWith(
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      phone2: null == phone2
          ? _self.phone2
          : phone2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [PhoneNumberModel].
extension PhoneNumberModelPatterns on PhoneNumberModel {
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
    TResult Function(_PhoneNumberModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PhoneNumberModel() when $default != null:
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
    TResult Function(_PhoneNumberModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PhoneNumberModel():
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
    TResult? Function(_PhoneNumberModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PhoneNumberModel() when $default != null:
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
    TResult Function(@JsonKey(name: PhoneNumberModel.phoneKey) String phone,
            @JsonKey(name: PhoneNumberModel.phone2Key) String phone2)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PhoneNumberModel() when $default != null:
        return $default(_that.phone, _that.phone2);
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
    TResult Function(@JsonKey(name: PhoneNumberModel.phoneKey) String phone,
            @JsonKey(name: PhoneNumberModel.phone2Key) String phone2)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PhoneNumberModel():
        return $default(_that.phone, _that.phone2);
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
    TResult? Function(@JsonKey(name: PhoneNumberModel.phoneKey) String phone,
            @JsonKey(name: PhoneNumberModel.phone2Key) String phone2)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PhoneNumberModel() when $default != null:
        return $default(_that.phone, _that.phone2);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PhoneNumberModel extends PhoneNumberModel {
  const _PhoneNumberModel(
      {@JsonKey(name: PhoneNumberModel.phoneKey) required this.phone,
      @JsonKey(name: PhoneNumberModel.phone2Key) required this.phone2})
      : super._();
  factory _PhoneNumberModel.fromJson(Map<String, dynamic> json) =>
      _$PhoneNumberModelFromJson(json);

  /// phone
  @override
  @JsonKey(name: PhoneNumberModel.phoneKey)
  final String phone;

  /// phone2
  @override
  @JsonKey(name: PhoneNumberModel.phone2Key)
  final String phone2;

  /// Create a copy of PhoneNumberModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PhoneNumberModelCopyWith<_PhoneNumberModel> get copyWith =>
      __$PhoneNumberModelCopyWithImpl<_PhoneNumberModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PhoneNumberModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhoneNumberModel &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.phone2, phone2) || other.phone2 == phone2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone, phone2);

  @override
  String toString() {
    return 'PhoneNumberModel(phone: $phone, phone2: $phone2)';
  }
}

/// @nodoc
abstract mixin class _$PhoneNumberModelCopyWith<$Res>
    implements $PhoneNumberModelCopyWith<$Res> {
  factory _$PhoneNumberModelCopyWith(
          _PhoneNumberModel value, $Res Function(_PhoneNumberModel) _then) =
      __$PhoneNumberModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: PhoneNumberModel.phoneKey) String phone,
      @JsonKey(name: PhoneNumberModel.phone2Key) String phone2});
}

/// @nodoc
class __$PhoneNumberModelCopyWithImpl<$Res>
    implements _$PhoneNumberModelCopyWith<$Res> {
  __$PhoneNumberModelCopyWithImpl(this._self, this._then);

  final _PhoneNumberModel _self;
  final $Res Function(_PhoneNumberModel) _then;

  /// Create a copy of PhoneNumberModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phone = null,
    Object? phone2 = null,
  }) {
    return _then(_PhoneNumberModel(
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      phone2: null == phone2
          ? _self.phone2
          : phone2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
