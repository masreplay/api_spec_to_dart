# Swagger to Dart

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/masreplay/swagger_to_dart/main/docs/logo-dark.svg" width="400">
    <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/masreplay/swagger_to_dart/main/docs/logo-light.svg" width="400">
    <img alt="Swagger to Dart logo" src="https://raw.githubusercontent.com/masreplay/swagger_to_dart/main/docs/logo-light.svg" width="400">
  </picture>
</p>

[![Pub Version](https://img.shields.io/pub/v/swagger_to_dart.svg)](https://pub.dev/packages/swagger_to_dart)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

A powerful Dart package that auto-generates type-safe API clients and models from OpenAPI specifications (Swagger). Currently optimized for OpenAPI 3.1.0 specifications.

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

There are two ways to generate code from your OpenAPI specification:

#### 1. Using the command line

```sh
dart run swagger_to_dart --input path/to/openapi.json --output lib/api
```

#### 2. Using a configuration file

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

Then run:

```sh
dart run swagger_to_dart
```

### Run code generation

After generating the API clients and models, run the build_runner to generate the necessary code:

```sh
dart run build_runner build --delete-conflicting-outputs
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
dart run build_runner build --delete-conflicting-outputs
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

The package configuration is defined in a `swagger_to_dart.yaml` file

### Configuration Fields Explained

## Handling Breaking Changes

When your API changes, you can use the following workflow to update your generated code:

1. Update your OpenAPI specification
2. Run `dart run swagger_to_dart`
3. Run `dart run build_runner build --delete-conflicting-outputs`
4. Check for breaking changes in your codebase and update as needed

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

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
