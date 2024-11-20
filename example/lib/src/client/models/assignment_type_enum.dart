import 'package:freezed_annotation/freezed_annotation.dart';

part 'assignment_type_enum.freezed.dart';
part 'assignment_type_enum.g.dart';

@freezed
class AssignmentTypeEnum with _$AssignmentTypeEnum {
  const factory AssignmentTypeEnum() = _AssignmentTypeEnum;

  factory AssignmentTypeEnum.fromJson(Map<String, dynamic> json) =>
      _$AssignmentTypeEnumFromJson(json);
}
