// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_ids_iraqi_residence_card_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentIdsIraqiResidenceCardPublic _$StudentIdsIraqiResidenceCardPublicFromJson(
    Map<String, dynamic> json) {
  return _StudentIdsIraqiResidenceCardPublic.fromJson(json);
}

/// @nodoc
mixin _$StudentIdsIraqiResidenceCardPublic {
  /// Home Address
  @JsonKey(name: 'home_address')
  String? get homeAddress => throw _privateConstructorUsedError;

  /// Street Address
  @JsonKey(name: 'street_address')
  String? get streetAddress => throw _privateConstructorUsedError;

  /// Quarter Address
  @JsonKey(name: 'quarter_address')
  String? get quarterAddress => throw _privateConstructorUsedError;

  /// Form Number
  @JsonKey(name: 'form_number')
  String? get formNumber => throw _privateConstructorUsedError;

  /// Sequence
  @JsonKey(name: 'sequence')
  String? get sequence => throw _privateConstructorUsedError;

  /// Date Of Issue
  @JsonKey(name: 'date_of_issue')
  DateTime? get dateOfIssue => throw _privateConstructorUsedError;
  @JsonKey(name: 'information_bureau')
  InformationBureausPublic? get informationBureau =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'front_image')
  FilePublic? get frontImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'back_image')
  FilePublic? get backImage => throw _privateConstructorUsedError;

  /// Serializes this StudentIdsIraqiResidenceCardPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentIdsIraqiResidenceCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentIdsIraqiResidenceCardPublicCopyWith<
          StudentIdsIraqiResidenceCardPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentIdsIraqiResidenceCardPublicCopyWith<$Res> {
  factory $StudentIdsIraqiResidenceCardPublicCopyWith(
          StudentIdsIraqiResidenceCardPublic value,
          $Res Function(StudentIdsIraqiResidenceCardPublic) then) =
      _$StudentIdsIraqiResidenceCardPublicCopyWithImpl<$Res,
          StudentIdsIraqiResidenceCardPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'home_address') String? homeAddress,
      @JsonKey(name: 'street_address') String? streetAddress,
      @JsonKey(name: 'quarter_address') String? quarterAddress,
      @JsonKey(name: 'form_number') String? formNumber,
      @JsonKey(name: 'sequence') String? sequence,
      @JsonKey(name: 'date_of_issue') DateTime? dateOfIssue,
      @JsonKey(name: 'information_bureau')
      InformationBureausPublic? informationBureau,
      @JsonKey(name: 'front_image') FilePublic? frontImage,
      @JsonKey(name: 'back_image') FilePublic? backImage});

  $InformationBureausPublicCopyWith<$Res>? get informationBureau;
  $FilePublicCopyWith<$Res>? get frontImage;
  $FilePublicCopyWith<$Res>? get backImage;
}

/// @nodoc
class _$StudentIdsIraqiResidenceCardPublicCopyWithImpl<$Res,
        $Val extends StudentIdsIraqiResidenceCardPublic>
    implements $StudentIdsIraqiResidenceCardPublicCopyWith<$Res> {
  _$StudentIdsIraqiResidenceCardPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentIdsIraqiResidenceCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeAddress = freezed,
    Object? streetAddress = freezed,
    Object? quarterAddress = freezed,
    Object? formNumber = freezed,
    Object? sequence = freezed,
    Object? dateOfIssue = freezed,
    Object? informationBureau = freezed,
    Object? frontImage = freezed,
    Object? backImage = freezed,
  }) {
    return _then(_value.copyWith(
      homeAddress: freezed == homeAddress
          ? _value.homeAddress
          : homeAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      streetAddress: freezed == streetAddress
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      quarterAddress: freezed == quarterAddress
          ? _value.quarterAddress
          : quarterAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      formNumber: freezed == formNumber
          ? _value.formNumber
          : formNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfIssue: freezed == dateOfIssue
          ? _value.dateOfIssue
          : dateOfIssue // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      informationBureau: freezed == informationBureau
          ? _value.informationBureau
          : informationBureau // ignore: cast_nullable_to_non_nullable
              as InformationBureausPublic?,
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

  /// Create a copy of StudentIdsIraqiResidenceCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InformationBureausPublicCopyWith<$Res>? get informationBureau {
    if (_value.informationBureau == null) {
      return null;
    }

    return $InformationBureausPublicCopyWith<$Res>(_value.informationBureau!,
        (value) {
      return _then(_value.copyWith(informationBureau: value) as $Val);
    });
  }

  /// Create a copy of StudentIdsIraqiResidenceCardPublic
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

  /// Create a copy of StudentIdsIraqiResidenceCardPublic
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
abstract class _$$StudentIdsIraqiResidenceCardPublicImplCopyWith<$Res>
    implements $StudentIdsIraqiResidenceCardPublicCopyWith<$Res> {
  factory _$$StudentIdsIraqiResidenceCardPublicImplCopyWith(
          _$StudentIdsIraqiResidenceCardPublicImpl value,
          $Res Function(_$StudentIdsIraqiResidenceCardPublicImpl) then) =
      __$$StudentIdsIraqiResidenceCardPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'home_address') String? homeAddress,
      @JsonKey(name: 'street_address') String? streetAddress,
      @JsonKey(name: 'quarter_address') String? quarterAddress,
      @JsonKey(name: 'form_number') String? formNumber,
      @JsonKey(name: 'sequence') String? sequence,
      @JsonKey(name: 'date_of_issue') DateTime? dateOfIssue,
      @JsonKey(name: 'information_bureau')
      InformationBureausPublic? informationBureau,
      @JsonKey(name: 'front_image') FilePublic? frontImage,
      @JsonKey(name: 'back_image') FilePublic? backImage});

  @override
  $InformationBureausPublicCopyWith<$Res>? get informationBureau;
  @override
  $FilePublicCopyWith<$Res>? get frontImage;
  @override
  $FilePublicCopyWith<$Res>? get backImage;
}

/// @nodoc
class __$$StudentIdsIraqiResidenceCardPublicImplCopyWithImpl<$Res>
    extends _$StudentIdsIraqiResidenceCardPublicCopyWithImpl<$Res,
        _$StudentIdsIraqiResidenceCardPublicImpl>
    implements _$$StudentIdsIraqiResidenceCardPublicImplCopyWith<$Res> {
  __$$StudentIdsIraqiResidenceCardPublicImplCopyWithImpl(
      _$StudentIdsIraqiResidenceCardPublicImpl _value,
      $Res Function(_$StudentIdsIraqiResidenceCardPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentIdsIraqiResidenceCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeAddress = freezed,
    Object? streetAddress = freezed,
    Object? quarterAddress = freezed,
    Object? formNumber = freezed,
    Object? sequence = freezed,
    Object? dateOfIssue = freezed,
    Object? informationBureau = freezed,
    Object? frontImage = freezed,
    Object? backImage = freezed,
  }) {
    return _then(_$StudentIdsIraqiResidenceCardPublicImpl(
      homeAddress: freezed == homeAddress
          ? _value.homeAddress
          : homeAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      streetAddress: freezed == streetAddress
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      quarterAddress: freezed == quarterAddress
          ? _value.quarterAddress
          : quarterAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      formNumber: freezed == formNumber
          ? _value.formNumber
          : formNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfIssue: freezed == dateOfIssue
          ? _value.dateOfIssue
          : dateOfIssue // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      informationBureau: freezed == informationBureau
          ? _value.informationBureau
          : informationBureau // ignore: cast_nullable_to_non_nullable
              as InformationBureausPublic?,
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

@JsonSerializable(converters: convertors)
class _$StudentIdsIraqiResidenceCardPublicImpl
    extends _StudentIdsIraqiResidenceCardPublic {
  const _$StudentIdsIraqiResidenceCardPublicImpl(
      {@JsonKey(name: 'home_address') required this.homeAddress,
      @JsonKey(name: 'street_address') required this.streetAddress,
      @JsonKey(name: 'quarter_address') required this.quarterAddress,
      @JsonKey(name: 'form_number') required this.formNumber,
      @JsonKey(name: 'sequence') required this.sequence,
      @JsonKey(name: 'date_of_issue') required this.dateOfIssue,
      @JsonKey(name: 'information_bureau') required this.informationBureau,
      @JsonKey(name: 'front_image') required this.frontImage,
      @JsonKey(name: 'back_image') required this.backImage})
      : super._();

  factory _$StudentIdsIraqiResidenceCardPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StudentIdsIraqiResidenceCardPublicImplFromJson(json);

  /// Home Address
  @override
  @JsonKey(name: 'home_address')
  final String? homeAddress;

  /// Street Address
  @override
  @JsonKey(name: 'street_address')
  final String? streetAddress;

  /// Quarter Address
  @override
  @JsonKey(name: 'quarter_address')
  final String? quarterAddress;

  /// Form Number
  @override
  @JsonKey(name: 'form_number')
  final String? formNumber;

  /// Sequence
  @override
  @JsonKey(name: 'sequence')
  final String? sequence;

  /// Date Of Issue
  @override
  @JsonKey(name: 'date_of_issue')
  final DateTime? dateOfIssue;
  @override
  @JsonKey(name: 'information_bureau')
  final InformationBureausPublic? informationBureau;
  @override
  @JsonKey(name: 'front_image')
  final FilePublic? frontImage;
  @override
  @JsonKey(name: 'back_image')
  final FilePublic? backImage;

  @override
  String toString() {
    return 'StudentIdsIraqiResidenceCardPublic(homeAddress: $homeAddress, streetAddress: $streetAddress, quarterAddress: $quarterAddress, formNumber: $formNumber, sequence: $sequence, dateOfIssue: $dateOfIssue, informationBureau: $informationBureau, frontImage: $frontImage, backImage: $backImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentIdsIraqiResidenceCardPublicImpl &&
            (identical(other.homeAddress, homeAddress) ||
                other.homeAddress == homeAddress) &&
            (identical(other.streetAddress, streetAddress) ||
                other.streetAddress == streetAddress) &&
            (identical(other.quarterAddress, quarterAddress) ||
                other.quarterAddress == quarterAddress) &&
            (identical(other.formNumber, formNumber) ||
                other.formNumber == formNumber) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.dateOfIssue, dateOfIssue) ||
                other.dateOfIssue == dateOfIssue) &&
            (identical(other.informationBureau, informationBureau) ||
                other.informationBureau == informationBureau) &&
            (identical(other.frontImage, frontImage) ||
                other.frontImage == frontImage) &&
            (identical(other.backImage, backImage) ||
                other.backImage == backImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      homeAddress,
      streetAddress,
      quarterAddress,
      formNumber,
      sequence,
      dateOfIssue,
      informationBureau,
      frontImage,
      backImage);

  /// Create a copy of StudentIdsIraqiResidenceCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentIdsIraqiResidenceCardPublicImplCopyWith<
          _$StudentIdsIraqiResidenceCardPublicImpl>
      get copyWith => __$$StudentIdsIraqiResidenceCardPublicImplCopyWithImpl<
          _$StudentIdsIraqiResidenceCardPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentIdsIraqiResidenceCardPublicImplToJson(
      this,
    );
  }
}

abstract class _StudentIdsIraqiResidenceCardPublic
    extends StudentIdsIraqiResidenceCardPublic {
  const factory _StudentIdsIraqiResidenceCardPublic(
      {@JsonKey(name: 'home_address') required final String? homeAddress,
      @JsonKey(name: 'street_address') required final String? streetAddress,
      @JsonKey(name: 'quarter_address') required final String? quarterAddress,
      @JsonKey(name: 'form_number') required final String? formNumber,
      @JsonKey(name: 'sequence') required final String? sequence,
      @JsonKey(name: 'date_of_issue') required final DateTime? dateOfIssue,
      @JsonKey(name: 'information_bureau')
      required final InformationBureausPublic? informationBureau,
      @JsonKey(name: 'front_image') required final FilePublic? frontImage,
      @JsonKey(name: 'back_image')
      required final FilePublic?
          backImage}) = _$StudentIdsIraqiResidenceCardPublicImpl;
  const _StudentIdsIraqiResidenceCardPublic._() : super._();

  factory _StudentIdsIraqiResidenceCardPublic.fromJson(
          Map<String, dynamic> json) =
      _$StudentIdsIraqiResidenceCardPublicImpl.fromJson;

  /// Home Address
  @override
  @JsonKey(name: 'home_address')
  String? get homeAddress;

  /// Street Address
  @override
  @JsonKey(name: 'street_address')
  String? get streetAddress;

  /// Quarter Address
  @override
  @JsonKey(name: 'quarter_address')
  String? get quarterAddress;

  /// Form Number
  @override
  @JsonKey(name: 'form_number')
  String? get formNumber;

  /// Sequence
  @override
  @JsonKey(name: 'sequence')
  String? get sequence;

  /// Date Of Issue
  @override
  @JsonKey(name: 'date_of_issue')
  DateTime? get dateOfIssue;
  @override
  @JsonKey(name: 'information_bureau')
  InformationBureausPublic? get informationBureau;
  @override
  @JsonKey(name: 'front_image')
  FilePublic? get frontImage;
  @override
  @JsonKey(name: 'back_image')
  FilePublic? get backImage;

  /// Create a copy of StudentIdsIraqiResidenceCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentIdsIraqiResidenceCardPublicImplCopyWith<
          _$StudentIdsIraqiResidenceCardPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
