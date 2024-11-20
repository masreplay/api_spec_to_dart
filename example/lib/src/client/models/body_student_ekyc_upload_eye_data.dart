import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_student_ekyc_upload_eye_data.freezed.dart';
part 'body_student_ekyc_upload_eye_data.g.dart';

@freezed
class BodyStudentEkycUploadEyeData with _$BodyStudentEkycUploadEyeData {
  const factory BodyStudentEkycUploadEyeData({
    @JsonKey(name: 'file_raw') required File fileRaw,
  }) = _BodyStudentEkycUploadEyeData;

  factory BodyStudentEkycUploadEyeData.fromJson(Map<String, dynamic> json) =>
      _$BodyStudentEkycUploadEyeDataFromJson(json);
}
