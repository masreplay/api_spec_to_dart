import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_payments_client.g.dart';

@RestApi()
abstract class StudentPaymentsClient {
  factory StudentPaymentsClient(Dio dio, {String baseUrl}) =
      _StudentPaymentsClient;

  /// student_payments-read_payment_methods
  @GET('/api/v1/student/payments/methods')
  Future<HttpResponse<dynamic>> readPaymentMethods();

  /// student_payments-read_payment_method
  @POST('/api/v1/student/payments/methods/{id}')
  Future<HttpResponse<dynamic>> readPaymentMethod(
    @Path('id') int id,
  );

  /// student_payments-read_payment_status
  @POST('/api/v1/student/payments/status/{order_id}')
  Future<HttpResponse<dynamic>> readPaymentStatus(
    @Path('order_id') String orderId,
  );

  /// student_payments-read_enrollment_payment_information
  @GET('/api/v1/student/payments/enrollment')
  Future<HttpResponse<dynamic>> readEnrollmentPaymentInformation();
}
