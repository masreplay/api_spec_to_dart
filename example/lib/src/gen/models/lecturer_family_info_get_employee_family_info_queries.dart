import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'lecturer_family_info_get_employee_family_info_queries.freezed.dart';
part 'lecturer_family_info_get_employee_family_info_queries.g.dart';

///lecturerFamilyInfoGetEmployeeFamilyInfoQueries

@freezed
class LecturerFamilyInfoGetEmployeeFamilyInfoQueries
    with _$LecturerFamilyInfoGetEmployeeFamilyInfoQueries {
  const LecturerFamilyInfoGetEmployeeFamilyInfoQueries._();

  @JsonSerializable(converters: convertors)
  const factory LecturerFamilyInfoGetEmployeeFamilyInfoQueries({
    /// Employee Id
    @JsonKey(name: 'employeeId') required int employeeId,
  }) = _LecturerFamilyInfoGetEmployeeFamilyInfoQueries;

  factory LecturerFamilyInfoGetEmployeeFamilyInfoQueries.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesFromJson(
        json,
      );
}
