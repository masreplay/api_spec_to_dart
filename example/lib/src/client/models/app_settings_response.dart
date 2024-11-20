import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'app_settings_response.freezed.dart';
part 'app_settings_response.g.dart';

@freezed
class AppSettingsResponse with _$AppSettingsResponse {
  const AppSettingsResponse._();

  @JsonSerializable(converters: convertors)
  const factory AppSettingsResponse({
    /// Language
    @JsonKey(name: 'language') required String language,

    /// Privacy Policy Url
    @JsonKey(name: 'privacy_policy_url') required String privacyPolicyUrl,

    /// Terms Of Service Url
    @JsonKey(name: 'terms_of_service_url') required String termsOfServiceUrl,

    /// About Url
    @JsonKey(name: 'about_url') required String aboutUrl,
    @JsonKey(name: 'update') required AppSettingsUpdate update,

    /// Version
    @JsonKey(name: 'version') required String? version,
  }) = _AppSettingsResponse;

  factory AppSettingsResponse.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsResponseFromJson(json);
}
