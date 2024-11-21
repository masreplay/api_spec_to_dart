import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'assignment_type_enum.freezed.dart';
part 'assignment_type_enum.g.dart';

@freezed
class AssignmentTypeEnum with _$AssignmentTypeEnum {
  const AssignmentTypeEnum._();

  @JsonSerializable(converters: convertors)
  const factory AssignmentTypeEnum() = _AssignmentTypeEnum;

  factory AssignmentTypeEnum.fromJson(Map<String, dynamic> json) =>
      _$AssignmentTypeEnumFromJson(json);
}
