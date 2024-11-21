// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_list_weekly_schedule_teacher_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseListWeeklyScheduleTeacherResponse
    _$BaseResponseListWeeklyScheduleTeacherResponseFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseListWeeklyScheduleTeacherResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseListWeeklyScheduleTeacherResponse {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Data
  @JsonKey(name: 'data')
  List<WeeklyScheduleTeacherResponse> get data =>
      throw _privateConstructorUsedError;

  /// Serializes this BaseResponseListWeeklyScheduleTeacherResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseListWeeklyScheduleTeacherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseListWeeklyScheduleTeacherResponseCopyWith<
          BaseResponseListWeeklyScheduleTeacherResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseListWeeklyScheduleTeacherResponseCopyWith<$Res> {
  factory $BaseResponseListWeeklyScheduleTeacherResponseCopyWith(
          BaseResponseListWeeklyScheduleTeacherResponse value,
          $Res Function(BaseResponseListWeeklyScheduleTeacherResponse) then) =
      _$BaseResponseListWeeklyScheduleTeacherResponseCopyWithImpl<$Res,
          BaseResponseListWeeklyScheduleTeacherResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<WeeklyScheduleTeacherResponse> data});
}

/// @nodoc
class _$BaseResponseListWeeklyScheduleTeacherResponseCopyWithImpl<$Res,
        $Val extends BaseResponseListWeeklyScheduleTeacherResponse>
    implements $BaseResponseListWeeklyScheduleTeacherResponseCopyWith<$Res> {
  _$BaseResponseListWeeklyScheduleTeacherResponseCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseListWeeklyScheduleTeacherResponse
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
              as List<WeeklyScheduleTeacherResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseListWeeklyScheduleTeacherResponseImplCopyWith<
        $Res>
    implements $BaseResponseListWeeklyScheduleTeacherResponseCopyWith<$Res> {
  factory _$$BaseResponseListWeeklyScheduleTeacherResponseImplCopyWith(
          _$BaseResponseListWeeklyScheduleTeacherResponseImpl value,
          $Res Function(_$BaseResponseListWeeklyScheduleTeacherResponseImpl)
              then) =
      __$$BaseResponseListWeeklyScheduleTeacherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<WeeklyScheduleTeacherResponse> data});
}

/// @nodoc
class __$$BaseResponseListWeeklyScheduleTeacherResponseImplCopyWithImpl<$Res>
    extends _$BaseResponseListWeeklyScheduleTeacherResponseCopyWithImpl<$Res,
        _$BaseResponseListWeeklyScheduleTeacherResponseImpl>
    implements
        _$$BaseResponseListWeeklyScheduleTeacherResponseImplCopyWith<$Res> {
  __$$BaseResponseListWeeklyScheduleTeacherResponseImplCopyWithImpl(
      _$BaseResponseListWeeklyScheduleTeacherResponseImpl _value,
      $Res Function(_$BaseResponseListWeeklyScheduleTeacherResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseListWeeklyScheduleTeacherResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseListWeeklyScheduleTeacherResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WeeklyScheduleTeacherResponse>,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseListWeeklyScheduleTeacherResponseImpl
    extends _BaseResponseListWeeklyScheduleTeacherResponse {
  const _$BaseResponseListWeeklyScheduleTeacherResponseImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data')
      required final List<WeeklyScheduleTeacherResponse> data})
      : _data = data,
        super._();

  factory _$BaseResponseListWeeklyScheduleTeacherResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseListWeeklyScheduleTeacherResponseImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Data
  final List<WeeklyScheduleTeacherResponse> _data;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<WeeklyScheduleTeacherResponse> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BaseResponseListWeeklyScheduleTeacherResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseListWeeklyScheduleTeacherResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseListWeeklyScheduleTeacherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseListWeeklyScheduleTeacherResponseImplCopyWith<
          _$BaseResponseListWeeklyScheduleTeacherResponseImpl>
      get copyWith =>
          __$$BaseResponseListWeeklyScheduleTeacherResponseImplCopyWithImpl<
                  _$BaseResponseListWeeklyScheduleTeacherResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseListWeeklyScheduleTeacherResponseImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseListWeeklyScheduleTeacherResponse
    extends BaseResponseListWeeklyScheduleTeacherResponse {
  const factory _BaseResponseListWeeklyScheduleTeacherResponse(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final List<WeeklyScheduleTeacherResponse> data}) =
      _$BaseResponseListWeeklyScheduleTeacherResponseImpl;
  const _BaseResponseListWeeklyScheduleTeacherResponse._() : super._();

  factory _BaseResponseListWeeklyScheduleTeacherResponse.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseListWeeklyScheduleTeacherResponseImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<WeeklyScheduleTeacherResponse> get data;

  /// Create a copy of BaseResponseListWeeklyScheduleTeacherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseListWeeklyScheduleTeacherResponseImplCopyWith<
          _$BaseResponseListWeeklyScheduleTeacherResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
