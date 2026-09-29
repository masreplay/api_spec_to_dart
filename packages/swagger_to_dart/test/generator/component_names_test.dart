import 'dart:io';

import 'package:test/test.dart';

import '../support/fixtures.dart';

void main() {
  late Map<String, String> files;

  setUpAll(() {
    final result = Fixture(
      Directory('test/fixtures/duplicate_titles'),
    ).render();
    expect(result.errors, isEmpty);
    files = result.files;
  });

  test('components sharing a title get distinct classes', () {
    expect(
      files['models/item_response.dart'],
      contains('required String name,'),
    );
    expect(
      files['models/app_items_router_item_response.dart'],
      contains('required double price,'),
    );
  });

  test('references resolve to the class generated for that component', () {
    final holder = files['models/holder.dart']!;
    expect(holder, contains('ItemResponse? input,'));
    expect(holder, contains('AppItemsRouterItemResponse? item,'));
  });

  test('enum classes use the same name as references to them', () {
    expect(files['models/status.dart'], contains('enum Status {'));
    expect(files['models/holder.dart'], contains('Status? status,'));
  });
}
