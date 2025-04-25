import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';
part 'basic_client.g.dart';

@RestApi()
abstract class BasicClient {
  factory BasicClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _BasicClient;

  /// OperationId: basic-basic_number
  /// Summary: Handle integer path parameter
  /// Description: Handle integer path parameter.
  @GET('/basic/number/{num}')
  Future<HttpResponse> basicBasicNumber({@Path('num') int num});

  /// OperationId: basic-basic_float
  /// Summary: Handle float path parameter
  /// Description: Handle float path parameter.
  @GET('/basic/float/{num}')
  Future<HttpResponse> basicBasicFloat({@Path('num') double num});

  /// OperationId: basic-basic_boolean
  /// Summary: Handle boolean query parameter
  /// Description: Handle boolean query parameter with default value.
  @GET('/basic/boolean')
  Future<HttpResponse> basicBasicBoolean({@Query('flag') bool flag});

  /// OperationId: basic-basic_string
  /// Summary: Handle string query parameter
  /// Description: Handle string query parameter with validation.
  @GET('/basic/string')
  Future<HttpResponse> basicBasicString({@Query('text') String text});

  /// OperationId: basic-datetime_date
  /// Summary: Handle date parameters
  /// Description: Handle date parameter (YYYY-MM-DD).
  @GET('/datetime/date')
  Future<HttpResponse> basicDatetimeDate({@Query('d') DateTime d});

  /// OperationId: basic-datetime_datetime
  /// Summary: Handle datetime parameters
  /// Description: Handle datetime parameter (YYYY-MM-DDThh:mm:ss).
  @GET('/datetime/datetime')
  Future<HttpResponse> basicDatetimeDatetime({@Query('dt') DateTime dt});

  /// OperationId: basic-datetime_time
  /// Summary: Handle time parameters
  /// Description: Handle time parameter (hh:mm:ss).
  @GET('/datetime/time')
  Future<HttpResponse> basicDatetimeTime({@Query('t') String t});

  /// OperationId: basic-datetime_timedelta
  /// Summary: Handle timedelta parameters
  /// Description: Handle timedelta parameter (in seconds).
  @GET('/datetime/timedelta')
  Future<HttpResponse> basicDatetimeTimedelta({@Query('td') String td});
}
