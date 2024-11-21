import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'attachment_response.freezed.dart';
part 'attachment_response.g.dart';

///AttachmentResponse

@freezed
class AttachmentResponse with _$AttachmentResponse {
  const AttachmentResponse._();

  @JsonSerializable(converters: convertors)
  const factory AttachmentResponse({
    /// Attachment Name
    @JsonKey(name: 'attachment_name') required String? attachmentName,

    /// Sign Url
    @JsonKey(name: 'sign_url') required String? signUrl,

    /// File Size
    @JsonKey(name: 'file_size') required int? fileSize,

    /// File Mim Type
    @JsonKey(name: 'file_mim_type') required String? fileMimType,
  }) = _AttachmentResponse;

  factory AttachmentResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AttachmentResponseFromJson(
        json,
      );
}
