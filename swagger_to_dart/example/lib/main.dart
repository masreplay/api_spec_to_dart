import 'package:dio/dio.dart';
import 'package:example/src/gen/clients/api_client.dart';

/// After doing the generation command, you can use the generated client like this
/// Check the README.md File
Future<void> main(List<String> args) async {
  final dio = Dio();

  dio.options.baseUrl = 'http://127.0.0.1:8000';

  final apiClient = ApiClient(dio);

  final response = await apiClient.ping.pingPing();

  print(response.data); // pong
}
