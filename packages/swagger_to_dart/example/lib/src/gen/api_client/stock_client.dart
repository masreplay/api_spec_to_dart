library stock_client;

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import '../models/models.dart';
part 'stock_client.g.dart';

@RestApi()
abstract class StockClient {
  factory StockClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _StockClient;

  @PATCH("/api/products/{productId}/stock")
  Future<HttpResponse> stockApiProductsProductIdStockPatch({
    @Body() required AdjustStockDto requestBody,
    @Path("productId") required String productId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Stock'],
      r'summary': r'Manually modifies the stock of a product',
      r'parameters': [
        {
          r'name': r'productId',
          r'in': r'path',
          r'required': true,
          r'schema': {r'type': r'string', r'format': r'uuid'},
        },
      ],
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/AdjustStockDto'},
          },
        },
      },
      r'responses': {
        r'200': {r'description': r'OK'},
      },
    },
  });
}
