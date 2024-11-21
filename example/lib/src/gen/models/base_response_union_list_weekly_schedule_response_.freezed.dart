// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_list_weekly_schedule_response_.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionListWeeklyScheduleResponse
    _$BaseResponseUnionListWeeklyScheduleResponseFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseUnionListWeeklyScheduleResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionListWeeklyScheduleResponse {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Data
  @JsonKey(name: 'data')
  List<WeeklyScheduleResponse>? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionListWeeklyScheduleResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionListWeeklyScheduleResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionListWeeklyScheduleResponseCopyWith<
          BaseResponseUnionListWeeklyScheduleResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionListWeeklyScheduleResponseCopyWith<$Res> {
  factory $BaseResponseUnionListWeeklyScheduleResponseCopyWith(
          BaseResponseUnionListWeeklyScheduleResponse value,
          $Res Function(BaseResponseUnionListWeeklyScheduleResponse) then) =
      _$BaseResponseUnionListWeeklyScheduleResponseCopyWithImpl<$Res,
          BaseResponseUnionListWeeklyScheduleResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<WeeklyScheduleResponse>? data});
}

/// @nodoc
class _$BaseResponseUnionListWeeklyScheduleResponseCopyWithImpl<$Res,
        $Val extends BaseResponseUnionListWeeklyScheduleResponse>
    implements $BaseResponseUnionListWeeklyScheduleResponseCopyWith<$Res> {
  _$BaseResponseUnionListWeeklyScheduleResponseCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionListWeeklyScheduleResponse
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
              as List<WeeklyScheduleResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseUnionListWeeklyScheduleResponseImplCopyWith<$Res>
    implements $BaseResponseUnionListWeeklyScheduleResponseCopyWith<$Res> {
  factory _$$BaseResponseUnionListWeeklyScheduleResponseImplCopyWith(
          _$BaseResponseUnionListWeeklyScheduleResponseImpl value,
          $Res Function(_$BaseResponseUnionListWeeklyScheduleResponseImpl)
              then) =
      __$$BaseResponseUnionListWeeklyScheduleResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<WeeklyScheduleResponse>? data});
}

/// @nodoc
class __$$BaseResponseUnionListWeeklyScheduleResponseImplCopyWithImpl<$Res>
    extends _$BaseResponseUnionListWeeklyScheduleResponseCopyWithImpl<$Res,
        _$BaseResponseUnionListWeeklyScheduleResponseImpl>
    implements
        _$$BaseResponseUnionListWeeklyScheduleResponseImplCopyWith<$Res> {
  __$$BaseResponseUnionListWeeklyScheduleResponseImplCopyWithImpl(
      _$BaseResponseUnionListWeeklyScheduleResponseImpl _value,
      $Res Function(_$BaseResponseUnionListWeeklyScheduleResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionListWeeklyScheduleResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionListWeeklyScheduleResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WeeklyScheduleResponse>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseUnionListWeeklyScheduleResponseImpl
    extends _BaseResponseUnionListWeeklyScheduleResponse {
  const _$BaseResponseUnionListWeeklyScheduleResponseImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required final List<WeeklyScheduleResponse>? data})
      : _data = data,
        super._();

  factory _$BaseResponseUnionListWeeklyScheduleResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionListWeeklyScheduleResponseImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Data
  final List<WeeklyScheduleResponse>? _data;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<WeeklyScheduleResponse>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BaseResponseUnionListWeeklyScheduleResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseUnionListWeeklyScheduleResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseUnionListWeeklyScheduleResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionListWeeklyScheduleResponseImplCopyWith<
          _$BaseResponseUnionListWeeklyScheduleResponseImpl>
      get copyWith =>
          __$$BaseResponseUnionListWeeklyScheduleResponseImplCopyWithImpl<
                  _$BaseResponseUnionListWeeklyScheduleResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionListWeeklyScheduleResponseImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionListWeeklyScheduleResponse
    extends BaseResponseUnionListWeeklyScheduleResponse {
  const factory _BaseResponseUnionListWeeklyScheduleResponse(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final List<WeeklyScheduleResponse>? data}) =
      _$BaseResponseUnionListWeeklyScheduleResponseImpl;
  const _BaseResponseUnionListWeeklyScheduleResponse._() : super._();

  factory _BaseResponseUnionListWeeklyScheduleResponse.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionListWeeklyScheduleResponseImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<WeeklyScheduleResponse>? get data;

  /// Create a copy of BaseResponseUnionListWeeklyScheduleResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionListWeeklyScheduleResponseImplCopyWith<
          _$BaseResponseUnionListWeeklyScheduleResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
