import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_student_ekyc_upload_national_id_front_data.freezed.dart';
part 'body_student_ekyc_upload_national_id_front_data.g.dart';

@freezed
class BodyStudentEkycUploadNationalIdFrontData
    with _$BodyStudentEkycUploadNationalIdFrontData {
  const factory BodyStudentEkycUploadNationalIdFrontData({
    @JsonKey(name: 'data') required String data,
    @JsonKey(name: 'file') required File file,
    @JsonKey(name: 'file_raw') required File fileRaw,
  }) = _BodyStudentEkycUploadNationalIdFrontData;

  factory BodyStudentEkycUploadNationalIdFrontData.fromJson(
          Map<String, dynamic> json) =>
      _$BodyStudentEkycUploadNationalIdFrontDataFromJson(json);
}
