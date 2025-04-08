import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';
     
    
 
part 'ping_client.g.dart';
 
@RestApi()
abstract class PingClient {
factory PingClient(Dio dio, {String baseUrl}) = _PingClient;
/// OperationId: ping-ping
/// Summery: Ping
/// Description: Ping the server.
@GET('/ping')
Future<HttpResponse> pingPing();
}
