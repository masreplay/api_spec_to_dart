// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_summary_response_.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionSummaryResponse _$BaseResponseUnionSummaryResponseFromJson(
    Map<String, dynamic> json) {
  return _BaseResponseUnionSummaryResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionSummaryResponse {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  SummaryResponse? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionSummaryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionSummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionSummaryResponseCopyWith<BaseResponseUnionSummaryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionSummaryResponseCopyWith<$Res> {
  factory $BaseResponseUnionSummaryResponseCopyWith(
          BaseResponseUnionSummaryResponse value,
          $Res Function(BaseResponseUnionSummaryResponse) then) =
      _$BaseResponseUnionSummaryResponseCopyWithImpl<$Res,
          BaseResponseUnionSummaryResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') SummaryResponse? data});

  $SummaryResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$BaseResponseUnionSummaryResponseCopyWithImpl<$Res,
        $Val extends BaseResponseUnionSummaryResponse>
    implements $BaseResponseUnionSummaryResponseCopyWith<$Res> {
  _$BaseResponseUnionSummaryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionSummaryResponse
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
              as SummaryResponse?,
    ) as $Val);
  }

  /// Create a copy of BaseResponseUnionSummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SummaryResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SummaryResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseUnionSummaryResponseImplCopyWith<$Res>
    implements $BaseResponseUnionSummaryResponseCopyWith<$Res> {
  factory _$$BaseResponseUnionSummaryResponseImplCopyWith(
          _$BaseResponseUnionSummaryResponseImpl value,
          $Res Function(_$BaseResponseUnionSummaryResponseImpl) then) =
      __$$BaseResponseUnionSummaryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') SummaryResponse? data});

  @override
  $SummaryResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BaseResponseUnionSummaryResponseImplCopyWithImpl<$Res>
    extends _$BaseResponseUnionSummaryResponseCopyWithImpl<$Res,
        _$BaseResponseUnionSummaryResponseImpl>
    implements _$$BaseResponseUnionSummaryResponseImplCopyWith<$Res> {
  __$$BaseResponseUnionSummaryResponseImplCopyWithImpl(
      _$BaseResponseUnionSummaryResponseImpl _value,
      $Res Function(_$BaseResponseUnionSummaryResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionSummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionSummaryResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SummaryResponse?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseUnionSummaryResponseImpl
    extends _BaseResponseUnionSummaryResponse {
  const _$BaseResponseUnionSummaryResponseImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseUnionSummaryResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionSummaryResponseImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final SummaryResponse? data;

  @override
  String toString() {
    return 'BaseResponseUnionSummaryResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseUnionSummaryResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseUnionSummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionSummaryResponseImplCopyWith<
          _$BaseResponseUnionSummaryResponseImpl>
      get copyWith => __$$BaseResponseUnionSummaryResponseImplCopyWithImpl<
          _$BaseResponseUnionSummaryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionSummaryResponseImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionSummaryResponse
    extends BaseResponseUnionSummaryResponse {
  const factory _BaseResponseUnionSummaryResponse(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final SummaryResponse? data}) =
      _$BaseResponseUnionSummaryResponseImpl;
  const _BaseResponseUnionSummaryResponse._() : super._();

  factory _BaseResponseUnionSummaryResponse.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionSummaryResponseImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  SummaryResponse? get data;

  /// Create a copy of BaseResponseUnionSummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionSummaryResponseImplCopyWith<
          _$BaseResponseUnionSummaryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
