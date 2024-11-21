// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_files_upload_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BodyFilesUploadFileImpl _$$BodyFilesUploadFileImplFromJson(
        Map<String, dynamic> json) =>
    _$BodyFilesUploadFileImpl(
      file: const FileMultipartFileJsonConverter()
          .fromJson(json['file'] as MultipartFile),
      entityId: (json['entity_id'] as num?)?.toInt(),
      collection: FileCollectionEnum.fromJson(json['collection'] as String),
    );

Map<String, dynamic> _$$BodyFilesUploadFileImplToJson(
        _$BodyFilesUploadFileImpl instance) =>
    <String, dynamic>{
      'file': const FileMultipartFileJsonConverter().toJson(instance.file),
      'entity_id': instance.entityId,
      'collection': instance.collection,
    };
