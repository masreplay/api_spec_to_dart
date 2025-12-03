## 4.1.0 - 2025-12-03

### Added

- Added OpenAPI metadata support in API client extra parameters, allowing default metadata to be included in generated client methods
- Enhanced query parameter handling with improved code organization and formatting

### Changed

- Refactored `_extraParameters` method to accept `openapiMetadata` parameter and use it for default extras values
- Improved code formatting and organization in `ApiClientGenerator` class
- Removed debug print statements from `AbpGenericParser` for cleaner code output
- Removed unused debug method from `GenericModelGeneratorStrategy`

### Fixed

- Fixed parameter ordering in `_extraParameters` method (moved `extras` parameter to end with default value)

## 4.0.0

- Add support to abp.io framework

## 3.8.0

- Update CHANGELOG.md

## 3.7.0

- Update CHANGELOG.md

## 3.6.0

- Add support to all content type

## 3.5.0

- Add support to `text/plain` content type

## 3.4.0

- Fix names ends with `?` prefix renamed to `Nullable` for file and class

## 3.3.0

- Allow nullable `schema` in method parameters

## 3.2.1

- Fix `Freezed` annotation with union freezed classes

## 3.2.0

- Add support `discriminator` in `anyOf` and `oneOf` and use `propertyName` for freezed `unionKey`

## 3.1.1

- Add support to `nullable` flag in `schema`

---

## 3.1.0

- Support `Color` from String `color` and `color-hex` format
- Fix nested primitives generic type `Parent<Bool>` -> `Parent<bool>`

## 3.0.0

- Support `int`, `String` enum's value
- Support multiple type of fallback in enum generation
- Upgrade `build_runner: ^2.5.2` version
- Fix default generation config

  ```yaml
  swagger_to_dart:
  url: http://localhost/openapi.json
  input_directory: schema/swagger.json
  output_directory: lib/src/gen

  model:
    support_generic_arguments: true
    union_class_fallback_name: fallback
    enum_fallback_type: first
  api_client:
    use_class_for_query_parameters: true
  ```

## 2.4.0

- Fix issue with `Multipart` and `FormUrlEncoded`
- Support `fromJson` in enum classes

## 2.3.0

- Pass `--config` flag to specify the configuration file
- Fix `base_client_api.dart` file when passing custom name `exports.dart` in the `export.dart` file
- Use custom `jsonConvertor` base on `generation_source` for example `generation_source: FastAPI` in `swagger_to_dart.yaml` file

## 2.2.0

- Fix Client name in `BaseApiClient` from `Cms` to `Cms`

## 2.1.5

- Add option to pass `fallback` union call

  ```yaml
  swagger_to_dart:
  # ...
  model:
    # String or null
    union_class_fallback_name: fallback
  ```

- Skip special character for fallback `FreezedUnionKey`

## 2.1.4

- Skip special character for string generation using `r''`

## 2.1.2

- Fix class name in generation of `oneOf` classes

## 2.1.1

- Support minimal sample generation
- Support non ascii generation

## 2.1.0

- Support generic `freezed` classes generation
- Support generic Response with `retrofit`

## 2.0.1

- Fix union key for `oneOf` type

## 2.0.0

- Use code_builder package to do type safe code generation

## 1.5.5

- Support success response with 201

## 1.5.4

- Update flutter version to 1.5.4

## 1.5.3

- fix fallbacks

## 1.5.2

- Add support to union params by @Shahad-999

## 1.5.1

- Fix union feezed class generation with `abstract` instead of `sealed`

## 1.5.0

- Fix union class name duplication

## 1.4.0

- Fix workflow

## 1.3.0

- Add `.vscode/settings.json` file to the dart example
- Add `analysis_options.yaml` file to the dart example
- Add `build.yaml` file to the dart example
- Add more FastAPI swagger Example

## 1.2.0

- Support MultipartFile in `@Part` annotation
- Support FastAPI `pydantic-extra-types` package
- Add Convertors

## 1.1.0

- Support flutter 3.29.2
- Added support for fetching OpenAPI specifications directly from URLs (JSON format only)
- Added support for automatically saving fetched specs locally
- Added support for custom configuration file path with `--config` option
- Improved error handling for OpenAPI schema parsing
- Removed YAML OpenAPI specification support to focus on JSON format

## 1.0.0

- Support flutter 3.29.0
- Support freezed 3.0.0

## 0.3.0

- Update flutter version to `3.29.0`

## 0.2.0

- If description key contains `deprecated` in the message it will be marked as deprecated by @masreplay
- support `deprecated()` for framework that doesn't support deprecated flag in the field for example FastAPI by @masreplay

## 0.1.8

- Add field name from the api like 'per_page' to 'perPageKey = 'per_page';' by @shahad999'

## 0.1.6

- `MultipartFile` support instead of `File` in `part` by @shahad999

## 0.1.5

- union class fields

## 0.1.4

- add support to `list` of type `oneOf` by @shahad999

## 0.1.3

- Fix List type

## 0.1.2

- Support one of as direct request body

## 0.1.1

- Fix query name in `@Query` annotation by @shahad999

## 0.1.0

- Add support to `color-hex` `format` in `string` type

## 0.0.9

- Include metadata in `ApiClient` generated class

## 0.0.8

- Fix read the `JsonKey.name` from swagger `key` instead of the `title`

## 0.0.7

- Add `@deprecated` annotation
- Fix `@JsonKey(name: '')` name, was changing the name to snake_case

## 0.0.6

- Fix bugs

## 0.0.5

- Fix multi part as class

## 0.0.4

- Fix multi line description

## 0.0.3

- Add description and documentation to the generation

## 0.0.2

- Add main.dart to the example

## 0.0.1

- Initial version
