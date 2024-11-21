// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_lecturer_assignments_create_lecturer_assignment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BodyLecturerAssignmentsCreateLecturerAssignmentImpl
    _$$BodyLecturerAssignmentsCreateLecturerAssignmentImplFromJson(
            Map<String, dynamic> json) =>
        _$BodyLecturerAssignmentsCreateLecturerAssignmentImpl(
          files: json['files'] as List<dynamic>,
          title: json['title'] as String,
          description: json['description'] as String?,
        );

Map<String, dynamic>
    _$$BodyLecturerAssignmentsCreateLecturerAssignmentImplToJson(
            _$BodyLecturerAssignmentsCreateLecturerAssignmentImpl instance) =>
        <String, dynamic>{
          'files': instance.files,
          'title': instance.title,
          'description': instance.description,
        };
