// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttachmentResponseImpl _$$AttachmentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AttachmentResponseImpl(
      attachmentName: json['attachment_name'] as String?,
      signUrl: json['sign_url'] as String?,
      fileSize: (json['file_size'] as num?)?.toInt(),
      fileMimType: json['file_mim_type'] as String?,
    );

Map<String, dynamic> _$$AttachmentResponseImplToJson(
        _$AttachmentResponseImpl instance) =>
    <String, dynamic>{
      'attachment_name': instance.attachmentName,
      'sign_url': instance.signUrl,
      'file_size': instance.fileSize,
      'file_mim_type': instance.fileMimType,
    };
