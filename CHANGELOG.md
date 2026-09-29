## 5.0.0 - 2026-09-29

### Breaking changes

- Generated `oneOf`/`anyOf`-of-`$ref` unions are now plain `sealed` classes
  whose `fromJson`/`toJson` use the variant's own flat JSON, not freezed
  unions wrapped in `{"value": ...}` — regenerate, then replace
  `.when`/`.map`/`.copyWith` on union types with a `switch` over the variant
  subclasses (`AnimalDog`, `AnimalCat`, ...). (#49, #58)
- Component schemas that are a top-level `oneOf`/`anyOf` now generate as
  unions instead of the plain model they used to (incorrectly) produce —
  update code that treated them as a freezed data class with fields. (#58)
- `model.enum_fallback_type: unknown` now actually decodes an unmatched
  value to a new `unknown` member instead of throwing; the default changed
  from `unknown` to `throwException`, which is the behaviour you already got
  at runtime if you left this unset. If you set `unknown` explicitly, handle the new
  member instead of a thrown exception.
- Identifier escaping was rewritten: only names Dart truly rejects are
  escaped, with a `$` prefix (`external`, `get`, `set`, `required`, `late`,
  ... are legal and left alone; a hyphen now separates words, e.g.
  `some-header` -> `someHeader`). Regenerate and fix references to any old
  double-escaped names (e.g. `externalaa` -> `external`). (#28, #51)
- Binary/file properties generate as `dio`'s `MultipartFile` for every
  generation source (previously plain `String` outside FastAPI Flutter
  apps) — update code constructing these fields as strings. (#54)
- Two-letter words recase consistently (#63): fields 4.x generated as `iD`
  are `id` again — rename references after regenerating.
- Optional query/header/cookie parameters are nullable and no longer
  `required` (#50); existing call sites keep compiling, but the parameter
  types are now `T?`.
- Components that share a title (e.g. FastAPI's `X-Input`/`X-Output`) now
  generate one class each; the ones that lost the name are named after
  their schema key (`app__router__items_router__ItemResponse` ->
  `AppRouterItemsRouterItemResponse`) — update references to those models.
- Removed `api_client.use_class_for_multipart_form_data`: it never had an
  effect. Existing configs still parse (the key is ignored).
- Consuming projects need an SDK lower bound of at least Dart 3.8 —
  generated code now relies on `json_serializable` >=6.10 syntax (see
  Requirements in the README).

### Added

- `api_client.include_openapi_extras` (default `true`): set to `false` to
  stop embedding each operation's OpenAPI metadata as the `@Extras()`
  default. (#60)
- `allOf` composition: merges the properties and required lists of
  referenced and inline parts (recursively, cycle-safe); a single-item
  `allOf` (the usual way to attach `nullable`/a description to a `$ref`)
  unwraps to the referenced type instead of generating an empty model.
- OpenAPI 3.1 parsing: `type: [T, "null"]` type arrays, nullable enums (the
  `null` entry is dropped as a member), and component schemas that omit
  `type`.
- `additionalProperties` may be a schema: `Map<String, T>` is generated for
  typed values, and a schema-valued `additionalProperties` (e.g.
  Swashbuckle's `{}`) no longer crashes parsing.
- Typed binary responses for every generation source (previously ABP
  `text/plain` only): a response whose media type is `image/*`, `audio/*`,
  `video/*`, `application/octet-stream`, `application/pdf`, or whose schema
  is `format: binary`, generates `Future<HttpResponse<Uint8List>>` with
  `@DioResponseType(ResponseType.bytes)`; `text/*` responses generate
  `Future<HttpResponse<String>>`. (#54)
- Non-JSON request bodies (`text/*`, XML, binary) generate as
  `@Body() String` / `@Body() List<int>` with a matching `Content-Type`
  header instead of being silently dropped. (#56)
- The response used for a method's return type is now the lowest 2xx status
  (falling back to `default`) rather than whichever response came first in
  the spec; a JSON media type wins over `text/plain` when both are present.
- A spec fetched from `url` always refreshes the local copy at
  `input_directory`; if the fetch fails, generation falls back to the local
  copy with a loud console warning naming its age, instead of failing
  outright or generating from a silently stale file.
- Untitled inline enums are named from where they're used instead of
  crashing generation (`Pet.status` -> `PetStatus`, a query parameter `sort`
  of `listPets` -> `ListPetsSort`, a request body/response ->
  `<Method>Body`/`<Method>Response`). (#55, #61)

### Fixed

- Two-letter words recase consistently — `id` no longer becomes `iD` after
  the generator has seen `userID` elsewhere; `Recase` is now stateless
  instead of sharing mutable state across the whole run. (#63)
- Generic type substitution resolves by exact schema name/title instead of
  a reversed, substring-based lookup, so `BaseResponse<User>` and
  `BaseResponse<Order>` no longer both decode using the first
  instantiation's field type.
- Query/header/cookie parameters are only `required` when the spec says so
  (optional ones without a default are nullable); path parameters are
  always required. Generic models honour the schema's `required` list
  instead of making every field required. (#50, #52)
- The multipart wrapper extension forwards every path/header/query
  parameter to the underlying retrofit method — required ones used to fail
  to compile and optional ones were silently dropped. (#57)
- Duplicate `operationId`s within one client get numeric suffixes instead
  of generating duplicate, non-compiling methods.
- Every string literal emitted into generated code (paths, `@Query`/`@Path`/
  `@Header` names, enum `@JsonValue`, key constants, defaults, union/extras
  annotations) goes through one escaping helper, fixing invalid code from
  values containing `$`, quotes, backslashes or control characters.
  (#59, #60, #64)
- Two different inline models (enums, unions, query-parameter classes) that
  want the same class name get a numeric suffix instead of silently sharing
  one class, and never take a component schema's name; two component schemas
  mapping to one class name now print a warning.
- Inline integer enums parse correctly (values were cast to `String`) and
  keep their JSON type (`@JsonValue(1)`, `int toJson()`); enum defaults
  resolve through `model.enums` renames instead of the raw generated name.
- Content without a schema (e.g. `application/pdf: {}`) no longer crashes
  parsing.
- Components sharing a title no longer collapse into one class (the other
  references silently decoded the wrong model); enums whose title differs
  from their schema key compile (class and references used different
  names).
- A component `allOf` with a single `$ref` plus its own properties keeps
  the referenced properties (they were dropped).
- JSON request bodies declared as `application/json; charset=utf-8` or
  `application/*+json` stay typed (they became `String`).
- Spring's `*/*` responses are typed like JSON (were `dynamic`).
- An operation offering both JSON and multipart bodies generates one body
  (two `requestBody` parameters did not compile).
- Defaults that cannot be written as a literal of the field's type
  (`Uri`, `DateTime`, lists of enums, models) are omitted instead of
  producing uncompilable code; `Optional[Enum] = X` defaults resolve to
  `Enum.x`.
- `#RRGGBB` colors parse as opaque instead of transparent (FastAPI/Flutter
  `Color` converter).
- Nested objects always serialize through `explicitToJson: true` on every
  generated model.
- A file that fails to format is still written (for inspection) and the run
  exits non-zero listing every failing file, instead of silently succeeding
  with unformatted or missing output; generation errors are no longer
  swallowed by an unawaited `async` call.
- Missing config or spec files raise a clear `FileSystemException` naming
  the path, resolved against the project root instead of the process's
  working directory.
- Generated code is lint-clean under `--fatal-infos`: no `dynamic?`, no
  redundant `const` inside `@Default(...)` collections, unnamed libraries
  (`library;`, no file names leaking into library names), deduplicated
  imports/exports, and the `TimeOfDay`/`Color`/`MultipartFile` converters no
  longer force a `package:flutter` import in pure-Dart projects.

### Changed

- Pub workspace at the repo root (`resolution: workspace`); the generator is
  now developed and tested alongside an unpublished e2e compile-check
  package.
- Latest builders and lints: `build_runner ^2.16`, `freezed ^4.0`,
  `json_serializable ^6.14`, `lints ^6`; dropped the `analyzer 7.3.0` pin
  and the unused `logger` dependency.
- Dropped the generator's runtime dependency on `dio` and `retrofit` (only
  their type names were used); an OpenAPI `url` is now fetched with
  `dart:io`'s `HttpClient`.
- CI now runs format checks, `dart analyze --fatal-infos`, the full
  unit/golden/e2e test suite, and a `pana` job that keeps the pub.dev score
  at 160/160, on every push and pull request; publishing runs the same
  checks first.
- `dart run build_runner build` replaces `--delete-conflicting-outputs` in
  the README and Makefile — the flag no longer exists in build_runner 2.16.

## 4.3.0 - 2026-07-29

### Added

- Opt-in per-enum member renaming via the `model.enums` config in
  `swagger_to_dart.yaml`. Keyed by the enum's swagger schema name or its
  generated Dart class name; the inner map maps each raw enum value (as a
  string — works for both integer and string enums) to the desired Dart member
  name. Enums absent from the map are generated unchanged (e.g. `value0`).

  ```yaml
  model:
    enums:
      MyStatusEnum:
        0: created
        10: pgRegistered
  ```

- Override names are recased to camelCase and guarded like any other identifier
  (reserved words / leading digits / special characters are handled safely).
- Duplicate resulting member names now fail fast with a descriptive error, and
  configured values that don't exist on the enum emit a warning instead of
  being silently ignored.

## 4.2.3 - 2026-07

### Fixed

- Escape newlines and special characters in `extras` string literals.

## 4.2.2 - 2026-07

### Fixed

- Deduplicate the request body when multiple JSON content types are present.

## 4.2.1 - 2026-07

### Added

- Support `text/json` and `application/*+json` content types.

## 4.2.0 - 2026-01-28

### Added

- Added support for `text/plain` content type with `binary` format in ABP framework
- Added automatic `@DioResponseType(ResponseType.bytes)` annotation for binary responses in ABP
- Added `Uint8List` return type support for binary content responses

### Changed

- Refactored `_handleResponseType` method to return a record with type and binary response flag
- Enhanced response type detection to check for ABP-specific binary format patterns

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
