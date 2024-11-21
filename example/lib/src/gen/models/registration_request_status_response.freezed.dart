// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_request_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegistrationRequestStatusResponse _$RegistrationRequestStatusResponseFromJson(
    Map<String, dynamic> json) {
  return _RegistrationRequestStatusResponse.fromJson(json);
}

/// @nodoc
mixin _$RegistrationRequestStatusResponse {
  @JsonKey(name: 'status')
  StudentRequestStatus get status => throw _privateConstructorUsedError;

  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this RegistrationRequestStatusResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegistrationRequestStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationRequestStatusResponseCopyWith<RegistrationRequestStatusResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationRequestStatusResponseCopyWith<$Res> {
  factory $RegistrationRequestStatusResponseCopyWith(
          RegistrationRequestStatusResponse value,
          $Res Function(RegistrationRequestStatusResponse) then) =
      _$RegistrationRequestStatusResponseCopyWithImpl<$Res,
          RegistrationRequestStatusResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') StudentRequestStatus status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$RegistrationRequestStatusResponseCopyWithImpl<$Res,
        $Val extends RegistrationRequestStatusResponse>
    implements $RegistrationRequestStatusResponseCopyWith<$Res> {
  _$RegistrationRequestStatusResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationRequestStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StudentRequestStatus,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistrationRequestStatusResponseImplCopyWith<$Res>
    implements $RegistrationRequestStatusResponseCopyWith<$Res> {
  factory _$$RegistrationRequestStatusResponseImplCopyWith(
          _$RegistrationRequestStatusResponseImpl value,
          $Res Function(_$RegistrationRequestStatusResponseImpl) then) =
      __$$RegistrationRequestStatusResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') StudentRequestStatus status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$RegistrationRequestStatusResponseImplCopyWithImpl<$Res>
    extends _$RegistrationRequestStatusResponseCopyWithImpl<$Res,
        _$RegistrationRequestStatusResponseImpl>
    implements _$$RegistrationRequestStatusResponseImplCopyWith<$Res> {
  __$$RegistrationRequestStatusResponseImplCopyWithImpl(
      _$RegistrationRequestStatusResponseImpl _value,
      $Res Function(_$RegistrationRequestStatusResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationRequestStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_$RegistrationRequestStatusResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StudentRequestStatus,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$RegistrationRequestStatusResponseImpl
    extends _RegistrationRequestStatusResponse {
  const _$RegistrationRequestStatusResponseImpl(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'message') required this.message})
      : super._();

  factory _$RegistrationRequestStatusResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RegistrationRequestStatusResponseImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final StudentRequestStatus status;

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'RegistrationRequestStatusResponse(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationRequestStatusResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of RegistrationRequestStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationRequestStatusResponseImplCopyWith<
          _$RegistrationRequestStatusResponseImpl>
      get copyWith => __$$RegistrationRequestStatusResponseImplCopyWithImpl<
          _$RegistrationRequestStatusResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationRequestStatusResponseImplToJson(
      this,
    );
  }
}

abstract class _RegistrationRequestStatusResponse
    extends RegistrationRequestStatusResponse {
  const factory _RegistrationRequestStatusResponse(
          {@JsonKey(name: 'status') required final StudentRequestStatus status,
          @JsonKey(name: 'message') required final String? message}) =
      _$RegistrationRequestStatusResponseImpl;
  const _RegistrationRequestStatusResponse._() : super._();

  factory _RegistrationRequestStatusResponse.fromJson(
          Map<String, dynamic> json) =
      _$RegistrationRequestStatusResponseImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  StudentRequestStatus get status;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of RegistrationRequestStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationRequestStatusResponseImplCopyWith<
          _$RegistrationRequestStatusResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
