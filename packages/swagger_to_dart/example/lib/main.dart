import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';

import 'src/gen/gen.dart';

Future<void> main(List<String> args) async {
  final dio = Dio();

  dio.options.baseUrl = 'http://0.0.0.0:8004';

  final apiClient = BaseApiClient(dio);

  final HttpResponse<BaseResponse<PaginationResponse<ItemResponse>>> response =
      await apiClient.genericClient.genericGetNestedBaseAndPagination(
        queries: GenericGetNestedBaseAndPaginationQueryParameters(
          page: 1,
          perPage: 10,
        ),
      );

  print(response.data);

  // final response = await apiClient.advancedDependsQuery(
  //   q: 'test',
  //   skip: 0,
  //   limit: 10,
  // );

  // print(response.data);
}
