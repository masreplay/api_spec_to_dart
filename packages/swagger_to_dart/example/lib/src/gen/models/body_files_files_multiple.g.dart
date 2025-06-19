// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_files_files_multiple.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BodyFilesFilesMultiple _$BodyFilesFilesMultipleFromJson(
        Map<String, dynamic> json) =>
    _BodyFilesFilesMultiple(
      files: (json['files'] as List<dynamic>).map((e) => e as String).toList(),
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$BodyFilesFilesMultipleToJson(
        _BodyFilesFilesMultiple instance) =>
    <String, dynamic>{
      'files': instance.files,
      'notes': instance.notes,
    };
