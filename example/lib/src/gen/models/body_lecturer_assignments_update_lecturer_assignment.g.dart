// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_lecturer_assignments_update_lecturer_assignment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BodyLecturerAssignmentsUpdateLecturerAssignmentImpl
    _$$BodyLecturerAssignmentsUpdateLecturerAssignmentImplFromJson(
            Map<String, dynamic> json) =>
        _$BodyLecturerAssignmentsUpdateLecturerAssignmentImpl(
          files: json['files'] as List<dynamic>,
          title: json['title'] as String,
          description: json['description'] as String?,
        );

Map<String, dynamic>
    _$$BodyLecturerAssignmentsUpdateLecturerAssignmentImplToJson(
            _$BodyLecturerAssignmentsUpdateLecturerAssignmentImpl instance) =>
        <String, dynamic>{
          'files': instance.files,
          'title': instance.title,
          'description': instance.description,
        };
