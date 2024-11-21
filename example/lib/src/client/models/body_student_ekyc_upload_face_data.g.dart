// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_student_ekyc_upload_face_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BodyStudentEkycUploadFaceDataImpl
    _$$BodyStudentEkycUploadFaceDataImplFromJson(Map<String, dynamic> json) =>
        _$BodyStudentEkycUploadFaceDataImpl(
          data: json['data'] as String,
          file: const FileMultipartFileJsonConverter()
              .fromJson(json['file'] as MultipartFile),
          fileRaw: const FileMultipartFileJsonConverter()
              .fromJson(json['file_raw'] as MultipartFile),
        );

Map<String, dynamic> _$$BodyStudentEkycUploadFaceDataImplToJson(
        _$BodyStudentEkycUploadFaceDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'file': const FileMultipartFileJsonConverter().toJson(instance.file),
      'file_raw':
          const FileMultipartFileJsonConverter().toJson(instance.fileRaw),
    };
