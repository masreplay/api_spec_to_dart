// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_select_form_field_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UISelectFormFieldOption _$UISelectFormFieldOptionFromJson(
    Map<String, dynamic> json) {
  return _UISelectFormFieldOption.fromJson(json);
}

/// @nodoc
mixin _$UISelectFormFieldOption {
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'text')
  String get text => throw _privateConstructorUsedError;

  /// Serializes this UISelectFormFieldOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UISelectFormFieldOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UISelectFormFieldOptionCopyWith<UISelectFormFieldOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UISelectFormFieldOptionCopyWith<$Res> {
  factory $UISelectFormFieldOptionCopyWith(UISelectFormFieldOption value,
          $Res Function(UISelectFormFieldOption) then) =
      _$UISelectFormFieldOptionCopyWithImpl<$Res, UISelectFormFieldOption>;
  @useResult
  $Res call(
      {@JsonKey(name: 'value') String value,
      @JsonKey(name: 'text') String text});
}

/// @nodoc
class _$UISelectFormFieldOptionCopyWithImpl<$Res,
        $Val extends UISelectFormFieldOption>
    implements $UISelectFormFieldOptionCopyWith<$Res> {
  _$UISelectFormFieldOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UISelectFormFieldOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UISelectFormFieldOptionImplCopyWith<$Res>
    implements $UISelectFormFieldOptionCopyWith<$Res> {
  factory _$$UISelectFormFieldOptionImplCopyWith(
          _$UISelectFormFieldOptionImpl value,
          $Res Function(_$UISelectFormFieldOptionImpl) then) =
      __$$UISelectFormFieldOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'value') String value,
      @JsonKey(name: 'text') String text});
}

/// @nodoc
class __$$UISelectFormFieldOptionImplCopyWithImpl<$Res>
    extends _$UISelectFormFieldOptionCopyWithImpl<$Res,
        _$UISelectFormFieldOptionImpl>
    implements _$$UISelectFormFieldOptionImplCopyWith<$Res> {
  __$$UISelectFormFieldOptionImplCopyWithImpl(
      _$UISelectFormFieldOptionImpl _value,
      $Res Function(_$UISelectFormFieldOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of UISelectFormFieldOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? text = null,
  }) {
    return _then(_$UISelectFormFieldOptionImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$UISelectFormFieldOptionImpl extends _UISelectFormFieldOption {
  const _$UISelectFormFieldOptionImpl(
      {@JsonKey(name: 'value') required this.value,
      @JsonKey(name: 'text') required this.text})
      : super._();

  factory _$UISelectFormFieldOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$UISelectFormFieldOptionImplFromJson(json);

  @override
  @JsonKey(name: 'value')
  final String value;
  @override
  @JsonKey(name: 'text')
  final String text;

  @override
  String toString() {
    return 'UISelectFormFieldOption(value: $value, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UISelectFormFieldOptionImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, text);

  /// Create a copy of UISelectFormFieldOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UISelectFormFieldOptionImplCopyWith<_$UISelectFormFieldOptionImpl>
      get copyWith => __$$UISelectFormFieldOptionImplCopyWithImpl<
          _$UISelectFormFieldOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UISelectFormFieldOptionImplToJson(
      this,
    );
  }
}

abstract class _UISelectFormFieldOption extends UISelectFormFieldOption {
  const factory _UISelectFormFieldOption(
          {@JsonKey(name: 'value') required final String value,
          @JsonKey(name: 'text') required final String text}) =
      _$UISelectFormFieldOptionImpl;
  const _UISelectFormFieldOption._() : super._();

  factory _UISelectFormFieldOption.fromJson(Map<String, dynamic> json) =
      _$UISelectFormFieldOptionImpl.fromJson;

  @override
  @JsonKey(name: 'value')
  String get value;
  @override
  @JsonKey(name: 'text')
  String get text;

  /// Create a copy of UISelectFormFieldOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UISelectFormFieldOptionImplCopyWith<_$UISelectFormFieldOptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
