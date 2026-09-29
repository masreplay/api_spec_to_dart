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

A powerful Dart package that auto-generates type-safe API clients and models from OpenAPI specifications (Swagger). Supports OpenAPI 3.0 and 3.1 specifications.

## Requirements

- **Dart >= 3.9** (bundled with **Flutter >= 3.35**) to run `swagger_to_dart` itself.
- The code it generates uses `json_serializable` >= 6.10, which emits Dart 3.8 syntax (null-aware elements) in `.g.dart` files. Your **consuming project's** own SDK lower bound must be at least `3.8.0` (e.g. `environment: sdk: '>=3.8.0 <4.0.0'`) or that generated code won't compile.

## Support

- [FastAPI](https://fastapi.tiangolo.com/)
- [abpIO](https://abp.io/)
- [NestJS](https://nestjs.com/)
- [Spring Boot](https://spring.io/projects/spring-boot)
- [AspNet Core](https://dotnet.microsoft.com/apps/aspnet)
- [Flask](https://flask.palletsprojects.com/)
- Any other framework that generates OpenAPI 3.1.0 specs with JSON format

## Features

- 🚀 Generates Dart models with [freezed](https://pub.dev/packages/freezed) for immutability and serialization
- 🔄 Creates [retrofit](https://pub.dev/packages/retrofit) API clients for type-safe HTTP requests
- 🧩 Supports nested objects, enums, and complex data structures
- 📊 Handles query parameters, path parameters, and request bodies
- 📝 Generates documentation comments from OpenAPI descriptions
- 🌐 Fetch OpenAPI specifications directly from URLs (JSON format)
- 💾 Automatically saves fetched specs locally
- 🛠️ Customizable output with configuration options
- ⚡ Supports FastAPI, NestJS, Spring Boot, and any other framework that generates OpenAPI 3.1.0 specs

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

## Configuration Options

The package configuration is defined in a `swagger_to_dart.yaml` file. Every
key, with its default:

```yaml
swagger_to_dart:
  # Fetch the spec from a URL instead of only reading `input_directory`.
  # On success, `input_directory` is overwritten with the fetched JSON
  # (pretty-printed) so it stays a fresh local copy. On failure, generation
  # falls back to the existing local copy with a loud console warning
  # naming its age; with no local copy either, generation fails.
  # Default: unset (read `input_directory` only).
  url: https://api.example.com/openapi.json

  # Local OpenAPI JSON file: read directly when `url` is unset, and used as
  # the fetch/refresh target when it is set.
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
    # via `options.extra` in a Dio interceptor. Set to `false` to stop
    # embedding it. Default: true.
    include_openapi_extras: true
```

## Unions

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
