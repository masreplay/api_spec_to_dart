import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'settings_client.g.dart';

@RestApi()
abstract class SettingsClient {
  factory SettingsClient(Dio dio, {String baseUrl}) = _SettingsClient;

  /// settings-read_settings
  /// Read Settings
  @GET('/api/v1/common/settings/')
  Future<HttpResponse<BaseResponseUnionAppSettingsResponse>>
      settingsReadSettings();
}
