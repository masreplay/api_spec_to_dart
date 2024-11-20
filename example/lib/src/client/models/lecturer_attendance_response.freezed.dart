// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecturer_attendance_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LecturerAttendanceResponse _$LecturerAttendanceResponseFromJson(
    Map<String, dynamic> json) {
  return _LecturerAttendanceResponse.fromJson(json);
}

/// @nodoc
mixin _$LecturerAttendanceResponse {
  @JsonKey(name: 'issuing_date')
  DateTime get issuingDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiration_date')
  DateTime get expirationDate => throw _privateConstructorUsedError;

  /// Serializes this LecturerAttendanceResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LecturerAttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LecturerAttendanceResponseCopyWith<LecturerAttendanceResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LecturerAttendanceResponseCopyWith<$Res> {
  factory $LecturerAttendanceResponseCopyWith(LecturerAttendanceResponse value,
          $Res Function(LecturerAttendanceResponse) then) =
      _$LecturerAttendanceResponseCopyWithImpl<$Res,
          LecturerAttendanceResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'issuing_date') DateTime issuingDate,
      @JsonKey(name: 'expiration_date') DateTime expirationDate});
}

/// @nodoc
class _$LecturerAttendanceResponseCopyWithImpl<$Res,
        $Val extends LecturerAttendanceResponse>
    implements $LecturerAttendanceResponseCopyWith<$Res> {
  _$LecturerAttendanceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LecturerAttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issuingDate = null,
    Object? expirationDate = null,
  }) {
    return _then(_value.copyWith(
      issuingDate: null == issuingDate
          ? _value.issuingDate
          : issuingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LecturerAttendanceResponseImplCopyWith<$Res>
    implements $LecturerAttendanceResponseCopyWith<$Res> {
  factory _$$LecturerAttendanceResponseImplCopyWith(
          _$LecturerAttendanceResponseImpl value,
          $Res Function(_$LecturerAttendanceResponseImpl) then) =
      __$$LecturerAttendanceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'issuing_date') DateTime issuingDate,
      @JsonKey(name: 'expiration_date') DateTime expirationDate});
}

/// @nodoc
class __$$LecturerAttendanceResponseImplCopyWithImpl<$Res>
    extends _$LecturerAttendanceResponseCopyWithImpl<$Res,
        _$LecturerAttendanceResponseImpl>
    implements _$$LecturerAttendanceResponseImplCopyWith<$Res> {
  __$$LecturerAttendanceResponseImplCopyWithImpl(
      _$LecturerAttendanceResponseImpl _value,
      $Res Function(_$LecturerAttendanceResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of LecturerAttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issuingDate = null,
    Object? expirationDate = null,
  }) {
    return _then(_$LecturerAttendanceResponseImpl(
      issuingDate: null == issuingDate
          ? _value.issuingDate
          : issuingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LecturerAttendanceResponseImpl implements _LecturerAttendanceResponse {
  const _$LecturerAttendanceResponseImpl(
      {@JsonKey(name: 'issuing_date') required this.issuingDate,
      @JsonKey(name: 'expiration_date') required this.expirationDate});

  factory _$LecturerAttendanceResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LecturerAttendanceResponseImplFromJson(json);

  @override
  @JsonKey(name: 'issuing_date')
  final DateTime issuingDate;
  @override
  @JsonKey(name: 'expiration_date')
  final DateTime expirationDate;

  @override
  String toString() {
    return 'LecturerAttendanceResponse(issuingDate: $issuingDate, expirationDate: $expirationDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LecturerAttendanceResponseImpl &&
            (identical(other.issuingDate, issuingDate) ||
                other.issuingDate == issuingDate) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, issuingDate, expirationDate);

  /// Create a copy of LecturerAttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LecturerAttendanceResponseImplCopyWith<_$LecturerAttendanceResponseImpl>
      get copyWith => __$$LecturerAttendanceResponseImplCopyWithImpl<
          _$LecturerAttendanceResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LecturerAttendanceResponseImplToJson(
      this,
    );
  }
}

abstract class _LecturerAttendanceResponse
    implements LecturerAttendanceResponse {
  const factory _LecturerAttendanceResponse(
          {@JsonKey(name: 'issuing_date') required final DateTime issuingDate,
          @JsonKey(name: 'expiration_date')
          required final DateTime expirationDate}) =
      _$LecturerAttendanceResponseImpl;

  factory _LecturerAttendanceResponse.fromJson(Map<String, dynamic> json) =
      _$LecturerAttendanceResponseImpl.fromJson;

  @override
  @JsonKey(name: 'issuing_date')
  DateTime get issuingDate;
  @override
  @JsonKey(name: 'expiration_date')
  DateTime get expirationDate;

  /// Create a copy of LecturerAttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LecturerAttendanceResponseImplCopyWith<_$LecturerAttendanceResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
