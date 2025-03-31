import 'package:swagger_api_client/swagger_api_client.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final client = SwaggerApiClient();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(client, isTrue);
    });
  });
}
