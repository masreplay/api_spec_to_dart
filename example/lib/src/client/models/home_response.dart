import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'home_response.freezed.dart';
part 'home_response.g.dart';

@freezed
class HomeResponse with _$HomeResponse {
  const HomeResponse._();

  @JsonSerializable(converters: convertors)
  const factory HomeResponse({
    @JsonKey(name: 'message') required String? message,
  }) = _HomeResponse;

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);
}
