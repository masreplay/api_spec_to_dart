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

  group('identifier hygiene', () {
    test('built-in identifiers are legal names (#51)', () {
      expect(renaming.renameEnumValue('EXTERNAL'), 'external');
      expect(renaming.renameProperty('required'), 'required');
    });

    test('reserved words get a \$ prefix', () {
      expect(renaming.renameProperty('default'), r'$default');
      expect(renaming.renameProperty('Class'), r'$class');
      expect(renaming.renameEnumValue('new'), r'$new');
    });

    test('hyphens between words separate them (#28)', () {
      expect(renaming.renameProperty('some-header'), 'someHeader');
      expect(renaming.renameProperty('X-API-Version'), 'xAPIVersion');
      expect(renaming.renameEnumValue('in-progress'), 'inProgress');
    });

    test('lone symbols are spelled out', () {
      expect(renaming.renameEnumValue('+'), 'plus');
      expect(renaming.renameEnumValue('-'), 'minus');
    });

    test('characters that cannot appear in identifiers are dropped', () {
      expect(renaming.renameEnumValue("a'b"), 'aB');
      expect(renaming.renameProperty('user\'s'), 'userS');
    });

    test('names cannot start with a digit or be empty', () {
      expect(renaming.renameProperty('2fa'), r'$2fa');
      expect(renaming.renameEnumValue('1st'), r'$1st');
      expect(renaming.renameEnumValue(''), 'empty');
    });

    test('short names without ASCII letters are no acronyms', () {
      expect(renaming.renameProperty('عمر'), 'empty');
      expect(renaming.renameProperty('🚀'), 'empty');
      expect(renaming.renameProperty('الاسم '), 'empty');
      expect(renaming.renameProperty('A.B'), 'aB');
      expect(renaming.renameProperty('ID'), 'id');
      // No ASCII word, no class name: callers fall back (clients are named
      // by their paths).
      expect(renaming.renameClass('عمر'), '');
    });

    test('propertyNames avoids Object and freezed members', () {
      expect(
        renaming.propertyNames([
          'hashCode',
          'runtimeType',
          'toString',
          'noSuchMethod',
          'copyWith',
          'toJson',
          'id',
        ]),
        {
          'hashCode': 'hashCode2',
          'runtimeType': 'runtimeType2',
          'toString': 'toString2',
          'noSuchMethod': 'noSuchMethod2',
          'copyWith': 'copyWith2',
          'toJson': 'toJson2',
          'id': 'id',
        },
      );
    });

    test('propertyNames keeps names unique', () {
      expect(
        renaming.propertyNames(
          ['some-key', 'some_key', 'extras'],
          reserved: {'extras'},
        ),
        {'some-key': 'someKey', 'some_key': 'someKey2', 'extras': 'extras2'},
      );
    });
  });
}
