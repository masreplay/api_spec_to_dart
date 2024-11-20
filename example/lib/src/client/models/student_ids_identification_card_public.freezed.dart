// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_ids_identification_card_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentIdsIdentificationCardPublic _$StudentIdsIdentificationCardPublicFromJson(
    Map<String, dynamic> json) {
  return _StudentIdsIdentificationCardPublic.fromJson(json);
}

/// @nodoc
mixin _$StudentIdsIdentificationCardPublic {
  @JsonKey(name: 'number')
  String? get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'record')
  String? get record => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  String? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'issuing_authority')
  String? get issuingAuthority => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_issue')
  DateTime? get dateOfIssue => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_image')
  FilePublic? get frontImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'back_image')
  FilePublic? get backImage => throw _privateConstructorUsedError;

  /// Serializes this StudentIdsIdentificationCardPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentIdsIdentificationCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentIdsIdentificationCardPublicCopyWith<
          StudentIdsIdentificationCardPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentIdsIdentificationCardPublicCopyWith<$Res> {
  factory $StudentIdsIdentificationCardPublicCopyWith(
          StudentIdsIdentificationCardPublic value,
          $Res Function(StudentIdsIdentificationCardPublic) then) =
      _$StudentIdsIdentificationCardPublicCopyWithImpl<$Res,
          StudentIdsIdentificationCardPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'number') String? number,
      @JsonKey(name: 'record') String? record,
      @JsonKey(name: 'page') String? page,
      @JsonKey(name: 'issuing_authority') String? issuingAuthority,
      @JsonKey(name: 'date_of_issue') DateTime? dateOfIssue,
      @JsonKey(name: 'front_image') FilePublic? frontImage,
      @JsonKey(name: 'back_image') FilePublic? backImage});

  $FilePublicCopyWith<$Res>? get frontImage;
  $FilePublicCopyWith<$Res>? get backImage;
}

/// @nodoc
class _$StudentIdsIdentificationCardPublicCopyWithImpl<$Res,
        $Val extends StudentIdsIdentificationCardPublic>
    implements $StudentIdsIdentificationCardPublicCopyWith<$Res> {
  _$StudentIdsIdentificationCardPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentIdsIdentificationCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? record = freezed,
    Object? page = freezed,
    Object? issuingAuthority = freezed,
    Object? dateOfIssue = freezed,
    Object? frontImage = freezed,
    Object? backImage = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      issuingAuthority: freezed == issuingAuthority
          ? _value.issuingAuthority
          : issuingAuthority // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfIssue: freezed == dateOfIssue
          ? _value.dateOfIssue
          : dateOfIssue // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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

  /// Create a copy of StudentIdsIdentificationCardPublic
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

  /// Create a copy of StudentIdsIdentificationCardPublic
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
abstract class _$$StudentIdsIdentificationCardPublicImplCopyWith<$Res>
    implements $StudentIdsIdentificationCardPublicCopyWith<$Res> {
  factory _$$StudentIdsIdentificationCardPublicImplCopyWith(
          _$StudentIdsIdentificationCardPublicImpl value,
          $Res Function(_$StudentIdsIdentificationCardPublicImpl) then) =
      __$$StudentIdsIdentificationCardPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'number') String? number,
      @JsonKey(name: 'record') String? record,
      @JsonKey(name: 'page') String? page,
      @JsonKey(name: 'issuing_authority') String? issuingAuthority,
      @JsonKey(name: 'date_of_issue') DateTime? dateOfIssue,
      @JsonKey(name: 'front_image') FilePublic? frontImage,
      @JsonKey(name: 'back_image') FilePublic? backImage});

  @override
  $FilePublicCopyWith<$Res>? get frontImage;
  @override
  $FilePublicCopyWith<$Res>? get backImage;
}

/// @nodoc
class __$$StudentIdsIdentificationCardPublicImplCopyWithImpl<$Res>
    extends _$StudentIdsIdentificationCardPublicCopyWithImpl<$Res,
        _$StudentIdsIdentificationCardPublicImpl>
    implements _$$StudentIdsIdentificationCardPublicImplCopyWith<$Res> {
  __$$StudentIdsIdentificationCardPublicImplCopyWithImpl(
      _$StudentIdsIdentificationCardPublicImpl _value,
      $Res Function(_$StudentIdsIdentificationCardPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentIdsIdentificationCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? record = freezed,
    Object? page = freezed,
    Object? issuingAuthority = freezed,
    Object? dateOfIssue = freezed,
    Object? frontImage = freezed,
    Object? backImage = freezed,
  }) {
    return _then(_$StudentIdsIdentificationCardPublicImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      issuingAuthority: freezed == issuingAuthority
          ? _value.issuingAuthority
          : issuingAuthority // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfIssue: freezed == dateOfIssue
          ? _value.dateOfIssue
          : dateOfIssue // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
class _$StudentIdsIdentificationCardPublicImpl
    extends _StudentIdsIdentificationCardPublic {
  const _$StudentIdsIdentificationCardPublicImpl(
      {@JsonKey(name: 'number') required this.number,
      @JsonKey(name: 'record') required this.record,
      @JsonKey(name: 'page') required this.page,
      @JsonKey(name: 'issuing_authority') required this.issuingAuthority,
      @JsonKey(name: 'date_of_issue') required this.dateOfIssue,
      @JsonKey(name: 'front_image') required this.frontImage,
      @JsonKey(name: 'back_image') required this.backImage})
      : super._();

  factory _$StudentIdsIdentificationCardPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StudentIdsIdentificationCardPublicImplFromJson(json);

  @override
  @JsonKey(name: 'number')
  final String? number;
  @override
  @JsonKey(name: 'record')
  final String? record;
  @override
  @JsonKey(name: 'page')
  final String? page;
  @override
  @JsonKey(name: 'issuing_authority')
  final String? issuingAuthority;
  @override
  @JsonKey(name: 'date_of_issue')
  final DateTime? dateOfIssue;
  @override
  @JsonKey(name: 'front_image')
  final FilePublic? frontImage;
  @override
  @JsonKey(name: 'back_image')
  final FilePublic? backImage;

  @override
  String toString() {
    return 'StudentIdsIdentificationCardPublic(number: $number, record: $record, page: $page, issuingAuthority: $issuingAuthority, dateOfIssue: $dateOfIssue, frontImage: $frontImage, backImage: $backImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentIdsIdentificationCardPublicImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.record, record) || other.record == record) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.issuingAuthority, issuingAuthority) ||
                other.issuingAuthority == issuingAuthority) &&
            (identical(other.dateOfIssue, dateOfIssue) ||
                other.dateOfIssue == dateOfIssue) &&
            (identical(other.frontImage, frontImage) ||
                other.frontImage == frontImage) &&
            (identical(other.backImage, backImage) ||
                other.backImage == backImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, record, page,
      issuingAuthority, dateOfIssue, frontImage, backImage);

  /// Create a copy of StudentIdsIdentificationCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentIdsIdentificationCardPublicImplCopyWith<
          _$StudentIdsIdentificationCardPublicImpl>
      get copyWith => __$$StudentIdsIdentificationCardPublicImplCopyWithImpl<
          _$StudentIdsIdentificationCardPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentIdsIdentificationCardPublicImplToJson(
      this,
    );
  }
}

abstract class _StudentIdsIdentificationCardPublic
    extends StudentIdsIdentificationCardPublic {
  const factory _StudentIdsIdentificationCardPublic(
          {@JsonKey(name: 'number') required final String? number,
          @JsonKey(name: 'record') required final String? record,
          @JsonKey(name: 'page') required final String? page,
          @JsonKey(name: 'issuing_authority')
          required final String? issuingAuthority,
          @JsonKey(name: 'date_of_issue') required final DateTime? dateOfIssue,
          @JsonKey(name: 'front_image') required final FilePublic? frontImage,
          @JsonKey(name: 'back_image') required final FilePublic? backImage}) =
      _$StudentIdsIdentificationCardPublicImpl;
  const _StudentIdsIdentificationCardPublic._() : super._();

  factory _StudentIdsIdentificationCardPublic.fromJson(
          Map<String, dynamic> json) =
      _$StudentIdsIdentificationCardPublicImpl.fromJson;

  @override
  @JsonKey(name: 'number')
  String? get number;
  @override
  @JsonKey(name: 'record')
  String? get record;
  @override
  @JsonKey(name: 'page')
  String? get page;
  @override
  @JsonKey(name: 'issuing_authority')
  String? get issuingAuthority;
  @override
  @JsonKey(name: 'date_of_issue')
  DateTime? get dateOfIssue;
  @override
  @JsonKey(name: 'front_image')
  FilePublic? get frontImage;
  @override
  @JsonKey(name: 'back_image')
  FilePublic? get backImage;

  /// Create a copy of StudentIdsIdentificationCardPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentIdsIdentificationCardPublicImplCopyWith<
          _$StudentIdsIdentificationCardPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
