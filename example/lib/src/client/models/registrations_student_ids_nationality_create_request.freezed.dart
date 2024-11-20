// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registrations_student_ids_nationality_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegistrationsStudentIdsNationalityCreateRequest
    _$RegistrationsStudentIdsNationalityCreateRequestFromJson(
        Map<String, dynamic> json) {
  return _RegistrationsStudentIdsNationalityCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$RegistrationsStudentIdsNationalityCreateRequest {
  @JsonKey(name: 'national_card')
  StudentIdsNationalCardUpdatePublic get nationalCard =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'residence_card')
  StudentIdsIraqiResidenceCardUpdatePublic get residenceCard =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'passport')
  StudentIdsPassportUpdatePublic? get passport =>
      throw _privateConstructorUsedError;

  /// Serializes this RegistrationsStudentIdsNationalityCreateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegistrationsStudentIdsNationalityCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationsStudentIdsNationalityCreateRequestCopyWith<
          RegistrationsStudentIdsNationalityCreateRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationsStudentIdsNationalityCreateRequestCopyWith<$Res> {
  factory $RegistrationsStudentIdsNationalityCreateRequestCopyWith(
          RegistrationsStudentIdsNationalityCreateRequest value,
          $Res Function(RegistrationsStudentIdsNationalityCreateRequest) then) =
      _$RegistrationsStudentIdsNationalityCreateRequestCopyWithImpl<$Res,
          RegistrationsStudentIdsNationalityCreateRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'national_card')
      StudentIdsNationalCardUpdatePublic nationalCard,
      @JsonKey(name: 'residence_card')
      StudentIdsIraqiResidenceCardUpdatePublic residenceCard,
      @JsonKey(name: 'passport') StudentIdsPassportUpdatePublic? passport});

  $StudentIdsNationalCardUpdatePublicCopyWith<$Res> get nationalCard;
  $StudentIdsIraqiResidenceCardUpdatePublicCopyWith<$Res> get residenceCard;
  $StudentIdsPassportUpdatePublicCopyWith<$Res>? get passport;
}

/// @nodoc
class _$RegistrationsStudentIdsNationalityCreateRequestCopyWithImpl<$Res,
        $Val extends RegistrationsStudentIdsNationalityCreateRequest>
    implements $RegistrationsStudentIdsNationalityCreateRequestCopyWith<$Res> {
  _$RegistrationsStudentIdsNationalityCreateRequestCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationsStudentIdsNationalityCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nationalCard = null,
    Object? residenceCard = null,
    Object? passport = freezed,
  }) {
    return _then(_value.copyWith(
      nationalCard: null == nationalCard
          ? _value.nationalCard
          : nationalCard // ignore: cast_nullable_to_non_nullable
              as StudentIdsNationalCardUpdatePublic,
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

  /// Create a copy of RegistrationsStudentIdsNationalityCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentIdsNationalCardUpdatePublicCopyWith<$Res> get nationalCard {
    return $StudentIdsNationalCardUpdatePublicCopyWith<$Res>(
        _value.nationalCard, (value) {
      return _then(_value.copyWith(nationalCard: value) as $Val);
    });
  }

  /// Create a copy of RegistrationsStudentIdsNationalityCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentIdsIraqiResidenceCardUpdatePublicCopyWith<$Res> get residenceCard {
    return $StudentIdsIraqiResidenceCardUpdatePublicCopyWith<$Res>(
        _value.residenceCard, (value) {
      return _then(_value.copyWith(residenceCard: value) as $Val);
    });
  }

  /// Create a copy of RegistrationsStudentIdsNationalityCreateRequest
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
abstract class _$$RegistrationsStudentIdsNationalityCreateRequestImplCopyWith<
        $Res>
    implements $RegistrationsStudentIdsNationalityCreateRequestCopyWith<$Res> {
  factory _$$RegistrationsStudentIdsNationalityCreateRequestImplCopyWith(
          _$RegistrationsStudentIdsNationalityCreateRequestImpl value,
          $Res Function(_$RegistrationsStudentIdsNationalityCreateRequestImpl)
              then) =
      __$$RegistrationsStudentIdsNationalityCreateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'national_card')
      StudentIdsNationalCardUpdatePublic nationalCard,
      @JsonKey(name: 'residence_card')
      StudentIdsIraqiResidenceCardUpdatePublic residenceCard,
      @JsonKey(name: 'passport') StudentIdsPassportUpdatePublic? passport});

  @override
  $StudentIdsNationalCardUpdatePublicCopyWith<$Res> get nationalCard;
  @override
  $StudentIdsIraqiResidenceCardUpdatePublicCopyWith<$Res> get residenceCard;
  @override
  $StudentIdsPassportUpdatePublicCopyWith<$Res>? get passport;
}

/// @nodoc
class __$$RegistrationsStudentIdsNationalityCreateRequestImplCopyWithImpl<$Res>
    extends _$RegistrationsStudentIdsNationalityCreateRequestCopyWithImpl<$Res,
        _$RegistrationsStudentIdsNationalityCreateRequestImpl>
    implements
        _$$RegistrationsStudentIdsNationalityCreateRequestImplCopyWith<$Res> {
  __$$RegistrationsStudentIdsNationalityCreateRequestImplCopyWithImpl(
      _$RegistrationsStudentIdsNationalityCreateRequestImpl _value,
      $Res Function(_$RegistrationsStudentIdsNationalityCreateRequestImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of RegistrationsStudentIdsNationalityCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nationalCard = null,
    Object? residenceCard = null,
    Object? passport = freezed,
  }) {
    return _then(_$RegistrationsStudentIdsNationalityCreateRequestImpl(
      nationalCard: null == nationalCard
          ? _value.nationalCard
          : nationalCard // ignore: cast_nullable_to_non_nullable
              as StudentIdsNationalCardUpdatePublic,
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
class _$RegistrationsStudentIdsNationalityCreateRequestImpl
    implements _RegistrationsStudentIdsNationalityCreateRequest {
  const _$RegistrationsStudentIdsNationalityCreateRequestImpl(
      {@JsonKey(name: 'national_card') required this.nationalCard,
      @JsonKey(name: 'residence_card') required this.residenceCard,
      @JsonKey(name: 'passport') required this.passport});

  factory _$RegistrationsStudentIdsNationalityCreateRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RegistrationsStudentIdsNationalityCreateRequestImplFromJson(json);

  @override
  @JsonKey(name: 'national_card')
  final StudentIdsNationalCardUpdatePublic nationalCard;
  @override
  @JsonKey(name: 'residence_card')
  final StudentIdsIraqiResidenceCardUpdatePublic residenceCard;
  @override
  @JsonKey(name: 'passport')
  final StudentIdsPassportUpdatePublic? passport;

  @override
  String toString() {
    return 'RegistrationsStudentIdsNationalityCreateRequest(nationalCard: $nationalCard, residenceCard: $residenceCard, passport: $passport)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationsStudentIdsNationalityCreateRequestImpl &&
            (identical(other.nationalCard, nationalCard) ||
                other.nationalCard == nationalCard) &&
            (identical(other.residenceCard, residenceCard) ||
                other.residenceCard == residenceCard) &&
            (identical(other.passport, passport) ||
                other.passport == passport));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nationalCard, residenceCard, passport);

  /// Create a copy of RegistrationsStudentIdsNationalityCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationsStudentIdsNationalityCreateRequestImplCopyWith<
          _$RegistrationsStudentIdsNationalityCreateRequestImpl>
      get copyWith =>
          __$$RegistrationsStudentIdsNationalityCreateRequestImplCopyWithImpl<
                  _$RegistrationsStudentIdsNationalityCreateRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationsStudentIdsNationalityCreateRequestImplToJson(
      this,
    );
  }
}

abstract class _RegistrationsStudentIdsNationalityCreateRequest
    implements RegistrationsStudentIdsNationalityCreateRequest {
  const factory _RegistrationsStudentIdsNationalityCreateRequest(
          {@JsonKey(name: 'national_card')
          required final StudentIdsNationalCardUpdatePublic nationalCard,
          @JsonKey(name: 'residence_card')
          required final StudentIdsIraqiResidenceCardUpdatePublic residenceCard,
          @JsonKey(name: 'passport')
          required final StudentIdsPassportUpdatePublic? passport}) =
      _$RegistrationsStudentIdsNationalityCreateRequestImpl;

  factory _RegistrationsStudentIdsNationalityCreateRequest.fromJson(
          Map<String, dynamic> json) =
      _$RegistrationsStudentIdsNationalityCreateRequestImpl.fromJson;

  @override
  @JsonKey(name: 'national_card')
  StudentIdsNationalCardUpdatePublic get nationalCard;
  @override
  @JsonKey(name: 'residence_card')
  StudentIdsIraqiResidenceCardUpdatePublic get residenceCard;
  @override
  @JsonKey(name: 'passport')
  StudentIdsPassportUpdatePublic? get passport;

  /// Create a copy of RegistrationsStudentIdsNationalityCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationsStudentIdsNationalityCreateRequestImplCopyWith<
          _$RegistrationsStudentIdsNationalityCreateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
