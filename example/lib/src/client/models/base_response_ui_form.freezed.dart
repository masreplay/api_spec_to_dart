// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_ui_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUIForm _$BaseResponseUIFormFromJson(Map<String, dynamic> json) {
  return _BaseResponseUIForm.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUIForm {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  UIForm get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUIForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUIForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUIFormCopyWith<BaseResponseUIForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUIFormCopyWith<$Res> {
  factory $BaseResponseUIFormCopyWith(
          BaseResponseUIForm value, $Res Function(BaseResponseUIForm) then) =
      _$BaseResponseUIFormCopyWithImpl<$Res, BaseResponseUIForm>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') UIForm data});

  $UIFormCopyWith<$Res> get data;
}

/// @nodoc
class _$BaseResponseUIFormCopyWithImpl<$Res, $Val extends BaseResponseUIForm>
    implements $BaseResponseUIFormCopyWith<$Res> {
  _$BaseResponseUIFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUIForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UIForm,
    ) as $Val);
  }

  /// Create a copy of BaseResponseUIForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UIFormCopyWith<$Res> get data {
    return $UIFormCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseUIFormImplCopyWith<$Res>
    implements $BaseResponseUIFormCopyWith<$Res> {
  factory _$$BaseResponseUIFormImplCopyWith(_$BaseResponseUIFormImpl value,
          $Res Function(_$BaseResponseUIFormImpl) then) =
      __$$BaseResponseUIFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') UIForm data});

  @override
  $UIFormCopyWith<$Res> get data;
}

/// @nodoc
class __$$BaseResponseUIFormImplCopyWithImpl<$Res>
    extends _$BaseResponseUIFormCopyWithImpl<$Res, _$BaseResponseUIFormImpl>
    implements _$$BaseResponseUIFormImplCopyWith<$Res> {
  __$$BaseResponseUIFormImplCopyWithImpl(_$BaseResponseUIFormImpl _value,
      $Res Function(_$BaseResponseUIFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUIForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseUIFormImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UIForm,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseUIFormImpl extends _BaseResponseUIForm {
  const _$BaseResponseUIFormImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseUIFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseResponseUIFormImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final UIForm data;

  @override
  String toString() {
    return 'BaseResponseUIForm(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseUIFormImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseUIForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUIFormImplCopyWith<_$BaseResponseUIFormImpl> get copyWith =>
      __$$BaseResponseUIFormImplCopyWithImpl<_$BaseResponseUIFormImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUIFormImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUIForm extends BaseResponseUIForm {
  const factory _BaseResponseUIForm(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final UIForm data}) =
      _$BaseResponseUIFormImpl;
  const _BaseResponseUIForm._() : super._();

  factory _BaseResponseUIForm.fromJson(Map<String, dynamic> json) =
      _$BaseResponseUIFormImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  UIForm get data;

  /// Create a copy of BaseResponseUIForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUIFormImplCopyWith<_$BaseResponseUIFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
