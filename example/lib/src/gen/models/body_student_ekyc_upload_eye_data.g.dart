// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_student_ekyc_upload_eye_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BodyStudentEkycUploadEyeDataImpl _$$BodyStudentEkycUploadEyeDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BodyStudentEkycUploadEyeDataImpl(
      fileRaw: const FileMultipartFileJsonConverter()
          .fromJson(json['file_raw'] as MultipartFile),
    );

Map<String, dynamic> _$$BodyStudentEkycUploadEyeDataImplToJson(
        _$BodyStudentEkycUploadEyeDataImpl instance) =>
    <String, dynamic>{
      'file_raw':
          const FileMultipartFileJsonConverter().toJson(instance.fileRaw),
    };
