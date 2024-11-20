import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'student_fees_public.freezed.dart';
part 'student_fees_public.g.dart';

@freezed
class StudentFeesPublic with _$StudentFeesPublic {
  const factory StudentFeesPublic({
    @JsonKey(name: 'student_academic_status_id')
    required int studentAcademicStatusId,
    @JsonKey(name: 'amount') required num amount,
    @JsonKey(name: 'receipt_number') required String receiptNumber,
    @JsonKey(name: 'receipt_date') required DateTime receiptDate,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'fees_type') required StudentFeesFeesTypesPublic? feesType,
  }) = _StudentFeesPublic;

  factory StudentFeesPublic.fromJson(Map<String, dynamic> json) =>
      _$StudentFeesPublicFromJson(json);
}
