import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_ekyc_form_data_request.freezed.dart';
part 'student_ekyc_form_data_request.g.dart';

@freezed
class StudentEkycFormDataRequest with _$StudentEkycFormDataRequest {
  const factory StudentEkycFormDataRequest({
    @JsonKey(name: 'ekyc_extra') required Map ekycExtra,
  }) = _StudentEkycFormDataRequest;

  factory StudentEkycFormDataRequest.fromJson(Map<String, dynamic> json) =>
      _$StudentEkycFormDataRequestFromJson(json);
}
