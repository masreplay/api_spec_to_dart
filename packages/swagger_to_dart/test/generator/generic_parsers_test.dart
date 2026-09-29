import 'package:swagger_to_dart/src/generator/model/strategy/abp_generic_parser.dart';
import 'package:swagger_to_dart/src/generator/model/strategy/dotnet_generic_parser.dart';
import 'package:swagger_to_dart/src/generator/model/strategy/fastapi_generic_parser.dart';
import 'package:test/test.dart';

void main() {
  group('FastAPI', () {
    final parser = FastApiGenericParser.instance;

    test('recognises bracket generics only', () {
      expect(parser.isFormat('BaseResponse[User]'), isTrue);
      expect(parser.isFormat('BaseResponse'), isFalse);
      expect(parser.isFormat('Result<User>'), isFalse);
    });

    test('converts nested brackets to angle brackets', () {
      expect(
        parser.toStandardFormat('BaseResponse[PaginationResponse[User]]'),
        'BaseResponse<PaginationResponse<User>>',
      );
      expect(parser.toStandardFormat('Pair[int, str]'), 'Pair<int, str>');
    });
  });

  group('.NET', () {
    final parser = DotNetGenericParser.instance;

    test('recognises angle-bracket generics only', () {
      expect(parser.isFormat('Result<List<User>>'), isTrue);
      expect(parser.isFormat('Result'), isFalse);
    });

    test('splits top-level arguments', () {
      expect(
        parser.extractGenericArguments('Dictionary<string, List<int>>'),
        ['string', 'List<int>'],
      );
      expect(parser.extractBaseClassName('Result<User>'), 'Result');
    });
  });

  group('ABP', () {
    final parser = AbpGenericParser.instance;
    const paged =
        'Volo.Abp.Application.Dtos.PagedResultDto`1[[MyApp.Books.BookDto, '
        'MyApp.Application.Contracts, Version=1.0.0.0, Culture=neutral, '
        'PublicKeyToken=null]]';

    test('recognises backtick generics only', () {
      expect(parser.isFormat(paged), isTrue);
      expect(parser.isFormat('PagedResultDto'), isFalse);
    });

    test('drops assembly qualifiers', () {
      expect(
        parser.toStandardFormat(paged),
        'Volo.Abp.Application.Dtos.PagedResultDto<MyApp.Books.BookDto>',
      );
    });

    test('keeps every type argument', () {
      const pair =
          'System.Collections.Generic.KeyValuePair`2[[System.String, '
          'System.Private.CoreLib, Version=8.0.0.0],[MyApp.Books.BookDto, '
          'MyApp.Application.Contracts, Version=1.0.0.0]]';
      expect(parser.extractGenericArguments(pair), [
        'System.String',
        'MyApp.Books.BookDto',
      ]);
      expect(
        parser.toStandardFormat(pair),
        'System.Collections.Generic.KeyValuePair<System.String, '
        'MyApp.Books.BookDto>',
      );
    });

    test('converts nested generic arguments', () {
      const nested =
          'MyApp.Result`1[[Volo.Abp.Application.Dtos.ListResultDto`1[['
          'MyApp.Books.BookDto, MyApp.Contracts, Version=1.0.0.0]], '
          'Volo.Abp.Ddd.Application.Contracts, Version=8.0.0.0]]';
      expect(
        parser.toStandardFormat(nested),
        'MyApp.Result<Volo.Abp.Application.Dtos.ListResultDto<MyApp.Books.BookDto>>',
      );
    });
  });
}
