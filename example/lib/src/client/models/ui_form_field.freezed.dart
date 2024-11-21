// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_form_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UIFormField _$UIFormFieldFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'fallback':
      return UIFormFieldFallback.fromJson(json);
    case 'UITextFormField':
      return UIFormFieldUITextFormField.fromJson(json);
    case 'UICheckboxFormField':
      return UIFormFieldUICheckboxFormField.fromJson(json);
    case 'UISelectFormField':
      return UIFormFieldUISelectFormField.fromJson(json);
    case 'UIDateFormField':
      return UIFormFieldUIDateFormField.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UIFormField',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UIFormField {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fallback,
    required TResult Function(UITextFormField value) uITextFormField,
    required TResult Function(UICheckboxFormField value) uICheckboxFormField,
    required TResult Function(UISelectFormField value) uISelectFormField,
    required TResult Function(UIDateFormField value) uIDateFormField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fallback,
    TResult? Function(UITextFormField value)? uITextFormField,
    TResult? Function(UICheckboxFormField value)? uICheckboxFormField,
    TResult? Function(UISelectFormField value)? uISelectFormField,
    TResult? Function(UIDateFormField value)? uIDateFormField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fallback,
    TResult Function(UITextFormField value)? uITextFormField,
    TResult Function(UICheckboxFormField value)? uICheckboxFormField,
    TResult Function(UISelectFormField value)? uISelectFormField,
    TResult Function(UIDateFormField value)? uIDateFormField,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UIFormFieldFallback value) fallback,
    required TResult Function(UIFormFieldUITextFormField value) uITextFormField,
    required TResult Function(UIFormFieldUICheckboxFormField value)
        uICheckboxFormField,
    required TResult Function(UIFormFieldUISelectFormField value)
        uISelectFormField,
    required TResult Function(UIFormFieldUIDateFormField value) uIDateFormField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UIFormFieldFallback value)? fallback,
    TResult? Function(UIFormFieldUITextFormField value)? uITextFormField,
    TResult? Function(UIFormFieldUICheckboxFormField value)?
        uICheckboxFormField,
    TResult? Function(UIFormFieldUISelectFormField value)? uISelectFormField,
    TResult? Function(UIFormFieldUIDateFormField value)? uIDateFormField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UIFormFieldFallback value)? fallback,
    TResult Function(UIFormFieldUITextFormField value)? uITextFormField,
    TResult Function(UIFormFieldUICheckboxFormField value)? uICheckboxFormField,
    TResult Function(UIFormFieldUISelectFormField value)? uISelectFormField,
    TResult Function(UIFormFieldUIDateFormField value)? uIDateFormField,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UIFormField to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UIFormFieldCopyWith<$Res> {
  factory $UIFormFieldCopyWith(
          UIFormField value, $Res Function(UIFormField) then) =
      _$UIFormFieldCopyWithImpl<$Res, UIFormField>;
}

/// @nodoc
class _$UIFormFieldCopyWithImpl<$Res, $Val extends UIFormField>
    implements $UIFormFieldCopyWith<$Res> {
  _$UIFormFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UIFormField
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UIFormFieldFallbackImplCopyWith<$Res> {
  factory _$$UIFormFieldFallbackImplCopyWith(_$UIFormFieldFallbackImpl value,
          $Res Function(_$UIFormFieldFallbackImpl) then) =
      __$$UIFormFieldFallbackImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UIFormFieldFallbackImplCopyWithImpl<$Res>
    extends _$UIFormFieldCopyWithImpl<$Res, _$UIFormFieldFallbackImpl>
    implements _$$UIFormFieldFallbackImplCopyWith<$Res> {
  __$$UIFormFieldFallbackImplCopyWithImpl(_$UIFormFieldFallbackImpl _value,
      $Res Function(_$UIFormFieldFallbackImpl) _then)
      : super(_value, _then);

  /// Create a copy of UIFormField
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$UIFormFieldFallbackImpl implements UIFormFieldFallback {
  const _$UIFormFieldFallbackImpl({final String? $type})
      : $type = $type ?? 'fallback';

  factory _$UIFormFieldFallbackImpl.fromJson(Map<String, dynamic> json) =>
      _$$UIFormFieldFallbackImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UIFormField.fallback()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UIFormFieldFallbackImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fallback,
    required TResult Function(UITextFormField value) uITextFormField,
    required TResult Function(UICheckboxFormField value) uICheckboxFormField,
    required TResult Function(UISelectFormField value) uISelectFormField,
    required TResult Function(UIDateFormField value) uIDateFormField,
  }) {
    return fallback();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fallback,
    TResult? Function(UITextFormField value)? uITextFormField,
    TResult? Function(UICheckboxFormField value)? uICheckboxFormField,
    TResult? Function(UISelectFormField value)? uISelectFormField,
    TResult? Function(UIDateFormField value)? uIDateFormField,
  }) {
    return fallback?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fallback,
    TResult Function(UITextFormField value)? uITextFormField,
    TResult Function(UICheckboxFormField value)? uICheckboxFormField,
    TResult Function(UISelectFormField value)? uISelectFormField,
    TResult Function(UIDateFormField value)? uIDateFormField,
    required TResult orElse(),
  }) {
    if (fallback != null) {
      return fallback();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UIFormFieldFallback value) fallback,
    required TResult Function(UIFormFieldUITextFormField value) uITextFormField,
    required TResult Function(UIFormFieldUICheckboxFormField value)
        uICheckboxFormField,
    required TResult Function(UIFormFieldUISelectFormField value)
        uISelectFormField,
    required TResult Function(UIFormFieldUIDateFormField value) uIDateFormField,
  }) {
    return fallback(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UIFormFieldFallback value)? fallback,
    TResult? Function(UIFormFieldUITextFormField value)? uITextFormField,
    TResult? Function(UIFormFieldUICheckboxFormField value)?
        uICheckboxFormField,
    TResult? Function(UIFormFieldUISelectFormField value)? uISelectFormField,
    TResult? Function(UIFormFieldUIDateFormField value)? uIDateFormField,
  }) {
    return fallback?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UIFormFieldFallback value)? fallback,
    TResult Function(UIFormFieldUITextFormField value)? uITextFormField,
    TResult Function(UIFormFieldUICheckboxFormField value)? uICheckboxFormField,
    TResult Function(UIFormFieldUISelectFormField value)? uISelectFormField,
    TResult Function(UIFormFieldUIDateFormField value)? uIDateFormField,
    required TResult orElse(),
  }) {
    if (fallback != null) {
      return fallback(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UIFormFieldFallbackImplToJson(
      this,
    );
  }
}

abstract class UIFormFieldFallback implements UIFormField {
  const factory UIFormFieldFallback() = _$UIFormFieldFallbackImpl;

  factory UIFormFieldFallback.fromJson(Map<String, dynamic> json) =
      _$UIFormFieldFallbackImpl.fromJson;
}

/// @nodoc
abstract class _$$UIFormFieldUITextFormFieldImplCopyWith<$Res> {
  factory _$$UIFormFieldUITextFormFieldImplCopyWith(
          _$UIFormFieldUITextFormFieldImpl value,
          $Res Function(_$UIFormFieldUITextFormFieldImpl) then) =
      __$$UIFormFieldUITextFormFieldImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UITextFormField value});

  $UITextFormFieldCopyWith<$Res> get value;
}

/// @nodoc
class __$$UIFormFieldUITextFormFieldImplCopyWithImpl<$Res>
    extends _$UIFormFieldCopyWithImpl<$Res, _$UIFormFieldUITextFormFieldImpl>
    implements _$$UIFormFieldUITextFormFieldImplCopyWith<$Res> {
  __$$UIFormFieldUITextFormFieldImplCopyWithImpl(
      _$UIFormFieldUITextFormFieldImpl _value,
      $Res Function(_$UIFormFieldUITextFormFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of UIFormField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UIFormFieldUITextFormFieldImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as UITextFormField,
    ));
  }

  /// Create a copy of UIFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UITextFormFieldCopyWith<$Res> get value {
    return $UITextFormFieldCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$UIFormFieldUITextFormFieldImpl implements UIFormFieldUITextFormField {
  const _$UIFormFieldUITextFormFieldImpl(this.value, {final String? $type})
      : $type = $type ?? 'UITextFormField';

  factory _$UIFormFieldUITextFormFieldImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UIFormFieldUITextFormFieldImplFromJson(json);

  @override
  final UITextFormField value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UIFormField.uITextFormField(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UIFormFieldUITextFormFieldImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of UIFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UIFormFieldUITextFormFieldImplCopyWith<_$UIFormFieldUITextFormFieldImpl>
      get copyWith => __$$UIFormFieldUITextFormFieldImplCopyWithImpl<
          _$UIFormFieldUITextFormFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fallback,
    required TResult Function(UITextFormField value) uITextFormField,
    required TResult Function(UICheckboxFormField value) uICheckboxFormField,
    required TResult Function(UISelectFormField value) uISelectFormField,
    required TResult Function(UIDateFormField value) uIDateFormField,
  }) {
    return uITextFormField(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fallback,
    TResult? Function(UITextFormField value)? uITextFormField,
    TResult? Function(UICheckboxFormField value)? uICheckboxFormField,
    TResult? Function(UISelectFormField value)? uISelectFormField,
    TResult? Function(UIDateFormField value)? uIDateFormField,
  }) {
    return uITextFormField?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fallback,
    TResult Function(UITextFormField value)? uITextFormField,
    TResult Function(UICheckboxFormField value)? uICheckboxFormField,
    TResult Function(UISelectFormField value)? uISelectFormField,
    TResult Function(UIDateFormField value)? uIDateFormField,
    required TResult orElse(),
  }) {
    if (uITextFormField != null) {
      return uITextFormField(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UIFormFieldFallback value) fallback,
    required TResult Function(UIFormFieldUITextFormField value) uITextFormField,
    required TResult Function(UIFormFieldUICheckboxFormField value)
        uICheckboxFormField,
    required TResult Function(UIFormFieldUISelectFormField value)
        uISelectFormField,
    required TResult Function(UIFormFieldUIDateFormField value) uIDateFormField,
  }) {
    return uITextFormField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UIFormFieldFallback value)? fallback,
    TResult? Function(UIFormFieldUITextFormField value)? uITextFormField,
    TResult? Function(UIFormFieldUICheckboxFormField value)?
        uICheckboxFormField,
    TResult? Function(UIFormFieldUISelectFormField value)? uISelectFormField,
    TResult? Function(UIFormFieldUIDateFormField value)? uIDateFormField,
  }) {
    return uITextFormField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UIFormFieldFallback value)? fallback,
    TResult Function(UIFormFieldUITextFormField value)? uITextFormField,
    TResult Function(UIFormFieldUICheckboxFormField value)? uICheckboxFormField,
    TResult Function(UIFormFieldUISelectFormField value)? uISelectFormField,
    TResult Function(UIFormFieldUIDateFormField value)? uIDateFormField,
    required TResult orElse(),
  }) {
    if (uITextFormField != null) {
      return uITextFormField(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UIFormFieldUITextFormFieldImplToJson(
      this,
    );
  }
}

abstract class UIFormFieldUITextFormField implements UIFormField {
  const factory UIFormFieldUITextFormField(final UITextFormField value) =
      _$UIFormFieldUITextFormFieldImpl;

  factory UIFormFieldUITextFormField.fromJson(Map<String, dynamic> json) =
      _$UIFormFieldUITextFormFieldImpl.fromJson;

  UITextFormField get value;

  /// Create a copy of UIFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UIFormFieldUITextFormFieldImplCopyWith<_$UIFormFieldUITextFormFieldImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UIFormFieldUICheckboxFormFieldImplCopyWith<$Res> {
  factory _$$UIFormFieldUICheckboxFormFieldImplCopyWith(
          _$UIFormFieldUICheckboxFormFieldImpl value,
          $Res Function(_$UIFormFieldUICheckboxFormFieldImpl) then) =
      __$$UIFormFieldUICheckboxFormFieldImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UICheckboxFormField value});

  $UICheckboxFormFieldCopyWith<$Res> get value;
}

/// @nodoc
class __$$UIFormFieldUICheckboxFormFieldImplCopyWithImpl<$Res>
    extends _$UIFormFieldCopyWithImpl<$Res,
        _$UIFormFieldUICheckboxFormFieldImpl>
    implements _$$UIFormFieldUICheckboxFormFieldImplCopyWith<$Res> {
  __$$UIFormFieldUICheckboxFormFieldImplCopyWithImpl(
      _$UIFormFieldUICheckboxFormFieldImpl _value,
      $Res Function(_$UIFormFieldUICheckboxFormFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of UIFormField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UIFormFieldUICheckboxFormFieldImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as UICheckboxFormField,
    ));
  }

  /// Create a copy of UIFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UICheckboxFormFieldCopyWith<$Res> get value {
    return $UICheckboxFormFieldCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$UIFormFieldUICheckboxFormFieldImpl
    implements UIFormFieldUICheckboxFormField {
  const _$UIFormFieldUICheckboxFormFieldImpl(this.value, {final String? $type})
      : $type = $type ?? 'UICheckboxFormField';

  factory _$UIFormFieldUICheckboxFormFieldImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UIFormFieldUICheckboxFormFieldImplFromJson(json);

  @override
  final UICheckboxFormField value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UIFormField.uICheckboxFormField(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UIFormFieldUICheckboxFormFieldImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of UIFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UIFormFieldUICheckboxFormFieldImplCopyWith<
          _$UIFormFieldUICheckboxFormFieldImpl>
      get copyWith => __$$UIFormFieldUICheckboxFormFieldImplCopyWithImpl<
          _$UIFormFieldUICheckboxFormFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fallback,
    required TResult Function(UITextFormField value) uITextFormField,
    required TResult Function(UICheckboxFormField value) uICheckboxFormField,
    required TResult Function(UISelectFormField value) uISelectFormField,
    required TResult Function(UIDateFormField value) uIDateFormField,
  }) {
    return uICheckboxFormField(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fallback,
    TResult? Function(UITextFormField value)? uITextFormField,
    TResult? Function(UICheckboxFormField value)? uICheckboxFormField,
    TResult? Function(UISelectFormField value)? uISelectFormField,
    TResult? Function(UIDateFormField value)? uIDateFormField,
  }) {
    return uICheckboxFormField?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fallback,
    TResult Function(UITextFormField value)? uITextFormField,
    TResult Function(UICheckboxFormField value)? uICheckboxFormField,
    TResult Function(UISelectFormField value)? uISelectFormField,
    TResult Function(UIDateFormField value)? uIDateFormField,
    required TResult orElse(),
  }) {
    if (uICheckboxFormField != null) {
      return uICheckboxFormField(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UIFormFieldFallback value) fallback,
    required TResult Function(UIFormFieldUITextFormField value) uITextFormField,
    required TResult Function(UIFormFieldUICheckboxFormField value)
        uICheckboxFormField,
    required TResult Function(UIFormFieldUISelectFormField value)
        uISelectFormField,
    required TResult Function(UIFormFieldUIDateFormField value) uIDateFormField,
  }) {
    return uICheckboxFormField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UIFormFieldFallback value)? fallback,
    TResult? Function(UIFormFieldUITextFormField value)? uITextFormField,
    TResult? Function(UIFormFieldUICheckboxFormField value)?
        uICheckboxFormField,
    TResult? Function(UIFormFieldUISelectFormField value)? uISelectFormField,
    TResult? Function(UIFormFieldUIDateFormField value)? uIDateFormField,
  }) {
    return uICheckboxFormField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UIFormFieldFallback value)? fallback,
    TResult Function(UIFormFieldUITextFormField value)? uITextFormField,
    TResult Function(UIFormFieldUICheckboxFormField value)? uICheckboxFormField,
    TResult Function(UIFormFieldUISelectFormField value)? uISelectFormField,
    TResult Function(UIFormFieldUIDateFormField value)? uIDateFormField,
    required TResult orElse(),
  }) {
    if (uICheckboxFormField != null) {
      return uICheckboxFormField(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UIFormFieldUICheckboxFormFieldImplToJson(
      this,
    );
  }
}

abstract class UIFormFieldUICheckboxFormField implements UIFormField {
  const factory UIFormFieldUICheckboxFormField(
      final UICheckboxFormField value) = _$UIFormFieldUICheckboxFormFieldImpl;

  factory UIFormFieldUICheckboxFormField.fromJson(Map<String, dynamic> json) =
      _$UIFormFieldUICheckboxFormFieldImpl.fromJson;

  UICheckboxFormField get value;

  /// Create a copy of UIFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UIFormFieldUICheckboxFormFieldImplCopyWith<
          _$UIFormFieldUICheckboxFormFieldImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UIFormFieldUISelectFormFieldImplCopyWith<$Res> {
  factory _$$UIFormFieldUISelectFormFieldImplCopyWith(
          _$UIFormFieldUISelectFormFieldImpl value,
          $Res Function(_$UIFormFieldUISelectFormFieldImpl) then) =
      __$$UIFormFieldUISelectFormFieldImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UISelectFormField value});

  $UISelectFormFieldCopyWith<$Res> get value;
}

/// @nodoc
class __$$UIFormFieldUISelectFormFieldImplCopyWithImpl<$Res>
    extends _$UIFormFieldCopyWithImpl<$Res, _$UIFormFieldUISelectFormFieldImpl>
    implements _$$UIFormFieldUISelectFormFieldImplCopyWith<$Res> {
  __$$UIFormFieldUISelectFormFieldImplCopyWithImpl(
      _$UIFormFieldUISelectFormFieldImpl _value,
      $Res Function(_$UIFormFieldUISelectFormFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of UIFormField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UIFormFieldUISelectFormFieldImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as UISelectFormField,
    ));
  }

  /// Create a copy of UIFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UISelectFormFieldCopyWith<$Res> get value {
    return $UISelectFormFieldCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$UIFormFieldUISelectFormFieldImpl
    implements UIFormFieldUISelectFormField {
  const _$UIFormFieldUISelectFormFieldImpl(this.value, {final String? $type})
      : $type = $type ?? 'UISelectFormField';

  factory _$UIFormFieldUISelectFormFieldImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UIFormFieldUISelectFormFieldImplFromJson(json);

  @override
  final UISelectFormField value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UIFormField.uISelectFormField(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UIFormFieldUISelectFormFieldImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of UIFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UIFormFieldUISelectFormFieldImplCopyWith<
          _$UIFormFieldUISelectFormFieldImpl>
      get copyWith => __$$UIFormFieldUISelectFormFieldImplCopyWithImpl<
          _$UIFormFieldUISelectFormFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fallback,
    required TResult Function(UITextFormField value) uITextFormField,
    required TResult Function(UICheckboxFormField value) uICheckboxFormField,
    required TResult Function(UISelectFormField value) uISelectFormField,
    required TResult Function(UIDateFormField value) uIDateFormField,
  }) {
    return uISelectFormField(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fallback,
    TResult? Function(UITextFormField value)? uITextFormField,
    TResult? Function(UICheckboxFormField value)? uICheckboxFormField,
    TResult? Function(UISelectFormField value)? uISelectFormField,
    TResult? Function(UIDateFormField value)? uIDateFormField,
  }) {
    return uISelectFormField?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fallback,
    TResult Function(UITextFormField value)? uITextFormField,
    TResult Function(UICheckboxFormField value)? uICheckboxFormField,
    TResult Function(UISelectFormField value)? uISelectFormField,
    TResult Function(UIDateFormField value)? uIDateFormField,
    required TResult orElse(),
  }) {
    if (uISelectFormField != null) {
      return uISelectFormField(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UIFormFieldFallback value) fallback,
    required TResult Function(UIFormFieldUITextFormField value) uITextFormField,
    required TResult Function(UIFormFieldUICheckboxFormField value)
        uICheckboxFormField,
    required TResult Function(UIFormFieldUISelectFormField value)
        uISelectFormField,
    required TResult Function(UIFormFieldUIDateFormField value) uIDateFormField,
  }) {
    return uISelectFormField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UIFormFieldFallback value)? fallback,
    TResult? Function(UIFormFieldUITextFormField value)? uITextFormField,
    TResult? Function(UIFormFieldUICheckboxFormField value)?
        uICheckboxFormField,
    TResult? Function(UIFormFieldUISelectFormField value)? uISelectFormField,
    TResult? Function(UIFormFieldUIDateFormField value)? uIDateFormField,
  }) {
    return uISelectFormField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UIFormFieldFallback value)? fallback,
    TResult Function(UIFormFieldUITextFormField value)? uITextFormField,
    TResult Function(UIFormFieldUICheckboxFormField value)? uICheckboxFormField,
    TResult Function(UIFormFieldUISelectFormField value)? uISelectFormField,
    TResult Function(UIFormFieldUIDateFormField value)? uIDateFormField,
    required TResult orElse(),
  }) {
    if (uISelectFormField != null) {
      return uISelectFormField(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UIFormFieldUISelectFormFieldImplToJson(
      this,
    );
  }
}

abstract class UIFormFieldUISelectFormField implements UIFormField {
  const factory UIFormFieldUISelectFormField(final UISelectFormField value) =
      _$UIFormFieldUISelectFormFieldImpl;

  factory UIFormFieldUISelectFormField.fromJson(Map<String, dynamic> json) =
      _$UIFormFieldUISelectFormFieldImpl.fromJson;

  UISelectFormField get value;

  /// Create a copy of UIFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UIFormFieldUISelectFormFieldImplCopyWith<
          _$UIFormFieldUISelectFormFieldImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UIFormFieldUIDateFormFieldImplCopyWith<$Res> {
  factory _$$UIFormFieldUIDateFormFieldImplCopyWith(
          _$UIFormFieldUIDateFormFieldImpl value,
          $Res Function(_$UIFormFieldUIDateFormFieldImpl) then) =
      __$$UIFormFieldUIDateFormFieldImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UIDateFormField value});

  $UIDateFormFieldCopyWith<$Res> get value;
}

/// @nodoc
class __$$UIFormFieldUIDateFormFieldImplCopyWithImpl<$Res>
    extends _$UIFormFieldCopyWithImpl<$Res, _$UIFormFieldUIDateFormFieldImpl>
    implements _$$UIFormFieldUIDateFormFieldImplCopyWith<$Res> {
  __$$UIFormFieldUIDateFormFieldImplCopyWithImpl(
      _$UIFormFieldUIDateFormFieldImpl _value,
      $Res Function(_$UIFormFieldUIDateFormFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of UIFormField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UIFormFieldUIDateFormFieldImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as UIDateFormField,
    ));
  }

  /// Create a copy of UIFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UIDateFormFieldCopyWith<$Res> get value {
    return $UIDateFormFieldCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$UIFormFieldUIDateFormFieldImpl implements UIFormFieldUIDateFormField {
  const _$UIFormFieldUIDateFormFieldImpl(this.value, {final String? $type})
      : $type = $type ?? 'UIDateFormField';

  factory _$UIFormFieldUIDateFormFieldImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UIFormFieldUIDateFormFieldImplFromJson(json);

  @override
  final UIDateFormField value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UIFormField.uIDateFormField(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UIFormFieldUIDateFormFieldImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of UIFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UIFormFieldUIDateFormFieldImplCopyWith<_$UIFormFieldUIDateFormFieldImpl>
      get copyWith => __$$UIFormFieldUIDateFormFieldImplCopyWithImpl<
          _$UIFormFieldUIDateFormFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fallback,
    required TResult Function(UITextFormField value) uITextFormField,
    required TResult Function(UICheckboxFormField value) uICheckboxFormField,
    required TResult Function(UISelectFormField value) uISelectFormField,
    required TResult Function(UIDateFormField value) uIDateFormField,
  }) {
    return uIDateFormField(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fallback,
    TResult? Function(UITextFormField value)? uITextFormField,
    TResult? Function(UICheckboxFormField value)? uICheckboxFormField,
    TResult? Function(UISelectFormField value)? uISelectFormField,
    TResult? Function(UIDateFormField value)? uIDateFormField,
  }) {
    return uIDateFormField?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fallback,
    TResult Function(UITextFormField value)? uITextFormField,
    TResult Function(UICheckboxFormField value)? uICheckboxFormField,
    TResult Function(UISelectFormField value)? uISelectFormField,
    TResult Function(UIDateFormField value)? uIDateFormField,
    required TResult orElse(),
  }) {
    if (uIDateFormField != null) {
      return uIDateFormField(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UIFormFieldFallback value) fallback,
    required TResult Function(UIFormFieldUITextFormField value) uITextFormField,
    required TResult Function(UIFormFieldUICheckboxFormField value)
        uICheckboxFormField,
    required TResult Function(UIFormFieldUISelectFormField value)
        uISelectFormField,
    required TResult Function(UIFormFieldUIDateFormField value) uIDateFormField,
  }) {
    return uIDateFormField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UIFormFieldFallback value)? fallback,
    TResult? Function(UIFormFieldUITextFormField value)? uITextFormField,
    TResult? Function(UIFormFieldUICheckboxFormField value)?
        uICheckboxFormField,
    TResult? Function(UIFormFieldUISelectFormField value)? uISelectFormField,
    TResult? Function(UIFormFieldUIDateFormField value)? uIDateFormField,
  }) {
    return uIDateFormField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UIFormFieldFallback value)? fallback,
    TResult Function(UIFormFieldUITextFormField value)? uITextFormField,
    TResult Function(UIFormFieldUICheckboxFormField value)? uICheckboxFormField,
    TResult Function(UIFormFieldUISelectFormField value)? uISelectFormField,
    TResult Function(UIFormFieldUIDateFormField value)? uIDateFormField,
    required TResult orElse(),
  }) {
    if (uIDateFormField != null) {
      return uIDateFormField(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UIFormFieldUIDateFormFieldImplToJson(
      this,
    );
  }
}

abstract class UIFormFieldUIDateFormField implements UIFormField {
  const factory UIFormFieldUIDateFormField(final UIDateFormField value) =
      _$UIFormFieldUIDateFormFieldImpl;

  factory UIFormFieldUIDateFormField.fromJson(Map<String, dynamic> json) =
      _$UIFormFieldUIDateFormFieldImpl.fromJson;

  UIDateFormField get value;

  /// Create a copy of UIFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UIFormFieldUIDateFormFieldImplCopyWith<_$UIFormFieldUIDateFormFieldImpl>
      get copyWith => throw _privateConstructorUsedError;
}
