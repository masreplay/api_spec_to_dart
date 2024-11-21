import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'get_employee_identification_cards_queries.freezed.dart';
part 'get_employee_identification_cards_queries.g.dart';

@freezed
class GetEmployeeIdentificationCardsQueries
    with _$GetEmployeeIdentificationCardsQueries {
  const GetEmployeeIdentificationCardsQueries._();

  @JsonSerializable(converters: convertors)
  const factory GetEmployeeIdentificationCardsQueries({
    /// Employee Id
    @JsonKey(name: 'employeeId') required int employeeId,
  }) = _GetEmployeeIdentificationCardsQueries;

  factory GetEmployeeIdentificationCardsQueries.fromJson(
          Map<String, dynamic> json) =>
      _$GetEmployeeIdentificationCardsQueriesFromJson(json);
}
