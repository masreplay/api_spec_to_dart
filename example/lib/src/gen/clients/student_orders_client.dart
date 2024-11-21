import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_orders_client.g.dart';

@RestApi()
abstract class StudentOrdersClient {
  factory StudentOrdersClient(Dio dio, {String baseUrl}) = _StudentOrdersClient;

  /// student_orders-read_orders_for_student
  @GET('/api/v1/student/orders/me')
  Future<HttpResponse<dynamic>> readOrdersForStudent();
}
