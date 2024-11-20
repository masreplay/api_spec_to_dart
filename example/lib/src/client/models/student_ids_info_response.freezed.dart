// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_ids_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentIdsInfoResponse _$StudentIdsInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _StudentIdsInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$StudentIdsInfoResponse {
  @JsonKey(name: 'is_iraqi')
  bool? get isIraqi => throw _privateConstructorUsedError;
  @JsonKey(name: 'have_national_card')
  bool? get haveNationalCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'national_card')
  StudentIdsNationalCardPublic get nationalCard =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'identification_card')
  StudentIdsIdentificationCardPublic get identificationCard =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'iraqi_nationality_certificate')
  StudentIdsIraqiNationalityCertificatePublic get iraqiNationalityCertificate =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'iraqi_residence_card')
  StudentIdsIraqiResidenceCardPublic get iraqiResidenceCard =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'passport')
  StudentIdsPassportPublic get passport => throw _privateConstructorUsedError;

  /// Serializes this StudentIdsInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentIdsInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentIdsInfoResponseCopyWith<StudentIdsInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentIdsInfoResponseCopyWith<$Res> {
  factory $StudentIdsInfoResponseCopyWith(StudentIdsInfoResponse value,
          $Res Function(StudentIdsInfoResponse) then) =
      _$StudentIdsInfoResponseCopyWithImpl<$Res, StudentIdsInfoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_iraqi') bool? isIraqi,
      @JsonKey(name: 'have_national_card') bool? haveNationalCard,
      @JsonKey(name: 'national_card') StudentIdsNationalCardPublic nationalCard,
      @JsonKey(name: 'identification_card')
      StudentIdsIdentificationCardPublic identificationCard,
      @JsonKey(name: 'iraqi_nationality_certificate')
      StudentIdsIraqiNationalityCertificatePublic iraqiNationalityCertificate,
      @JsonKey(name: 'iraqi_residence_card')
      StudentIdsIraqiResidenceCardPublic iraqiResidenceCard,
      @JsonKey(name: 'passport') StudentIdsPassportPublic passport});

  $StudentIdsNationalCardPublicCopyWith<$Res> get nationalCard;
  $StudentIdsIdentificationCardPublicCopyWith<$Res> get identificationCard;
  $StudentIdsIraqiNationalityCertificatePublicCopyWith<$Res>
      get iraqiNationalityCertificate;
  $StudentIdsIraqiResidenceCardPublicCopyWith<$Res> get iraqiResidenceCard;
  $StudentIdsPassportPublicCopyWith<$Res> get passport;
}

/// @nodoc
class _$StudentIdsInfoResponseCopyWithImpl<$Res,
        $Val extends StudentIdsInfoResponse>
    implements $StudentIdsInfoResponseCopyWith<$Res> {
  _$StudentIdsInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentIdsInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isIraqi = freezed,
    Object? haveNationalCard = freezed,
    Object? nationalCard = null,
    Object? identificationCard = null,
    Object? iraqiNationalityCertificate = null,
    Object? iraqiResidenceCard = null,
    Object? passport = null,
  }) {
    return _then(_value.copyWith(
      isIraqi: freezed == isIraqi
          ? _value.isIraqi
          : isIraqi // ignore: cast_nullable_to_non_nullable
              as bool?,
      haveNationalCard: freezed == haveNationalCard
          ? _value.haveNationalCard
          : haveNationalCard // ignore: cast_nullable_to_non_nullable
              as bool?,
      nationalCard: null == nationalCard
          ? _value.nationalCard
          : nationalCard // ignore: cast_nullable_to_non_nullable
              as StudentIdsNationalCardPublic,
      identificationCard: null == identificationCard
          ? _value.identificationCard
          : identificationCard // ignore: cast_nullable_to_non_nullable
              as StudentIdsIdentificationCardPublic,
      iraqiNationalityCertificate: null == iraqiNationalityCertificate
          ? _value.iraqiNationalityCertificate
          : iraqiNationalityCertificate // ignore: cast_nullable_to_non_nullable
              as StudentIdsIraqiNationalityCertificatePublic,
      iraqiResidenceCard: null == iraqiResidenceCard
          ? _value.iraqiResidenceCard
          : iraqiResidenceCard // ignore: cast_nullable_to_non_nullable
              as StudentIdsIraqiResidenceCardPublic,
      passport: null == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as StudentIdsPassportPublic,
    ) as $Val);
  }

  /// Create a copy of StudentIdsInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentIdsNationalCardPublicCopyWith<$Res> get nationalCard {
    return $StudentIdsNationalCardPublicCopyWith<$Res>(_value.nationalCard,
        (value) {
      return _then(_value.copyWith(nationalCard: value) as $Val);
    });
  }

  /// Create a copy of StudentIdsInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentIdsIdentificationCardPublicCopyWith<$Res> get identificationCard {
    return $StudentIdsIdentificationCardPublicCopyWith<$Res>(
        _value.identificationCard, (value) {
      return _then(_value.copyWith(identificationCard: value) as $Val);
    });
  }

  /// Create a copy of StudentIdsInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentIdsIraqiNationalityCertificatePublicCopyWith<$Res>
      get iraqiNationalityCertificate {
    return $StudentIdsIraqiNationalityCertificatePublicCopyWith<$Res>(
        _value.iraqiNationalityCertificate, (value) {
      return _then(_value.copyWith(iraqiNationalityCertificate: value) as $Val);
    });
  }

  /// Create a copy of StudentIdsInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentIdsIraqiResidenceCardPublicCopyWith<$Res> get iraqiResidenceCard {
    return $StudentIdsIraqiResidenceCardPublicCopyWith<$Res>(
        _value.iraqiResidenceCard, (value) {
      return _then(_value.copyWith(iraqiResidenceCard: value) as $Val);
    });
  }

  /// Create a copy of StudentIdsInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentIdsPassportPublicCopyWith<$Res> get passport {
    return $StudentIdsPassportPublicCopyWith<$Res>(_value.passport, (value) {
      return _then(_value.copyWith(passport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentIdsInfoResponseImplCopyWith<$Res>
    implements $StudentIdsInfoResponseCopyWith<$Res> {
  factory _$$StudentIdsInfoResponseImplCopyWith(
          _$StudentIdsInfoResponseImpl value,
          $Res Function(_$StudentIdsInfoResponseImpl) then) =
      __$$StudentIdsInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_iraqi') bool? isIraqi,
      @JsonKey(name: 'have_national_card') bool? haveNationalCard,
      @JsonKey(name: 'national_card') StudentIdsNationalCardPublic nationalCard,
      @JsonKey(name: 'identification_card')
      StudentIdsIdentificationCardPublic identificationCard,
      @JsonKey(name: 'iraqi_nationality_certificate')
      StudentIdsIraqiNationalityCertificatePublic iraqiNationalityCertificate,
      @JsonKey(name: 'iraqi_residence_card')
      StudentIdsIraqiResidenceCardPublic iraqiResidenceCard,
      @JsonKey(name: 'passport') StudentIdsPassportPublic passport});

  @override
  $StudentIdsNationalCardPublicCopyWith<$Res> get nationalCard;
  @override
  $StudentIdsIdentificationCardPublicCopyWith<$Res> get identificationCard;
  @override
  $StudentIdsIraqiNationalityCertificatePublicCopyWith<$Res>
      get iraqiNationalityCertificate;
  @override
  $StudentIdsIraqiResidenceCardPublicCopyWith<$Res> get iraqiResidenceCard;
  @override
  $StudentIdsPassportPublicCopyWith<$Res> get passport;
}

/// @nodoc
class __$$StudentIdsInfoResponseImplCopyWithImpl<$Res>
    extends _$StudentIdsInfoResponseCopyWithImpl<$Res,
        _$StudentIdsInfoResponseImpl>
    implements _$$StudentIdsInfoResponseImplCopyWith<$Res> {
  __$$StudentIdsInfoResponseImplCopyWithImpl(
      _$StudentIdsInfoResponseImpl _value,
      $Res Function(_$StudentIdsInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentIdsInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isIraqi = freezed,
    Object? haveNationalCard = freezed,
    Object? nationalCard = null,
    Object? identificationCard = null,
    Object? iraqiNationalityCertificate = null,
    Object? iraqiResidenceCard = null,
    Object? passport = null,
  }) {
    return _then(_$StudentIdsInfoResponseImpl(
      isIraqi: freezed == isIraqi
          ? _value.isIraqi
          : isIraqi // ignore: cast_nullable_to_non_nullable
              as bool?,
      haveNationalCard: freezed == haveNationalCard
          ? _value.haveNationalCard
          : haveNationalCard // ignore: cast_nullable_to_non_nullable
              as bool?,
      nationalCard: null == nationalCard
          ? _value.nationalCard
          : nationalCard // ignore: cast_nullable_to_non_nullable
              as StudentIdsNationalCardPublic,
      identificationCard: null == identificationCard
          ? _value.identificationCard
          : identificationCard // ignore: cast_nullable_to_non_nullable
              as StudentIdsIdentificationCardPublic,
      iraqiNationalityCertificate: null == iraqiNationalityCertificate
          ? _value.iraqiNationalityCertificate
          : iraqiNationalityCertificate // ignore: cast_nullable_to_non_nullable
              as StudentIdsIraqiNationalityCertificatePublic,
      iraqiResidenceCard: null == iraqiResidenceCard
          ? _value.iraqiResidenceCard
          : iraqiResidenceCard // ignore: cast_nullable_to_non_nullable
              as StudentIdsIraqiResidenceCardPublic,
      passport: null == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as StudentIdsPassportPublic,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$StudentIdsInfoResponseImpl extends _StudentIdsInfoResponse {
  const _$StudentIdsInfoResponseImpl(
      {@JsonKey(name: 'is_iraqi') required this.isIraqi,
      @JsonKey(name: 'have_national_card') required this.haveNationalCard,
      @JsonKey(name: 'national_card') required this.nationalCard,
      @JsonKey(name: 'identification_card') required this.identificationCard,
      @JsonKey(name: 'iraqi_nationality_certificate')
      required this.iraqiNationalityCertificate,
      @JsonKey(name: 'iraqi_residence_card') required this.iraqiResidenceCard,
      @JsonKey(name: 'passport') required this.passport})
      : super._();

  factory _$StudentIdsInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentIdsInfoResponseImplFromJson(json);

  @override
  @JsonKey(name: 'is_iraqi')
  final bool? isIraqi;
  @override
  @JsonKey(name: 'have_national_card')
  final bool? haveNationalCard;
  @override
  @JsonKey(name: 'national_card')
  final StudentIdsNationalCardPublic nationalCard;
  @override
  @JsonKey(name: 'identification_card')
  final StudentIdsIdentificationCardPublic identificationCard;
  @override
  @JsonKey(name: 'iraqi_nationality_certificate')
  final StudentIdsIraqiNationalityCertificatePublic iraqiNationalityCertificate;
  @override
  @JsonKey(name: 'iraqi_residence_card')
  final StudentIdsIraqiResidenceCardPublic iraqiResidenceCard;
  @override
  @JsonKey(name: 'passport')
  final StudentIdsPassportPublic passport;

  @override
  String toString() {
    return 'StudentIdsInfoResponse(isIraqi: $isIraqi, haveNationalCard: $haveNationalCard, nationalCard: $nationalCard, identificationCard: $identificationCard, iraqiNationalityCertificate: $iraqiNationalityCertificate, iraqiResidenceCard: $iraqiResidenceCard, passport: $passport)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentIdsInfoResponseImpl &&
            (identical(other.isIraqi, isIraqi) || other.isIraqi == isIraqi) &&
            (identical(other.haveNationalCard, haveNationalCard) ||
                other.haveNationalCard == haveNationalCard) &&
            (identical(other.nationalCard, nationalCard) ||
                other.nationalCard == nationalCard) &&
            (identical(other.identificationCard, identificationCard) ||
                other.identificationCard == identificationCard) &&
            (identical(other.iraqiNationalityCertificate,
                    iraqiNationalityCertificate) ||
                other.iraqiNationalityCertificate ==
                    iraqiNationalityCertificate) &&
            (identical(other.iraqiResidenceCard, iraqiResidenceCard) ||
                other.iraqiResidenceCard == iraqiResidenceCard) &&
            (identical(other.passport, passport) ||
                other.passport == passport));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isIraqi,
      haveNationalCard,
      nationalCard,
      identificationCard,
      iraqiNationalityCertificate,
      iraqiResidenceCard,
      passport);

  /// Create a copy of StudentIdsInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentIdsInfoResponseImplCopyWith<_$StudentIdsInfoResponseImpl>
      get copyWith => __$$StudentIdsInfoResponseImplCopyWithImpl<
          _$StudentIdsInfoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentIdsInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _StudentIdsInfoResponse extends StudentIdsInfoResponse {
  const factory _StudentIdsInfoResponse(
          {@JsonKey(name: 'is_iraqi') required final bool? isIraqi,
          @JsonKey(name: 'have_national_card')
          required final bool? haveNationalCard,
          @JsonKey(name: 'national_card')
          required final StudentIdsNationalCardPublic nationalCard,
          @JsonKey(name: 'identification_card')
          required final StudentIdsIdentificationCardPublic identificationCard,
          @JsonKey(name: 'iraqi_nationality_certificate')
          required final StudentIdsIraqiNationalityCertificatePublic
              iraqiNationalityCertificate,
          @JsonKey(name: 'iraqi_residence_card')
          required final StudentIdsIraqiResidenceCardPublic iraqiResidenceCard,
          @JsonKey(name: 'passport')
          required final StudentIdsPassportPublic passport}) =
      _$StudentIdsInfoResponseImpl;
  const _StudentIdsInfoResponse._() : super._();

  factory _StudentIdsInfoResponse.fromJson(Map<String, dynamic> json) =
      _$StudentIdsInfoResponseImpl.fromJson;

  @override
  @JsonKey(name: 'is_iraqi')
  bool? get isIraqi;
  @override
  @JsonKey(name: 'have_national_card')
  bool? get haveNationalCard;
  @override
  @JsonKey(name: 'national_card')
  StudentIdsNationalCardPublic get nationalCard;
  @override
  @JsonKey(name: 'identification_card')
  StudentIdsIdentificationCardPublic get identificationCard;
  @override
  @JsonKey(name: 'iraqi_nationality_certificate')
  StudentIdsIraqiNationalityCertificatePublic get iraqiNationalityCertificate;
  @override
  @JsonKey(name: 'iraqi_residence_card')
  StudentIdsIraqiResidenceCardPublic get iraqiResidenceCard;
  @override
  @JsonKey(name: 'passport')
  StudentIdsPassportPublic get passport;

  /// Create a copy of StudentIdsInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentIdsInfoResponseImplCopyWith<_$StudentIdsInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
