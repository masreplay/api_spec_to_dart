// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_profile_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentProfileInfoResponse _$StudentProfileInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _StudentProfileInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$StudentProfileInfoResponse {
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'second_name')
  String? get secondName => throw _privateConstructorUsedError;
  @JsonKey(name: 'third_name')
  String? get thirdName => throw _privateConstructorUsedError;
  @JsonKey(name: 'fourth_name')
  String? get fourthName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'university_number')
  int? get universityNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  FilePublic? get profileImage => throw _privateConstructorUsedError;

  /// Serializes this StudentProfileInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentProfileInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentProfileInfoResponseCopyWith<StudentProfileInfoResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentProfileInfoResponseCopyWith<$Res> {
  factory $StudentProfileInfoResponseCopyWith(StudentProfileInfoResponse value,
          $Res Function(StudentProfileInfoResponse) then) =
      _$StudentProfileInfoResponseCopyWithImpl<$Res,
          StudentProfileInfoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'second_name') String? secondName,
      @JsonKey(name: 'third_name') String? thirdName,
      @JsonKey(name: 'fourth_name') String? fourthName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'university_number') int? universityNumber,
      @JsonKey(name: 'profile_image') FilePublic? profileImage});

  $FilePublicCopyWith<$Res>? get profileImage;
}

/// @nodoc
class _$StudentProfileInfoResponseCopyWithImpl<$Res,
        $Val extends StudentProfileInfoResponse>
    implements $StudentProfileInfoResponseCopyWith<$Res> {
  _$StudentProfileInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentProfileInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? secondName = freezed,
    Object? thirdName = freezed,
    Object? fourthName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? universityNumber = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      secondName: freezed == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String?,
      thirdName: freezed == thirdName
          ? _value.thirdName
          : thirdName // ignore: cast_nullable_to_non_nullable
              as String?,
      fourthName: freezed == fourthName
          ? _value.fourthName
          : fourthName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      universityNumber: freezed == universityNumber
          ? _value.universityNumber
          : universityNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as FilePublic?,
    ) as $Val);
  }

  /// Create a copy of StudentProfileInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilePublicCopyWith<$Res>? get profileImage {
    if (_value.profileImage == null) {
      return null;
    }

    return $FilePublicCopyWith<$Res>(_value.profileImage!, (value) {
      return _then(_value.copyWith(profileImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentProfileInfoResponseImplCopyWith<$Res>
    implements $StudentProfileInfoResponseCopyWith<$Res> {
  factory _$$StudentProfileInfoResponseImplCopyWith(
          _$StudentProfileInfoResponseImpl value,
          $Res Function(_$StudentProfileInfoResponseImpl) then) =
      __$$StudentProfileInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'second_name') String? secondName,
      @JsonKey(name: 'third_name') String? thirdName,
      @JsonKey(name: 'fourth_name') String? fourthName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'university_number') int? universityNumber,
      @JsonKey(name: 'profile_image') FilePublic? profileImage});

  @override
  $FilePublicCopyWith<$Res>? get profileImage;
}

/// @nodoc
class __$$StudentProfileInfoResponseImplCopyWithImpl<$Res>
    extends _$StudentProfileInfoResponseCopyWithImpl<$Res,
        _$StudentProfileInfoResponseImpl>
    implements _$$StudentProfileInfoResponseImplCopyWith<$Res> {
  __$$StudentProfileInfoResponseImplCopyWithImpl(
      _$StudentProfileInfoResponseImpl _value,
      $Res Function(_$StudentProfileInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentProfileInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? secondName = freezed,
    Object? thirdName = freezed,
    Object? fourthName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? universityNumber = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_$StudentProfileInfoResponseImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      secondName: freezed == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String?,
      thirdName: freezed == thirdName
          ? _value.thirdName
          : thirdName // ignore: cast_nullable_to_non_nullable
              as String?,
      fourthName: freezed == fourthName
          ? _value.fourthName
          : fourthName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      universityNumber: freezed == universityNumber
          ? _value.universityNumber
          : universityNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as FilePublic?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$StudentProfileInfoResponseImpl extends _StudentProfileInfoResponse {
  const _$StudentProfileInfoResponseImpl(
      {@JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'second_name') required this.secondName,
      @JsonKey(name: 'third_name') required this.thirdName,
      @JsonKey(name: 'fourth_name') required this.fourthName,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'phone_number') required this.phoneNumber,
      @JsonKey(name: 'university_number') required this.universityNumber,
      @JsonKey(name: 'profile_image') required this.profileImage})
      : super._();

  factory _$StudentProfileInfoResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StudentProfileInfoResponseImplFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'second_name')
  final String? secondName;
  @override
  @JsonKey(name: 'third_name')
  final String? thirdName;
  @override
  @JsonKey(name: 'fourth_name')
  final String? fourthName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'university_number')
  final int? universityNumber;
  @override
  @JsonKey(name: 'profile_image')
  final FilePublic? profileImage;

  @override
  String toString() {
    return 'StudentProfileInfoResponse(firstName: $firstName, secondName: $secondName, thirdName: $thirdName, fourthName: $fourthName, email: $email, phoneNumber: $phoneNumber, universityNumber: $universityNumber, profileImage: $profileImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentProfileInfoResponseImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.secondName, secondName) ||
                other.secondName == secondName) &&
            (identical(other.thirdName, thirdName) ||
                other.thirdName == thirdName) &&
            (identical(other.fourthName, fourthName) ||
                other.fourthName == fourthName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.universityNumber, universityNumber) ||
                other.universityNumber == universityNumber) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, secondName, thirdName,
      fourthName, email, phoneNumber, universityNumber, profileImage);

  /// Create a copy of StudentProfileInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentProfileInfoResponseImplCopyWith<_$StudentProfileInfoResponseImpl>
      get copyWith => __$$StudentProfileInfoResponseImplCopyWithImpl<
          _$StudentProfileInfoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentProfileInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _StudentProfileInfoResponse extends StudentProfileInfoResponse {
  const factory _StudentProfileInfoResponse(
      {@JsonKey(name: 'first_name') required final String? firstName,
      @JsonKey(name: 'second_name') required final String? secondName,
      @JsonKey(name: 'third_name') required final String? thirdName,
      @JsonKey(name: 'fourth_name') required final String? fourthName,
      @JsonKey(name: 'email') required final String? email,
      @JsonKey(name: 'phone_number') required final String? phoneNumber,
      @JsonKey(name: 'university_number') required final int? universityNumber,
      @JsonKey(name: 'profile_image')
      required final FilePublic?
          profileImage}) = _$StudentProfileInfoResponseImpl;
  const _StudentProfileInfoResponse._() : super._();

  factory _StudentProfileInfoResponse.fromJson(Map<String, dynamic> json) =
      _$StudentProfileInfoResponseImpl.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'second_name')
  String? get secondName;
  @override
  @JsonKey(name: 'third_name')
  String? get thirdName;
  @override
  @JsonKey(name: 'fourth_name')
  String? get fourthName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'university_number')
  int? get universityNumber;
  @override
  @JsonKey(name: 'profile_image')
  FilePublic? get profileImage;

  /// Create a copy of StudentProfileInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentProfileInfoResponseImplCopyWith<_$StudentProfileInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
