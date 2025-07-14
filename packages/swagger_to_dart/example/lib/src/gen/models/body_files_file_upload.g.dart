// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_files_file_upload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BodyFilesFileUpload _$BodyFilesFileUploadFromJson(Map<String, dynamic> json) =>
    _BodyFilesFileUpload(
      file: const MultipartFileJsonConverter()
          .fromJson(json['file'] as MultipartFile),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$BodyFilesFileUploadToJson(
        _BodyFilesFileUpload instance) =>
    <String, dynamic>{
      'file': const MultipartFileJsonConverter().toJson(instance.file),
      if (instance.description case final value?) 'description': value,
    };
