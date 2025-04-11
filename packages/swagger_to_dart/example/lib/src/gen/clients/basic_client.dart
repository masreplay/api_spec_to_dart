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
  /// Summery: Handle integer path parameter
  /// Description: Handle integer path parameter.
  @GET('/basic/number/{num}')
  Future<HttpResponse> basicBasicNumber({@Path('num') required int num});

  /// OperationId: basic-basic_float
  /// Summery: Handle float path parameter
  /// Description: Handle float path parameter.
  @GET('/basic/float/{num}')
  Future<HttpResponse> basicBasicFloat({@Path('num') required double num});

  /// OperationId: basic-basic_boolean
  /// Summery: Handle boolean query parameter
  /// Description: Handle boolean query parameter with default value.
  @GET('/basic/boolean')
  Future<HttpResponse> basicBasicBoolean({
    @Queries() required BasicBasicBooleanQueries queries,
  });

  /// OperationId: basic-basic_string
  /// Summery: Handle string query parameter
  /// Description: Handle string query parameter with validation.
  @GET('/basic/string')
  Future<HttpResponse> basicBasicString({
    @Queries() required BasicBasicStringQueries queries,
  });

  /// OperationId: basic-datetime_date
  /// Summery: Handle date parameters
  /// Description: Handle date parameter (YYYY-MM-DD).
  @GET('/datetime/date')
  Future<HttpResponse> basicDatetimeDate({
    @Queries() required BasicDatetimeDateQueries queries,
  });

  /// OperationId: basic-datetime_datetime
  /// Summery: Handle datetime parameters
  /// Description: Handle datetime parameter (YYYY-MM-DDThh:mm:ss).
  @GET('/datetime/datetime')
  Future<HttpResponse> basicDatetimeDatetime({
    @Queries() required BasicDatetimeDatetimeQueries queries,
  });

  /// OperationId: basic-datetime_time
  /// Summery: Handle time parameters
  /// Description: Handle time parameter (hh:mm:ss).
  @GET('/datetime/time')
  Future<HttpResponse> basicDatetimeTime({
    @Queries() required BasicDatetimeTimeQueries queries,
  });

  /// OperationId: basic-datetime_timedelta
  /// Summery: Handle timedelta parameters
  /// Description: Handle timedelta parameter (in seconds).
  @GET('/datetime/timedelta')
  Future<HttpResponse> basicDatetimeTimedelta({
    @Queries() required BasicDatetimeTimedeltaQueries queries,
  });
}
