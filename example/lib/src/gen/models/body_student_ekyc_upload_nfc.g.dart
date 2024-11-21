// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_student_ekyc_upload_nfc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BodyStudentEkycUploadNfcImpl _$$BodyStudentEkycUploadNfcImplFromJson(
        Map<String, dynamic> json) =>
    _$BodyStudentEkycUploadNfcImpl(
      data: json['data'] as String,
      file: const FileMultipartFileJsonConverter()
          .fromJson(json['file'] as MultipartFile),
    );

Map<String, dynamic> _$$BodyStudentEkycUploadNfcImplToJson(
        _$BodyStudentEkycUploadNfcImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'file': const FileMultipartFileJsonConverter().toJson(instance.file),
    };
