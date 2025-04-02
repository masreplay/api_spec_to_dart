import 'package:test/test.dart';
import 'package:swagger_to_dart/src/utils/recase.dart';

void main() {
  group('Recase', () {
    late Recase recase;

    setUp(() {
      recase = Recase.instance;
    });

    group('toCamelCase', () {
      test('should convert simple words to camelCase', () {
        expect(recase.toCamelCase('hello'), equals('hello'));
        expect(recase.toCamelCase('world'), equals('world'));
      });

      test('should convert space-separated words to camelCase', () {
        expect(recase.toCamelCase('hello world'), equals('helloWorld'));
        expect(
          recase.toCamelCase('hello beautiful world'),
          equals('helloBeautifulWorld'),
        );
      });

      test('should handle special characters', () {
        expect(recase.toCamelCase('hello-world'), equals('helloWorld'));
        expect(recase.toCamelCase('hello_world'), equals('helloWorld'));
        expect(recase.toCamelCase('hello.world'), equals('helloWorld'));
      });

      test('should handle mixed case input', () {
        expect(recase.toCamelCase('HelloWorld'), equals('helloWorld'));
        expect(recase.toCamelCase('HELLO_WORLD'), equals('helloWorld'));
      });

      test('should handle empty string', () {
        expect(recase.toCamelCase(''), equals(''));
      });
    });

    group('toPascalCase', () {
      test('should convert simple words to PascalCase', () {
        expect(recase.toPascalCase('hello'), equals('Hello'));
        expect(recase.toPascalCase('world'), equals('World'));
      });

      test('should convert space-separated words to PascalCase', () {
        expect(recase.toPascalCase('hello world'), equals('HelloWorld'));
        expect(
          recase.toPascalCase('hello beautiful world'),
          equals('HelloBeautifulWorld'),
        );
      });

      test('should handle special characters', () {
        expect(recase.toPascalCase('hello-world'), equals('HelloWorld'));
        expect(recase.toPascalCase('hello_world'), equals('HelloWorld'));
        expect(recase.toPascalCase('hello.world'), equals('HelloWorld'));
      });

      test('should handle mixed case input', () {
        expect(recase.toPascalCase('helloWorld'), equals('HelloWorld'));
        expect(recase.toPascalCase('HELLO_WORLD'), equals('HelloWorld'));
      });

      test('should handle empty string', () {
        expect(recase.toPascalCase(''), equals(''));
      });
    });

    group('toSnakeCase', () {
      test('should convert simple words to snake_case', () {
        expect(recase.toSnakeCase('hello'), equals('hello'));
        expect(recase.toSnakeCase('world'), equals('world'));
      });

      test('should convert space-separated words to snake_case', () {
        expect(recase.toSnakeCase('hello world'), equals('hello_world'));
        expect(
          recase.toSnakeCase('hello beautiful world'),
          equals('hello_beautiful_world'),
        );
      });

      test('should handle special characters', () {
        expect(recase.toSnakeCase('hello-world'), equals('hello_world'));
        expect(recase.toSnakeCase('hello_world'), equals('hello_world'));
        expect(recase.toSnakeCase('hello.world'), equals('hello_world'));
      });

      test('should handle mixed case input', () {
        expect(recase.toSnakeCase('helloWorld'), equals('hello_world'));
        expect(recase.toSnakeCase('HELLO_WORLD'), equals('hello_world'));
      });

      test('should handle empty string', () {
        expect(recase.toSnakeCase(''), equals(''));
      });
    });

    group('toScreamingSnakeCase', () {
      test('should convert simple words to SCREAMING_SNAKE_CASE', () {
        expect(recase.toScreamingSnakeCase('hello'), equals('HELLO'));
        expect(recase.toScreamingSnakeCase('world'), equals('WORLD'));
      });

      test('should convert space-separated words to SCREAMING_SNAKE_CASE', () {
        expect(
          recase.toScreamingSnakeCase('hello world'),
          equals('HELLO_WORLD'),
        );
        expect(
          recase.toScreamingSnakeCase('hello beautiful world'),
          equals('HELLO_BEAUTIFUL_WORLD'),
        );
      });

      test('should handle special characters', () {
        expect(
          recase.toScreamingSnakeCase('hello-world'),
          equals('HELLO_WORLD'),
        );
        expect(
          recase.toScreamingSnakeCase('hello_world'),
          equals('HELLO_WORLD'),
        );
        expect(
          recase.toScreamingSnakeCase('hello.world'),
          equals('HELLO_WORLD'),
        );
      });

      test('should handle mixed case input', () {
        expect(
          recase.toScreamingSnakeCase('helloWorld'),
          equals('HELLO_WORLD'),
        );
        expect(
          recase.toScreamingSnakeCase('HELLO_WORLD'),
          equals('HELLO_WORLD'),
        );
      });

      test('should handle empty string', () {
        expect(recase.toScreamingSnakeCase(''), equals(''));
      });
    });

    group('special cases', () {
      test('should handle two-letter acronyms correctly', () {
        expect(recase.toCamelCase('API'), equals('api'));
        expect(recase.toPascalCase('API'), equals('API'));
        expect(recase.toSnakeCase('API'), equals('api'));
        expect(recase.toScreamingSnakeCase('API'), equals('API'));
      });

      test('should handle private fields (underscore prefix)', () {
        expect(recase.toCamelCase('_private_field'), equals('privateField'));
        expect(recase.toPascalCase('_private_field'), equals('PrivateField'));
        expect(recase.toSnakeCase('_private_field'), equals('private_field'));
        expect(
          recase.toScreamingSnakeCase('_private_field'),
          equals('PRIVATE_FIELD'),
        );
      });
    });
  });
}
