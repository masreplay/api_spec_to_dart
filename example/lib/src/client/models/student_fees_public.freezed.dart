// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_fees_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentFeesPublic _$StudentFeesPublicFromJson(Map<String, dynamic> json) {
  return _StudentFeesPublic.fromJson(json);
}

/// @nodoc
mixin _$StudentFeesPublic {
  @JsonKey(name: 'student_academic_status_id')
  int get studentAcademicStatusId => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  num get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'receipt_number')
  String get receiptNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'receipt_date')
  DateTime get receiptDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fees_type')
  StudentFeesFeesTypesPublic? get feesType =>
      throw _privateConstructorUsedError;

  /// Serializes this StudentFeesPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentFeesPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentFeesPublicCopyWith<StudentFeesPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentFeesPublicCopyWith<$Res> {
  factory $StudentFeesPublicCopyWith(
          StudentFeesPublic value, $Res Function(StudentFeesPublic) then) =
      _$StudentFeesPublicCopyWithImpl<$Res, StudentFeesPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'student_academic_status_id') int studentAcademicStatusId,
      @JsonKey(name: 'amount') num amount,
      @JsonKey(name: 'receipt_number') String receiptNumber,
      @JsonKey(name: 'receipt_date') DateTime receiptDate,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'fees_type') StudentFeesFeesTypesPublic? feesType});

  $StudentFeesFeesTypesPublicCopyWith<$Res>? get feesType;
}

/// @nodoc
class _$StudentFeesPublicCopyWithImpl<$Res, $Val extends StudentFeesPublic>
    implements $StudentFeesPublicCopyWith<$Res> {
  _$StudentFeesPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentFeesPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentAcademicStatusId = null,
    Object? amount = null,
    Object? receiptNumber = null,
    Object? receiptDate = null,
    Object? id = null,
    Object? feesType = freezed,
  }) {
    return _then(_value.copyWith(
      studentAcademicStatusId: null == studentAcademicStatusId
          ? _value.studentAcademicStatusId
          : studentAcademicStatusId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      receiptNumber: null == receiptNumber
          ? _value.receiptNumber
          : receiptNumber // ignore: cast_nullable_to_non_nullable
              as String,
      receiptDate: null == receiptDate
          ? _value.receiptDate
          : receiptDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      feesType: freezed == feesType
          ? _value.feesType
          : feesType // ignore: cast_nullable_to_non_nullable
              as StudentFeesFeesTypesPublic?,
    ) as $Val);
  }

  /// Create a copy of StudentFeesPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentFeesFeesTypesPublicCopyWith<$Res>? get feesType {
    if (_value.feesType == null) {
      return null;
    }

    return $StudentFeesFeesTypesPublicCopyWith<$Res>(_value.feesType!, (value) {
      return _then(_value.copyWith(feesType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentFeesPublicImplCopyWith<$Res>
    implements $StudentFeesPublicCopyWith<$Res> {
  factory _$$StudentFeesPublicImplCopyWith(_$StudentFeesPublicImpl value,
          $Res Function(_$StudentFeesPublicImpl) then) =
      __$$StudentFeesPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'student_academic_status_id') int studentAcademicStatusId,
      @JsonKey(name: 'amount') num amount,
      @JsonKey(name: 'receipt_number') String receiptNumber,
      @JsonKey(name: 'receipt_date') DateTime receiptDate,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'fees_type') StudentFeesFeesTypesPublic? feesType});

  @override
  $StudentFeesFeesTypesPublicCopyWith<$Res>? get feesType;
}

/// @nodoc
class __$$StudentFeesPublicImplCopyWithImpl<$Res>
    extends _$StudentFeesPublicCopyWithImpl<$Res, _$StudentFeesPublicImpl>
    implements _$$StudentFeesPublicImplCopyWith<$Res> {
  __$$StudentFeesPublicImplCopyWithImpl(_$StudentFeesPublicImpl _value,
      $Res Function(_$StudentFeesPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentFeesPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentAcademicStatusId = null,
    Object? amount = null,
    Object? receiptNumber = null,
    Object? receiptDate = null,
    Object? id = null,
    Object? feesType = freezed,
  }) {
    return _then(_$StudentFeesPublicImpl(
      studentAcademicStatusId: null == studentAcademicStatusId
          ? _value.studentAcademicStatusId
          : studentAcademicStatusId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      receiptNumber: null == receiptNumber
          ? _value.receiptNumber
          : receiptNumber // ignore: cast_nullable_to_non_nullable
              as String,
      receiptDate: null == receiptDate
          ? _value.receiptDate
          : receiptDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      feesType: freezed == feesType
          ? _value.feesType
          : feesType // ignore: cast_nullable_to_non_nullable
              as StudentFeesFeesTypesPublic?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentFeesPublicImpl implements _StudentFeesPublic {
  const _$StudentFeesPublicImpl(
      {@JsonKey(name: 'student_academic_status_id')
      required this.studentAcademicStatusId,
      @JsonKey(name: 'amount') required this.amount,
      @JsonKey(name: 'receipt_number') required this.receiptNumber,
      @JsonKey(name: 'receipt_date') required this.receiptDate,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'fees_type') required this.feesType});

  factory _$StudentFeesPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentFeesPublicImplFromJson(json);

  @override
  @JsonKey(name: 'student_academic_status_id')
  final int studentAcademicStatusId;
  @override
  @JsonKey(name: 'amount')
  final num amount;
  @override
  @JsonKey(name: 'receipt_number')
  final String receiptNumber;
  @override
  @JsonKey(name: 'receipt_date')
  final DateTime receiptDate;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'fees_type')
  final StudentFeesFeesTypesPublic? feesType;

  @override
  String toString() {
    return 'StudentFeesPublic(studentAcademicStatusId: $studentAcademicStatusId, amount: $amount, receiptNumber: $receiptNumber, receiptDate: $receiptDate, id: $id, feesType: $feesType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentFeesPublicImpl &&
            (identical(
                    other.studentAcademicStatusId, studentAcademicStatusId) ||
                other.studentAcademicStatusId == studentAcademicStatusId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.receiptNumber, receiptNumber) ||
                other.receiptNumber == receiptNumber) &&
            (identical(other.receiptDate, receiptDate) ||
                other.receiptDate == receiptDate) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.feesType, feesType) ||
                other.feesType == feesType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, studentAcademicStatusId, amount,
      receiptNumber, receiptDate, id, feesType);

  /// Create a copy of StudentFeesPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentFeesPublicImplCopyWith<_$StudentFeesPublicImpl> get copyWith =>
      __$$StudentFeesPublicImplCopyWithImpl<_$StudentFeesPublicImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentFeesPublicImplToJson(
      this,
    );
  }
}

abstract class _StudentFeesPublic implements StudentFeesPublic {
  const factory _StudentFeesPublic(
          {@JsonKey(name: 'student_academic_status_id')
          required final int studentAcademicStatusId,
          @JsonKey(name: 'amount') required final num amount,
          @JsonKey(name: 'receipt_number') required final String receiptNumber,
          @JsonKey(name: 'receipt_date') required final DateTime receiptDate,
          @JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'fees_type')
          required final StudentFeesFeesTypesPublic? feesType}) =
      _$StudentFeesPublicImpl;

  factory _StudentFeesPublic.fromJson(Map<String, dynamic> json) =
      _$StudentFeesPublicImpl.fromJson;

  @override
  @JsonKey(name: 'student_academic_status_id')
  int get studentAcademicStatusId;
  @override
  @JsonKey(name: 'amount')
  num get amount;
  @override
  @JsonKey(name: 'receipt_number')
  String get receiptNumber;
  @override
  @JsonKey(name: 'receipt_date')
  DateTime get receiptDate;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'fees_type')
  StudentFeesFeesTypesPublic? get feesType;

  /// Create a copy of StudentFeesPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentFeesPublicImplCopyWith<_$StudentFeesPublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
