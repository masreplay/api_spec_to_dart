import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_api_info.freezed.dart';
part 'open_api_info.g.dart';

@freezed
abstract class OpenApiInfo with _$OpenApiInfo {
  const OpenApiInfo._();

  const factory OpenApiInfo({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'version') required String? version,
  }) = _OpenApiInfo;

  factory OpenApiInfo.fromJson(Map<String, dynamic> json) =>
      _$OpenApiInfoFromJson(json);
}
