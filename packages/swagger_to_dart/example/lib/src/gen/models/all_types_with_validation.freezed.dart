// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_types_with_validation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AllTypesWithValidation {
  /// intValue
  @JsonKey(name: AllTypesWithValidation.intValueKey)
  int get intValue;

  /// floatValue
  @JsonKey(name: AllTypesWithValidation.floatValueKey)
  double get floatValue;

  /// strValue
  @JsonKey(name: AllTypesWithValidation.strValueKey)
  String get strValue;

  /// boolValue
  @JsonKey(name: AllTypesWithValidation.boolValueKey)
  bool get boolValue;

  /// emailValue
  @JsonKey(name: AllTypesWithValidation.emailValueKey)
  String get emailValue;

  /// urlValue
  @JsonKey(name: AllTypesWithValidation.urlValueKey)
  Uri get urlValue;

  /// listValue
  @JsonKey(name: AllTypesWithValidation.listValueKey)
  List<String> get listValue;

  /// Create a copy of AllTypesWithValidation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AllTypesWithValidationCopyWith<AllTypesWithValidation> get copyWith =>
      _$AllTypesWithValidationCopyWithImpl<AllTypesWithValidation>(
          this as AllTypesWithValidation, _$identity);

  /// Serializes this AllTypesWithValidation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AllTypesWithValidation &&
            (identical(other.intValue, intValue) ||
                other.intValue == intValue) &&
            (identical(other.floatValue, floatValue) ||
                other.floatValue == floatValue) &&
            (identical(other.strValue, strValue) ||
                other.strValue == strValue) &&
            (identical(other.boolValue, boolValue) ||
                other.boolValue == boolValue) &&
            (identical(other.emailValue, emailValue) ||
                other.emailValue == emailValue) &&
            (identical(other.urlValue, urlValue) ||
                other.urlValue == urlValue) &&
            const DeepCollectionEquality().equals(other.listValue, listValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      intValue,
      floatValue,
      strValue,
      boolValue,
      emailValue,
      urlValue,
      const DeepCollectionEquality().hash(listValue));

  @override
  String toString() {
    return 'AllTypesWithValidation(intValue: $intValue, floatValue: $floatValue, strValue: $strValue, boolValue: $boolValue, emailValue: $emailValue, urlValue: $urlValue, listValue: $listValue)';
  }
}

/// @nodoc
abstract mixin class $AllTypesWithValidationCopyWith<$Res> {
  factory $AllTypesWithValidationCopyWith(AllTypesWithValidation value,
          $Res Function(AllTypesWithValidation) _then) =
      _$AllTypesWithValidationCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AllTypesWithValidation.intValueKey) int intValue,
      @JsonKey(name: AllTypesWithValidation.floatValueKey) double floatValue,
      @JsonKey(name: AllTypesWithValidation.strValueKey) String strValue,
      @JsonKey(name: AllTypesWithValidation.boolValueKey) bool boolValue,
      @JsonKey(name: AllTypesWithValidation.emailValueKey) String emailValue,
      @JsonKey(name: AllTypesWithValidation.urlValueKey) Uri urlValue,
      @JsonKey(name: AllTypesWithValidation.listValueKey)
      List<String> listValue});
}

/// @nodoc
class _$AllTypesWithValidationCopyWithImpl<$Res>
    implements $AllTypesWithValidationCopyWith<$Res> {
  _$AllTypesWithValidationCopyWithImpl(this._self, this._then);

  final AllTypesWithValidation _self;
  final $Res Function(AllTypesWithValidation) _then;

  /// Create a copy of AllTypesWithValidation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intValue = null,
    Object? floatValue = null,
    Object? strValue = null,
    Object? boolValue = null,
    Object? emailValue = null,
    Object? urlValue = null,
    Object? listValue = null,
  }) {
    return _then(_self.copyWith(
      intValue: null == intValue
          ? _self.intValue
          : intValue // ignore: cast_nullable_to_non_nullable
              as int,
      floatValue: null == floatValue
          ? _self.floatValue
          : floatValue // ignore: cast_nullable_to_non_nullable
              as double,
      strValue: null == strValue
          ? _self.strValue
          : strValue // ignore: cast_nullable_to_non_nullable
              as String,
      boolValue: null == boolValue
          ? _self.boolValue
          : boolValue // ignore: cast_nullable_to_non_nullable
              as bool,
      emailValue: null == emailValue
          ? _self.emailValue
          : emailValue // ignore: cast_nullable_to_non_nullable
              as String,
      urlValue: null == urlValue
          ? _self.urlValue
          : urlValue // ignore: cast_nullable_to_non_nullable
              as Uri,
      listValue: null == listValue
          ? _self.listValue
          : listValue // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [AllTypesWithValidation].
extension AllTypesWithValidationPatterns on AllTypesWithValidation {
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
    TResult Function(_AllTypesWithValidation value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AllTypesWithValidation() when $default != null:
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
    TResult Function(_AllTypesWithValidation value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AllTypesWithValidation():
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
    TResult? Function(_AllTypesWithValidation value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AllTypesWithValidation() when $default != null:
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
            @JsonKey(name: AllTypesWithValidation.intValueKey) int intValue,
            @JsonKey(name: AllTypesWithValidation.floatValueKey)
            double floatValue,
            @JsonKey(name: AllTypesWithValidation.strValueKey) String strValue,
            @JsonKey(name: AllTypesWithValidation.boolValueKey) bool boolValue,
            @JsonKey(name: AllTypesWithValidation.emailValueKey)
            String emailValue,
            @JsonKey(name: AllTypesWithValidation.urlValueKey) Uri urlValue,
            @JsonKey(name: AllTypesWithValidation.listValueKey)
            List<String> listValue)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AllTypesWithValidation() when $default != null:
        return $default(_that.intValue, _that.floatValue, _that.strValue,
            _that.boolValue, _that.emailValue, _that.urlValue, _that.listValue);
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
            @JsonKey(name: AllTypesWithValidation.intValueKey) int intValue,
            @JsonKey(name: AllTypesWithValidation.floatValueKey)
            double floatValue,
            @JsonKey(name: AllTypesWithValidation.strValueKey) String strValue,
            @JsonKey(name: AllTypesWithValidation.boolValueKey) bool boolValue,
            @JsonKey(name: AllTypesWithValidation.emailValueKey)
            String emailValue,
            @JsonKey(name: AllTypesWithValidation.urlValueKey) Uri urlValue,
            @JsonKey(name: AllTypesWithValidation.listValueKey)
            List<String> listValue)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AllTypesWithValidation():
        return $default(_that.intValue, _that.floatValue, _that.strValue,
            _that.boolValue, _that.emailValue, _that.urlValue, _that.listValue);
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
            @JsonKey(name: AllTypesWithValidation.intValueKey) int intValue,
            @JsonKey(name: AllTypesWithValidation.floatValueKey)
            double floatValue,
            @JsonKey(name: AllTypesWithValidation.strValueKey) String strValue,
            @JsonKey(name: AllTypesWithValidation.boolValueKey) bool boolValue,
            @JsonKey(name: AllTypesWithValidation.emailValueKey)
            String emailValue,
            @JsonKey(name: AllTypesWithValidation.urlValueKey) Uri urlValue,
            @JsonKey(name: AllTypesWithValidation.listValueKey)
            List<String> listValue)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AllTypesWithValidation() when $default != null:
        return $default(_that.intValue, _that.floatValue, _that.strValue,
            _that.boolValue, _that.emailValue, _that.urlValue, _that.listValue);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _AllTypesWithValidation extends AllTypesWithValidation {
  const _AllTypesWithValidation(
      {@JsonKey(name: AllTypesWithValidation.intValueKey)
      required this.intValue,
      @JsonKey(name: AllTypesWithValidation.floatValueKey)
      required this.floatValue,
      @JsonKey(name: AllTypesWithValidation.strValueKey) required this.strValue,
      @JsonKey(name: AllTypesWithValidation.boolValueKey)
      required this.boolValue,
      @JsonKey(name: AllTypesWithValidation.emailValueKey)
      required this.emailValue,
      @JsonKey(name: AllTypesWithValidation.urlValueKey) required this.urlValue,
      @JsonKey(name: AllTypesWithValidation.listValueKey)
      required final List<String> listValue})
      : _listValue = listValue,
        super._();
  factory _AllTypesWithValidation.fromJson(Map<String, dynamic> json) =>
      _$AllTypesWithValidationFromJson(json);

  /// intValue
  @override
  @JsonKey(name: AllTypesWithValidation.intValueKey)
  final int intValue;

  /// floatValue
  @override
  @JsonKey(name: AllTypesWithValidation.floatValueKey)
  final double floatValue;

  /// strValue
  @override
  @JsonKey(name: AllTypesWithValidation.strValueKey)
  final String strValue;

  /// boolValue
  @override
  @JsonKey(name: AllTypesWithValidation.boolValueKey)
  final bool boolValue;

  /// emailValue
  @override
  @JsonKey(name: AllTypesWithValidation.emailValueKey)
  final String emailValue;

  /// urlValue
  @override
  @JsonKey(name: AllTypesWithValidation.urlValueKey)
  final Uri urlValue;

  /// listValue
  final List<String> _listValue;

  /// listValue
  @override
  @JsonKey(name: AllTypesWithValidation.listValueKey)
  List<String> get listValue {
    if (_listValue is EqualUnmodifiableListView) return _listValue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listValue);
  }

  /// Create a copy of AllTypesWithValidation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AllTypesWithValidationCopyWith<_AllTypesWithValidation> get copyWith =>
      __$AllTypesWithValidationCopyWithImpl<_AllTypesWithValidation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AllTypesWithValidationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AllTypesWithValidation &&
            (identical(other.intValue, intValue) ||
                other.intValue == intValue) &&
            (identical(other.floatValue, floatValue) ||
                other.floatValue == floatValue) &&
            (identical(other.strValue, strValue) ||
                other.strValue == strValue) &&
            (identical(other.boolValue, boolValue) ||
                other.boolValue == boolValue) &&
            (identical(other.emailValue, emailValue) ||
                other.emailValue == emailValue) &&
            (identical(other.urlValue, urlValue) ||
                other.urlValue == urlValue) &&
            const DeepCollectionEquality()
                .equals(other._listValue, _listValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      intValue,
      floatValue,
      strValue,
      boolValue,
      emailValue,
      urlValue,
      const DeepCollectionEquality().hash(_listValue));

  @override
  String toString() {
    return 'AllTypesWithValidation(intValue: $intValue, floatValue: $floatValue, strValue: $strValue, boolValue: $boolValue, emailValue: $emailValue, urlValue: $urlValue, listValue: $listValue)';
  }
}

/// @nodoc
abstract mixin class _$AllTypesWithValidationCopyWith<$Res>
    implements $AllTypesWithValidationCopyWith<$Res> {
  factory _$AllTypesWithValidationCopyWith(_AllTypesWithValidation value,
          $Res Function(_AllTypesWithValidation) _then) =
      __$AllTypesWithValidationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AllTypesWithValidation.intValueKey) int intValue,
      @JsonKey(name: AllTypesWithValidation.floatValueKey) double floatValue,
      @JsonKey(name: AllTypesWithValidation.strValueKey) String strValue,
      @JsonKey(name: AllTypesWithValidation.boolValueKey) bool boolValue,
      @JsonKey(name: AllTypesWithValidation.emailValueKey) String emailValue,
      @JsonKey(name: AllTypesWithValidation.urlValueKey) Uri urlValue,
      @JsonKey(name: AllTypesWithValidation.listValueKey)
      List<String> listValue});
}

/// @nodoc
class __$AllTypesWithValidationCopyWithImpl<$Res>
    implements _$AllTypesWithValidationCopyWith<$Res> {
  __$AllTypesWithValidationCopyWithImpl(this._self, this._then);

  final _AllTypesWithValidation _self;
  final $Res Function(_AllTypesWithValidation) _then;

  /// Create a copy of AllTypesWithValidation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? intValue = null,
    Object? floatValue = null,
    Object? strValue = null,
    Object? boolValue = null,
    Object? emailValue = null,
    Object? urlValue = null,
    Object? listValue = null,
  }) {
    return _then(_AllTypesWithValidation(
      intValue: null == intValue
          ? _self.intValue
          : intValue // ignore: cast_nullable_to_non_nullable
              as int,
      floatValue: null == floatValue
          ? _self.floatValue
          : floatValue // ignore: cast_nullable_to_non_nullable
              as double,
      strValue: null == strValue
          ? _self.strValue
          : strValue // ignore: cast_nullable_to_non_nullable
              as String,
      boolValue: null == boolValue
          ? _self.boolValue
          : boolValue // ignore: cast_nullable_to_non_nullable
              as bool,
      emailValue: null == emailValue
          ? _self.emailValue
          : emailValue // ignore: cast_nullable_to_non_nullable
              as String,
      urlValue: null == urlValue
          ? _self.urlValue
          : urlValue // ignore: cast_nullable_to_non_nullable
              as Uri,
      listValue: null == listValue
          ? _self._listValue
          : listValue // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}
