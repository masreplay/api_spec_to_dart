import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';

void main() {
  final recase = Recase.instance;

  test('camelCase, PascalCase and snake_case', () {
    expect(recase.toCamelCase('user_id'), 'userId');
    expect(recase.toCamelCase('userID'), 'userID');
    expect(recase.toPascalCase('HTTPValidationError'), 'HttpValidationError');
    expect(recase.toSnakeCase('HTTPValidationError'), 'http_validation_error');
  });

  test('output does not depend on earlier calls (#63)', () {
    // 4.x kept every two-letter upper-case word it ever saw in a global set,
    // so recasing "userID" once turned every later "id" into "iD".
    recase.toCamelCase('userID');

    expect(recase.toCamelCase('id'), 'id');
    expect(recase.toCamelCase('other_object_id'), 'otherObjectId');
    expect(recase.toPascalCase('id'), 'Id');
  });
}
