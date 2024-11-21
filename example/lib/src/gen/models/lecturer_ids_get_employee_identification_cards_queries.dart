import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'lecturer_ids_get_employee_identification_cards_queries.freezed.dart';
part 'lecturer_ids_get_employee_identification_cards_queries.g.dart';

///lecturerIdsGetEmployeeIdentificationCardsQueries

@freezed
class LecturerIdsGetEmployeeIdentificationCardsQueries
    with _$LecturerIdsGetEmployeeIdentificationCardsQueries {
  const LecturerIdsGetEmployeeIdentificationCardsQueries._();

  @JsonSerializable(converters: convertors)
  const factory LecturerIdsGetEmployeeIdentificationCardsQueries({
    /// Employee Id
    @JsonKey(name: 'employeeId') required int employeeId,
  }) = _LecturerIdsGetEmployeeIdentificationCardsQueries;

  factory LecturerIdsGetEmployeeIdentificationCardsQueries.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LecturerIdsGetEmployeeIdentificationCardsQueriesFromJson(json);
}
