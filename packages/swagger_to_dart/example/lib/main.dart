import 'package:dio/dio.dart';

Future<void> main(List<String> args) async {
  final dio = Dio();

  dio.options.baseUrl = 'http://0.0.0.0:8004';

  // final apiClient = AdvancedClient(dio);

  // final response = await apiClient.advancedDependsQuery(
  //   q: 'test',
  //   skip: 0,
  //   limit: 10,
  // );

  // print(response.data);
}
