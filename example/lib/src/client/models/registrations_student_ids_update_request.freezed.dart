// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registrations_student_ids_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegistrationsStudentIdsUpdateRequest
    _$RegistrationsStudentIdsUpdateRequestFromJson(Map<String, dynamic> json) {
  return _RegistrationsStudentIdsUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$RegistrationsStudentIdsUpdateRequest {
  @JsonKey(name: 'identification_card')
  StudentIdsIdCardUpdatePublic get identificationCard =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'iraqi_nationality_certificate')
  StudentIdsIraqiNationalityCertificateUpdatePublic
      get iraqiNationalityCertificate => throw _privateConstructorUsedError;
  @JsonKey(name: 'residence_card')
  StudentIdsIraqiResidenceCardUpdatePublic get residenceCard =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'passport')
  StudentIdsPassportUpdatePublic? get passport =>
      throw _privateConstructorUsedError;

  /// Serializes this RegistrationsStudentIdsUpdateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegistrationsStudentIdsUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationsStudentIdsUpdateRequestCopyWith<
          RegistrationsStudentIdsUpdateRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationsStudentIdsUpdateRequestCopyWith<$Res> {
  factory $RegistrationsStudentIdsUpdateRequestCopyWith(
          RegistrationsStudentIdsUpdateRequest value,
          $Res Function(RegistrationsStudentIdsUpdateRequest) then) =
      _$RegistrationsStudentIdsUpdateRequestCopyWithImpl<$Res,
          RegistrationsStudentIdsUpdateRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'identification_card')
      StudentIdsIdCardUpdatePublic identificationCard,
      @JsonKey(name: 'iraqi_nationality_certificate')
      StudentIdsIraqiNationalityCertificateUpdatePublic
          iraqiNationalityCertificate,
      @JsonKey(name: 'residence_card')
      StudentIdsIraqiResidenceCardUpdatePublic residenceCard,
      @JsonKey(name: 'passport') StudentIdsPassportUpdatePublic? passport});

  $StudentIdsIdCardUpdatePublicCopyWith<$Res> get identificationCard;
  $StudentIdsIraqiNationalityCertificateUpdatePublicCopyWith<$Res>
      get iraqiNationalityCertificate;
  $StudentIdsIraqiResidenceCardUpdatePublicCopyWith<$Res> get residenceCard;
  $StudentIdsPassportUpdatePublicCopyWith<$Res>? get passport;
}

/// @nodoc
class _$RegistrationsStudentIdsUpdateRequestCopyWithImpl<$Res,
        $Val extends RegistrationsStudentIdsUpdateRequest>
    implements $RegistrationsStudentIdsUpdateRequestCopyWith<$Res> {
  _$RegistrationsStudentIdsUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationsStudentIdsUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identificationCard = null,
    Object? iraqiNationalityCertificate = null,
    Object? residenceCard = null,
    Object? passport = freezed,
  }) {
    return _then(_value.copyWith(
      identificationCard: null == identificationCard
          ? _value.identificationCard
          : identificationCard // ignore: cast_nullable_to_non_nullable
              as StudentIdsIdCardUpdatePublic,
      iraqiNationalityCertificate: null == iraqiNationalityCertificate
          ? _value.iraqiNationalityCertificate
          : iraqiNationalityCertificate // ignore: cast_nullable_to_non_nullable
              as StudentIdsIraqiNationalityCertificateUpdatePublic,
      residenceCard: null == residenceCard
          ? _value.residenceCard
          : residenceCard // ignore: cast_nullable_to_non_nullable
              as StudentIdsIraqiResidenceCardUpdatePublic,
      passport: freezed == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as StudentIdsPassportUpdatePublic?,
    ) as $Val);
  }

  /// Create a copy of RegistrationsStudentIdsUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentIdsIdCardUpdatePublicCopyWith<$Res> get identificationCard {
    return $StudentIdsIdCardUpdatePublicCopyWith<$Res>(
        _value.identificationCard, (value) {
      return _then(_value.copyWith(identificationCard: value) as $Val);
    });
  }

  /// Create a copy of RegistrationsStudentIdsUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentIdsIraqiNationalityCertificateUpdatePublicCopyWith<$Res>
      get iraqiNationalityCertificate {
    return $StudentIdsIraqiNationalityCertificateUpdatePublicCopyWith<$Res>(
        _value.iraqiNationalityCertificate, (value) {
      return _then(_value.copyWith(iraqiNationalityCertificate: value) as $Val);
    });
  }

  /// Create a copy of RegistrationsStudentIdsUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentIdsIraqiResidenceCardUpdatePublicCopyWith<$Res> get residenceCard {
    return $StudentIdsIraqiResidenceCardUpdatePublicCopyWith<$Res>(
        _value.residenceCard, (value) {
      return _then(_value.copyWith(residenceCard: value) as $Val);
    });
  }

  /// Create a copy of RegistrationsStudentIdsUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentIdsPassportUpdatePublicCopyWith<$Res>? get passport {
    if (_value.passport == null) {
      return null;
    }

    return $StudentIdsPassportUpdatePublicCopyWith<$Res>(_value.passport!,
        (value) {
      return _then(_value.copyWith(passport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegistrationsStudentIdsUpdateRequestImplCopyWith<$Res>
    implements $RegistrationsStudentIdsUpdateRequestCopyWith<$Res> {
  factory _$$RegistrationsStudentIdsUpdateRequestImplCopyWith(
          _$RegistrationsStudentIdsUpdateRequestImpl value,
          $Res Function(_$RegistrationsStudentIdsUpdateRequestImpl) then) =
      __$$RegistrationsStudentIdsUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'identification_card')
      StudentIdsIdCardUpdatePublic identificationCard,
      @JsonKey(name: 'iraqi_nationality_certificate')
      StudentIdsIraqiNationalityCertificateUpdatePublic
          iraqiNationalityCertificate,
      @JsonKey(name: 'residence_card')
      StudentIdsIraqiResidenceCardUpdatePublic residenceCard,
      @JsonKey(name: 'passport') StudentIdsPassportUpdatePublic? passport});

  @override
  $StudentIdsIdCardUpdatePublicCopyWith<$Res> get identificationCard;
  @override
  $StudentIdsIraqiNationalityCertificateUpdatePublicCopyWith<$Res>
      get iraqiNationalityCertificate;
  @override
  $StudentIdsIraqiResidenceCardUpdatePublicCopyWith<$Res> get residenceCard;
  @override
  $StudentIdsPassportUpdatePublicCopyWith<$Res>? get passport;
}

/// @nodoc
class __$$RegistrationsStudentIdsUpdateRequestImplCopyWithImpl<$Res>
    extends _$RegistrationsStudentIdsUpdateRequestCopyWithImpl<$Res,
        _$RegistrationsStudentIdsUpdateRequestImpl>
    implements _$$RegistrationsStudentIdsUpdateRequestImplCopyWith<$Res> {
  __$$RegistrationsStudentIdsUpdateRequestImplCopyWithImpl(
      _$RegistrationsStudentIdsUpdateRequestImpl _value,
      $Res Function(_$RegistrationsStudentIdsUpdateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationsStudentIdsUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identificationCard = null,
    Object? iraqiNationalityCertificate = null,
    Object? residenceCard = null,
    Object? passport = freezed,
  }) {
    return _then(_$RegistrationsStudentIdsUpdateRequestImpl(
      identificationCard: null == identificationCard
          ? _value.identificationCard
          : identificationCard // ignore: cast_nullable_to_non_nullable
              as StudentIdsIdCardUpdatePublic,
      iraqiNationalityCertificate: null == iraqiNationalityCertificate
          ? _value.iraqiNationalityCertificate
          : iraqiNationalityCertificate // ignore: cast_nullable_to_non_nullable
              as StudentIdsIraqiNationalityCertificateUpdatePublic,
      residenceCard: null == residenceCard
          ? _value.residenceCard
          : residenceCard // ignore: cast_nullable_to_non_nullable
              as StudentIdsIraqiResidenceCardUpdatePublic,
      passport: freezed == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as StudentIdsPassportUpdatePublic?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationsStudentIdsUpdateRequestImpl
    implements _RegistrationsStudentIdsUpdateRequest {
  const _$RegistrationsStudentIdsUpdateRequestImpl(
      {@JsonKey(name: 'identification_card') required this.identificationCard,
      @JsonKey(name: 'iraqi_nationality_certificate')
      required this.iraqiNationalityCertificate,
      @JsonKey(name: 'residence_card') required this.residenceCard,
      @JsonKey(name: 'passport') required this.passport});

  factory _$RegistrationsStudentIdsUpdateRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RegistrationsStudentIdsUpdateRequestImplFromJson(json);

  @override
  @JsonKey(name: 'identification_card')
  final StudentIdsIdCardUpdatePublic identificationCard;
  @override
  @JsonKey(name: 'iraqi_nationality_certificate')
  final StudentIdsIraqiNationalityCertificateUpdatePublic
      iraqiNationalityCertificate;
  @override
  @JsonKey(name: 'residence_card')
  final StudentIdsIraqiResidenceCardUpdatePublic residenceCard;
  @override
  @JsonKey(name: 'passport')
  final StudentIdsPassportUpdatePublic? passport;

  @override
  String toString() {
    return 'RegistrationsStudentIdsUpdateRequest(identificationCard: $identificationCard, iraqiNationalityCertificate: $iraqiNationalityCertificate, residenceCard: $residenceCard, passport: $passport)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationsStudentIdsUpdateRequestImpl &&
            (identical(other.identificationCard, identificationCard) ||
                other.identificationCard == identificationCard) &&
            (identical(other.iraqiNationalityCertificate,
                    iraqiNationalityCertificate) ||
                other.iraqiNationalityCertificate ==
                    iraqiNationalityCertificate) &&
            (identical(other.residenceCard, residenceCard) ||
                other.residenceCard == residenceCard) &&
            (identical(other.passport, passport) ||
                other.passport == passport));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, identificationCard,
      iraqiNationalityCertificate, residenceCard, passport);

  /// Create a copy of RegistrationsStudentIdsUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationsStudentIdsUpdateRequestImplCopyWith<
          _$RegistrationsStudentIdsUpdateRequestImpl>
      get copyWith => __$$RegistrationsStudentIdsUpdateRequestImplCopyWithImpl<
          _$RegistrationsStudentIdsUpdateRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationsStudentIdsUpdateRequestImplToJson(
      this,
    );
  }
}

abstract class _RegistrationsStudentIdsUpdateRequest
    implements RegistrationsStudentIdsUpdateRequest {
  const factory _RegistrationsStudentIdsUpdateRequest(
          {@JsonKey(name: 'identification_card')
          required final StudentIdsIdCardUpdatePublic identificationCard,
          @JsonKey(name: 'iraqi_nationality_certificate')
          required final StudentIdsIraqiNationalityCertificateUpdatePublic
              iraqiNationalityCertificate,
          @JsonKey(name: 'residence_card')
          required final StudentIdsIraqiResidenceCardUpdatePublic residenceCard,
          @JsonKey(name: 'passport')
          required final StudentIdsPassportUpdatePublic? passport}) =
      _$RegistrationsStudentIdsUpdateRequestImpl;

  factory _RegistrationsStudentIdsUpdateRequest.fromJson(
          Map<String, dynamic> json) =
      _$RegistrationsStudentIdsUpdateRequestImpl.fromJson;

  @override
  @JsonKey(name: 'identification_card')
  StudentIdsIdCardUpdatePublic get identificationCard;
  @override
  @JsonKey(name: 'iraqi_nationality_certificate')
  StudentIdsIraqiNationalityCertificateUpdatePublic
      get iraqiNationalityCertificate;
  @override
  @JsonKey(name: 'residence_card')
  StudentIdsIraqiResidenceCardUpdatePublic get residenceCard;
  @override
  @JsonKey(name: 'passport')
  StudentIdsPassportUpdatePublic? get passport;

  /// Create a copy of RegistrationsStudentIdsUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationsStudentIdsUpdateRequestImplCopyWith<
          _$RegistrationsStudentIdsUpdateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
