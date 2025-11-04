import 'package:dio/dio.dart';

Future<void> main(List<String> args) async {
  final dio = Dio();

  dio.options.baseUrl = 'http://0.0.0.0:8004';

  // final apiClient = CustomApiClient(dio);

  // final response =
  //     await apiClient.genericClient.genericGetNestedBaseAndPagination(
  //   queries: GenericGetNestedBaseAndPaginationQueryParameters(
  //     page: 1,
  //     perPage: 10,
  //   ),
  // );

  // print(response.data.data.items.firstOrNull?.name);
}
