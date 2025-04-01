import 'package:dio/dio.dart';
import 'package:swagger_api_client/src/gen/clients/api_client.dart';

void main() {
  var client = ApiClient(Dio());
  print('client: ${client}');
}
