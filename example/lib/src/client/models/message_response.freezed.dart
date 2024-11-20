// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageResponse _$MessageResponseFromJson(Map<String, dynamic> json) {
  return _MessageResponse.fromJson(json);
}

/// @nodoc
mixin _$MessageResponse {
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;

  /// Serializes this MessageResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageResponseCopyWith<MessageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageResponseCopyWith<$Res> {
  factory $MessageResponseCopyWith(
          MessageResponse value, $Res Function(MessageResponse) then) =
      _$MessageResponseCopyWithImpl<$Res, MessageResponse>;
  @useResult
  $Res call({@JsonKey(name: 'message') String message});
}

/// @nodoc
class _$MessageResponseCopyWithImpl<$Res, $Val extends MessageResponse>
    implements $MessageResponseCopyWith<$Res> {
  _$MessageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageResponseImplCopyWith<$Res>
    implements $MessageResponseCopyWith<$Res> {
  factory _$$MessageResponseImplCopyWith(_$MessageResponseImpl value,
          $Res Function(_$MessageResponseImpl) then) =
      __$$MessageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'message') String message});
}

/// @nodoc
class __$$MessageResponseImplCopyWithImpl<$Res>
    extends _$MessageResponseCopyWithImpl<$Res, _$MessageResponseImpl>
    implements _$$MessageResponseImplCopyWith<$Res> {
  __$$MessageResponseImplCopyWithImpl(
      _$MessageResponseImpl _value, $Res Function(_$MessageResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$MessageResponseImpl extends _MessageResponse {
  const _$MessageResponseImpl({@JsonKey(name: 'message') required this.message})
      : super._();

  factory _$MessageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageResponseImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String message;

  @override
  String toString() {
    return 'MessageResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageResponseImplCopyWith<_$MessageResponseImpl> get copyWith =>
      __$$MessageResponseImplCopyWithImpl<_$MessageResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageResponseImplToJson(
      this,
    );
  }
}

abstract class _MessageResponse extends MessageResponse {
  const factory _MessageResponse(
          {@JsonKey(name: 'message') required final String message}) =
      _$MessageResponseImpl;
  const _MessageResponse._() : super._();

  factory _MessageResponse.fromJson(Map<String, dynamic> json) =
      _$MessageResponseImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String get message;

  /// Create a copy of MessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageResponseImplCopyWith<_$MessageResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
