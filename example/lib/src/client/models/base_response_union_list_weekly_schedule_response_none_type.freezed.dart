// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_list_weekly_schedule_response_none_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionListWeeklyScheduleResponseNoneType
    _$BaseResponseUnionListWeeklyScheduleResponseNoneTypeFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseUnionListWeeklyScheduleResponseNoneType.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionListWeeklyScheduleResponseNoneType {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<dynamic>? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionListWeeklyScheduleResponseNoneType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionListWeeklyScheduleResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionListWeeklyScheduleResponseNoneTypeCopyWith<
          BaseResponseUnionListWeeklyScheduleResponseNoneType>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionListWeeklyScheduleResponseNoneTypeCopyWith<
    $Res> {
  factory $BaseResponseUnionListWeeklyScheduleResponseNoneTypeCopyWith(
          BaseResponseUnionListWeeklyScheduleResponseNoneType value,
          $Res Function(BaseResponseUnionListWeeklyScheduleResponseNoneType)
              then) =
      _$BaseResponseUnionListWeeklyScheduleResponseNoneTypeCopyWithImpl<$Res,
          BaseResponseUnionListWeeklyScheduleResponseNoneType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<dynamic>? data});
}

/// @nodoc
class _$BaseResponseUnionListWeeklyScheduleResponseNoneTypeCopyWithImpl<$Res,
        $Val extends BaseResponseUnionListWeeklyScheduleResponseNoneType>
    implements
        $BaseResponseUnionListWeeklyScheduleResponseNoneTypeCopyWith<$Res> {
  _$BaseResponseUnionListWeeklyScheduleResponseNoneTypeCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionListWeeklyScheduleResponseNoneType
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
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImplCopyWith<
        $Res>
    implements
        $BaseResponseUnionListWeeklyScheduleResponseNoneTypeCopyWith<$Res> {
  factory _$$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImplCopyWith(
          _$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImpl value,
          $Res Function(
                  _$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImpl)
              then) =
      __$$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<dynamic>? data});
}

/// @nodoc
class __$$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImplCopyWithImpl<
        $Res>
    extends _$BaseResponseUnionListWeeklyScheduleResponseNoneTypeCopyWithImpl<
        $Res, _$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImpl>
    implements
        _$$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImplCopyWith<
            $Res> {
  __$$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImplCopyWithImpl(
      _$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImpl _value,
      $Res Function(_$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionListWeeklyScheduleResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImpl
    implements _BaseResponseUnionListWeeklyScheduleResponseNoneType {
  const _$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required final List<dynamic>? data})
      : _data = data;

  factory _$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<dynamic>? _data;
  @override
  @JsonKey(name: 'data')
  List<dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BaseResponseUnionListWeeklyScheduleResponseNoneType(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseUnionListWeeklyScheduleResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImplCopyWith<
          _$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImpl>
      get copyWith =>
          __$$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImplCopyWithImpl<
                  _$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionListWeeklyScheduleResponseNoneType
    implements BaseResponseUnionListWeeklyScheduleResponseNoneType {
  const factory _BaseResponseUnionListWeeklyScheduleResponseNoneType(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final List<dynamic>? data}) =
      _$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImpl;

  factory _BaseResponseUnionListWeeklyScheduleResponseNoneType.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<dynamic>? get data;

  /// Create a copy of BaseResponseUnionListWeeklyScheduleResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImplCopyWith<
          _$BaseResponseUnionListWeeklyScheduleResponseNoneTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
