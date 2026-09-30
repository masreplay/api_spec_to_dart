import 'package:dio/dio.dart';

import 'src/gen/gen.dart';

Future<void> main() async {
  final dio = Dio();

  dio.options.baseUrl = 'http://0.0.0.0:8004';

  final apiClient = CustomApiClient(dio);

  final response = await apiClient.basicClient.basicBasicNumber($num: 42);

  print(response.data);
}
