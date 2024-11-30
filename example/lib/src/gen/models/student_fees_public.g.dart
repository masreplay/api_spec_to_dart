// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_fees_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentFeesPublicImpl _$$StudentFeesPublicImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentFeesPublicImpl(
      studentAcademicStatusId:
          (json['student_academic_status_id'] as num).toInt(),
      amount: json['amount'] as num,
      receiptNumber: json['receipt_number'] as String,
      receiptDate: DateTime.parse(json['receipt_date'] as String),
      id: (json['id'] as num).toInt(),
      feesType: json['fees_type'] == null
          ? null
          : StudentFeesFeesTypesPublic.fromJson(
              json['fees_type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StudentFeesPublicImplToJson(
        _$StudentFeesPublicImpl instance) =>
    <String, dynamic>{
      'student_academic_status_id': instance.studentAcademicStatusId,
      'amount': instance.amount,
      'receipt_number': instance.receiptNumber,
      'receipt_date': instance.receiptDate.toIso8601String(),
      'id': instance.id,
      'fees_type': instance.feesType,
    };
