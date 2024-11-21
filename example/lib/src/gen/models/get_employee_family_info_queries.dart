import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'get_employee_family_info_queries.freezed.dart';
part 'get_employee_family_info_queries.g.dart';

///getEmployeeFamilyInfoQueries

@freezed
class GetEmployeeFamilyInfoQueries with _$GetEmployeeFamilyInfoQueries {
  const GetEmployeeFamilyInfoQueries._();

  @JsonSerializable(converters: convertors)
  const factory GetEmployeeFamilyInfoQueries({
    /// Employee Id
    @JsonKey(name: 'employeeId') required int employeeId,
  }) = _GetEmployeeFamilyInfoQueries;

  factory GetEmployeeFamilyInfoQueries.fromJson(Map<String, dynamic> json) =>
      _$GetEmployeeFamilyInfoQueriesFromJson(json);
}
