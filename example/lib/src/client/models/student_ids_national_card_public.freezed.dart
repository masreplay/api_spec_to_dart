// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_ids_national_card_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentIdsNationalCardPublic _$StudentIdsNationalCardPublicFromJson(
    Map<String, dynamic> json) {
  return _StudentIdsNationalCardPublic.fromJson(json);
}

/// @nodoc
mixin _$StudentIdsNationalCardPublic {
  @JsonKey(name: 'number')
  String? get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'serial_number')
  String? get serialNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'issuing_authority')
  String? get issuingAuthority => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_issue')
  DateTime? get dateOfIssue => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_expiry')
  DateTime? get dateOfExpiry => throw _privateConstructorUsedError;
  @JsonKey(name: 'family_number')
  String? get familyNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_image')
  FilePublic? get frontImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'back_image')
  FilePublic? get backImage => throw _privateConstructorUsedError;

  /// Serializes this StudentIdsNationalCardPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentIdsNationalCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentIdsNationalCardPublicCopyWith<StudentIdsNationalCardPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentIdsNationalCardPublicCopyWith<$Res> {
  factory $StudentIdsNationalCardPublicCopyWith(
          StudentIdsNationalCardPublic value,
          $Res Function(StudentIdsNationalCardPublic) then) =
      _$StudentIdsNationalCardPublicCopyWithImpl<$Res,
          StudentIdsNationalCardPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'number') String? number,
      @JsonKey(name: 'serial_number') String? serialNumber,
      @JsonKey(name: 'issuing_authority') String? issuingAuthority,
      @JsonKey(name: 'date_of_issue') DateTime? dateOfIssue,
      @JsonKey(name: 'date_of_expiry') DateTime? dateOfExpiry,
      @JsonKey(name: 'family_number') String? familyNumber,
      @JsonKey(name: 'front_image') FilePublic? frontImage,
      @JsonKey(name: 'back_image') FilePublic? backImage});

  $FilePublicCopyWith<$Res>? get frontImage;
  $FilePublicCopyWith<$Res>? get backImage;
}

/// @nodoc
class _$StudentIdsNationalCardPublicCopyWithImpl<$Res,
        $Val extends StudentIdsNationalCardPublic>
    implements $StudentIdsNationalCardPublicCopyWith<$Res> {
  _$StudentIdsNationalCardPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentIdsNationalCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? serialNumber = freezed,
    Object? issuingAuthority = freezed,
    Object? dateOfIssue = freezed,
    Object? dateOfExpiry = freezed,
    Object? familyNumber = freezed,
    Object? frontImage = freezed,
    Object? backImage = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      issuingAuthority: freezed == issuingAuthority
          ? _value.issuingAuthority
          : issuingAuthority // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfIssue: freezed == dateOfIssue
          ? _value.dateOfIssue
          : dateOfIssue // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateOfExpiry: freezed == dateOfExpiry
          ? _value.dateOfExpiry
          : dateOfExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      familyNumber: freezed == familyNumber
          ? _value.familyNumber
          : familyNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      frontImage: freezed == frontImage
          ? _value.frontImage
          : frontImage // ignore: cast_nullable_to_non_nullable
              as FilePublic?,
      backImage: freezed == backImage
          ? _value.backImage
          : backImage // ignore: cast_nullable_to_non_nullable
              as FilePublic?,
    ) as $Val);
  }

  /// Create a copy of StudentIdsNationalCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilePublicCopyWith<$Res>? get frontImage {
    if (_value.frontImage == null) {
      return null;
    }

    return $FilePublicCopyWith<$Res>(_value.frontImage!, (value) {
      return _then(_value.copyWith(frontImage: value) as $Val);
    });
  }

  /// Create a copy of StudentIdsNationalCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilePublicCopyWith<$Res>? get backImage {
    if (_value.backImage == null) {
      return null;
    }

    return $FilePublicCopyWith<$Res>(_value.backImage!, (value) {
      return _then(_value.copyWith(backImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentIdsNationalCardPublicImplCopyWith<$Res>
    implements $StudentIdsNationalCardPublicCopyWith<$Res> {
  factory _$$StudentIdsNationalCardPublicImplCopyWith(
          _$StudentIdsNationalCardPublicImpl value,
          $Res Function(_$StudentIdsNationalCardPublicImpl) then) =
      __$$StudentIdsNationalCardPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'number') String? number,
      @JsonKey(name: 'serial_number') String? serialNumber,
      @JsonKey(name: 'issuing_authority') String? issuingAuthority,
      @JsonKey(name: 'date_of_issue') DateTime? dateOfIssue,
      @JsonKey(name: 'date_of_expiry') DateTime? dateOfExpiry,
      @JsonKey(name: 'family_number') String? familyNumber,
      @JsonKey(name: 'front_image') FilePublic? frontImage,
      @JsonKey(name: 'back_image') FilePublic? backImage});

  @override
  $FilePublicCopyWith<$Res>? get frontImage;
  @override
  $FilePublicCopyWith<$Res>? get backImage;
}

/// @nodoc
class __$$StudentIdsNationalCardPublicImplCopyWithImpl<$Res>
    extends _$StudentIdsNationalCardPublicCopyWithImpl<$Res,
        _$StudentIdsNationalCardPublicImpl>
    implements _$$StudentIdsNationalCardPublicImplCopyWith<$Res> {
  __$$StudentIdsNationalCardPublicImplCopyWithImpl(
      _$StudentIdsNationalCardPublicImpl _value,
      $Res Function(_$StudentIdsNationalCardPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentIdsNationalCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? serialNumber = freezed,
    Object? issuingAuthority = freezed,
    Object? dateOfIssue = freezed,
    Object? dateOfExpiry = freezed,
    Object? familyNumber = freezed,
    Object? frontImage = freezed,
    Object? backImage = freezed,
  }) {
    return _then(_$StudentIdsNationalCardPublicImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      issuingAuthority: freezed == issuingAuthority
          ? _value.issuingAuthority
          : issuingAuthority // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfIssue: freezed == dateOfIssue
          ? _value.dateOfIssue
          : dateOfIssue // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateOfExpiry: freezed == dateOfExpiry
          ? _value.dateOfExpiry
          : dateOfExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      familyNumber: freezed == familyNumber
          ? _value.familyNumber
          : familyNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      frontImage: freezed == frontImage
          ? _value.frontImage
          : frontImage // ignore: cast_nullable_to_non_nullable
              as FilePublic?,
      backImage: freezed == backImage
          ? _value.backImage
          : backImage // ignore: cast_nullable_to_non_nullable
              as FilePublic?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentIdsNationalCardPublicImpl
    implements _StudentIdsNationalCardPublic {
  const _$StudentIdsNationalCardPublicImpl(
      {@JsonKey(name: 'number') required this.number,
      @JsonKey(name: 'serial_number') required this.serialNumber,
      @JsonKey(name: 'issuing_authority') required this.issuingAuthority,
      @JsonKey(name: 'date_of_issue') required this.dateOfIssue,
      @JsonKey(name: 'date_of_expiry') required this.dateOfExpiry,
      @JsonKey(name: 'family_number') required this.familyNumber,
      @JsonKey(name: 'front_image') required this.frontImage,
      @JsonKey(name: 'back_image') required this.backImage});

  factory _$StudentIdsNationalCardPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StudentIdsNationalCardPublicImplFromJson(json);

  @override
  @JsonKey(name: 'number')
  final String? number;
  @override
  @JsonKey(name: 'serial_number')
  final String? serialNumber;
  @override
  @JsonKey(name: 'issuing_authority')
  final String? issuingAuthority;
  @override
  @JsonKey(name: 'date_of_issue')
  final DateTime? dateOfIssue;
  @override
  @JsonKey(name: 'date_of_expiry')
  final DateTime? dateOfExpiry;
  @override
  @JsonKey(name: 'family_number')
  final String? familyNumber;
  @override
  @JsonKey(name: 'front_image')
  final FilePublic? frontImage;
  @override
  @JsonKey(name: 'back_image')
  final FilePublic? backImage;

  @override
  String toString() {
    return 'StudentIdsNationalCardPublic(number: $number, serialNumber: $serialNumber, issuingAuthority: $issuingAuthority, dateOfIssue: $dateOfIssue, dateOfExpiry: $dateOfExpiry, familyNumber: $familyNumber, frontImage: $frontImage, backImage: $backImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentIdsNationalCardPublicImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.issuingAuthority, issuingAuthority) ||
                other.issuingAuthority == issuingAuthority) &&
            (identical(other.dateOfIssue, dateOfIssue) ||
                other.dateOfIssue == dateOfIssue) &&
            (identical(other.dateOfExpiry, dateOfExpiry) ||
                other.dateOfExpiry == dateOfExpiry) &&
            (identical(other.familyNumber, familyNumber) ||
                other.familyNumber == familyNumber) &&
            (identical(other.frontImage, frontImage) ||
                other.frontImage == frontImage) &&
            (identical(other.backImage, backImage) ||
                other.backImage == backImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      number,
      serialNumber,
      issuingAuthority,
      dateOfIssue,
      dateOfExpiry,
      familyNumber,
      frontImage,
      backImage);

  /// Create a copy of StudentIdsNationalCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentIdsNationalCardPublicImplCopyWith<
          _$StudentIdsNationalCardPublicImpl>
      get copyWith => __$$StudentIdsNationalCardPublicImplCopyWithImpl<
          _$StudentIdsNationalCardPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentIdsNationalCardPublicImplToJson(
      this,
    );
  }
}

abstract class _StudentIdsNationalCardPublic
    implements StudentIdsNationalCardPublic {
  const factory _StudentIdsNationalCardPublic(
      {@JsonKey(name: 'number') required final String? number,
      @JsonKey(name: 'serial_number') required final String? serialNumber,
      @JsonKey(name: 'issuing_authority')
      required final String? issuingAuthority,
      @JsonKey(name: 'date_of_issue') required final DateTime? dateOfIssue,
      @JsonKey(name: 'date_of_expiry') required final DateTime? dateOfExpiry,
      @JsonKey(name: 'family_number') required final String? familyNumber,
      @JsonKey(name: 'front_image') required final FilePublic? frontImage,
      @JsonKey(name: 'back_image')
      required final FilePublic?
          backImage}) = _$StudentIdsNationalCardPublicImpl;

  factory _StudentIdsNationalCardPublic.fromJson(Map<String, dynamic> json) =
      _$StudentIdsNationalCardPublicImpl.fromJson;

  @override
  @JsonKey(name: 'number')
  String? get number;
  @override
  @JsonKey(name: 'serial_number')
  String? get serialNumber;
  @override
  @JsonKey(name: 'issuing_authority')
  String? get issuingAuthority;
  @override
  @JsonKey(name: 'date_of_issue')
  DateTime? get dateOfIssue;
  @override
  @JsonKey(name: 'date_of_expiry')
  DateTime? get dateOfExpiry;
  @override
  @JsonKey(name: 'family_number')
  String? get familyNumber;
  @override
  @JsonKey(name: 'front_image')
  FilePublic? get frontImage;
  @override
  @JsonKey(name: 'back_image')
  FilePublic? get backImage;

  /// Create a copy of StudentIdsNationalCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentIdsNationalCardPublicImplCopyWith<
          _$StudentIdsNationalCardPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
