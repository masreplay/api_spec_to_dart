import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'employee_family_public.freezed.dart';
part 'employee_family_public.g.dart';

@freezed
class EmployeeFamilyPublic with _$EmployeeFamilyPublic {
  const EmployeeFamilyPublic._();

  @JsonSerializable(converters: convertors)
  const factory EmployeeFamilyPublic() = _EmployeeFamilyPublic;

  factory EmployeeFamilyPublic.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFamilyPublicFromJson(json);
}
