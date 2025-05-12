import 'package:dio/dio.dart';

/// After doing the generation command, you can use the generated client like this
/// Check the README.md File
Future<void> main(List<String> args) async {
  final dio = Dio();

  dio.options.baseUrl = 'http://0.0.0.0:8004';

  // final apiClient = ApiClient(dio);

  // final response = await apiClient.basic.basicBasicBoolean(
  //   queries: BasicBasicBooleanQueries(flag: true),
  // );

  // print(response.data); // pong
}
