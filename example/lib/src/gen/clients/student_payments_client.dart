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
  @GET('/api/v1/student/payments/enrollment')
  Future<HttpResponse<dynamic>> readEnrollmentPaymentInformation();
}
