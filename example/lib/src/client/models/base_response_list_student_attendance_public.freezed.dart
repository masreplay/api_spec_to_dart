// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_list_student_attendance_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseListStudentAttendancePublic
    _$BaseResponseListStudentAttendancePublicFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseListStudentAttendancePublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseListStudentAttendancePublic {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Data
  @JsonKey(name: 'data')
  List<dynamic> get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseListStudentAttendancePublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseListStudentAttendancePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseListStudentAttendancePublicCopyWith<
          BaseResponseListStudentAttendancePublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseListStudentAttendancePublicCopyWith<$Res> {
  factory $BaseResponseListStudentAttendancePublicCopyWith(
          BaseResponseListStudentAttendancePublic value,
          $Res Function(BaseResponseListStudentAttendancePublic) then) =
      _$BaseResponseListStudentAttendancePublicCopyWithImpl<$Res,
          BaseResponseListStudentAttendancePublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<dynamic> data});
}

/// @nodoc
class _$BaseResponseListStudentAttendancePublicCopyWithImpl<$Res,
        $Val extends BaseResponseListStudentAttendancePublic>
    implements $BaseResponseListStudentAttendancePublicCopyWith<$Res> {
  _$BaseResponseListStudentAttendancePublicCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseListStudentAttendancePublic
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
abstract class _$$BaseResponseListStudentAttendancePublicImplCopyWith<$Res>
    implements $BaseResponseListStudentAttendancePublicCopyWith<$Res> {
  factory _$$BaseResponseListStudentAttendancePublicImplCopyWith(
          _$BaseResponseListStudentAttendancePublicImpl value,
          $Res Function(_$BaseResponseListStudentAttendancePublicImpl) then) =
      __$$BaseResponseListStudentAttendancePublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<dynamic> data});
}

/// @nodoc
class __$$BaseResponseListStudentAttendancePublicImplCopyWithImpl<$Res>
    extends _$BaseResponseListStudentAttendancePublicCopyWithImpl<$Res,
        _$BaseResponseListStudentAttendancePublicImpl>
    implements _$$BaseResponseListStudentAttendancePublicImplCopyWith<$Res> {
  __$$BaseResponseListStudentAttendancePublicImplCopyWithImpl(
      _$BaseResponseListStudentAttendancePublicImpl _value,
      $Res Function(_$BaseResponseListStudentAttendancePublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseListStudentAttendancePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseListStudentAttendancePublicImpl(
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

@JsonSerializable(converters: convertors)
class _$BaseResponseListStudentAttendancePublicImpl
    extends _BaseResponseListStudentAttendancePublic {
  const _$BaseResponseListStudentAttendancePublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required final List<dynamic> data})
      : _data = data,
        super._();

  factory _$BaseResponseListStudentAttendancePublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseListStudentAttendancePublicImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Data
  final List<dynamic> _data;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<dynamic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BaseResponseListStudentAttendancePublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseListStudentAttendancePublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseListStudentAttendancePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseListStudentAttendancePublicImplCopyWith<
          _$BaseResponseListStudentAttendancePublicImpl>
      get copyWith =>
          __$$BaseResponseListStudentAttendancePublicImplCopyWithImpl<
              _$BaseResponseListStudentAttendancePublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseListStudentAttendancePublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseListStudentAttendancePublic
    extends BaseResponseListStudentAttendancePublic {
  const factory _BaseResponseListStudentAttendancePublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final List<dynamic> data}) =
      _$BaseResponseListStudentAttendancePublicImpl;
  const _BaseResponseListStudentAttendancePublic._() : super._();

  factory _BaseResponseListStudentAttendancePublic.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseListStudentAttendancePublicImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<dynamic> get data;

  /// Create a copy of BaseResponseListStudentAttendancePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseListStudentAttendancePublicImplCopyWith<
          _$BaseResponseListStudentAttendancePublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
