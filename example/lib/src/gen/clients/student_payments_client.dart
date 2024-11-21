import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_payments_client.g.dart';

@RestApi()
abstract class StudentPaymentsClient {
  factory StudentPaymentsClient(Dio dio, {String baseUrl}) =
      _StudentPaymentsClient;

  /// null
  @GET('/api/v1/student/payments/methods')
  Future<HttpResponse<dynamic>> readPaymentMethods();

  /// null
  @POST('/api/v1/student/payments/methods/{id}')
  Future<HttpResponse<dynamic>> readPaymentMethod(
    @Path('id') int id,
  );

  /// null
  @POST('/api/v1/student/payments/status/{order_id}')
  Future<HttpResponse<dynamic>> readPaymentStatus(
    @Path('order_id') String orderId,
  );

  /// null
  @GET('/api/v1/student/payments/enrollment')
  Future<HttpResponse<dynamic>> readEnrollmentPaymentInformation();
}
