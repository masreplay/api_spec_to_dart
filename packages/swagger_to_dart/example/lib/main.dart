// import 'package:dio/dio.dart';
// import 'package:example/src/gen/clients/api_client.dart';
// import 'package:example/src/gen/models/models.dart';

// /// After doing the generation command, you can use the generated client like this
// /// Check the README.md File
// Future<void> main(List<String> args) async {
//   final dio = Dio();

//   dio.options.baseUrl = 'http://127.0.0.1:8000';

//   final apiClient = ApiClient(dio);

//   final response = await apiClient.basic.basicBasicBoolean(
//     queries: BasicBasicBooleanQueries(flag: true),
//   );

//   print(response.data); // pong
// }
