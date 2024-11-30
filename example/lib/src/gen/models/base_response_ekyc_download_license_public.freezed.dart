// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_ekyc_download_license_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseEkycDownloadLicensePublic
    _$BaseResponseEkycDownloadLicensePublicFromJson(Map<String, dynamic> json) {
  return _BaseResponseEkycDownloadLicensePublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseEkycDownloadLicensePublic {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  EkycDownloadLicensePublic get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseEkycDownloadLicensePublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseEkycDownloadLicensePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseEkycDownloadLicensePublicCopyWith<
          BaseResponseEkycDownloadLicensePublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseEkycDownloadLicensePublicCopyWith<$Res> {
  factory $BaseResponseEkycDownloadLicensePublicCopyWith(
          BaseResponseEkycDownloadLicensePublic value,
          $Res Function(BaseResponseEkycDownloadLicensePublic) then) =
      _$BaseResponseEkycDownloadLicensePublicCopyWithImpl<$Res,
          BaseResponseEkycDownloadLicensePublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') EkycDownloadLicensePublic data});

  $EkycDownloadLicensePublicCopyWith<$Res> get data;
}

/// @nodoc
class _$BaseResponseEkycDownloadLicensePublicCopyWithImpl<$Res,
        $Val extends BaseResponseEkycDownloadLicensePublic>
    implements $BaseResponseEkycDownloadLicensePublicCopyWith<$Res> {
  _$BaseResponseEkycDownloadLicensePublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseEkycDownloadLicensePublic
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
              as EkycDownloadLicensePublic,
    ) as $Val);
  }

  /// Create a copy of BaseResponseEkycDownloadLicensePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EkycDownloadLicensePublicCopyWith<$Res> get data {
    return $EkycDownloadLicensePublicCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseEkycDownloadLicensePublicImplCopyWith<$Res>
    implements $BaseResponseEkycDownloadLicensePublicCopyWith<$Res> {
  factory _$$BaseResponseEkycDownloadLicensePublicImplCopyWith(
          _$BaseResponseEkycDownloadLicensePublicImpl value,
          $Res Function(_$BaseResponseEkycDownloadLicensePublicImpl) then) =
      __$$BaseResponseEkycDownloadLicensePublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') EkycDownloadLicensePublic data});

  @override
  $EkycDownloadLicensePublicCopyWith<$Res> get data;
}

/// @nodoc
class __$$BaseResponseEkycDownloadLicensePublicImplCopyWithImpl<$Res>
    extends _$BaseResponseEkycDownloadLicensePublicCopyWithImpl<$Res,
        _$BaseResponseEkycDownloadLicensePublicImpl>
    implements _$$BaseResponseEkycDownloadLicensePublicImplCopyWith<$Res> {
  __$$BaseResponseEkycDownloadLicensePublicImplCopyWithImpl(
      _$BaseResponseEkycDownloadLicensePublicImpl _value,
      $Res Function(_$BaseResponseEkycDownloadLicensePublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseEkycDownloadLicensePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseEkycDownloadLicensePublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EkycDownloadLicensePublic,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseEkycDownloadLicensePublicImpl
    extends _BaseResponseEkycDownloadLicensePublic {
  const _$BaseResponseEkycDownloadLicensePublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseEkycDownloadLicensePublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseEkycDownloadLicensePublicImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final EkycDownloadLicensePublic data;

  @override
  String toString() {
    return 'BaseResponseEkycDownloadLicensePublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseEkycDownloadLicensePublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseEkycDownloadLicensePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseEkycDownloadLicensePublicImplCopyWith<
          _$BaseResponseEkycDownloadLicensePublicImpl>
      get copyWith => __$$BaseResponseEkycDownloadLicensePublicImplCopyWithImpl<
          _$BaseResponseEkycDownloadLicensePublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseEkycDownloadLicensePublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseEkycDownloadLicensePublic
    extends BaseResponseEkycDownloadLicensePublic {
  const factory _BaseResponseEkycDownloadLicensePublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final EkycDownloadLicensePublic data}) =
      _$BaseResponseEkycDownloadLicensePublicImpl;
  const _BaseResponseEkycDownloadLicensePublic._() : super._();

  factory _BaseResponseEkycDownloadLicensePublic.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseEkycDownloadLicensePublicImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  EkycDownloadLicensePublic get data;

  /// Create a copy of BaseResponseEkycDownloadLicensePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseEkycDownloadLicensePublicImplCopyWith<
          _$BaseResponseEkycDownloadLicensePublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
