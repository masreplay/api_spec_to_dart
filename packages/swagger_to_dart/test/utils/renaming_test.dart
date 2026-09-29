import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';

void main() {
  final renaming = Renaming.instance;

  group('renameClass', () {
    test('PascalCases schema names', () {
      expect(renaming.renameClass('user_create'), 'UserCreate');
      expect(
        renaming.renameClass('HTTPValidationError'),
        'HttpValidationError',
      );
    });

    test('removes the longest matching configured prefix', () {
      expect(
        renaming.renameClass('ApiDtoUser', removePrefixes: ['Api', 'ApiDto']),
        'User',
      );
    });

    test('marks trailing ? as Nullable', () {
      expect(renaming.renameClass('User?'), 'UserNullable');
    });

    test('drops a FastAPI NoneType suffix', () {
      expect(renaming.renameClass('UserNoneType'), 'User');
    });
  });

  group('renameFile', () {
    test('snake_cases class names', () {
      expect(renaming.renameFile('UserCreate'), 'user_create');
      expect(renaming.renameFile('User?'), 'user_nullable');
    });
  });

  group('renameEnumValue', () {
    test('prefixes integers', () {
      expect(renaming.renameEnumValue(0), 'value0');
      expect(renaming.renameEnumValue(-1), 'valueMinus1');
    });

    test('camelCases strings', () {
      expect(renaming.renameEnumValue('in_progress'), 'inProgress');
    });

    test('applies a configured override', () {
      expect(
        renaming.renameEnumValue(10, overrideName: 'pg_registered'),
        'pgRegistered',
      );
    });
  });

  group('renameProperty', () {
    test('camelCases keys', () {
      expect(renaming.renameProperty('first_name'), 'firstName');
    });
  });
}
