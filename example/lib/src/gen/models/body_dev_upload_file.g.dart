// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_dev_upload_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BodyDevUploadFileImpl _$$BodyDevUploadFileImplFromJson(
        Map<String, dynamic> json) =>
    _$BodyDevUploadFileImpl(
      file: const FileMultipartFileJsonConverter()
          .fromJson(json['file'] as MultipartFile),
    );

Map<String, dynamic> _$$BodyDevUploadFileImplToJson(
        _$BodyDevUploadFileImpl instance) =>
    <String, dynamic>{
      'file': const FileMultipartFileJsonConverter().toJson(instance.file),
    };
