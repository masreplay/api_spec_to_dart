// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_lecturer_announcement_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseLecturerAnnouncementPublic
    _$BaseResponseLecturerAnnouncementPublicFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseLecturerAnnouncementPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseLecturerAnnouncementPublic {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  LecturerAnnouncementPublic get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseLecturerAnnouncementPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseLecturerAnnouncementPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseLecturerAnnouncementPublicCopyWith<
          BaseResponseLecturerAnnouncementPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseLecturerAnnouncementPublicCopyWith<$Res> {
  factory $BaseResponseLecturerAnnouncementPublicCopyWith(
          BaseResponseLecturerAnnouncementPublic value,
          $Res Function(BaseResponseLecturerAnnouncementPublic) then) =
      _$BaseResponseLecturerAnnouncementPublicCopyWithImpl<$Res,
          BaseResponseLecturerAnnouncementPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') LecturerAnnouncementPublic data});

  $LecturerAnnouncementPublicCopyWith<$Res> get data;
}

/// @nodoc
class _$BaseResponseLecturerAnnouncementPublicCopyWithImpl<$Res,
        $Val extends BaseResponseLecturerAnnouncementPublic>
    implements $BaseResponseLecturerAnnouncementPublicCopyWith<$Res> {
  _$BaseResponseLecturerAnnouncementPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseLecturerAnnouncementPublic
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
              as LecturerAnnouncementPublic,
    ) as $Val);
  }

  /// Create a copy of BaseResponseLecturerAnnouncementPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LecturerAnnouncementPublicCopyWith<$Res> get data {
    return $LecturerAnnouncementPublicCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseLecturerAnnouncementPublicImplCopyWith<$Res>
    implements $BaseResponseLecturerAnnouncementPublicCopyWith<$Res> {
  factory _$$BaseResponseLecturerAnnouncementPublicImplCopyWith(
          _$BaseResponseLecturerAnnouncementPublicImpl value,
          $Res Function(_$BaseResponseLecturerAnnouncementPublicImpl) then) =
      __$$BaseResponseLecturerAnnouncementPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') LecturerAnnouncementPublic data});

  @override
  $LecturerAnnouncementPublicCopyWith<$Res> get data;
}

/// @nodoc
class __$$BaseResponseLecturerAnnouncementPublicImplCopyWithImpl<$Res>
    extends _$BaseResponseLecturerAnnouncementPublicCopyWithImpl<$Res,
        _$BaseResponseLecturerAnnouncementPublicImpl>
    implements _$$BaseResponseLecturerAnnouncementPublicImplCopyWith<$Res> {
  __$$BaseResponseLecturerAnnouncementPublicImplCopyWithImpl(
      _$BaseResponseLecturerAnnouncementPublicImpl _value,
      $Res Function(_$BaseResponseLecturerAnnouncementPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseLecturerAnnouncementPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseLecturerAnnouncementPublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LecturerAnnouncementPublic,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseLecturerAnnouncementPublicImpl
    extends _BaseResponseLecturerAnnouncementPublic {
  const _$BaseResponseLecturerAnnouncementPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseLecturerAnnouncementPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseLecturerAnnouncementPublicImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final LecturerAnnouncementPublic data;

  @override
  String toString() {
    return 'BaseResponseLecturerAnnouncementPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseLecturerAnnouncementPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseLecturerAnnouncementPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseLecturerAnnouncementPublicImplCopyWith<
          _$BaseResponseLecturerAnnouncementPublicImpl>
      get copyWith =>
          __$$BaseResponseLecturerAnnouncementPublicImplCopyWithImpl<
              _$BaseResponseLecturerAnnouncementPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseLecturerAnnouncementPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseLecturerAnnouncementPublic
    extends BaseResponseLecturerAnnouncementPublic {
  const factory _BaseResponseLecturerAnnouncementPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final LecturerAnnouncementPublic data}) =
      _$BaseResponseLecturerAnnouncementPublicImpl;
  const _BaseResponseLecturerAnnouncementPublic._() : super._();

  factory _BaseResponseLecturerAnnouncementPublic.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseLecturerAnnouncementPublicImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  LecturerAnnouncementPublic get data;

  /// Create a copy of BaseResponseLecturerAnnouncementPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseLecturerAnnouncementPublicImplCopyWith<
          _$BaseResponseLecturerAnnouncementPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
