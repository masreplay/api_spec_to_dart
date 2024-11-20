// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_student_ids_foreigner_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegistrationStudentIdsForeignerUpdateRequest
    _$RegistrationStudentIdsForeignerUpdateRequestFromJson(
        Map<String, dynamic> json) {
  return _RegistrationStudentIdsForeignerUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$RegistrationStudentIdsForeignerUpdateRequest {
  @JsonKey(name: 'national_card')
  StudentIdsNationalCardUpdatePublic get nationalCard =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'passport')
  StudentIdsPassportUpdatePublic get passport =>
      throw _privateConstructorUsedError;

  /// Serializes this RegistrationStudentIdsForeignerUpdateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegistrationStudentIdsForeignerUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationStudentIdsForeignerUpdateRequestCopyWith<
          RegistrationStudentIdsForeignerUpdateRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStudentIdsForeignerUpdateRequestCopyWith<$Res> {
  factory $RegistrationStudentIdsForeignerUpdateRequestCopyWith(
          RegistrationStudentIdsForeignerUpdateRequest value,
          $Res Function(RegistrationStudentIdsForeignerUpdateRequest) then) =
      _$RegistrationStudentIdsForeignerUpdateRequestCopyWithImpl<$Res,
          RegistrationStudentIdsForeignerUpdateRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'national_card')
      StudentIdsNationalCardUpdatePublic nationalCard,
      @JsonKey(name: 'passport') StudentIdsPassportUpdatePublic passport});

  $StudentIdsNationalCardUpdatePublicCopyWith<$Res> get nationalCard;
  $StudentIdsPassportUpdatePublicCopyWith<$Res> get passport;
}

/// @nodoc
class _$RegistrationStudentIdsForeignerUpdateRequestCopyWithImpl<$Res,
        $Val extends RegistrationStudentIdsForeignerUpdateRequest>
    implements $RegistrationStudentIdsForeignerUpdateRequestCopyWith<$Res> {
  _$RegistrationStudentIdsForeignerUpdateRequestCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationStudentIdsForeignerUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nationalCard = null,
    Object? passport = null,
  }) {
    return _then(_value.copyWith(
      nationalCard: null == nationalCard
          ? _value.nationalCard
          : nationalCard // ignore: cast_nullable_to_non_nullable
              as StudentIdsNationalCardUpdatePublic,
      passport: null == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as StudentIdsPassportUpdatePublic,
    ) as $Val);
  }

  /// Create a copy of RegistrationStudentIdsForeignerUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentIdsNationalCardUpdatePublicCopyWith<$Res> get nationalCard {
    return $StudentIdsNationalCardUpdatePublicCopyWith<$Res>(
        _value.nationalCard, (value) {
      return _then(_value.copyWith(nationalCard: value) as $Val);
    });
  }

  /// Create a copy of RegistrationStudentIdsForeignerUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentIdsPassportUpdatePublicCopyWith<$Res> get passport {
    return $StudentIdsPassportUpdatePublicCopyWith<$Res>(_value.passport,
        (value) {
      return _then(_value.copyWith(passport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegistrationStudentIdsForeignerUpdateRequestImplCopyWith<$Res>
    implements $RegistrationStudentIdsForeignerUpdateRequestCopyWith<$Res> {
  factory _$$RegistrationStudentIdsForeignerUpdateRequestImplCopyWith(
          _$RegistrationStudentIdsForeignerUpdateRequestImpl value,
          $Res Function(_$RegistrationStudentIdsForeignerUpdateRequestImpl)
              then) =
      __$$RegistrationStudentIdsForeignerUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'national_card')
      StudentIdsNationalCardUpdatePublic nationalCard,
      @JsonKey(name: 'passport') StudentIdsPassportUpdatePublic passport});

  @override
  $StudentIdsNationalCardUpdatePublicCopyWith<$Res> get nationalCard;
  @override
  $StudentIdsPassportUpdatePublicCopyWith<$Res> get passport;
}

/// @nodoc
class __$$RegistrationStudentIdsForeignerUpdateRequestImplCopyWithImpl<$Res>
    extends _$RegistrationStudentIdsForeignerUpdateRequestCopyWithImpl<$Res,
        _$RegistrationStudentIdsForeignerUpdateRequestImpl>
    implements
        _$$RegistrationStudentIdsForeignerUpdateRequestImplCopyWith<$Res> {
  __$$RegistrationStudentIdsForeignerUpdateRequestImplCopyWithImpl(
      _$RegistrationStudentIdsForeignerUpdateRequestImpl _value,
      $Res Function(_$RegistrationStudentIdsForeignerUpdateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationStudentIdsForeignerUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nationalCard = null,
    Object? passport = null,
  }) {
    return _then(_$RegistrationStudentIdsForeignerUpdateRequestImpl(
      nationalCard: null == nationalCard
          ? _value.nationalCard
          : nationalCard // ignore: cast_nullable_to_non_nullable
              as StudentIdsNationalCardUpdatePublic,
      passport: null == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as StudentIdsPassportUpdatePublic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationStudentIdsForeignerUpdateRequestImpl
    implements _RegistrationStudentIdsForeignerUpdateRequest {
  const _$RegistrationStudentIdsForeignerUpdateRequestImpl(
      {@JsonKey(name: 'national_card') required this.nationalCard,
      @JsonKey(name: 'passport') required this.passport});

  factory _$RegistrationStudentIdsForeignerUpdateRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RegistrationStudentIdsForeignerUpdateRequestImplFromJson(json);

  @override
  @JsonKey(name: 'national_card')
  final StudentIdsNationalCardUpdatePublic nationalCard;
  @override
  @JsonKey(name: 'passport')
  final StudentIdsPassportUpdatePublic passport;

  @override
  String toString() {
    return 'RegistrationStudentIdsForeignerUpdateRequest(nationalCard: $nationalCard, passport: $passport)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationStudentIdsForeignerUpdateRequestImpl &&
            (identical(other.nationalCard, nationalCard) ||
                other.nationalCard == nationalCard) &&
            (identical(other.passport, passport) ||
                other.passport == passport));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nationalCard, passport);

  /// Create a copy of RegistrationStudentIdsForeignerUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationStudentIdsForeignerUpdateRequestImplCopyWith<
          _$RegistrationStudentIdsForeignerUpdateRequestImpl>
      get copyWith =>
          __$$RegistrationStudentIdsForeignerUpdateRequestImplCopyWithImpl<
                  _$RegistrationStudentIdsForeignerUpdateRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationStudentIdsForeignerUpdateRequestImplToJson(
      this,
    );
  }
}

abstract class _RegistrationStudentIdsForeignerUpdateRequest
    implements RegistrationStudentIdsForeignerUpdateRequest {
  const factory _RegistrationStudentIdsForeignerUpdateRequest(
          {@JsonKey(name: 'national_card')
          required final StudentIdsNationalCardUpdatePublic nationalCard,
          @JsonKey(name: 'passport')
          required final StudentIdsPassportUpdatePublic passport}) =
      _$RegistrationStudentIdsForeignerUpdateRequestImpl;

  factory _RegistrationStudentIdsForeignerUpdateRequest.fromJson(
          Map<String, dynamic> json) =
      _$RegistrationStudentIdsForeignerUpdateRequestImpl.fromJson;

  @override
  @JsonKey(name: 'national_card')
  StudentIdsNationalCardUpdatePublic get nationalCard;
  @override
  @JsonKey(name: 'passport')
  StudentIdsPassportUpdatePublic get passport;

  /// Create a copy of RegistrationStudentIdsForeignerUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationStudentIdsForeignerUpdateRequestImplCopyWith<
          _$RegistrationStudentIdsForeignerUpdateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
