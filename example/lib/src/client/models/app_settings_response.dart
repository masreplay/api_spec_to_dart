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
    @JsonKey(name: 'language')

    /// Language
    required String language,
    @JsonKey(name: 'privacy_policy_url')

    /// Privacy Policy Url
    required String privacyPolicyUrl,
    @JsonKey(name: 'terms_of_service_url')

    /// Terms Of Service Url
    required String termsOfServiceUrl,
    @JsonKey(name: 'about_url')

    /// About Url
    required String aboutUrl,
    @JsonKey(name: 'update') required AppSettingsUpdate update,
    @JsonKey(name: 'version')

    /// Version
    required String? version,
  }) = _AppSettingsResponse;

  factory AppSettingsResponse.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsResponseFromJson(json);
}
