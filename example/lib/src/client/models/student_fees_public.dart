import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'student_fees_public.freezed.dart';
part 'student_fees_public.g.dart';

@freezed
class StudentFeesPublic with _$StudentFeesPublic {
  const StudentFeesPublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentFeesPublic({
    @JsonKey(name: 'student_academic_status_id')

    /// Student Academic Status Id
    required int studentAcademicStatusId,
    @JsonKey(name: 'amount')

    /// Amount
    required num amount,
    @JsonKey(name: 'receipt_number')

    /// Receipt Number
    required String receiptNumber,
    @JsonKey(name: 'receipt_date')

    /// Receipt Date
    required DateTime receiptDate,
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'fees_type') required StudentFeesFeesTypesPublic? feesType,
  }) = _StudentFeesPublic;

  factory StudentFeesPublic.fromJson(Map<String, dynamic> json) =>
      _$StudentFeesPublicFromJson(json);
}
