import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'extra_types_client.g.dart';

@RestApi()
abstract class ExtraTypesClient {
  factory ExtraTypesClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _ExtraTypesClient;

  /// OperationId: Extra Types-create_color
  /// Summery: Create Color
  @POST('/extra_types/color/')
  Future<HttpResponse> extraTypesCreateColor({
    @Body() required ColorModel body,
  });

  /// OperationId: Extra Types-process_country
  /// Summery: Process Country
  @POST('/extra_types/country/')
  Future<HttpResponse> extraTypesProcessCountry({
    @Body() required CountryModel body,
  });

  /// OperationId: Extra Types-process_payment_card
  /// Summery: Process Payment Card
  @POST('/extra_types/payment/')
  Future<HttpResponse> extraTypesProcessPaymentCard({
    @Body() required PaymentCardModel body,
  });

  /// OperationId: Extra Types-process_phone
  /// Summery: Process Phone
  @POST('/extra_types/phone/')
  Future<HttpResponse> extraTypesProcessPhone({
    @Body() required PhoneNumberModel body,
  });

  /// OperationId: Extra Types-process_routing
  /// Summery: Process Routing
  @POST('/extra_types/routing/')
  Future<HttpResponse> extraTypesProcessRouting({
    @Body() required ABARoutingModel body,
  });

  /// OperationId: Extra Types-process_coordinate
  /// Summery: Process Coordinate
  @POST('/extra_types/coordinate/')
  Future<HttpResponse> extraTypesProcessCoordinate({
    @Body() required CoordinateModel body,
  });

  /// OperationId: Extra Types-process_mac
  /// Summery: Process Mac
  @POST('/extra_types/mac/')
  Future<HttpResponse> extraTypesProcessMac({
    @Body() required MACAddressModel body,
  });

  /// OperationId: Extra Types-process_isbn
  /// Summery: Process Isbn
  @POST('/extra_types/isbn/')
  Future<HttpResponse> extraTypesProcessIsbn({@Body() required IsbnModel body});

  /// OperationId: Extra Types-process_currency
  /// Summery: Process Currency
  @POST('/extra_types/currency/')
  Future<HttpResponse> extraTypesProcessCurrency({
    @Body() required CurrencyModel body,
  });

  /// OperationId: Extra Types-process_domain
  /// Summery: Process Domain
  @POST('/extra_types/domain/')
  Future<HttpResponse> extraTypesProcessDomain({
    @Body() required DomainModel body,
  });

  /// OperationId: Extra Types-process_language
  /// Summery: Process Language
  @POST('/extra_types/language/')
  Future<HttpResponse> extraTypesProcessLanguage({
    @Body() required LanguageModel body,
  });

  /// OperationId: Extra Types-process_script
  /// Summery: Process Script
  @POST('/extra_types/script/')
  Future<HttpResponse> extraTypesProcessScript({
    @Body() required ScriptCodeModel body,
  });

  /// OperationId: Extra Types-process_version
  /// Summery: Process Version
  @POST('/extra_types/version/')
  Future<HttpResponse> extraTypesProcessVersion({
    @Body() required VersionModel body,
  });

  /// OperationId: Extra Types-process_s3_path
  /// Summery: Process S3 Path
  @POST('/extra_types/s3/')
  Future<HttpResponse> extraTypesProcessS3Path({
    @Body() required S3PathModel body,
  });

  /// OperationId: Extra Types-process_timezone
  /// Summery: Process Timezone
  @POST('/extra_types/timezone/')
  Future<HttpResponse> extraTypesProcessTimezone({
    @Body() required TimeZoneModel body,
  });

  /// OperationId: Extra Types-process_ulid
  /// Summery: Process Ulid
  @POST('/extra_types/ulid/')
  Future<HttpResponse> extraTypesProcessUlid({@Body() required UlidModel body});
}
