# swagger_to_dart 6.0.0 + postman_collection 1.0.0 Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Every official Postman collection format, Swagger 2.0, JSON Schema documents and YAML specs convert automatically into OpenAPI and generate typed Dart models and Retrofit clients. The generator gains the JSON Schema features this needs.

**Architecture:** `loadSpec` turns any input into an OpenAPI 3.x map in front of the unchanged `OpenApi.fromJson` → generator pipeline. All Postman logic lives in `package:postman_collection`:
- normalizing v1, v2.0, v2.1 and v3 to v2.1,
- converting to OpenAPI 3.1/3.2,
- inferring JSON schemas,
- the typed models, which swagger_to_dart generates from Postman's official JSON Schema.

**Tech Stack:**
- Dart 3.13.3 / Flutter 3.47.4 (fvm), pub workspace.
- code_builder, dart_style, freezed 4, json_serializable 6.14, retrofit_generator 10.
- `package:yaml`; `package:json_schema` 5.2.2 (dev, for official-schema validation).
- package:test, GitHub Actions, pana.

**Spec:** `docs/superpowers/specs/2026-10-03-any-spec-to-dart-v6-design.md`. Read it first: the mapping table and the G1–G8 table are the contract.

## Global Constraints

- **SDK floor:** `sdk: ^3.9.0` in every package. Develop on Dart 3.13.3. Outside the repo root, or in a worktree, call `/Users/mas/fvm/versions/3.47.4/bin/cache/dart-sdk/bin/dart` directly; `fvm` hangs on toolchain installs.
- **Resolving:** `dart pub get --no-example` at the repo (or worktree) root.
- **swagger_to_dart runtime deps:** existing ones plus `postman_collection: ^1.0.0` only, added in Task 6. No dio or retrofit.
- **postman_collection runtime deps:** `freezed_annotation ^3.1.0`, `json_annotation ^4.12.0`, `yaml ^3.1.3`. No dio, retrofit or swagger_to_dart. Only `lib/io.dart` imports `dart:io`.
- **Generated strings:** every string emitted into generated Dart goes through `dartString()` (`packages/swagger_to_dart/lib/src/code/string.dart`).
- **Generated code quality:** it must pass `dart analyze --fatal-infos` with `package:lints/recommended.yaml` + `prefer_single_quotes`. The e2e test enforces this.
- **No secrets:** never copy auth secret values (passwords, tokens, client secrets, API key values, certificate passphrases) into OpenAPI output.
- **Official schemas:** they live unmodified under `schemas/`. Tests may only strip `dependentSchemas` at load time.
- **Goldens:** refresh with `UPDATE_GOLDENS=1 … dart test -t golden` (swagger_to_dart) or `UPDATE_GOLDENS=1 … dart test` (postman_collection). Then read every changed golden; never refresh to silence an unexplained diff.
- **Done means:** `dart test` (including e2e) and `dart analyze --fatal-infos` pass in each touched package, and `dart format` leaves the hand-written files you touched unchanged.
- **No releases outside Task 9:** never push to `main`, tag or publish before Task 9. Work on your task branch and commit there.

## Review Focus

1. **Real exports that break the official schema** must convert with warnings, never throw. Examples: `jwt` or `asap` auth, header `value: null`, `header` given as a string, `url` given as a string, `description` given as an object, items without `request`, empty folders. Test: Task 3, fixture `lenient_inputs`.
2. **Non-ASCII names** (Arabic folder and request names, emoji) must still give valid, unique Dart identifiers for clients and methods. Tests: Task 3 (`operationId`/tag output) and Task 6 (fixture `postman_non_ascii` compiles).
3. **JSON bodies with comments, bare `{{var}}`, `{{$dynamic}}` and trailing junk** must parse, and the inferred types must follow substituted values. Test: Task 3, fixture `bodies`.
4. **Saved examples that disagree with each other** (string vs number, null, missing keys) must all decode with the generated model. Test: Task 6, auto round-trip over fixture `postman_conflicting_examples`.
5. **Generated names that collide** with components, `dart:core` types (`Response`, `Error`, `List`), same-named folders under different parents, or same-named requests must still compile. Tests: Task 2 (`inline_objects` collision cases) and Task 6 (`postman_name_collisions`).

---

## Phase 0 — Setup (orchestrator)

### Task 1: Vendor official schemas + validation helpers

**Files:**
- Create: `schemas/README.md`.
- Create the Postman schemas: `schemas/postman/v1.0.0/collection.json`, `schemas/postman/v2.0.0/collection.json`, `schemas/postman/v2.1.0/collection.json`.
- Create the OpenAPI schemas: `schemas/openapi/2.0/schema.json`, `schemas/openapi/3.0/schema.json`, `schemas/openapi/3.1/schema.json`, `schemas/openapi/3.2/schema.json`.
- Commit spec + plan.

**Interfaces:**
- Produces stable paths, which tests resolve relative to the repo root (`../../schemas/...` from a package directory).

- [x] **Step 1:** Copy the downloaded files byte-for-byte:
  - Postman: `https://schema.postman.com/collection/json/v{1.0.0,2.0.0,2.1.0}/draft-07/collection.json`.
  - OpenAPI: `https://spec.openapis.org/oas/{2.0/schema/2017-08-27, 3.0/schema/2024-10-18, 3.1/schema/2026-08-03, 3.2/schema/2026-08-30}`.
- [x] **Step 2:** `schemas/README.md` lists each file, its source URL and the retrieval date (2026-10-02). It also notes the v3 YAML format reference (no JSON Schema is published).
- [x] **Step 3:** Commit.

---

## Phase A — three parallel tracks (separate worktrees)

### Task 2: Generator core — typedef components, inline object models, mixed unions, class prefix (G3, G1, G2, G8)

**Files:**
- Modify: `packages/swagger_to_dart/lib/src/generator/model/model_generator.dart` (routing).
- Modify: `…/model/strategy/open_api_schema_dart_type_converter.dart` (inline objects and mixed unions in `getType`/`getOneOf`/`getAnyOf`).
- Modify: `…/model/strategy/union_model_strategy.dart` (non-ref variants, kind dispatch, `const` discriminator).
- Modify: `…/model/strategy/regular_model_generator_strategy.dart` (pass contexts to properties).
- Modify: `…/model/strategy/property_generator_strategy.dart`.
- Modify: `lib/src/config/swagger_to_dart_yaml.dart` (+ regenerated `.freezed.dart`/`.g.dart`).
- Modify: `lib/src/config/generation_context.dart` (prefix in naming).
- Create: `…/model/strategy/typedef_model_strategy.dart`.
- Fixtures (new): `test/fixtures/typedef_components/`, `inline_objects/`, `mixed_unions/`, `class_prefix/`, each with `openapi.json`, `golden/`, `roundtrip_test.dart.tmpl`.
- Tests: `test/generator/inline_objects_test.dart`, `test/generator/mixed_unions_test.dart`, `test/generator/typedef_components_test.dart`, `test/config/class_prefix_test.dart`.

**Interfaces:**
- Consumes: nothing new.
- Produces (used by Task 5):
  - `model.class_prefix` (YAML) / `ModelConfig.classPrefix` (`String?`). It prefixes every model class: components, inline objects, enums and unions. File names follow the class name (`PostmanItem` → `postman_item.dart`).
  - Inline naming follows the spec's G1 contexts.
  - Mixed unions expose `factory X.fromJson(Object? json)` and `Object? toJson()`. Object-only unions keep `fromJson(Map<String, dynamic>)` and `Map<String, dynamic> toJson()`.

**Order inside the task (TDD each):**

- [ ] **Step 1 (G3), red:** a component that is not an object becomes a typedef.

```dart
test('array, primitive, map and alias components become typedefs', () {
  final files = renderSpec({
    'openapi': '3.1.0',
    'info': {'title': 't', 'version': '1'},
    'paths': {},
    'components': {
      'schemas': {
        'Pet': {'type': 'object', 'properties': {'name': {'type': 'string'}}},
        'Pets': {'type': 'array', 'items': {r'$ref': '#/components/schemas/Pet'}},
        'Tags': {'type': 'object', 'additionalProperties': {'type': 'string'}},
        'PetId': {'type': 'string', 'format': 'uuid'},
        'Animal': {r'$ref': '#/components/schemas/Pet'},
        'Owner': {
          'type': 'object',
          'properties': {'pets': {r'$ref': '#/components/schemas/Pets'}},
        },
      },
    },
  }).files;
  expect(files['models/pets.dart'], contains('typedef Pets = List<Pet>;'));
  expect(files['models/tags.dart'], contains('typedef Tags = Map<String, String>;'));
  expect(files['models/pet_id.dart'], contains('typedef PetId = String;'));
  expect(files['models/animal.dart'], contains('typedef Animal = Pet;'));
  expect(files['models/owner.dart'], contains('Pets? pets'));
});
```

  Green: in `ModelGenerator.build`, route any component that has no `properties`, no `enum`, no union and no `allOf`, and has a non-object `type` (or is a bare `$ref`), to `TypedefModelStrategy`. That strategy emits `typedef $className = ${typeConverter.get(schemaAsOpenApiSchema)};` with the `exports.dart` import.
  - `type: object` with only `additionalProperties` becomes a map typedef.
  - `type: object` with neither stays a regular class (free-form), as today.
  - `getRef` keeps returning the component class name.

  The fixture `typedef_components` gets a round-trip: decode an `Owner` with `pets` and compare `toJson()`.

- [ ] **Step 2 (G1), red:** inline objects get models named by context.

```dart
test('inline objects become models named by context', () {
  final files = renderSpec({
    'openapi': '3.1.0',
    'info': {'title': 't', 'version': '1'},
    'paths': {
      '/users/{id}': {
        'get': {
          'operationId': 'getUser',
          'parameters': [
            {'name': 'id', 'in': 'path', 'required': true, 'schema': {'type': 'string'}},
          ],
          'responses': {
            '200': {
              'description': 'ok',
              'content': {
                'application/json': {
                  'schema': {
                    'type': 'object',
                    'properties': {
                      'name': {'type': 'string'},
                      'address': {
                        'type': 'object',
                        'properties': {'city': {'type': 'string'}},
                      },
                      'roles': {
                        'type': 'array',
                        'items': {
                          'type': 'object',
                          'properties': {'id': {'type': 'integer'}},
                        },
                      },
                    },
                  },
                },
              },
            },
          },
        },
      },
    },
  }).files;
  expect(files['models/get_user_response.dart'], contains('abstract class GetUserResponse'));
  expect(files['models/get_user_response.dart'], contains('GetUserResponseAddress? address'));
  expect(files['models/get_user_response.dart'], contains('List<GetUserResponseRolesItem>? roles'));
  expect(files['models/get_user_response_address.dart'], contains('String? city'));
  expect(files['api_client/default_client.dart'], contains('HttpResponse<GetUserResponse>'));
});
```

  Green:
  - In `getType` for `OpenApiSchemaType` with `type: object` (or no type) and non-empty `properties`: `context.registerInlineModel(name, (n) => RegularModelGeneratorStrategy(context).build(MapEntry(n, OpenApiSchemas(...))))`.
  - `name` is the schema `title` when present and not equal to a component class name (`context.componentClassNames.values`); otherwise `Renaming.instance.renameClass(contextName)`.
  - Without a `contextName`, throw an `ArgumentError` that names the location. Every caller must pass one:
    - property: `'${className}_$propertyKey'`;
    - array items: `'${contextName}_item'`;
    - map values: `'${contextName}_value'`;
    - request body: `'${methodName}_body'` (exists);
    - response: `'${methodName}_response'` (exists);
    - parameter: `'${methodName}_${param}'` (exists);
    - union variant: `'${unionClass}_${case}_value'`.

  Free-form objects (no properties) stay `Map<String, dynamic>`. `required`, `nullable`, `default` and nested enums work as for components. Fixture `inline_objects` adds collision cases:
  - an inline title equal to a component name;
  - two operations whose responses would both be named `GetUserResponse` (suffix `2`);
  - an inline object property named `response` inside `Error`.

  Its round-trip decodes a nested payload.

- [ ] **Step 3 (G2), red:** a mixed `oneOf` becomes a sealed union that dispatches on JSON kind.

```dart
test('oneOf of string and object is a sealed union with kind dispatch', () {
  final files = renderSpec({
    'openapi': '3.1.0',
    'info': {'title': 't', 'version': '1'},
    'paths': {},
    'components': {
      'schemas': {
        'Url': {
          'oneOf': [
            {'type': 'string'},
            {'type': 'object', 'properties': {'raw': {'type': 'string'}, 'host': {'oneOf': [{'type': 'string'}, {'type': 'array', 'items': {'type': 'string'}}]}}},
          ],
        },
      },
    },
  }).files;
  final url = files['models/url.dart']!;
  expect(url, contains('sealed class Url'));
  expect(url, contains('factory Url.fromJson(Object? json)'));
  expect(url, contains('String() => UrlString('));
  expect(url, contains('Map<String, dynamic>() => UrlObject(UrlObjectValue.fromJson(json))'));
  expect(files['models/url_object_value_host.dart'], contains('sealed class UrlObjectValueHost'));
});
```

  Green: in `UnionModelStrategy`, generalize `UnionVariant` to `({String caseName, String? tag, OpenApiSchema schema})`.
  - Partition the variants by JSON kind: `string`, `integer`, `number`, `boolean`, `list`, `object` (inline object or `$ref` to an object component).
  - Merge `integer` into `number` when both are present. Keep the first variant when several `list` or primitive variants share a kind (`// ponytail:` comment naming the ceiling).
  - `fromJson(Object? json)` emits `switch (json) { String() => …, int() => …, num() => …, bool() => …, List() => …, Map<String, dynamic>() => <existing discriminator / key-based selection among object variants>, _ => <fallback or throw> }`.
  - Wrapper classes are `${Union}${Pascal(case)}`. Inline object variants are named via G1 with context `'${union}_${case}_value'`.
  - `toJson()` returns `Object?`: primitives and lists as is (lists of models mapped through `toJson`), objects via `value.toJson()`.
  - **`const` discriminator:** when there is no `discriminator` and every object variant has a property with a single `const` (or a one-value `enum`) under the same property name, with distinct values, treat it as `discriminator: {propertyName}`, with those values as tags.
  - The same routing applies to `type: [a, b, …]` arrays with two or more non-null kinds, at least one of them `array` or `object`. `normalizeSchemaJson` currently drops the type for several kinds; rewrite those into `oneOf` instead.
  - Primitive-only mixes stay `dynamic`.

  Fixture `mixed_unions` covers:
  - component and inline unions;
  - `ref | string`;
  - `array | string`;
  - a `const`-discriminated `anyOf`;
  - a nullable union;
  - a union inside a list;
  - a type array.

  Its round-trip decodes each kind and re-encodes it equal.

- [ ] **Step 4 (G8), red:** `model: {class_prefix: Postman}` turns `Item` into class `PostmanItem` in `models/postman_item.dart`, and references use `PostmanItem`.
  - Green: apply the prefix in `_nameComponents`, at every inline name before `registerInlineModel`, and in `getRef` fallbacks.
  - Add `@JsonKey(name: 'class_prefix') String? classPrefix` to `ModelConfig`, then regenerate with build_runner.
- [ ] **Step 5:** Refresh goldens of existing fixtures and review each diff. Expected:
  - `allof_and_31` and `references`: inline objects become classes.
  - `unions`: unchanged, or exactly the new kind-dispatch shape where non-ref variants exist.
  - Explain every other change in the commit message.
- [ ] **Step 6:** `dart test` (with e2e) + `dart analyze --fatal-infos` + `dart format` clean, then commit per G-item: `feat(generator): …`.

### Task 3: postman_collection converter — normalize, infer, convert (pure Dart)

**Files (all under `packages/postman_collection/`):**
- Create:
  - `lib/src/convert/normalize.dart`: version detection, envelope unwrap, v1 → v2.1, v2.0 → v2.1.
  - `lib/src/convert/v3.dart`: v3 files map → v2.1.
  - `lib/src/convert/json_lenient.dart`: comment stripping, `{{var}}` substitution, tolerant parse.
  - `lib/src/convert/variables.dart`: collection variable resolution and the dynamic-variable sample table.
  - `lib/src/convert/infer_schema.dart`.
  - `lib/src/convert/url.dart`: string/object URL → origin, path template, path params, query.
  - `lib/src/convert/auth.dart`: Postman auth → security schemes and requirements, with no secrets.
  - `lib/src/convert/body.dart`: request bodies.
  - `lib/src/convert/to_open_api.dart`: operations, merging, responses, tags, servers, version choice.
  - `lib/convert.dart`: library exporting the above public API.
  - `lib/io.dart`.
- Modify:
  - `lib/postman_collection.dart`: also export `convert.dart`. Leave the old models untouched; Task 5 replaces them.
  - `pubspec.yaml`: add `yaml: ^3.1.3`, dev `json_schema: ^5.2.2`.
- Tests:
  - `test/convert/normalize_test.dart`, `v3_test.dart`, `json_lenient_test.dart`, `infer_schema_test.dart`, `url_test.dart`, `auth_test.dart`, `body_test.dart`, `to_open_api_test.dart`.
  - `test/convert/golden_test.dart`: every fixture → `openapi.json.golden`; validates input against the official Postman schema of its version and output against the official OAS 3.1 or 3.2 schema.
  - `test/convert/coverage_test.dart`.
  - `test/support/official_schema.dart`: loads `../../schemas/...` and strips `dependentSchemas`.
- Fixtures: `test/fixtures/<name>/collection.json` (or `collection/` for v3) + `openapi.json.golden`:
  - `basics`, `bodies`, `responses`, `auth`, `variables`, `merge`, `methods`, `multi_host`, `webhooks`, `lenient_inputs`, `non_ascii`;
  - `v1_legacy`, `v2_0_auth`, `v3_directory`;
  - `real_world_test1`, `real_world_test2` (copies of `test/assets/test{1,2}.postman_collection.json`).

**Interfaces (Produces, exact):**

```dart
// lib/convert.dart
/// Whether [json] is a Postman collection (v1, v2.0, v2.1, or the Postman API
/// `{collection: {...}}` envelope).
bool isPostmanCollection(Object? json);

/// [json] as a v2.1 collection map (envelope unwrapped, v1/v2.0 upgraded).
Map<String, Object?> normalizePostmanCollection(Object? json);

/// A v3 collection (paths relative to the collection root → YAML text) as a
/// v2.1 collection map.
Map<String, Object?> postmanCollectionFromV3Files(
  Map<String, String> files, {
  String? name,
  void Function(String message)? onWarning,
});

/// OpenAPI 3.1.1 (3.2.0 when a request uses QUERY or a non-3.1 method) for a
/// collection in any JSON version.
Map<String, Object?> postmanToOpenApi(
  Object? collection, {
  void Function(String message)? onWarning,
});

/// JSON Schema (2020-12) describing every sample.
Map<String, Object?> inferJsonSchema(Iterable<Object?> samples);

// lib/io.dart
/// Reads a v3 collection directory (`*.request.yaml`, `.resources/…`).
Map<String, Object?> readPostmanCollectionDirectory(
  String path, {
  void Function(String message)? onWarning,
});
```

**Steps (TDD, one mapping row at a time; each row of the spec's mapping table gets at least one unit test):**

- [ ] **Step 1:** `infer_schema_test.dart`, red then green. It covers every rule in the spec's "Schema inference" section:

```dart
test('object samples: union of keys, nothing required, nulls widen', () {
  expect(
    inferJsonSchema([
      {'id': 1, 'name': 'a', 'tags': []},
      {'id': 2.5, 'name': null, 'extra': true},
    ]),
    {
      'type': 'object',
      'properties': {
        'id': {'type': 'number'},
        'name': {'type': ['string', 'null']},
        'tags': {'type': 'array', 'items': {}},
        'extra': {'type': 'boolean'},
      },
    },
  );
});
test('date-time only when every sample is an ISO timestamp', () {
  expect(inferJsonSchema(['2024-01-01T10:00:00Z']), {'type': 'string', 'format': 'date-time'});
  expect(inferJsonSchema(['2024-01-01']), {'type': 'string'});
});
test('different kinds become oneOf', () {
  expect(inferJsonSchema(['a', {'x': 1}]), {
    'oneOf': [
      {'type': 'string'},
      {'type': 'object', 'properties': {'x': {'type': 'integer'}}},
    ],
  });
});
test('id-like keys become a map', () {
  expect(inferJsonSchema([{'1': {'a': 1}, '2': {'a': 2}}]), {
    'type': 'object',
    'additionalProperties': {'type': 'object', 'properties': {'a': {'type': 'integer'}}},
  });
});
```

- [ ] **Step 2:** `json_lenient_test.dart`. Cover:
  - `{"id": {{id}}, // c\n "n": "{{name}}" /* x */}` with `{id: 5}` resolved gives `{'id': 5, 'n': '{{name}}'}`.
  - Unresolved bare `{{x}}` becomes `null`.
  - `{{$randomInt}}` becomes an int sample.
  - `{{$guid}}` inside quotes stays a string and its sample is UUID-shaped.
  - Invalid JSON returns `null` (the caller falls back to `{}`).
- [ ] **Step 3:** `url_test.dart`. Cover:
  - String URL `{{baseUrl}}/users/:id?x=1#h`: origin `{{baseUrl}}`, path `/users/{id}`, path params `[id]`, query `x`.
  - Object URL with `host` and `path` arrays, `{{id}}` segments, `{type, value}` segments and a trailing `''` (trailing slash kept).
  - Duplicate `:id` gives `id2`.
  - Empty path gives `/`.
  - `protocol` + `port`.
- [ ] **Step 4:** `auth_test.dart`. Cover each type in the spec row (basic, bearer, digest, jwt, apikey header and query, oauth2 with authorization_code / client_credentials / password_credentials / implicit and scopes, oauth1, hawk, awsv4, ntlm, edgegrid, an unknown type) and inheritance (collection → folder → request, `noauth` → `security: []`). One test asserts that no attribute value (`password`, `token`, `clientSecret`, `value` of apikey, …) appears anywhere in `jsonEncode(output)`.
- [ ] **Step 5:** `body_test.dart`. Cover:
  - raw json, raw json with a `Content-Type: application/vnd.api+json` header, xml, text, html, javascript;
  - urlencoded;
  - formdata with text and file parts, `src` arrays and `contentType` encoding;
  - file;
  - graphql with `variables` given as a string;
  - disabled and null bodies.
- [ ] **Step 6:** `normalize_test.dart`. Cover:
  - detection of v1, v2.0, v2.1 and the envelope;
  - v2.0 auth objects becoming attribute arrays;
  - v1 `requests`/`folders`/`order`/`folders_order`, `dataMode` params/urlencoded/raw/binary/graphql, `headers` strings, `pathVariables` and `responses` (`responseCode`, `headers`, `text`).

  Follow the official v1 schema (`schemas/postman/v1.0.0/collection.json`) field by field.
- [ ] **Step 7:** `v3_test.dart`, from a files map built in the test (the worked example of the official skill, plus examples, a `graphql-request`, a `grpc-request` that warns, nested folders with `order`, and a `definition.yaml` with variables and auth).
- [ ] **Step 8:** `to_open_api_test.dart`. Cover:
  - servers: most frequent origin, `{baseUrl}` variable defaults, per-operation `servers`;
  - operationId uniqueness and the non-ASCII fallback;
  - tags from the folder path with descriptions;
  - query and header parameter rules (excluded headers, `Cookie` → `in: cookie`, repeated keys → arrays);
  - same method + path merging and `originalRequest` samples;
  - responses: code from `status` text, media types, merging, `examples`, headers, `default`;
  - methods: `QUERY` → 3.2 `query`; `PURGE` → 3.2 `additionalOperations`;
  - a `Webhooks` folder → `webhooks`.
- [ ] **Step 9:** Golden fixtures + `golden_test.dart`, validating against the official schemas (helper below). Every fixture input validates against its version's official Postman schema, except `lenient_inputs` (deliberately invalid) and `v3_directory`. Every output validates against OAS 3.1 or 3.2 by its `openapi` field.

```dart
// test/support/official_schema.dart
import 'dart:convert';
import 'dart:io';
import 'package:json_schema/json_schema.dart';

/// An official schema from the repo's `schemas/` directory. `json_schema`
/// 5.2.2 cannot compile `dependentSchemas` (only checks parameter
/// style/explode combinations), so it is stripped.
JsonSchema officialSchema(String relativePath) {
  Object? strip(Object? node) => switch (node) {
    Map() => {
      for (final MapEntry(:key, :value) in node.entries)
        if (key != 'dependentSchemas') key as String: strip(value),
    },
    List() => [for (final e in node) strip(e)],
    _ => node,
  };
  final file = File('../../schemas/$relativePath');
  return JsonSchema.create(strip(jsonDecode(file.readAsStringSync())));
}

void expectValid(JsonSchema schema, Object? json) {
  final result = schema.validate(json);
  if (!result.isValid) {
    throw StateError(result.errors.take(10).map((e) => '${e.instancePath}: ${e.message}').join('\n'));
  }
}
```

- [ ] **Step 10:** `coverage_test.dart`.
  - Walk `schemas/postman/v2.1.0/collection.json`, following `$ref`, `oneOf`, `anyOf`, `items` and `properties`, and collect every property path as dotted names (`request.body.formdata.src`, `item.event`, …; cycles cut at the first repeat).
  - Assert that the set equals the keys of a `const coverage = <String, String>{…}` table in the test. Each value is `'mapped: <where>'` or `'dropped: <reason>'`, and the dropped reasons match the spec's last mapping row.
- [ ] **Step 11:** `lib/io.dart` + test with a temp directory.
- [ ] **Step 12:** `dart test`, `dart analyze --fatal-infos`, `dart format`. Commit in logical slices (`feat(postman): infer schemas`, …).

### Task 4: swagger_to_dart inputs + client fixes (loadSpec, YAML, Swagger 2.0, JSON Schema, G4–G7)

**Files:**
- Create:
  - `packages/swagger_to_dart/lib/src/input/load_spec.dart`: read a file, directory or URL; decode JSON or YAML.
  - `…/input/spec_format.dart`: detection and dispatch to converters.
  - `…/input/swagger2.dart`.
  - `…/input/json_schema.dart`.
- Modify:
  - `lib/src/config/generation_context.dart`: `GenerationContextBuilder._loadOpenApi` uses `loadSpec`.
  - `lib/swagger_to_dart.dart`: export `loadSpec`, `toOpenApiJson`.
  - `lib/src/generator/swagger_to_dart_code_generator.dart` + `…/model/json_serialization_convertor_generator.dart` (G4).
  - `lib/src/generator/api_client/api_client_generator.dart` (G5, G6, G7).
  - `lib/src/schema/openapi/v3/open_api.dart` + `open_api_paths.dart` (G6: parse `query`, `additionalOperations`, drop `pat`; G7: `servers` on path items and operations; regenerate freezed).
  - `test/support/fixtures.dart`: inputs go through `toOpenApiJson`.
- Fixtures (new): `yaml_input/openapi.yaml`, `swagger2_petstore/swagger.json` (the official Swagger 2.0 petstore), `swagger2_edge_cases/swagger.json`, `json_schema_input/schema.json`, `models_only/openapi.json`, `http_methods/openapi.json` (3.2), `operation_servers/openapi.json`, `tag_grouping/openapi.json`.
- Tests: `test/input/load_spec_test.dart`, `spec_format_test.dart`, `swagger2_test.dart` (each converted document validates against `schemas/openapi/3.0/schema.json`; input fixtures validate against `schemas/openapi/2.0/schema.json`), `json_schema_test.dart`, plus generator tests for G4–G7. Add the `json_schema: ^5.2.2` dev dependency and copy `official_schema.dart` into `test/support/`.

**Interfaces (Produces, exact):**

```dart
/// Reads [path] (a JSON or YAML file, or a directory = Postman v3) or fetches
/// [url], and returns the decoded document.
Future<Object?> loadSpec({String? url, required String path});

/// The local-file half of [loadSpec], synchronous (used by test fixtures).
Object? readSpecSync(String path);

/// The OpenAPI 3.x JSON for any supported document. [sourceName] (file name
/// without extension) names a JSON Schema root without a title.
Map<String, dynamic> toOpenApiJson(Object? document, {String? sourceName});

enum SpecFormat { openApi3, swagger2, jsonSchema, postman, unknown }
SpecFormat detectSpecFormat(Object? document);
```

`toOpenApiJson` throws `UnsupportedError('Postman input is wired in Task 6')` for `SpecFormat.postman` until Task 6 replaces it. Detection works on a raw map:
- `openapi` starting with `3.` → `openApi3`;
- `swagger: '2.0'` → `swagger2`;
- `info.schema` containing `postman` (`getpostman.com` or `postman.com`), or a `collection` envelope, or v1 `requests` + `order` → `postman`;
- `definitions` or `$defs` with no `openapi`/`swagger`, or a `$schema` key → `jsonSchema`.

A directory in `loadSpec` returns a marker map `{'x-postman-v3-directory': path}`, which Task 6 handles.

**Steps:**

- [ ] **Step 1:** `load_spec_test.dart`: JSON file, YAML file (with anchors, plain maps out, not `YamlMap`), URL serving YAML (a local `HttpServer`), URL failure falling back to the cached file (existing behavior kept). Red, then green by moving the read and fetch code from the builder into `load_spec.dart`. Keep the loud fallback warning.
- [ ] **Step 2:** `spec_format_test.dart`: detection table above. Red → green.
- [ ] **Step 3:** `json_schema_test.dart`:
  - `definitions` (draft-07) and `$defs` (2020-12) become `components.schemas`.
  - The root becomes a component named by `title`, else `sourceName` (`collection` → `Collection`).
  - `$ref` rewriting for `#/definitions/x`, `#/$defs/x` and `#`.
  - Definition-level `title`s are removed; nested titles are kept.
  - `$id`, `$schema` and the draft-04 `id` keyword (string-valued only; a *property* named `id` stays) are removed.

  Fixture `json_schema_input` + goldens. A unit test also renders `schemas/postman/v2.1.0/collection.json` with `renderSpec(toOpenApiJson(...))` and asserts zero format errors. The goldens of that one live in Task 6's `json_schema_postman` fixture.
- [ ] **Step 4:** `swagger2_test.dart`. Follow the spec's Swagger 2.0 row:
  - `definitions` and refs;
  - `parameters` and `responses` components;
  - `in: body` → requestBody with `consumes`;
  - `in: formData` → multipart or urlencoded, with `type: file` → binary;
  - `collectionFormat` → `style`/`explode` (csv → form/false, multi → form/true, ssv, tsv, pipes);
  - responses with `produces`, `schema` and `headers`;
  - `host` + `basePath` + `schemes` → servers;
  - `securityDefinitions` (basic, apiKey, oauth2 flows incl. `accessCode` → authorizationCode, `application` → clientCredentials);
  - `x-nullable` → `nullable`;
  - `allOf` / `discriminator` (2.0 string) → 3.0 discriminator object;
  - global `consumes`/`produces` defaults.

  Every output validates against the official 3.0 schema. Fixtures `swagger2_petstore` (the official example, verbatim) and `swagger2_edge_cases` get goldens and are compiled by e2e.
- [ ] **Step 5 (G4):**
  - Red: fixture `models_only` (no `paths`) renders no `api_client/` file, and `gen.dart` exports only models.
  - A spec without `format: binary` gives a `models/exports.dart` without `package:dio/dio.dart` and a `json_converter.dart` without `MultipartFileJsonConverter`.
  - Existing binary fixtures keep both.
  - Green, then refresh goldens.
- [ ] **Step 6 (G5):** red with `tag_grouping`, where GET `/users` is tagged `Users` and DELETE `/users` is tagged `Admin`. `UsersClient` has only `get…` and `AdminClient` only `delete…`. Green: group `(path, method, operation)` per tag.
- [ ] **Step 7 (G6):** red with `http_methods` (`openapi: 3.2.0`): `trace` and `query` operations plus `additionalOperations: {PURGE: …, LINK: …}`. Expect `@Method('TRACE', '/x')`, `@Method('QUERY', '/x')` and `@Method('PURGE', '/x')`; standard methods keep `@GET` etc.
  - Green: `OpenApiPathMethodEnum` gains `query` and loses `pat`.
  - `resolveOperations` maps `additionalOperations` entries to a separate map. Model it as `Map<String, OpenApiPathMethod>? additionalOperations` on a path-item record, or normalize them into `x-additional-operations`; pick the smaller diff and document it.
  - Retrofit's `Method` annotation is `Method(String method, String path)`.
- [ ] **Step 8 (G7):** red with `operation_servers`: an operation-level `servers: [{url: 'https://auth.example.com'}]` gives `@POST('https://auth.example.com/token')`. A path-level `servers` applies to all its operations; the operation level wins.
- [ ] **Step 9:** Fixture harness. `Fixture.spec` uses `toOpenApiJson(loadSpec-equivalent sync read)`, with the input file being the first that exists of `openapi.json`, `openapi.yaml`, `swagger.json`, `schema.json`, `collection.json`. Update `CONTRIBUTING.md` (fixture table).
- [ ] **Step 10:** `dart test` (with e2e), `analyze`, `format`. Commit per item.

---

## Phase B — integration (after Tasks 2, 3 and 4 are merged into `feat/v6-postman`)

### Task 5: postman_collection 1.0.0 — typed models generated from the official schema

**Files:**
- Create:
  - `packages/postman_collection/swagger_to_dart.yaml`: `input_directory: ../../schemas/postman/v2.1.0/collection.json`, `output_directory: lib/src/models`, `model: {class_prefix: Postman, enum_fallback_type: unknown}`.
  - `packages/postman_collection/Makefile`: `models` target that runs `dart run ../swagger_to_dart/bin/swagger_to_dart.dart`, then `dart run build_runner build`.
  - `test/models/round_trip_test.dart` + `test/support/schema_projection.dart`.
- Delete: `lib/src/postman_collection_base.dart` (+ parts), `lib/src/client/`, `lib/src/doc/`, `lib/src/format/`, `test/postman_test.dart`, and `test/assets/*.temp.postman_collection.json`.
- Modify:
  - `lib/postman_collection.dart`: export the models (`src/models/models.dart`) and `convert.dart`.
  - `pubspec.yaml`: version `1.0.0`; description; `repository: https://github.com/masreplay/api_spec_to_dart/tree/main/packages/postman_collection`; deps per Global Constraints; topics `[postman, openapi, codegen, dart]`.
  - `build.yaml` (keep `sources: [lib/**, $package$]`).
  - `README.md`, `CHANGELOG.md`.
  - `example/` (`pubspec`, `lib/main.dart`, recipe `lib/src/dio_recipe.dart`).

**Interfaces:**
- Consumes:
  - Task 2's `class_prefix`, G1, G2 and G3.
  - Task 4's JSON Schema input and G4 (models only, no dio).
  - Task 3's `convert.dart`.
- Produces, used by README and users:
  - `PostmanCollection.fromJson(Map<String, dynamic>)` and `toJson()`.
  - `PostmanItems` (item | item-group union), `PostmanRequest` (string | object union), `PostmanUrl`, `PostmanAuth`, …

  Exact names come from the generated output; record them in the README.

**Steps:**

- [ ] **Step 1:** Write `round_trip_test.dart` first (red, since the models are missing). For every v2.1 fixture in `test/fixtures/*/collection.json` and `test/assets/test{1,2}.postman_collection.json`:
  - check `PostmanCollection.fromJson(json).toJson()` against `project(json)`;
  - `project` walks the official v2.1 schema in parallel with the instance and keeps only schema-defined keys;
  - it drops keys whose output value is null or the schema default when the input lacked them.
- [ ] **Step 2:** Run `make models`, then build_runner. Read the generated files. Every definition of the official schema must have a typed model with no `dynamic` where the schema is typed. Expected `dynamic`s:
  - auth-attribute `value: {}`;
  - variable `value: {}`;
  - `noauth: {}`;
  - certificate `src: {}`;
  - description `version: {}`;
  - script `packages`?;
  - `responseTime` (primitive mix).

  Anything else typed `dynamic` is a generator bug: fix it in swagger_to_dart with a test (Task 2's TDD rules apply) and regenerate.
- [ ] **Step 3:** Green: run the tests. Fix projection or default handling only in the test helper if the models are right; otherwise fix the generator.
- [ ] **Step 4:** Remove the old code and dio/retrofit. The example gets `dio_recipe.dart`, a dio `Interceptor` that turns each `RequestOptions` into a `PostmanItem` using the generated models. This replaces the old helpers, and the example README explains it.
- [ ] **Step 5:** README (what the package is; parse → typed models; `postmanToOpenApi`; v3 directories via `package:postman_collection/io.dart`; supported versions table; link to swagger_to_dart for code generation) and CHANGELOG 1.0.0 (breaking rewrite, migration from 0.x names).
- [ ] **Step 6:** pana locally on a copy of the package with `resolution: workspace` removed (as CI does) must report the maximum score. `dart test`, `analyze`, `format`. Commit.

### Task 6: swagger_to_dart Postman integration + e2e auto round-trips

**Files:**
- Modify:
  - `packages/swagger_to_dart/pubspec.yaml`: `postman_collection: ^1.0.0`.
  - `lib/src/input/spec_format.dart`: Postman → `postmanToOpenApi`, warnings printed as `swagger_to_dart: warning: …`.
  - `lib/src/input/load_spec.dart`: directory → `readPostmanCollectionDirectory`.
  - `test/support/fixtures.dart`: input `collection.json` or `collection/`.
  - `test/e2e_test.dart`: Postman examples round-trip generation.
- Fixtures (new): `postman_basic`, `postman_bodies`, `postman_v3_directory` (dir), `postman_non_ascii`, `postman_conflicting_examples`, `postman_name_collisions`, `postman_real_world` (copy of `test2`), and `json_schema_postman`, whose input is `schema.json`, a copy of `schemas/postman/v2.1.0/collection.json`, plus goldens.

**Interfaces:**
- Consumes `postmanToOpenApi`, `readPostmanCollectionDirectory` (Task 3) and `toOpenApiJson`/`loadSpec` (Task 4).

**Steps:**

- [ ] **Step 1:**
  - Red: `spec_format_test` expects `toOpenApiJson(postmanJson)` to return the converter's output.
  - Red: a `postman_basic` golden expects clients per folder.
  - Green: wire them.
- [ ] **Step 2:** e2e. For each fixture whose input is a Postman collection, the harness writes `test/<fixture>_examples_test.dart`:
  - For every operation and response with a JSON example in the converted spec, it computes the response model class.
  - If the response schema is an object, the class is `Renaming.instance.renameClass('${methodName}_response')`, with `methodName = Renaming.instance.renameFunction(operationId)` (unique per client as in the generator).
  - If it is an array of objects, the class is `…ResponseItem`, and each element is checked.
  - It emits:

```dart
test('getUser 200 example decodes', () {
  final json = jsonDecode(r'''<example JSON>''') as Map<String, dynamic>;
  final once = GetUserResponse.fromJson(json);
  final twice = GetUserResponse.fromJson(
    jsonDecode(jsonEncode(once.toJson())) as Map<String, dynamic>,
  );
  expect(twice, once);
});
```

  Use raw triple-quoted strings. Fall back to a `'''` concat via `dartString` when the JSON contains `'''`. Skip schemas that are unions or primitives, with a comment line.
- [ ] **Step 3:** Fixtures above. `postman_conflicting_examples` has three examples of one endpoint (string vs number id, null, missing keys); all must decode. `postman_name_collisions` has two `Users` folders under different parents, two requests named `Get`, a request named `Response`, and one named `List`.
- [ ] **Step 4:** `dart test` (with e2e), analyze, format. Commit.

---

## Phase C — finish

### Task 7: Docs, CI, example, version

**Files:**
- Modify:
  - `README.md` (root = swagger_to_dart README, symlinked into the package): Inputs section with a table of formats and how they are detected; Postman section (export or v3 directory, what maps where, link to the coverage table); JSON Schema; Swagger 2.0; YAML; `class_prefix`; requirements.
  - `CHANGELOG.md`: 6.0.0 with Breaking (G1, G2, G4, G5, G6 + migration notes), Added (inputs, G7, G8) and Fixed (G3).
  - `packages/swagger_to_dart/pubspec.yaml`: version `6.0.0`; description mentions Swagger 2.0, Postman, JSON Schema.
  - `CONTRIBUTING.md`.
  - `CLAUDE.md` (fixture inputs).
  - `.github/workflows/ci.yml`:
    - format/analyze cover `packages/postman_collection` (already);
    - new `postman_models` job (regenerate models + build_runner, fail on `git status --porcelain` diff);
    - pana step also scores postman_collection.
- Regenerate `packages/swagger_to_dart/example` (`dart run swagger_to_dart`, build_runner, `flutter test`) and commit the output.

- [ ] **Step 1:** Make the doc and CI edits. Check that every claim in them is backed by a test.
- [ ] **Step 2:** Regenerate the example. `flutter test` and `dart analyze --fatal-infos lib test` must pass in the example.
- [ ] **Step 3:** Commit.

### Task 8: Whole-branch review

- [ ] **Step 1:** A fresh reviewer (most capable model) reviews `main...feat/v6-postman` against the spec. Required focus:
  - the Review Focus list;
  - secret leakage;
  - generated-code compile risks;
  - semver claims.
- [ ] **Step 2:** Fix Critical and Important findings test-first. Log the minors in the PR body.
- [ ] **Step 3:** Full verification: both packages `dart test` + analyze + format; example; pana for both.

### Task 9: PR, merge, release

- [ ] **Step 1:** Push the branch and open a PR. The body summarizes the change and lists the closed issue (`Closes #38`).
- [ ] **Step 2:** CI green (core, example, postman_models, pana) → merge commit.
- [ ] **Step 3:** Publish `postman_collection` 1.0.0 from `main`:
  - in `packages/postman_collection`: `dart pub publish --dry-run`, then `dart pub publish --force`, using the local credentials;
  - verify on pub.dev;
  - clear its discontinued/unlisted flags (pub.dev package admin API, or tell the maintainer exactly which toggles to flip).
- [ ] **Step 4:** Tag `v6.0.0` and push it. The publish workflow releases swagger_to_dart; verify on pub.dev. Create the GitHub release from the CHANGELOG section.
- [ ] **Step 5:** Close #38 with a comment. Update memory.
