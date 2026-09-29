import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';

import '../support/fixtures.dart';

const _components = {
  'Pet': {
    'type': 'object',
    'properties': {
      'name': {'type': 'string'},
    },
  },
  'Cat': {
    'type': 'object',
    'properties': {
      'lives': {'type': 'integer'},
    },
  },
  'BaseResponse[User]': {
    'title': 'BaseResponse[User]',
    'type': 'object',
    'properties': {
      'data': {r'$ref': '#/components/schemas/User'},
    },
  },
  'User': {
    'type': 'object',
    'properties': {
      'id': {'type': 'integer'},
    },
  },
};

String dartType(
  Map<String, dynamic> schema, {
  SwaggerToDart config = const SwaggerToDart(),
  bool flutter = false,
}) {
  final context = contextFor(
    {
      'openapi': '3.1.0',
      'info': {'title': 't', 'version': '1'},
      'paths': <String, dynamic>{},
      'components': {'schemas': _components},
    },
    config: config,
    flutter: flutter,
  );
  return context.extension.typeConverter.get(
    const OpenApiSchemaJsonConverter().fromJson(schema),
    className: 'Model',
  );
}

void main() {
  const fastApi = SwaggerToDart(generationSource: GenerationSource.fastAPI);

  test('primitives', () {
    expect(dartType({'type': 'string'}), 'String');
    expect(dartType({'type': 'integer'}), 'int');
    expect(dartType({'type': 'number'}), 'double');
    expect(dartType({'type': 'boolean'}), 'bool');
  });

  test('string formats', () {
    expect(dartType({'type': 'string', 'format': 'date-time'}), 'DateTime');
    expect(dartType({'type': 'string', 'format': 'date'}), 'DateTime');
    expect(dartType({'type': 'string', 'format': 'uri'}), 'Uri');
    expect(dartType({'type': 'string', 'format': 'uuid'}), 'String');
  });

  test('Flutter-only types for FastAPI Flutter projects', () {
    final binary = {'type': 'string', 'format': 'binary'};
    final time = {'type': 'string', 'format': 'time'};
    expect(dartType(binary), 'String');
    expect(dartType(time), 'String');
    expect(dartType(binary, config: fastApi, flutter: true), 'MultipartFile');
    expect(dartType(time, config: fastApi, flutter: true), 'TimeOfDay');
  });

  test('collections', () {
    expect(
      dartType({
        'type': 'array',
        'items': {'type': 'string'},
      }),
      'List<String>',
    );
    expect(dartType({'type': 'array'}), 'List<dynamic>');
    expect(dartType({'type': 'object'}), 'Map<String, dynamic>');
  });

  test('references and generic titles', () {
    expect(dartType({r'$ref': '#/components/schemas/Pet'}), 'Pet');
    expect(
      dartType({r'$ref': '#/components/schemas/BaseResponse[User]'}),
      'BaseResponse<User>',
    );
  });

  test('nullability', () {
    expect(dartType({'type': 'string', 'nullable': true}), 'String?');
    expect(
      dartType({
        'anyOf': [
          {'type': 'string'},
          {'type': 'null'},
        ],
      }),
      'String?',
    );
    expect(
      dartType({
        'anyOf': [
          {r'$ref': '#/components/schemas/Pet'},
          {'type': 'null'},
        ],
      }),
      'Pet?',
    );
  });

  test('unions of references', () {
    final pets = [
      {r'$ref': '#/components/schemas/Pet'},
      {r'$ref': '#/components/schemas/Cat'},
    ];
    expect(dartType({'oneOf': pets}), 'PetOrCatUnion');
    expect(dartType({'anyOf': pets}), 'CatPet');
    expect(
      dartType({
        'anyOf': [
          {'type': 'string'},
          {'type': 'integer'},
        ],
      }),
      'dynamic',
    );
  });
}
