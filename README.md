# Swagger to Dart

[![Pub Version](https://img.shields.io/pub/v/swagger_to_dart.svg)](https://pub.dev/packages/swagger_to_dart)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

A powerful Dart package that auto-generates type-safe API clients and models from OpenAPI specifications (Swagger). Currently optimized for OpenAPI 3.1.0 specifications.

## Features

- 🚀 Generates Dart models with [freezed](https://pub.dev/packages/freezed) for immutability and serialization
- 🔄 Creates [retrofit](https://pub.dev/packages/retrofit) API clients for type-safe HTTP requests
- 🧩 Supports nested objects, enums, and complex data structures
- 📊 Handles query parameters, path parameters, and request bodies
- 📝 Generates documentation comments from OpenAPI descriptions
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
# generation tools
dart pub add dev:swagger_to_dart
dart pub add dev:build_runner

# models
dart pub add freezed_annotation
dart pub add dev:freezed
dart pub add json_annotation
dart pub add dev:json_serializable

# network
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
  # You can use a local file path
  input_directory: schema/swagger.json
  output_directory: lib/src/gen
  api_client_class_name: ApiClient
  imports:
    - import 'package:dio/dio.dart';
  skipped_parameters:
    - Accept-Language
    - X-Language
    - X-Platform
  
  # Or you can use a URL to directly download the spec
  # url: https://example.com/api/swagger.json
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

Create a `swagger_to_dart.yaml` configuration file:

```yaml
swagger_to_dart:
  input_directory: schema/swagger.json
  output_directory: lib/src/gen
  api_client_class_name: ApiClient
  imports:
    - import 'package:dio/dio.dart';
  skipped_parameters:
    - Accept-Language
    - X-Language
    - X-Platform
```

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

The package configuration is defined in a `swagger_to_dart.yaml` file. Below is the complete structure based on the package's internal representation:

```yaml
swagger_to_dart:
  # Optional: URL for directly downloading OpenAPI specification
  url: https://example.com/api/swagger.json
  
  # Path to your OpenAPI specification file (default: 'schema/swagger.json')
  input_directory: schema/swagger.json
  
  # Directory where generated files will be placed (default: 'lib/src/gen')
  output_directory: lib/src/gen
  
  # Name for the main API client class (default: 'ApiClient')
  api_client_class_name: ApiClient
  
  # Additional imports to include in generated files (default: [])
  imports:
    - import 'package:dio/dio.dart';
    
  # Parameters to skip during generation (default: [])
  skipped_parameters:
    - Accept-Language
    - X-Language
    - X-Platform
```

### Configuration Fields Explained

- **url**: Optional URL to download the OpenAPI specification directly
- **input_directory**: Path to your local OpenAPI/Swagger JSON file (defaults to 'schema/swagger.json')
- **output_directory**: Where the generated Dart files will be placed (defaults to 'lib/src/gen')
- **api_client_class_name**: Name of the main API client class that will be generated (defaults to 'ApiClient')
- **imports**: Additional import statements to include in all generated files
- **skipped_parameters**: HTTP headers or parameters that should be excluded from code generation


### Example Usage

#### Basic Configuration

```yaml
swagger_to_dart:
  input_directory: schema/swagger.json
  output_directory: lib/src/gen
  api_client_class_name: ApiClient
```

#### Configuration with Remote Source

```yaml
swagger_to_dart:
  url: https://petstore3.swagger.io/api/v3/openapi.json
  output_directory: lib/src/gen
  api_client_class_name: PetStoreClient
  imports:
    - import 'package:dio/dio.dart';
    - import 'package:logger/logger.dart';
```

#### Configuration with Custom Import Statements

```yaml
swagger_to_dart:
  input_directory: schema/swagger.json
  output_directory: lib/src/gen
  imports:
    - import 'package:dio/dio.dart';
    - import 'package:my_app/src/utils/api_helpers.dart';
  skipped_parameters:
    - Authorization
    - X-Api-Key
```

### API Client Customization

```yaml
swagger_to_dart:
  input_directory: schema/swagger.json
  output_directory: lib/src/gen
  api_client_class_name: ApiClient
  client_options:
    base_url_param: true # Adds a baseUrl parameter to API clients
    add_dio_logging: true # Adds logging interceptor to the Dio instance
    generate_client_indices: true # Generates index files for clients
```

### Authentication Support

```yaml
swagger_to_dart:
  input_directory: schema/swagger.json
  output_directory: lib/src/gen
  auth_options:
    mechanisms:
      - bearer
      - basic
      - api_key
    generate_interceptors: true
```

## Remote Schema Support

You can use a remote OpenAPI schema URL directly in the configuration:

```yaml
swagger_to_dart:
  url: https://petstore3.swagger.io/api/v3/openapi.json
  output_directory: lib/src/gen
```

Or reference multiple schemas:

```yaml
swagger_to_dart:
  schemas:
    - name: pet_api
      input_directory: schema/pet_swagger.json
      output_directory: lib/src/gen/pet
    - name: user_api
      input_directory: schema/user_swagger.json
      output_directory: lib/src/gen/user
```

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

## License

This package is available under the MIT License.

## Acknowledgements

This package was inspired by and builds upon other great Dart packages including [freezed](https://pub.dev/packages/freezed), [retrofit](https://pub.dev/packages/retrofit), and [json_serializable](https://pub.dev/packages/json_serializable).