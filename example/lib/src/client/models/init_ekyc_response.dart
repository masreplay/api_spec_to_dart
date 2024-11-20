import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'init_ekyc_response.freezed.dart';
part 'init_ekyc_response.g.dart';

@freezed
class InitEkycResponse with _$InitEkycResponse {
  const InitEkycResponse._();

  @JsonSerializable(converters: convertors)
  const factory InitEkycResponse({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'status') required EkycStatusEnum status,
  }) = _InitEkycResponse;

  factory InitEkycResponse.fromJson(Map<String, dynamic> json) =>
      _$InitEkycResponseFromJson(json);
}
