// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_app_settings_response_.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionAppSettingsResponse
    _$BaseResponseUnionAppSettingsResponseFromJson(Map<String, dynamic> json) {
  return _BaseResponseUnionAppSettingsResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionAppSettingsResponse {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  AppSettingsResponse? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionAppSettingsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionAppSettingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionAppSettingsResponseCopyWith<
          BaseResponseUnionAppSettingsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionAppSettingsResponseCopyWith<$Res> {
  factory $BaseResponseUnionAppSettingsResponseCopyWith(
          BaseResponseUnionAppSettingsResponse value,
          $Res Function(BaseResponseUnionAppSettingsResponse) then) =
      _$BaseResponseUnionAppSettingsResponseCopyWithImpl<$Res,
          BaseResponseUnionAppSettingsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') AppSettingsResponse? data});

  $AppSettingsResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$BaseResponseUnionAppSettingsResponseCopyWithImpl<$Res,
        $Val extends BaseResponseUnionAppSettingsResponse>
    implements $BaseResponseUnionAppSettingsResponseCopyWith<$Res> {
  _$BaseResponseUnionAppSettingsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionAppSettingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AppSettingsResponse?,
    ) as $Val);
  }

  /// Create a copy of BaseResponseUnionAppSettingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppSettingsResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AppSettingsResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseUnionAppSettingsResponseImplCopyWith<$Res>
    implements $BaseResponseUnionAppSettingsResponseCopyWith<$Res> {
  factory _$$BaseResponseUnionAppSettingsResponseImplCopyWith(
          _$BaseResponseUnionAppSettingsResponseImpl value,
          $Res Function(_$BaseResponseUnionAppSettingsResponseImpl) then) =
      __$$BaseResponseUnionAppSettingsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') AppSettingsResponse? data});

  @override
  $AppSettingsResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BaseResponseUnionAppSettingsResponseImplCopyWithImpl<$Res>
    extends _$BaseResponseUnionAppSettingsResponseCopyWithImpl<$Res,
        _$BaseResponseUnionAppSettingsResponseImpl>
    implements _$$BaseResponseUnionAppSettingsResponseImplCopyWith<$Res> {
  __$$BaseResponseUnionAppSettingsResponseImplCopyWithImpl(
      _$BaseResponseUnionAppSettingsResponseImpl _value,
      $Res Function(_$BaseResponseUnionAppSettingsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionAppSettingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionAppSettingsResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AppSettingsResponse?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseUnionAppSettingsResponseImpl
    extends _BaseResponseUnionAppSettingsResponse {
  const _$BaseResponseUnionAppSettingsResponseImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseUnionAppSettingsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionAppSettingsResponseImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final AppSettingsResponse? data;

  @override
  String toString() {
    return 'BaseResponseUnionAppSettingsResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseUnionAppSettingsResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseUnionAppSettingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionAppSettingsResponseImplCopyWith<
          _$BaseResponseUnionAppSettingsResponseImpl>
      get copyWith => __$$BaseResponseUnionAppSettingsResponseImplCopyWithImpl<
          _$BaseResponseUnionAppSettingsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionAppSettingsResponseImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionAppSettingsResponse
    extends BaseResponseUnionAppSettingsResponse {
  const factory _BaseResponseUnionAppSettingsResponse(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final AppSettingsResponse? data}) =
      _$BaseResponseUnionAppSettingsResponseImpl;
  const _BaseResponseUnionAppSettingsResponse._() : super._();

  factory _BaseResponseUnionAppSettingsResponse.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionAppSettingsResponseImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  AppSettingsResponse? get data;

  /// Create a copy of BaseResponseUnionAppSettingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionAppSettingsResponseImplCopyWith<
          _$BaseResponseUnionAppSettingsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
