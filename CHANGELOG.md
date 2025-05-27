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
