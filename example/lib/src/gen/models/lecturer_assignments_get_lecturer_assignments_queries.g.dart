// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecturer_assignments_get_lecturer_assignments_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LecturerAssignmentsGetLecturerAssignmentsQueriesImpl
    _$$LecturerAssignmentsGetLecturerAssignmentsQueriesImplFromJson(
            Map<String, dynamic> json) =>
        _$LecturerAssignmentsGetLecturerAssignmentsQueriesImpl(
          page: (json['page'] as num?)?.toInt() ?? 1,
          perPage: (json['perPage'] as num?)?.toInt() ?? 10,
        );

Map<String, dynamic>
    _$$LecturerAssignmentsGetLecturerAssignmentsQueriesImplToJson(
            _$LecturerAssignmentsGetLecturerAssignmentsQueriesImpl instance) =>
        <String, dynamic>{
          'page': instance.page,
          'perPage': instance.perPage,
        };
