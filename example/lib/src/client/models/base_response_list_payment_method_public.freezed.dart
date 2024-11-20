// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_list_payment_method_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseListPaymentMethodPublic
    _$BaseResponseListPaymentMethodPublicFromJson(Map<String, dynamic> json) {
  return _BaseResponseListPaymentMethodPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseListPaymentMethodPublic {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<dynamic> get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseListPaymentMethodPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseListPaymentMethodPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseListPaymentMethodPublicCopyWith<
          BaseResponseListPaymentMethodPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseListPaymentMethodPublicCopyWith<$Res> {
  factory $BaseResponseListPaymentMethodPublicCopyWith(
          BaseResponseListPaymentMethodPublic value,
          $Res Function(BaseResponseListPaymentMethodPublic) then) =
      _$BaseResponseListPaymentMethodPublicCopyWithImpl<$Res,
          BaseResponseListPaymentMethodPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<dynamic> data});
}

/// @nodoc
class _$BaseResponseListPaymentMethodPublicCopyWithImpl<$Res,
        $Val extends BaseResponseListPaymentMethodPublic>
    implements $BaseResponseListPaymentMethodPublicCopyWith<$Res> {
  _$BaseResponseListPaymentMethodPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseListPaymentMethodPublic
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
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseListPaymentMethodPublicImplCopyWith<$Res>
    implements $BaseResponseListPaymentMethodPublicCopyWith<$Res> {
  factory _$$BaseResponseListPaymentMethodPublicImplCopyWith(
          _$BaseResponseListPaymentMethodPublicImpl value,
          $Res Function(_$BaseResponseListPaymentMethodPublicImpl) then) =
      __$$BaseResponseListPaymentMethodPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<dynamic> data});
}

/// @nodoc
class __$$BaseResponseListPaymentMethodPublicImplCopyWithImpl<$Res>
    extends _$BaseResponseListPaymentMethodPublicCopyWithImpl<$Res,
        _$BaseResponseListPaymentMethodPublicImpl>
    implements _$$BaseResponseListPaymentMethodPublicImplCopyWith<$Res> {
  __$$BaseResponseListPaymentMethodPublicImplCopyWithImpl(
      _$BaseResponseListPaymentMethodPublicImpl _value,
      $Res Function(_$BaseResponseListPaymentMethodPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseListPaymentMethodPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseListPaymentMethodPublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseResponseListPaymentMethodPublicImpl
    implements _BaseResponseListPaymentMethodPublic {
  const _$BaseResponseListPaymentMethodPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required final List<dynamic> data})
      : _data = data;

  factory _$BaseResponseListPaymentMethodPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseListPaymentMethodPublicImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<dynamic> _data;
  @override
  @JsonKey(name: 'data')
  List<dynamic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BaseResponseListPaymentMethodPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseListPaymentMethodPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseListPaymentMethodPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseListPaymentMethodPublicImplCopyWith<
          _$BaseResponseListPaymentMethodPublicImpl>
      get copyWith => __$$BaseResponseListPaymentMethodPublicImplCopyWithImpl<
          _$BaseResponseListPaymentMethodPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseListPaymentMethodPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseListPaymentMethodPublic
    implements BaseResponseListPaymentMethodPublic {
  const factory _BaseResponseListPaymentMethodPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final List<dynamic> data}) =
      _$BaseResponseListPaymentMethodPublicImpl;

  factory _BaseResponseListPaymentMethodPublic.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseListPaymentMethodPublicImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<dynamic> get data;

  /// Create a copy of BaseResponseListPaymentMethodPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseListPaymentMethodPublicImplCopyWith<
          _$BaseResponseListPaymentMethodPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
