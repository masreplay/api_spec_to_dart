// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_files_file_upload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BodyFilesFileUpload _$BodyFilesFileUploadFromJson(Map<String, dynamic> json) =>
    _BodyFilesFileUpload(
      file: json['file'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$BodyFilesFileUploadToJson(
        _BodyFilesFileUpload instance) =>
    <String, dynamic>{
      'file': instance.file,
      if (instance.description case final value?) 'description': value,
    };
