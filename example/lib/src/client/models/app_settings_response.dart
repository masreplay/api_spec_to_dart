import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'app_settings_response.freezed.dart';
part 'app_settings_response.g.dart';

@freezed
class AppSettingsResponse with _$AppSettingsResponse {
  const factory AppSettingsResponse({
    @JsonKey(name: 'language') required String language,
    @JsonKey(name: 'privacy_policy_url') required String privacyPolicyUrl,
    @JsonKey(name: 'terms_of_service_url') required String termsOfServiceUrl,
    @JsonKey(name: 'about_url') required String aboutUrl,
    @JsonKey(name: 'update') required AppSettingsUpdate update,
    @JsonKey(name: 'version') required String? version,
  }) = _AppSettingsResponse;

  factory AppSettingsResponse.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsResponseFromJson(json);
}
