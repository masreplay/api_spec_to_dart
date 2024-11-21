// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_student_university_card_public_.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionStudentUniversityCardPublic
    _$BaseResponseUnionStudentUniversityCardPublicFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseUnionStudentUniversityCardPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionStudentUniversityCardPublic {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  StudentUniversityCardPublic? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionStudentUniversityCardPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionStudentUniversityCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionStudentUniversityCardPublicCopyWith<
          BaseResponseUnionStudentUniversityCardPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionStudentUniversityCardPublicCopyWith<$Res> {
  factory $BaseResponseUnionStudentUniversityCardPublicCopyWith(
          BaseResponseUnionStudentUniversityCardPublic value,
          $Res Function(BaseResponseUnionStudentUniversityCardPublic) then) =
      _$BaseResponseUnionStudentUniversityCardPublicCopyWithImpl<$Res,
          BaseResponseUnionStudentUniversityCardPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentUniversityCardPublic? data});

  $StudentUniversityCardPublicCopyWith<$Res>? get data;
}

/// @nodoc
class _$BaseResponseUnionStudentUniversityCardPublicCopyWithImpl<$Res,
        $Val extends BaseResponseUnionStudentUniversityCardPublic>
    implements $BaseResponseUnionStudentUniversityCardPublicCopyWith<$Res> {
  _$BaseResponseUnionStudentUniversityCardPublicCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionStudentUniversityCardPublic
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
              as StudentUniversityCardPublic?,
    ) as $Val);
  }

  /// Create a copy of BaseResponseUnionStudentUniversityCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentUniversityCardPublicCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $StudentUniversityCardPublicCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseUnionStudentUniversityCardPublicImplCopyWith<$Res>
    implements $BaseResponseUnionStudentUniversityCardPublicCopyWith<$Res> {
  factory _$$BaseResponseUnionStudentUniversityCardPublicImplCopyWith(
          _$BaseResponseUnionStudentUniversityCardPublicImpl value,
          $Res Function(_$BaseResponseUnionStudentUniversityCardPublicImpl)
              then) =
      __$$BaseResponseUnionStudentUniversityCardPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentUniversityCardPublic? data});

  @override
  $StudentUniversityCardPublicCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BaseResponseUnionStudentUniversityCardPublicImplCopyWithImpl<$Res>
    extends _$BaseResponseUnionStudentUniversityCardPublicCopyWithImpl<$Res,
        _$BaseResponseUnionStudentUniversityCardPublicImpl>
    implements
        _$$BaseResponseUnionStudentUniversityCardPublicImplCopyWith<$Res> {
  __$$BaseResponseUnionStudentUniversityCardPublicImplCopyWithImpl(
      _$BaseResponseUnionStudentUniversityCardPublicImpl _value,
      $Res Function(_$BaseResponseUnionStudentUniversityCardPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionStudentUniversityCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionStudentUniversityCardPublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StudentUniversityCardPublic?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseUnionStudentUniversityCardPublicImpl
    extends _BaseResponseUnionStudentUniversityCardPublic {
  const _$BaseResponseUnionStudentUniversityCardPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseUnionStudentUniversityCardPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionStudentUniversityCardPublicImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final StudentUniversityCardPublic? data;

  @override
  String toString() {
    return 'BaseResponseUnionStudentUniversityCardPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseUnionStudentUniversityCardPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseUnionStudentUniversityCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionStudentUniversityCardPublicImplCopyWith<
          _$BaseResponseUnionStudentUniversityCardPublicImpl>
      get copyWith =>
          __$$BaseResponseUnionStudentUniversityCardPublicImplCopyWithImpl<
                  _$BaseResponseUnionStudentUniversityCardPublicImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionStudentUniversityCardPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionStudentUniversityCardPublic
    extends BaseResponseUnionStudentUniversityCardPublic {
  const factory _BaseResponseUnionStudentUniversityCardPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final StudentUniversityCardPublic? data}) =
      _$BaseResponseUnionStudentUniversityCardPublicImpl;
  const _BaseResponseUnionStudentUniversityCardPublic._() : super._();

  factory _BaseResponseUnionStudentUniversityCardPublic.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionStudentUniversityCardPublicImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  StudentUniversityCardPublic? get data;

  /// Create a copy of BaseResponseUnionStudentUniversityCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionStudentUniversityCardPublicImplCopyWith<
          _$BaseResponseUnionStudentUniversityCardPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
