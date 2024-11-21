import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_ekyc_form_data_request.freezed.dart';
part 'student_ekyc_form_data_request.g.dart';

@freezed
class StudentEkycFormDataRequest with _$StudentEkycFormDataRequest {
  const StudentEkycFormDataRequest._();

  @JsonSerializable(converters: convertors)
  const factory StudentEkycFormDataRequest({
    /// Ekyc Extra
    @JsonKey(name: 'ekyc_extra') required Map<String, dynamic> ekycExtra,
  }) = _StudentEkycFormDataRequest;

  factory StudentEkycFormDataRequest.fromJson(Map<String, dynamic> json) =>
      _$StudentEkycFormDataRequestFromJson(json);
}
