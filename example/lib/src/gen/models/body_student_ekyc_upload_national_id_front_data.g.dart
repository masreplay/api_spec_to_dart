// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_student_ekyc_upload_national_id_front_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BodyStudentEkycUploadNationalIdFrontDataImpl
    _$$BodyStudentEkycUploadNationalIdFrontDataImplFromJson(
            Map<String, dynamic> json) =>
        _$BodyStudentEkycUploadNationalIdFrontDataImpl(
          data: json['data'] as String,
          file: const FileMultipartFileJsonConverter()
              .fromJson(json['file'] as MultipartFile),
          fileRaw: const FileMultipartFileJsonConverter()
              .fromJson(json['file_raw'] as MultipartFile),
        );

Map<String, dynamic> _$$BodyStudentEkycUploadNationalIdFrontDataImplToJson(
        _$BodyStudentEkycUploadNationalIdFrontDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'file': const FileMultipartFileJsonConverter().toJson(instance.file),
      'file_raw':
          const FileMultipartFileJsonConverter().toJson(instance.fileRaw),
    };
