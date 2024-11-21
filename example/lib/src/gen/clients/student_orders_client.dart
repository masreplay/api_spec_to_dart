import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'student_orders_client.g.dart';

///
@RestApi()
abstract class StudentOrdersClient {
  factory StudentOrdersClient(Dio dio, {String baseUrl}) = _StudentOrdersClient;

  /// null
  @GET('/api/v1/student/orders/me')
  Future<HttpResponse<dynamic>> student_orders_read_orders_for_student();
}
