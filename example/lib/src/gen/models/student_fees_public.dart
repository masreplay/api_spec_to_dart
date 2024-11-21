import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_fees_public.freezed.dart';
part 'student_fees_public.g.dart';

///StudentFeesPublic

@freezed
class StudentFeesPublic with _$StudentFeesPublic {
  const StudentFeesPublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentFeesPublic({
    /// Student Academic Status Id
    @JsonKey(name: 'student_academic_status_id')
    required int studentAcademicStatusId,

    /// Amount
    @JsonKey(name: 'amount') required num amount,

    /// Receipt Number
    @JsonKey(name: 'receipt_number') required String receiptNumber,

    /// Receipt Date
    @JsonKey(name: 'receipt_date') required DateTime receiptDate,

    /// Id
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'fees_type') required StudentFeesFeesTypesPublic? feesType,
  }) = _StudentFeesPublic;

  factory StudentFeesPublic.fromJson(Map<String, dynamic> json) =>
      _$StudentFeesPublicFromJson(json);
}
