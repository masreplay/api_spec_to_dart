import 'package:freezed_annotation/freezed_annotation.dart';

part 'assignment_classification_enum.freezed.dart';
part 'assignment_classification_enum.g.dart';

@freezed
class AssignmentClassificationEnum with _$AssignmentClassificationEnum {
  const factory AssignmentClassificationEnum() = _AssignmentClassificationEnum;

  factory AssignmentClassificationEnum.fromJson(Map<String, dynamic> json) =>
      _$AssignmentClassificationEnumFromJson(json);
}
