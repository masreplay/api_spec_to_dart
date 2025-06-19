import 'dart:convert';
import 'dart:io';

import 'package:postman_collection/postman_collection.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    test('First Test', () async {
      final file =
          File('./test/assets/test2.postman_collection_collection.json');
      final content = file.readAsStringSync();
      final actual = jsonDecode(content);

      final actualText = JsonEncoder.withIndent('  ').convert(actual);
      print(actualText);

      final matcher = PostmanCollection.fromJson(actual);
      final matcherText =
          JsonEncoder.withIndent('  ').convert(matcher.toJson());
      // File('./test/assets/test2.temp.postman_collection_collection.json').writeAsStringSync(matcherText);
      print(matcherText);

      // deep match [actual] and [matcher]
      expect(actual, matcher.toJson());
    });
  });
}
