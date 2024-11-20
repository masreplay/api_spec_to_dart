// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_student_os_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseStudentOSPublic _$BaseResponseStudentOSPublicFromJson(
    Map<String, dynamic> json) {
  return _BaseResponseStudentOSPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseStudentOSPublic {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  StudentOSPublic get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseStudentOSPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseStudentOSPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseStudentOSPublicCopyWith<BaseResponseStudentOSPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseStudentOSPublicCopyWith<$Res> {
  factory $BaseResponseStudentOSPublicCopyWith(
          BaseResponseStudentOSPublic value,
          $Res Function(BaseResponseStudentOSPublic) then) =
      _$BaseResponseStudentOSPublicCopyWithImpl<$Res,
          BaseResponseStudentOSPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentOSPublic data});

  $StudentOSPublicCopyWith<$Res> get data;
}

/// @nodoc
class _$BaseResponseStudentOSPublicCopyWithImpl<$Res,
        $Val extends BaseResponseStudentOSPublic>
    implements $BaseResponseStudentOSPublicCopyWith<$Res> {
  _$BaseResponseStudentOSPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseStudentOSPublic
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
              as StudentOSPublic,
    ) as $Val);
  }

  /// Create a copy of BaseResponseStudentOSPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentOSPublicCopyWith<$Res> get data {
    return $StudentOSPublicCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseStudentOSPublicImplCopyWith<$Res>
    implements $BaseResponseStudentOSPublicCopyWith<$Res> {
  factory _$$BaseResponseStudentOSPublicImplCopyWith(
          _$BaseResponseStudentOSPublicImpl value,
          $Res Function(_$BaseResponseStudentOSPublicImpl) then) =
      __$$BaseResponseStudentOSPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentOSPublic data});

  @override
  $StudentOSPublicCopyWith<$Res> get data;
}

/// @nodoc
class __$$BaseResponseStudentOSPublicImplCopyWithImpl<$Res>
    extends _$BaseResponseStudentOSPublicCopyWithImpl<$Res,
        _$BaseResponseStudentOSPublicImpl>
    implements _$$BaseResponseStudentOSPublicImplCopyWith<$Res> {
  __$$BaseResponseStudentOSPublicImplCopyWithImpl(
      _$BaseResponseStudentOSPublicImpl _value,
      $Res Function(_$BaseResponseStudentOSPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseStudentOSPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseStudentOSPublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StudentOSPublic,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseStudentOSPublicImpl extends _BaseResponseStudentOSPublic {
  const _$BaseResponseStudentOSPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseStudentOSPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseStudentOSPublicImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final StudentOSPublic data;

  @override
  String toString() {
    return 'BaseResponseStudentOSPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseStudentOSPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseStudentOSPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseStudentOSPublicImplCopyWith<_$BaseResponseStudentOSPublicImpl>
      get copyWith => __$$BaseResponseStudentOSPublicImplCopyWithImpl<
          _$BaseResponseStudentOSPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseStudentOSPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseStudentOSPublic
    extends BaseResponseStudentOSPublic {
  const factory _BaseResponseStudentOSPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final StudentOSPublic data}) =
      _$BaseResponseStudentOSPublicImpl;
  const _BaseResponseStudentOSPublic._() : super._();

  factory _BaseResponseStudentOSPublic.fromJson(Map<String, dynamic> json) =
      _$BaseResponseStudentOSPublicImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  StudentOSPublic get data;

  /// Create a copy of BaseResponseStudentOSPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseStudentOSPublicImplCopyWith<_$BaseResponseStudentOSPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
