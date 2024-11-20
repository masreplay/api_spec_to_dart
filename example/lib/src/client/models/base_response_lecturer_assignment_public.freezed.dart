// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_lecturer_assignment_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseLecturerAssignmentPublic
    _$BaseResponseLecturerAssignmentPublicFromJson(Map<String, dynamic> json) {
  return _BaseResponseLecturerAssignmentPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseLecturerAssignmentPublic {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  LecturerAssignmentPublic get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseLecturerAssignmentPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseLecturerAssignmentPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseLecturerAssignmentPublicCopyWith<
          BaseResponseLecturerAssignmentPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseLecturerAssignmentPublicCopyWith<$Res> {
  factory $BaseResponseLecturerAssignmentPublicCopyWith(
          BaseResponseLecturerAssignmentPublic value,
          $Res Function(BaseResponseLecturerAssignmentPublic) then) =
      _$BaseResponseLecturerAssignmentPublicCopyWithImpl<$Res,
          BaseResponseLecturerAssignmentPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') LecturerAssignmentPublic data});

  $LecturerAssignmentPublicCopyWith<$Res> get data;
}

/// @nodoc
class _$BaseResponseLecturerAssignmentPublicCopyWithImpl<$Res,
        $Val extends BaseResponseLecturerAssignmentPublic>
    implements $BaseResponseLecturerAssignmentPublicCopyWith<$Res> {
  _$BaseResponseLecturerAssignmentPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseLecturerAssignmentPublic
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
              as LecturerAssignmentPublic,
    ) as $Val);
  }

  /// Create a copy of BaseResponseLecturerAssignmentPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LecturerAssignmentPublicCopyWith<$Res> get data {
    return $LecturerAssignmentPublicCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseLecturerAssignmentPublicImplCopyWith<$Res>
    implements $BaseResponseLecturerAssignmentPublicCopyWith<$Res> {
  factory _$$BaseResponseLecturerAssignmentPublicImplCopyWith(
          _$BaseResponseLecturerAssignmentPublicImpl value,
          $Res Function(_$BaseResponseLecturerAssignmentPublicImpl) then) =
      __$$BaseResponseLecturerAssignmentPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') LecturerAssignmentPublic data});

  @override
  $LecturerAssignmentPublicCopyWith<$Res> get data;
}

/// @nodoc
class __$$BaseResponseLecturerAssignmentPublicImplCopyWithImpl<$Res>
    extends _$BaseResponseLecturerAssignmentPublicCopyWithImpl<$Res,
        _$BaseResponseLecturerAssignmentPublicImpl>
    implements _$$BaseResponseLecturerAssignmentPublicImplCopyWith<$Res> {
  __$$BaseResponseLecturerAssignmentPublicImplCopyWithImpl(
      _$BaseResponseLecturerAssignmentPublicImpl _value,
      $Res Function(_$BaseResponseLecturerAssignmentPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseLecturerAssignmentPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseLecturerAssignmentPublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LecturerAssignmentPublic,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseLecturerAssignmentPublicImpl
    extends _BaseResponseLecturerAssignmentPublic {
  const _$BaseResponseLecturerAssignmentPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseLecturerAssignmentPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseLecturerAssignmentPublicImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final LecturerAssignmentPublic data;

  @override
  String toString() {
    return 'BaseResponseLecturerAssignmentPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseLecturerAssignmentPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseLecturerAssignmentPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseLecturerAssignmentPublicImplCopyWith<
          _$BaseResponseLecturerAssignmentPublicImpl>
      get copyWith => __$$BaseResponseLecturerAssignmentPublicImplCopyWithImpl<
          _$BaseResponseLecturerAssignmentPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseLecturerAssignmentPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseLecturerAssignmentPublic
    extends BaseResponseLecturerAssignmentPublic {
  const factory _BaseResponseLecturerAssignmentPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final LecturerAssignmentPublic data}) =
      _$BaseResponseLecturerAssignmentPublicImpl;
  const _BaseResponseLecturerAssignmentPublic._() : super._();

  factory _BaseResponseLecturerAssignmentPublic.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseLecturerAssignmentPublicImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  LecturerAssignmentPublic get data;

  /// Create a copy of BaseResponseLecturerAssignmentPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseLecturerAssignmentPublicImplCopyWith<
          _$BaseResponseLecturerAssignmentPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
