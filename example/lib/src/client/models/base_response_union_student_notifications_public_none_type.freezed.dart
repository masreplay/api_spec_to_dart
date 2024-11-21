// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_student_notifications_public_none_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionStudentNotificationsPublicNoneType
    _$BaseResponseUnionStudentNotificationsPublicNoneTypeFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseUnionStudentNotificationsPublicNoneType.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionStudentNotificationsPublicNoneType {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  StudentNotificationsPublic? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionStudentNotificationsPublicNoneType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionStudentNotificationsPublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionStudentNotificationsPublicNoneTypeCopyWith<
          BaseResponseUnionStudentNotificationsPublicNoneType>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionStudentNotificationsPublicNoneTypeCopyWith<
    $Res> {
  factory $BaseResponseUnionStudentNotificationsPublicNoneTypeCopyWith(
          BaseResponseUnionStudentNotificationsPublicNoneType value,
          $Res Function(BaseResponseUnionStudentNotificationsPublicNoneType)
              then) =
      _$BaseResponseUnionStudentNotificationsPublicNoneTypeCopyWithImpl<$Res,
          BaseResponseUnionStudentNotificationsPublicNoneType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentNotificationsPublic? data});

  $StudentNotificationsPublicCopyWith<$Res>? get data;
}

/// @nodoc
class _$BaseResponseUnionStudentNotificationsPublicNoneTypeCopyWithImpl<$Res,
        $Val extends BaseResponseUnionStudentNotificationsPublicNoneType>
    implements
        $BaseResponseUnionStudentNotificationsPublicNoneTypeCopyWith<$Res> {
  _$BaseResponseUnionStudentNotificationsPublicNoneTypeCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionStudentNotificationsPublicNoneType
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
              as StudentNotificationsPublic?,
    ) as $Val);
  }

  /// Create a copy of BaseResponseUnionStudentNotificationsPublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentNotificationsPublicCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $StudentNotificationsPublicCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseUnionStudentNotificationsPublicNoneTypeImplCopyWith<
        $Res>
    implements
        $BaseResponseUnionStudentNotificationsPublicNoneTypeCopyWith<$Res> {
  factory _$$BaseResponseUnionStudentNotificationsPublicNoneTypeImplCopyWith(
          _$BaseResponseUnionStudentNotificationsPublicNoneTypeImpl value,
          $Res Function(
                  _$BaseResponseUnionStudentNotificationsPublicNoneTypeImpl)
              then) =
      __$$BaseResponseUnionStudentNotificationsPublicNoneTypeImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentNotificationsPublic? data});

  @override
  $StudentNotificationsPublicCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BaseResponseUnionStudentNotificationsPublicNoneTypeImplCopyWithImpl<
        $Res>
    extends _$BaseResponseUnionStudentNotificationsPublicNoneTypeCopyWithImpl<
        $Res, _$BaseResponseUnionStudentNotificationsPublicNoneTypeImpl>
    implements
        _$$BaseResponseUnionStudentNotificationsPublicNoneTypeImplCopyWith<
            $Res> {
  __$$BaseResponseUnionStudentNotificationsPublicNoneTypeImplCopyWithImpl(
      _$BaseResponseUnionStudentNotificationsPublicNoneTypeImpl _value,
      $Res Function(_$BaseResponseUnionStudentNotificationsPublicNoneTypeImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionStudentNotificationsPublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionStudentNotificationsPublicNoneTypeImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StudentNotificationsPublic?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseUnionStudentNotificationsPublicNoneTypeImpl
    extends _BaseResponseUnionStudentNotificationsPublicNoneType {
  const _$BaseResponseUnionStudentNotificationsPublicNoneTypeImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseUnionStudentNotificationsPublicNoneTypeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionStudentNotificationsPublicNoneTypeImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final StudentNotificationsPublic? data;

  @override
  String toString() {
    return 'BaseResponseUnionStudentNotificationsPublicNoneType(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$BaseResponseUnionStudentNotificationsPublicNoneTypeImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseUnionStudentNotificationsPublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionStudentNotificationsPublicNoneTypeImplCopyWith<
          _$BaseResponseUnionStudentNotificationsPublicNoneTypeImpl>
      get copyWith =>
          __$$BaseResponseUnionStudentNotificationsPublicNoneTypeImplCopyWithImpl<
                  _$BaseResponseUnionStudentNotificationsPublicNoneTypeImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionStudentNotificationsPublicNoneTypeImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionStudentNotificationsPublicNoneType
    extends BaseResponseUnionStudentNotificationsPublicNoneType {
  const factory _BaseResponseUnionStudentNotificationsPublicNoneType(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final StudentNotificationsPublic? data}) =
      _$BaseResponseUnionStudentNotificationsPublicNoneTypeImpl;
  const _BaseResponseUnionStudentNotificationsPublicNoneType._() : super._();

  factory _BaseResponseUnionStudentNotificationsPublicNoneType.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionStudentNotificationsPublicNoneTypeImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  StudentNotificationsPublic? get data;

  /// Create a copy of BaseResponseUnionStudentNotificationsPublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionStudentNotificationsPublicNoneTypeImplCopyWith<
          _$BaseResponseUnionStudentNotificationsPublicNoneTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
