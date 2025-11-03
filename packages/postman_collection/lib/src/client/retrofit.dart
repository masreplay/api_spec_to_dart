import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';

/// workaround to get RequestOptions from Retrofit
Future<RequestOptions> getRequestOptionsFromRetrofit<ResponseT>(
  Future<HttpResponse<ResponseT>> Function() request,
) async {
  try {
    final result = await request();
    return result.response.requestOptions;
  } on DioException catch (e) {
    return e.requestOptions;
  }
}
