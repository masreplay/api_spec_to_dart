// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_list_verification_method_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseListVerificationMethodPublic
    _$BaseResponseListVerificationMethodPublicFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseListVerificationMethodPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseListVerificationMethodPublic {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<dynamic> get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseListVerificationMethodPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseListVerificationMethodPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseListVerificationMethodPublicCopyWith<
          BaseResponseListVerificationMethodPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseListVerificationMethodPublicCopyWith<$Res> {
  factory $BaseResponseListVerificationMethodPublicCopyWith(
          BaseResponseListVerificationMethodPublic value,
          $Res Function(BaseResponseListVerificationMethodPublic) then) =
      _$BaseResponseListVerificationMethodPublicCopyWithImpl<$Res,
          BaseResponseListVerificationMethodPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<dynamic> data});
}

/// @nodoc
class _$BaseResponseListVerificationMethodPublicCopyWithImpl<$Res,
        $Val extends BaseResponseListVerificationMethodPublic>
    implements $BaseResponseListVerificationMethodPublicCopyWith<$Res> {
  _$BaseResponseListVerificationMethodPublicCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseListVerificationMethodPublic
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
abstract class _$$BaseResponseListVerificationMethodPublicImplCopyWith<$Res>
    implements $BaseResponseListVerificationMethodPublicCopyWith<$Res> {
  factory _$$BaseResponseListVerificationMethodPublicImplCopyWith(
          _$BaseResponseListVerificationMethodPublicImpl value,
          $Res Function(_$BaseResponseListVerificationMethodPublicImpl) then) =
      __$$BaseResponseListVerificationMethodPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<dynamic> data});
}

/// @nodoc
class __$$BaseResponseListVerificationMethodPublicImplCopyWithImpl<$Res>
    extends _$BaseResponseListVerificationMethodPublicCopyWithImpl<$Res,
        _$BaseResponseListVerificationMethodPublicImpl>
    implements _$$BaseResponseListVerificationMethodPublicImplCopyWith<$Res> {
  __$$BaseResponseListVerificationMethodPublicImplCopyWithImpl(
      _$BaseResponseListVerificationMethodPublicImpl _value,
      $Res Function(_$BaseResponseListVerificationMethodPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseListVerificationMethodPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseListVerificationMethodPublicImpl(
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
class _$BaseResponseListVerificationMethodPublicImpl
    implements _BaseResponseListVerificationMethodPublic {
  const _$BaseResponseListVerificationMethodPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required final List<dynamic> data})
      : _data = data;

  factory _$BaseResponseListVerificationMethodPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseListVerificationMethodPublicImplFromJson(json);

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
    return 'BaseResponseListVerificationMethodPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseListVerificationMethodPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseListVerificationMethodPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseListVerificationMethodPublicImplCopyWith<
          _$BaseResponseListVerificationMethodPublicImpl>
      get copyWith =>
          __$$BaseResponseListVerificationMethodPublicImplCopyWithImpl<
              _$BaseResponseListVerificationMethodPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseListVerificationMethodPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseListVerificationMethodPublic
    implements BaseResponseListVerificationMethodPublic {
  const factory _BaseResponseListVerificationMethodPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final List<dynamic> data}) =
      _$BaseResponseListVerificationMethodPublicImpl;

  factory _BaseResponseListVerificationMethodPublic.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseListVerificationMethodPublicImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<dynamic> get data;

  /// Create a copy of BaseResponseListVerificationMethodPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseListVerificationMethodPublicImplCopyWith<
          _$BaseResponseListVerificationMethodPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
