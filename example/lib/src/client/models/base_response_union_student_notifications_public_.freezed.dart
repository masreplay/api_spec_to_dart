// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_student_notifications_public_.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionStudentNotificationsPublic
    _$BaseResponseUnionStudentNotificationsPublicFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseUnionStudentNotificationsPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionStudentNotificationsPublic {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  StudentNotificationsPublic? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionStudentNotificationsPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionStudentNotificationsPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionStudentNotificationsPublicCopyWith<
          BaseResponseUnionStudentNotificationsPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionStudentNotificationsPublicCopyWith<$Res> {
  factory $BaseResponseUnionStudentNotificationsPublicCopyWith(
          BaseResponseUnionStudentNotificationsPublic value,
          $Res Function(BaseResponseUnionStudentNotificationsPublic) then) =
      _$BaseResponseUnionStudentNotificationsPublicCopyWithImpl<$Res,
          BaseResponseUnionStudentNotificationsPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentNotificationsPublic? data});

  $StudentNotificationsPublicCopyWith<$Res>? get data;
}

/// @nodoc
class _$BaseResponseUnionStudentNotificationsPublicCopyWithImpl<$Res,
        $Val extends BaseResponseUnionStudentNotificationsPublic>
    implements $BaseResponseUnionStudentNotificationsPublicCopyWith<$Res> {
  _$BaseResponseUnionStudentNotificationsPublicCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionStudentNotificationsPublic
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

  /// Create a copy of BaseResponseUnionStudentNotificationsPublic
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
abstract class _$$BaseResponseUnionStudentNotificationsPublicImplCopyWith<$Res>
    implements $BaseResponseUnionStudentNotificationsPublicCopyWith<$Res> {
  factory _$$BaseResponseUnionStudentNotificationsPublicImplCopyWith(
          _$BaseResponseUnionStudentNotificationsPublicImpl value,
          $Res Function(_$BaseResponseUnionStudentNotificationsPublicImpl)
              then) =
      __$$BaseResponseUnionStudentNotificationsPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentNotificationsPublic? data});

  @override
  $StudentNotificationsPublicCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BaseResponseUnionStudentNotificationsPublicImplCopyWithImpl<$Res>
    extends _$BaseResponseUnionStudentNotificationsPublicCopyWithImpl<$Res,
        _$BaseResponseUnionStudentNotificationsPublicImpl>
    implements
        _$$BaseResponseUnionStudentNotificationsPublicImplCopyWith<$Res> {
  __$$BaseResponseUnionStudentNotificationsPublicImplCopyWithImpl(
      _$BaseResponseUnionStudentNotificationsPublicImpl _value,
      $Res Function(_$BaseResponseUnionStudentNotificationsPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionStudentNotificationsPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionStudentNotificationsPublicImpl(
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
class _$BaseResponseUnionStudentNotificationsPublicImpl
    extends _BaseResponseUnionStudentNotificationsPublic {
  const _$BaseResponseUnionStudentNotificationsPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseUnionStudentNotificationsPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionStudentNotificationsPublicImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final StudentNotificationsPublic? data;

  @override
  String toString() {
    return 'BaseResponseUnionStudentNotificationsPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseUnionStudentNotificationsPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseUnionStudentNotificationsPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionStudentNotificationsPublicImplCopyWith<
          _$BaseResponseUnionStudentNotificationsPublicImpl>
      get copyWith =>
          __$$BaseResponseUnionStudentNotificationsPublicImplCopyWithImpl<
                  _$BaseResponseUnionStudentNotificationsPublicImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionStudentNotificationsPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionStudentNotificationsPublic
    extends BaseResponseUnionStudentNotificationsPublic {
  const factory _BaseResponseUnionStudentNotificationsPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final StudentNotificationsPublic? data}) =
      _$BaseResponseUnionStudentNotificationsPublicImpl;
  const _BaseResponseUnionStudentNotificationsPublic._() : super._();

  factory _BaseResponseUnionStudentNotificationsPublic.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionStudentNotificationsPublicImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  StudentNotificationsPublic? get data;

  /// Create a copy of BaseResponseUnionStudentNotificationsPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionStudentNotificationsPublicImplCopyWith<
          _$BaseResponseUnionStudentNotificationsPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
