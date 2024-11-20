// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_ids_passport_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentIdsPassportPublic _$StudentIdsPassportPublicFromJson(
    Map<String, dynamic> json) {
  return _StudentIdsPassportPublic.fromJson(json);
}

/// @nodoc
mixin _$StudentIdsPassportPublic {
  @JsonKey(name: 'number')
  String? get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'issuing_authority')
  String? get issuingAuthority => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_issue')
  DateTime? get dateOfIssue => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_expiry')
  DateTime? get dateOfExpiry => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  CountryPublic? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  FilePublic? get image => throw _privateConstructorUsedError;

  /// Serializes this StudentIdsPassportPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentIdsPassportPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentIdsPassportPublicCopyWith<StudentIdsPassportPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentIdsPassportPublicCopyWith<$Res> {
  factory $StudentIdsPassportPublicCopyWith(StudentIdsPassportPublic value,
          $Res Function(StudentIdsPassportPublic) then) =
      _$StudentIdsPassportPublicCopyWithImpl<$Res, StudentIdsPassportPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'number') String? number,
      @JsonKey(name: 'issuing_authority') String? issuingAuthority,
      @JsonKey(name: 'date_of_issue') DateTime? dateOfIssue,
      @JsonKey(name: 'date_of_expiry') DateTime? dateOfExpiry,
      @JsonKey(name: 'country') CountryPublic? country,
      @JsonKey(name: 'image') FilePublic? image});

  $CountryPublicCopyWith<$Res>? get country;
  $FilePublicCopyWith<$Res>? get image;
}

/// @nodoc
class _$StudentIdsPassportPublicCopyWithImpl<$Res,
        $Val extends StudentIdsPassportPublic>
    implements $StudentIdsPassportPublicCopyWith<$Res> {
  _$StudentIdsPassportPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentIdsPassportPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? issuingAuthority = freezed,
    Object? dateOfIssue = freezed,
    Object? dateOfExpiry = freezed,
    Object? country = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
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
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryPublic?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as FilePublic?,
    ) as $Val);
  }

  /// Create a copy of StudentIdsPassportPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountryPublicCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryPublicCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }

  /// Create a copy of StudentIdsPassportPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilePublicCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $FilePublicCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentIdsPassportPublicImplCopyWith<$Res>
    implements $StudentIdsPassportPublicCopyWith<$Res> {
  factory _$$StudentIdsPassportPublicImplCopyWith(
          _$StudentIdsPassportPublicImpl value,
          $Res Function(_$StudentIdsPassportPublicImpl) then) =
      __$$StudentIdsPassportPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'number') String? number,
      @JsonKey(name: 'issuing_authority') String? issuingAuthority,
      @JsonKey(name: 'date_of_issue') DateTime? dateOfIssue,
      @JsonKey(name: 'date_of_expiry') DateTime? dateOfExpiry,
      @JsonKey(name: 'country') CountryPublic? country,
      @JsonKey(name: 'image') FilePublic? image});

  @override
  $CountryPublicCopyWith<$Res>? get country;
  @override
  $FilePublicCopyWith<$Res>? get image;
}

/// @nodoc
class __$$StudentIdsPassportPublicImplCopyWithImpl<$Res>
    extends _$StudentIdsPassportPublicCopyWithImpl<$Res,
        _$StudentIdsPassportPublicImpl>
    implements _$$StudentIdsPassportPublicImplCopyWith<$Res> {
  __$$StudentIdsPassportPublicImplCopyWithImpl(
      _$StudentIdsPassportPublicImpl _value,
      $Res Function(_$StudentIdsPassportPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentIdsPassportPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? issuingAuthority = freezed,
    Object? dateOfIssue = freezed,
    Object? dateOfExpiry = freezed,
    Object? country = freezed,
    Object? image = freezed,
  }) {
    return _then(_$StudentIdsPassportPublicImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
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
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryPublic?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as FilePublic?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentIdsPassportPublicImpl implements _StudentIdsPassportPublic {
  const _$StudentIdsPassportPublicImpl(
      {@JsonKey(name: 'number') required this.number,
      @JsonKey(name: 'issuing_authority') required this.issuingAuthority,
      @JsonKey(name: 'date_of_issue') required this.dateOfIssue,
      @JsonKey(name: 'date_of_expiry') required this.dateOfExpiry,
      @JsonKey(name: 'country') required this.country,
      @JsonKey(name: 'image') required this.image});

  factory _$StudentIdsPassportPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentIdsPassportPublicImplFromJson(json);

  @override
  @JsonKey(name: 'number')
  final String? number;
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
  @JsonKey(name: 'country')
  final CountryPublic? country;
  @override
  @JsonKey(name: 'image')
  final FilePublic? image;

  @override
  String toString() {
    return 'StudentIdsPassportPublic(number: $number, issuingAuthority: $issuingAuthority, dateOfIssue: $dateOfIssue, dateOfExpiry: $dateOfExpiry, country: $country, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentIdsPassportPublicImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.issuingAuthority, issuingAuthority) ||
                other.issuingAuthority == issuingAuthority) &&
            (identical(other.dateOfIssue, dateOfIssue) ||
                other.dateOfIssue == dateOfIssue) &&
            (identical(other.dateOfExpiry, dateOfExpiry) ||
                other.dateOfExpiry == dateOfExpiry) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, issuingAuthority,
      dateOfIssue, dateOfExpiry, country, image);

  /// Create a copy of StudentIdsPassportPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentIdsPassportPublicImplCopyWith<_$StudentIdsPassportPublicImpl>
      get copyWith => __$$StudentIdsPassportPublicImplCopyWithImpl<
          _$StudentIdsPassportPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentIdsPassportPublicImplToJson(
      this,
    );
  }
}

abstract class _StudentIdsPassportPublic implements StudentIdsPassportPublic {
  const factory _StudentIdsPassportPublic(
      {@JsonKey(name: 'number') required final String? number,
      @JsonKey(name: 'issuing_authority')
      required final String? issuingAuthority,
      @JsonKey(name: 'date_of_issue') required final DateTime? dateOfIssue,
      @JsonKey(name: 'date_of_expiry') required final DateTime? dateOfExpiry,
      @JsonKey(name: 'country') required final CountryPublic? country,
      @JsonKey(name: 'image')
      required final FilePublic? image}) = _$StudentIdsPassportPublicImpl;

  factory _StudentIdsPassportPublic.fromJson(Map<String, dynamic> json) =
      _$StudentIdsPassportPublicImpl.fromJson;

  @override
  @JsonKey(name: 'number')
  String? get number;
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
  @JsonKey(name: 'country')
  CountryPublic? get country;
  @override
  @JsonKey(name: 'image')
  FilePublic? get image;

  /// Create a copy of StudentIdsPassportPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentIdsPassportPublicImplCopyWith<_$StudentIdsPassportPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
