# Swagger to Dart

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/masreplay/api_spec_to_dart/main/docs/logo-dark.svg" width="400">
    <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/masreplay/api_spec_to_dart/main/docs/logo-light.svg" width="400">
    <img alt="Swagger to Dart logo" src="https://raw.githubusercontent.com/masreplay/api_spec_to_dart/main/docs/logo-light.svg" width="400">
  </picture>
</p>

[![Pub Version](https://img.shields.io/pub/v/swagger_to_dart.svg)](https://pub.dev/packages/swagger_to_dart)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

Generates Dart models ([freezed](https://pub.dev/packages/freezed)) and
[retrofit](https://pub.dev/packages/retrofit) API clients from an API
description:

- OpenAPI 3.0, 3.1 and 3.2
- Swagger 2.0
- Postman collections: v1, v2.0 and v2.1 exports, and v3 collection directories
- JSON Schema documents (models only)

Input can be JSON or YAML, read from a local file or fetched from a URL. See
[Inputs](#inputs).

## Requirements

- **Dart >= 3.9** (bundled with **Flutter >= 3.35**) to run `swagger_to_dart` itself.
- The code it generates uses `json_serializable` >= 6.10, which emits Dart 3.8 syntax (null-aware elements) in `.g.dart` files. Your **consuming project's** own SDK lower bound must be at least `3.8.0` (e.g. `environment: sdk: '>=3.8.0 <4.0.0'`) or that generated code won't compile.
- Generated clients need `dio` and `retrofit`. A spec without operations (a JSON Schema document, or an OpenAPI file with only `components`) generates models only; that output needs neither `retrofit` nor `retrofit_generator`, and needs `dio` only when a model has a binary (`MultipartFile`) field.

## Support

- [FastAPI](https://fastapi.tiangolo.com/)
- [abpIO](https://abp.io/)
- [NestJS](https://nestjs.com/)
- [Spring Boot](https://spring.io/projects/spring-boot)
- [AspNet Core](https://dotnet.microsoft.com/apps/aspnet)
- [Flask](https://flask.palletsprojects.com/)
- [Postman](https://www.postman.com/) collections
- Any other tool that produces OpenAPI 3.x or Swagger 2.0, in JSON or YAML

## Features

- Immutable [freezed](https://pub.dev/packages/freezed) models with JSON
  serialization, including models for inline objects, enums, generics and
  `sealed` unions (also unions that mix strings, numbers, arrays and objects).
- [retrofit](https://pub.dev/packages/retrofit) clients, one per tag (one per
  folder for Postman collections).
- Path, query, header and cookie parameters; JSON, form, multipart, text and
  binary bodies and responses.
- Documentation comments from the spec's descriptions.
- Fetches the spec from a URL and keeps a local copy.

## Getting Started

### Add dependencies

First, add the required dependencies to your `pubspec.yaml` file:

```yaml
dependencies:
  dio: ^x.x.x
  retrofit: ^x.x.x
  freezed_annotation: ^x.x.x
  json_annotation: ^x.x.x

dev_dependencies:
  swagger_to_dart: ^x.x.x
  build_runner: ^x.x.x
  freezed: ^x.x.x
  json_serializable: ^x.x.x
  retrofit_generator: ^x.x.x
```

Or use Dart CLI to add the dependencies:

```sh
dart pub add dev:swagger_to_dart
dart pub add dev:build_runner

dart pub add freezed_annotation
dart pub add dev:freezed
dart pub add json_annotation
dart pub add dev:json_serializable

dart pub add dio
dart pub add retrofit
dart pub add dev:retrofit_generator
```

### Configure build order

Create a `build.yaml` file in your project root to ensure the correct build order:

```yaml
global_options:
  freezed:
    runs_before:
      - json_serializable
  json_serializable:
    runs_before:
      - retrofit_generator
```

Update the `analysis_options.yaml` file:

```yaml
linter:
  rules:
    prefer_single_quotes: true

analyzer:
  exclude:
    # for retrofit and json_serializable
    - "**/*.g.dart"
    # for freezed
    - "**/*.freezed.dart"

  errors:
    # for json_serializable
    invalid_annotation_target: ignore
```

### Generate code from your OpenAPI specification

Create a `swagger_to_dart.yaml` file in your project root:

```yaml
swagger_to_dart:
  input_directory: schema/swagger.json
  output_directory: lib/src/gen
  model:
    support_generic_arguments: true
    union_class_fallback_name: fallback
    enum_fallback_type: first
  api_client:
    base_api_client_class_name: BaseApiClient
    use_class_for_query_parameters: true
    skipped_parameters:
      - Language
      - X-API-Key
```

See **Configuration Options** below for every key. Then run:

```sh
dart run swagger_to_dart
```

The CLI takes one optional flag: `--config` (short `-c`) points to a config
file at a different path. It defaults to `swagger_to_dart.yaml` in the
current directory.

```sh
dart run swagger_to_dart [--config path/to/swagger_to_dart.yaml]
```

### Run code generation

After generating the API clients and models, run build_runner to generate the necessary code:

```sh
dart run build_runner build
```

## Example Usage

### 1. Define the OpenAPI specification location

Create a `swagger_to_dart.yaml` configuration file

### 2. Generate code

Once you've set up your configuration file, run the following commands:

```sh
# First, generate the Dart code from your OpenAPI specification
dart run swagger_to_dart

# Then, generate the implementation with freezed, json_serializable, and retrofit
dart run build_runner build
```

### 3. Use the generated code

```dart
import 'package:dio/dio.dart';
import 'package:your_project/api/api.dart';

void main() async {
  final dio = Dio();

  // Add interceptors for auth, logging, etc.
  dio.interceptors.add(LogInterceptor(responseBody: true));

  // Create API client
  final userClient = UserApi(dio, baseUrl: 'https://api.example.com');

  try {
    // Use the generated API client
    final users = await userClient.getUsers();
    print('Users: ${users.map((u) => u.name).join(', ')}');

    // Create a model instance
    final newUser = User(id: '123', name: 'John Doe', email: 'john@example.com');

    // Use the model in an API call
    final createdUser = await userClient.createUser(newUser);
    print('Created user: ${createdUser.name}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Inputs

`input_directory` (or `url`) may point at any of these. The format is
detected from the document's content, checked top to bottom; the first match
wins. Every format is converted to OpenAPI 3 first, then generated the same
way.

| Format | Detected by | Converted to |
|---|---|---|
| OpenAPI 3.0, 3.1, 3.2 | `openapi: 3.x` | Used as is |
| Swagger 2.0 | `swagger: "2.0"` | OpenAPI 3.0.3 |
| Postman v2.0 / v2.1 export | `info.schema` is a Postman schema URL | OpenAPI 3.1.1 (3.2.0 when a request uses `QUERY` or a non-standard method) |
| Postman v1 export | top-level `requests` and `order` | as above |
| Postman API response | a `{"collection": {...}}` envelope | as above |
| Postman v3 collection | `input_directory` is a directory | as above |
| JSON Schema | top-level `definitions`, `$defs` or `$schema` | OpenAPI 3.1.0 with schemas only (no client) |

Anything else fails with `Not an OpenAPI 3, Swagger 2.0, JSON Schema or
Postman document`.

**YAML.** Files ending in `.yaml`/`.yml`, and other files or URL responses
that do not start with `{` or `[`, are parsed as YAML, for every format.
Anchors are resolved, and unquoted versions (`openapi: 3.1`,
`swagger: 2.0`) are read as strings.

### Postman

Point `input_directory` at a collection export (`collection.json`) or at a
v3 collection directory (Postman's file-based format:
`.resources/definition.yaml`, `*.request.yaml`, `*.example.yaml`). v1 and v2.0
collections are upgraded to v2.1 first. How a collection maps to OpenAPI:

| Postman | Generated |
|---|---|
| folder | a tag (`Parent / Child`), so one client per folder (`ParentChildClient`); requests at the root go to `DefaultClient`. A folder name without ASCII letters names its client by its requests' common path (`/users…` gives `UsersClient`); clashing names get a number (`Users2Client`) |
| request | one method; the name gives the summary and the method name (camelCase; names without ASCII letters fall back to method + path) |
| URL origin | the most frequent origin (e.g. `{{baseUrl}}`) is the server; requests on other origins get absolute URLs |
| `:id` / `{{id}}` path segments | path parameters |
| query parameters, headers | optional parameters (`Content-Type`, `Accept`, `Authorization` and transport headers are left out; `Cookie` becomes cookie parameters) |
| raw JSON body (comments and `{{variables}}` allowed) | a body model inferred from the sample |
| urlencoded / form-data / file / GraphQL body | form model / multipart model (file parts are `MultipartFile`; unset optional fields are not sent) / binary / `{query, variables, operationName}` |
| saved examples | responses per status and media type, with models inferred from every example of that response |
| same method and path in several requests | one method; `/users/{id}` and `/users/{userId}` count as the same path |
| auth (collection, folder, request) | `securitySchemes` in the converted spec; generated clients leave auth to your dio interceptors |
| collection variables | resolved in URLs, headers and bodies; values become examples and server defaults |
| scripts, tests, cookies, proxy, certificates | dropped |

- **Inferred models:** no field is `required`, so every field is nullable.
  Integers mixed with decimals become `double`. A string becomes `DateTime`
  only when every sample is an RFC 3339 timestamp. Values of different JSON
  kinds become a sealed union when one of them is an array or an object,
  else `dynamic`. Objects whose keys are all numbers, UUIDs or
  dates become a `Map`.
- **Secrets:** credential values (passwords, tokens, client secrets, API key
  values, private keys) are kept out of examples, defaults and descriptions.
  Variables holding them (used by auth or `Authorization`/`Cookie` headers,
  typed `secret`, or named like a credential) stay unresolved `{{name}}`
  references; values under credential-named parameters, headers and JSON
  keys, bearer tokens and JWTs are dropped from examples. Free text (XML or
  HTML bodies, GraphQL query text, descriptions, values under keys such as
  `access`) loses only known secret values, the literal values of those
  auth attributes, headers and variables; a credential written literally
  only there stays. Identifiers such as usernames and client ids are kept.
- **v3 directories:** gRPC, WebSocket, Socket.IO, MQTT, MCP and LLM requests
  are skipped with a warning, since they are not HTTP.
- Requests without a saved example have no typed response.

Every property of the official v2.1.0 collection schema is listed, as mapped
or dropped with the reason, in the converter's
[coverage table](https://github.com/masreplay/api_spec_to_dart/blob/main/packages/postman_collection/test/convert/coverage_test.dart);
a test fails when the schema has a property the table does not list. The
converter is also usable on its own: `postmanToOpenApi` in
[postman_collection](https://pub.dev/packages/postman_collection).

### Swagger 2.0

Converted to OpenAPI 3.0.3 the way
[swagger2openapi](https://github.com/Mermade/oas-kit) does: `definitions`,
`parameters` and `responses` move to `components` (refs follow; keys like
`Page«Pet»` become valid names such as `Page_Pet_`), `body` and `formData`
parameters become request bodies (`type: file` is binary), `consumes`/
`produces` become media types, `host` + `basePath` + `schemes` become
`servers`, `securityDefinitions` become `securitySchemes`, `x-nullable`
becomes `nullable`, and `collectionFormat` becomes `style`/`explode`
(`tsv` has no OpenAPI 3 equivalent and is kept as `x-collectionFormat`).

### JSON Schema

A JSON Schema document (any draft) generates models only. Each entry of
`definitions` or `$defs` becomes a model named by its **key** (definition
titles are ignored). The root schema becomes a model named by its `title`,
else by the input file name (`collection.json` gives `Collection`), unless
it only holds definitions. `#/definitions/…`, `#/$defs/…` and `#` refs are
rewritten. Postman's own collection schema is generated this way into
[postman_collection](https://pub.dev/packages/postman_collection)'s models.

## Configuration Options

The package configuration is defined in a `swagger_to_dart.yaml` file. Every
key, with its default:

```yaml
swagger_to_dart:
  # Fetch the spec (JSON or YAML, any supported format) from a URL instead
  # of only reading `input_directory`. On success, `input_directory` is
  # overwritten with the fetched document as pretty-printed JSON so it stays
  # a fresh local copy. On failure, generation
  # falls back to the existing local copy with a loud console warning
  # naming its age; with no local copy either, generation fails.
  # Default: unset (read `input_directory` only).
  url: https://api.example.com/openapi.json

  # The input: a JSON or YAML file in any supported format (see Inputs), or
  # a Postman v3 collection directory. Read directly when `url` is unset,
  # and used as the fetch/refresh target when it is set.
  input_directory: schema/swagger.json # default

  # Where generated models and API clients are written.
  output_directory: lib/src/gen # default

  # Backend that produced the spec: FastAPI | dotnet | abp.io. Selects the
  # generic-type-name parser (e.g. `PagedResultDto<UserDto>`-style naming
  # differs per framework) and, in Flutter projects, which string `format`s
  # map to native types instead of `String` (color / color-hex -> Color,
  # FastAPI only; time / duration -> TimeOfDay, FastAPI only).
  # Default: unset.
  generation_source: FastAPI

  imports:
    # Raw import statements prepended verbatim to every generated file.
    # Default: [].
    global:
      - "import 'package:my_app/interceptors.dart';"

  model:
    # Generate a real generic Dart class (`class Foo<T>`, with a generic
    # `fromJson`) for a component schema whose title matches
    # `generation_source`'s generic-instantiation naming convention,
    # instead of one flat class per instantiation. Default: false.
    support_generic_arguments: false

    # Name of the fallback variant for a oneOf/anyOf union whose payload
    # matches no variant (bad/missing discriminator value, or nothing
    # decodes without error). The fallback wraps the raw
    # `Map<String, dynamic>`. Default: unset — an unmatched payload throws
    # `ArgumentError` instead.
    union_class_fallback_name: fallback

    # What an unrecognized value decodes to. Default: throwException.
    #   throwException - throws (also what happens at runtime when unset).
    #   unknown        - adds a real `unknown` member (reusing one if the
    #                    enum already declares it; int enums get a JSON
    #                    value below the real ones, e.g. -1) and decodes
    #                    unrecognized values to it.
    #   first / last   - decodes to the first / last declared member.
    enum_fallback_type: throwException

    # Prefixes stripped from a schema's name/title before it becomes a Dart
    # class name (longest match wins), e.g. ["Api"] turns `ApiUserDto` into
    # `UserDto`. Applied consistently to regular, enum, union and generic
    # models and their file names. Default: [].
    remove_model_prefixes: []

    # Prepended once to every generated model name: component and inline
    # classes, enums, unions and typedefs, and their file names (`Postman`
    # turns `Item` into `PostmanItem` in `postman_item.dart`). Core types
    # such as `String` or `List` are never prefixed. Default: unset.
    class_prefix: Postman

    # Opt-in per-enum member renaming, keyed by the enum's schema name or
    # generated Dart class name; the inner map is the raw enum value (as a
    # string — works for string and integer enums) to the desired Dart
    # member name (recased to camelCase). Enums absent here keep their
    # default member names (e.g. `value0`). Default: {}.
    enums:
      MyStatusEnum:
        0: created
        10: pgRegistered

  api_client:
    # Class name of the shared base client every generated client uses.
    base_api_client_class_name: BaseApiClient # default

    # Bundle an operation's query parameters into one generated
    # `<Method>QueryParameters` class, passed as a single `@Queries()`
    # argument, instead of one named method parameter per query field.
    # Default: false.
    use_class_for_query_parameters: false

    # Operation parameters dropped entirely from the generated method
    # signature (and so never sent) — e.g. ones your own Dio interceptors
    # already inject, like `Language` or `X-API-Key`. Default: [].
    skipped_parameters:
      - Language
      - X-API-Key

    # Default each generated method's `@Extras()` to that operation's
    # OpenAPI metadata (tags, operationId, parameters, responses), readable
    # via `options.extra` in a Dio interceptor. `example`/`examples` (and
    # Swagger 2.0 `x-example`/`x-examples`) are left out, so sample data is
    # not compiled into the app. Set to `false` to stop embedding it.
    # Default: true.
    include_openapi_extras: true
```

## Generated models

- **Inline objects** (a schema with `properties` that is not a component)
  become models named by where they are used: the response of `getUser` is
  `GetUserResponse`, the body of `updateUser` is `UpdateUserBody`, the
  `address` property of `GetUserResponse` is `GetUserResponseAddress`, array
  items end in `Item` and map values in `Value`. A `title` names the model instead, unless a
  component, another model or a `dart:core`/dio type already has that name.
  Inline objects used as parameters, and objects without `properties`, stay
  `Map<String, dynamic>`.
- **Components that are not objects** (arrays, maps, primitives and `$ref`
  aliases) become typedefs, e.g. `typedef Pets = List<Pet>;`.
- **`model.class_prefix`** prefixes every model name once (see
  Configuration Options).

### Unions

A component schema that is a `oneOf`/`anyOf` of `$ref`s generates a `sealed`
class with one `final` subclass per variant, plus a fallback variant when
`model.union_class_fallback_name` is set. `fromJson`/`toJson` work on the
variant's own flat JSON — there is no `{"value": ...}` envelope — so a union
decodes the same way whether it's a field, a list item, a request body or a
response:

- **With a discriminator**: decoding switches on the discriminator property
  (variants the mapping leaves out, or all of them when it is omitted, use
  their schema name as the value); encoding writes the discriminator back.
- **Without one**: among the variants whose required keys are all present,
  the one declaring the most of the payload's keys wins (the earlier one on
  a tie).
- **No match**: the fallback variant wraps the raw `Map<String, dynamic>`;
  with no `union_class_fallback_name` configured, decoding throws
  `ArgumentError` instead.

```dart
final Animal animal = Animal.fromJson(json); // AnimalDog, AnimalCat, or the fallback

final label = switch (animal) {
  AnimalDog(:final value) => 'Dog: ${value.name}',
  AnimalCat(:final value) => 'Cat: ${value.name}',
  AnimalFallback(:final value) => 'Unknown animal: $value',
};

print(animal.toJson()); // flat JSON, discriminator included
```

### Mixed unions

A `oneOf`/`anyOf`, or a type array such as `[string, object]`, that mixes
JSON kinds with at least one array or object also generates a `sealed`
class. Its `fromJson(Object? json)` switches on the JSON kind first, then
on the discriminator or keys among object variants. Cases are named
`string`, `integer`, `number`, `boolean`, `list`, `object`, or after the
referenced schema; an `integer` and a `number` variant merge into one
`number` case (`double`). Object variants that each pin one `const` property to a different value
are discriminated by it.

```dart
final Url url = Url.fromJson(json); // a String or an object

final raw = switch (url) {
  UrlString(:final value) => value,
  UrlObject(:final value) => value.raw,
};
```

Mixes of primitives only (`string | integer`) stay `dynamic`. Mixed unions
used as parameters or request bodies are `dynamic`, and a list or map of
them as a response is `List<Object?>` / `Map<String, Object?>` (decode the
items with `Url.fromJson`).

## Handling Breaking Changes

When your API changes, you can use the following workflow to update your generated code:

1. Update your OpenAPI specification
2. Run `dart run swagger_to_dart`
3. Run `dart run build_runner build`
4. Check for breaking changes in your codebase and update as needed

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

This repository is test-driven: every behaviour change starts as a failing
test, and CI blocks anything that isn't green. See
[CONTRIBUTING.md](CONTRIBUTING.md) for setup, the package layout and the
red-green loop.

## CI/CD

Publish new release
https://github.com/masreplay/api_spec_to_dart/actions

```sh
make publish
```

## License

This package is available under the MIT License.

## Acknowledgements

This package was inspired by and builds upon other great Dart packages including [freezed](https://pub.dev/packages/freezed), [retrofit](https://pub.dev/packages/retrofit), and [json_serializable](https://pub.dev/packages/json_serializable) and [FastAPI](https://fastapi.tiangolo.com/).
