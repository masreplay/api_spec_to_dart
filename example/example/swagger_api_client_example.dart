import 'package:dio/dio.dart';
import 'package:swagger_api_client/swagger_api_client.dart';

void main() {
  var client = ApiClient(Dio());
  print('client: ${client}');
}
