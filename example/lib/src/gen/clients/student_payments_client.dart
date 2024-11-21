import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_payments_client.g.dart';

@RestApi()
abstract class StudentPaymentsClient {
  factory StudentPaymentsClient(Dio dio, {String baseUrl}) =
      _StudentPaymentsClient;

  /// student_payments-read_payment_methods
  /// Read Payment Methods
  @GET('/api/v1/student/payments/methods')
  Future<HttpResponse<BaseResponseListPaymentMethodPublic>>
      studentPaymentsReadPaymentMethods();

  /// student_payments-read_payment_method
  /// Read Payment Method
  @POST('/api/v1/student/payments/methods/{id}')
  Future<HttpResponse<BaseResponseDictStrAny>>
      studentPaymentsReadPaymentMethod({
    @Path('id') required int id,
  });

  /// student_payments-read_payment_status
  /// Read Payment Status
  @POST('/api/v1/student/payments/status/{order_id}')
  Future<HttpResponse<BaseResponseUnionDictStrAny>>
      studentPaymentsReadPaymentStatus({
    @Path('order_id') required String orderId,
  });

  /// student_payments-read_enrollment_payment_information
  /// Read Enrollment Payment Information
  @GET('/api/v1/student/payments/enrollment')
  Future<HttpResponse<BaseResponsePaymentInfoResponse>>
      studentPaymentsReadEnrollmentPaymentInformation();
}
