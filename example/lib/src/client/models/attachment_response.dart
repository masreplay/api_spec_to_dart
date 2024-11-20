import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'attachment_response.freezed.dart';
part 'attachment_response.g.dart';

@freezed
class AttachmentResponse with _$AttachmentResponse {
  const AttachmentResponse._();

  @JsonSerializable(converters: convertors)
  const factory AttachmentResponse({
    @JsonKey(name: 'attachment_name') required String? attachmentName,
    @JsonKey(name: 'sign_url') required String? signUrl,
    @JsonKey(name: 'file_size') required int? fileSize,
    @JsonKey(name: 'file_mim_type') required String? fileMimType,
  }) = _AttachmentResponse;

  factory AttachmentResponse.fromJson(Map<String, dynamic> json) =>
      _$AttachmentResponseFromJson(json);
}
