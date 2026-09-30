# swagger_to_dart 5.0.0 Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Make the repo test-driven (unit + golden + e2e compile + example drift, all in CI) and use it to fix the generator's defects and open issues, shipping 5.0.0 on the latest Dart/Flutter.

**Architecture:** A pure `render()` seam turns an `OpenApi` + config into `{path: source}`; fixture directories drive golden and e2e tests; an unpublished `swagger_to_dart_e2e` workspace package compiles every fixture's output with build_runner + analyzer. Fixes land red → green against those fixtures.

**Tech Stack:** Dart 3.13 / Flutter 3.47 (fvm), pub workspaces, code_builder, dart_style, freezed 4, json_serializable 6.14, retrofit_generator 10, package:test, GitHub Actions, pana.

**Spec:** `docs/superpowers/specs/2026-09-29-swagger-to-dart-v5-design.md`

## Global Constraints

- Consumer SDK floor: `sdk: ^3.9.0` for `swagger_to_dart`; workspace members need `>=3.6` (`resolution: workspace`).
- Develop/CI on latest stable: Dart 3.13.3 / Flutter 3.47.4 (`fvm`; call `/Users/mas/fvm/versions/3.47.4/bin/cache/dart-sdk/bin/dart` directly outside the repo).
- Runtime deps of `swagger_to_dart` must allow latest versions; lower bounds only as high as generated code requires (`json_annotation ^4.12.0`, `freezed_annotation ^3.1.0`).
- Every emitted Dart string goes through `dartString()`; generated code must pass `dart analyze --fatal-infos` with `package:lints/recommended.yaml` + `prefer_single_quotes`.
- Never push to `main`, never tag, never publish. Work on `feat/v5-tdd`.
- Commit messages end with `Co-Authored-By: Claude Opus 5.5 <noreply@anthropic.com>`.
- Goldens are asserted on latest stable only; regenerate with `UPDATE_GOLDENS=1 dart test -t golden`.

## Review Focus

1. **Self-referencing schemas** (`Node.children: List<Node>`, `allOf` cycles) — must generate, never recurse forever. Test lives in Task 17.
2. **Models named like dart:core types** (`Error`, `Type`) — generated code must still compile. Test lives in Task 15.
3. **Duplicate or missing `operationId`s inside one tag** — method names must stay unique. Test lives in Task 12.
4. **Empty specs** (no `paths`, no `components`) — output must be valid, empty libraries. Test lives in Task 3.
5. **Large real-world spec** (the 577 KB example) — must generate, build and analyze clean. Covered by Task 20's example job.

---

## Phase A — Foundation

### Task 1: Pub workspace + tooling modernization

**Files:**
- Modify: `pubspec.yaml` (root → workspace root), `packages/swagger_to_dart/pubspec.yaml`, `packages/swagger_to_dart/analysis_options.yaml`, `packages/swagger_to_dart/Makefile`, `.gitignore`
- Modify: `packages/swagger_to_dart/lib/src/generator/api_client/api_client_generator.dart` (lint fixes only)
- Delete: `melos.yaml`, `.pre-commit-config.yaml`, `packages/swagger_to_dart/convertors/`, tracked `.dart_tool/`, tracked root `pubspec.lock`
- Regenerate: `packages/swagger_to_dart/lib/**/*.freezed.dart`, `*.g.dart`
- Test: `packages/swagger_to_dart/test/schema/openapi_parsing_test.dart`

**Interfaces:** Produces the workspace every later task runs in (`dart pub get` at repo root).

- [ ] **Step 1: Root pubspec becomes the workspace root**

```yaml
name: api_spec_to_dart_workspace
publish_to: none

environment:
  sdk: ^3.9.0

workspace:
  - packages/swagger_to_dart
```

- [ ] **Step 2: Package pubspec** — add `resolution: workspace`, `sdk: ^3.9.0`, `repository:`; drop `logger`; drop the `analyzer: 7.3.0` pin; dev deps `build_runner: ^2.16.1`, `freezed: ^4.0.2`, `json_serializable: ^6.14.1`, `lints: ^6.1.0`, `test: ^1.32.0`; runtime `json_annotation: ^4.12.0`, `freezed_annotation: ^3.1.0`.
- [ ] **Step 3: analysis_options** — `include: package:lints/recommended.yaml`, keep `prefer_single_quotes`, `sort_constructors_first`; exclude `**/*.g.dart`, `**/*.freezed.dart`, `example/**`; keep `invalid_annotation_target: ignore`.
- [ ] **Step 4: Remove dead files** — `git rm -r melos.yaml .pre-commit-config.yaml packages/swagger_to_dart/convertors`; `git rm -r --cached .dart_tool pubspec.lock`.
- [ ] **Step 5: Write the characterization test**

```dart
import 'dart:convert';
import 'dart:io';

import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';

void main() {
  test('parses the example FastAPI spec', () {
    final json = jsonDecode(
      File('example/schema/swagger.json').readAsStringSync(),
    ) as Map<String, dynamic>;
    final openApi = OpenApi.fromJson(json);
    expect(openApi.paths, isNotEmpty);
    expect(openApi.components?.schemas, isNotEmpty);
  });
}
```

- [ ] **Step 6: Resolve, regenerate, verify** — `dart pub get` (root); `dart run build_runner build` (package); rename `_hasJsonBody` → `hasJsonBody`; wrap generic types in doc comments in backticks. Run `dart analyze --fatal-infos` → `No issues found!`; `dart test` → PASS.
- [ ] **Step 7: Makefile** — `g: dart run build_runner build`; add `test: dart test`, `goldens: UPDATE_GOLDENS=1 dart test -t golden`.
- [ ] **Step 8: Commit** — `chore: pub workspace, latest deps and lints, drop dead config`

### Task 2: postman_collection joins the workspace

**Files:**
- Modify: `pubspec.yaml` (add member), `packages/postman_collection/pubspec.yaml`, `packages/postman_collection/lib/src/postman_collection_base.dart`, `packages/postman_collection/test/postman_test.dart`, `packages/postman_collection/CHANGELOG.md`
- Delete: `packages/postman_collection/lib/flutter2024-*.postman_collection.json` (accidental outputs shipped in `lib/`), `pubspec.yaml` `scripts:` block
- Regenerate: `postman_collection_base.freezed.dart`, `.g.dart`

- [ ] **Step 1: Run the existing test to see it fail** — `dart test` → FAIL: `PathNotFoundException ... test2.postman_collection_collection.json`.
- [ ] **Step 2: Fix the fixture path** to `./test/assets/test2.postman_collection.json`.
- [ ] **Step 3: Migrate to freezed 4** — every `@freezed class X with _$X` → `abstract class`; the union `PostmanCollectionRequestMode` → `sealed class`. Deps: `freezed_annotation ^3.1.0`, `json_annotation ^4.12.0`, `dio ^5.9.0`, `retrofit ^4.10.0`; dev `build_runner ^2.16.1`, `freezed ^4.0.2`, `json_serializable ^6.14.1`, `retrofit_generator ^10.2.11`, `lints ^6.1.0`, `test ^1.32.0`; `resolution: workspace`, `sdk: ^3.9.0`.
- [ ] **Step 4: Regenerate + test** — `dart run build_runner build`; `dart test` → PASS; `dart analyze` → clean.
- [ ] **Step 5: CHANGELOG 0.1.0** — "freezed 3+/4 migration: `map`/`when` removed (use pattern matching)". Version `0.1.0`.
- [ ] **Step 6: Commit** — `chore(postman_collection): workspace member, freezed 4, fix broken test`

### Task 3: Pure `render()` seam + fixture harness + first goldens

**Files:**
- Modify: `lib/src/generator/swagger_to_dart_code_generator.dart`, `lib/src/config/generation_context.dart`, `lib/src/generator/model/model_generator.dart`, `lib/src/generator/api_client/api_client_generator.dart`, `bin/swagger_to_dart.dart`
- Create: `test/support/fixtures.dart`, `test/golden_test.dart`, `dart_test.yaml`, `test/fixtures/petstore/openapi.json`, `test/fixtures/empty/openapi.json`, goldens under `test/fixtures/*/golden/`

**Interfaces:**
- Produces: `typedef RenderResult = ({Map<String, String> files, Map<String, String> errors});`
- Produces: `RenderResult SwaggerToDartCodeGenerator.render()` (pure; keys are paths relative to the output dir, e.g. `models/pet.dart`)
- Produces: `Future<void> SwaggerToDartCodeGenerator.write([String? outputDirectory])` (throws `StateError` listing `errors` after writing everything)
- Produces (tests, `test/support/fixtures.dart`): `class Fixture { Directory dir; String name; Map<String, dynamic> spec; SwaggerToDart config; bool get isFlutter; SwaggerToDartCodeGenerator generator(); RenderResult render(); Map<String, String> readGoldens(); void writeGoldens(Map<String, String> files); static List<Fixture> all(); }`, `GenerationContext contextFor(Map<String, dynamic> spec, {SwaggerToDart config = const SwaggerToDart(), bool flutter = false})`, `RenderResult renderSpec(Map<String, dynamic> spec, {SwaggerToDart config = const SwaggerToDart(), bool flutter = false})`. A fixture is Flutter when its dir contains a `pubspec.yaml` depending on `flutter`.

- [ ] **Step 1: Write the failing golden test**

```dart
@Tags(['golden'])
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'support/fixtures.dart';

void main() {
  final update = Platform.environment['UPDATE_GOLDENS'] == '1';

  for (final fixture in Fixture.all()) {
    test(fixture.name, () {
      final result = fixture.render();
      expect(result.errors, isEmpty, reason: 'unformattable output');

      final goldenDir = Directory(p.join(fixture.dir.path, 'golden'));
      if (update) {
        fixture.writeGoldens(result.files);
        return;
      }
      final goldens = fixture.readGoldens();
      expect(goldens, isNotEmpty, reason: 'run UPDATE_GOLDENS=1 dart test -t golden');
      for (final entry in goldens.entries) {
        expect(result.files[entry.key], entry.value, reason: entry.key);
      }
      expect(goldenDir.existsSync(), isTrue);
    });
  }
}
```

`writeGoldens` writes every file for a fixture without goldens; for an existing golden dir it only rewrites files already present (so fixtures snapshot just what they care about; `petstore` keeps all files).

- [ ] **Step 2: Run** — `dart test -t golden` → FAIL: `render` not defined.
- [ ] **Step 3: Implement** — `GenerationContext.generate()` becomes `void`, clears `_models/_apiClients/_jsonConvertor` first; `ModelGenerator.generate`/`ApiClientGenerator.generate` return `void`; `render()` builds every library (same set and names as today) and formats with `DartFormatter(languageVersion: DartFormatter.latestLanguageVersion)`, catching `FormatterException` into `errors` (unformatted source kept in `files`); `write()` recreates the dir and writes; `generate()` = `write()`; config printing moves to `bin/`.
- [ ] **Step 4: Fixtures** — `petstore` (tag `pet`, `GET /pets?limit`, `POST /pets` JSON body, `GET /pets/{petId}`; components `Pet{id int, name string, tag string?}`, `PetStatus` string enum, `Error`) and `empty` (`{"openapi":"3.1.0","info":{"title":"Empty","version":"1"},"paths":{}}`).
- [ ] **Step 5: Record + verify** — `UPDATE_GOLDENS=1 dart test -t golden`, review goldens, then `dart test` → PASS.
- [ ] **Step 6: Commit** — `test: pure render() seam with golden fixtures`

### Task 4: Stateless Recase (#63)

**Files:** Modify `lib/src/utils/recase.dart`; Test `test/utils/recase_test.dart`; fixture `test/fixtures/issue_63_two_letter_words/`

- [ ] **Step 1: Failing test**

```dart
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';

void main() {
  final recase = Recase.instance;

  test('camel/pascal/snake basics', () {
    expect(recase.toCamelCase('user_id'), 'userId');
    expect(recase.toCamelCase('userID'), 'userID');
    expect(recase.toPascalCase('HTTPValidationError'), 'HttpValidationError');
    expect(recase.toSnakeCase('HTTPValidationError'), 'http_validation_error');
  });

  test('output does not depend on earlier calls (#63)', () {
    recase.toCamelCase('userID'); // used to poison a global set with "ID"
    expect(recase.toCamelCase('id'), 'id');
    expect(recase.toCamelCase('other_object_id'), 'otherObjectId');
    expect(recase.toPascalCase('id'), 'Id');
  });
}
```

- [ ] **Step 2: Run** → FAIL (`iD`).
- [ ] **Step 3: Implement** — `_groupIntoWords` returns words from local state; delete `_words`, `initialize`, `_upperCaseTwoLettersRowWords`; `_upperCaseFirstLetter` keeps short all-caps words (≤3) as-is, otherwise capitalizes.
- [ ] **Step 4: Fixture** with properties `id`, `userID`, `other_object_id` rendered after a model containing `ID`; record golden (`id`, `idKey_`). Run all tests → PASS.
- [ ] **Step 5: Commit** — `fix: stateless Recase so two-letter words recase consistently (#63)`

### Task 5: Characterization tests for pure units

**Files:** Create `test/utils/renaming_test.dart`, `test/generator/generic_parsers_test.dart`, `test/generator/type_converter_test.dart`, `test/config/config_test.dart`

These lock current behaviour before the refactors (they pass on first run; that is their purpose). Cover: `renameClass` (prefix removal, `?`→`Nullable`, `NoneType` stripping), `renameFile`, `renameEnumValue` (ints, negatives, overrides), ABP/FastAPI/.NET parser `toStandardFormat`/`extractGenericArguments`, type converter primitives/formats/arrays/maps/refs/nullable anyOf/generic titles, YAML config defaults and every option (incl. `model.enums` with int keys).

- [ ] **Step 1: Write tests, run** → PASS. **Step 2: Commit** — `test: characterize renaming, generic parsers, type converter, config`

### Task 6: E2E compile harness

**Files:**
- Create: `packages/swagger_to_dart_e2e/{pubspec.yaml,build.yaml,analysis_options.yaml,.gitignore,README.md}`, `packages/swagger_to_dart/test/e2e_test.dart`
- Modify: root `pubspec.yaml` (member), `packages/swagger_to_dart/dart_test.yaml`

**Interfaces:** Consumes `Fixture.all()`, `write(outputDirectory)`. Produces: every non-Flutter fixture compiled in `packages/swagger_to_dart_e2e/lib/gen/<fixture>/`; `roundtrip_test.dart.tmpl` in a fixture is copied to `packages/swagger_to_dart_e2e/test/<fixture>_test.dart` and run.

- [ ] **Step 1: e2e package** — `publish_to: none`, `resolution: workspace`, deps `dio`, `retrofit`, `freezed_annotation`, `json_annotation`; dev `build_runner`, `freezed`, `json_serializable`, `retrofit_generator`, `test`, `lints`; `build.yaml` with freezed → json_serializable → retrofit_generator order; analysis_options = README consumer setup (recommended + `prefer_single_quotes`, exclude `*.g.dart`/`*.freezed.dart`, `invalid_annotation_target: ignore`); `.gitignore` → `lib/gen/`, `test/`.
- [ ] **Step 2: Write the test**

```dart
@Tags(['e2e'])
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'support/fixtures.dart';

final _project = p.normalize(p.join('..', 'swagger_to_dart_e2e'));

Future<ProcessResult> _dart(List<String> args) =>
    Process.run(Platform.resolvedExecutable, args, workingDirectory: _project);

void main() {
  test('generated code compiles, analyzes clean and round-trips', () async {
    final gen = Directory(p.join(_project, 'lib', 'gen'));
    final tests = Directory(p.join(_project, 'test'));
    for (final d in [gen, tests]) {
      if (d.existsSync()) d.deleteSync(recursive: true);
    }
    for (final fixture in Fixture.all().where((f) => !f.isFlutter)) {
      await fixture.generator().write(p.join(gen.path, fixture.name));
      final tmpl = File(p.join(fixture.dir.path, 'roundtrip_test.dart.tmpl'));
      if (tmpl.existsSync()) {
        tests.createSync(recursive: true);
        tmpl.copySync(p.join(tests.path, '${fixture.name}_test.dart'));
      }
    }

    final build = await _dart(['run', 'build_runner', 'build']);
    expect(build.exitCode, 0, reason: '${build.stdout}\n${build.stderr}');

    final analyze = await _dart(['analyze', '--fatal-infos', 'lib', if (tests.existsSync()) 'test']);
    expect(analyze.exitCode, 0, reason: '${analyze.stdout}');

    if (tests.existsSync()) {
      final run = await _dart(['test']);
      expect(run.exitCode, 0, reason: '${run.stdout}\n${run.stderr}');
    }
  }, timeout: const Timeout(Duration(minutes: 10)));
}
```

- [ ] **Step 3: Run** `dart test -t e2e` → FAIL (infos/warnings from today's generator: double quotes, library names, duplicate exports, `dynamic?`). Record the failure list in the commit body; Tasks 9–11 turn it green. Until then the test is marked `skip: 'enabled by Task 11'` so the suite stays green between commits.
- [ ] **Step 4: Commit** — `test: e2e compile harness for generated code`

### Task 7: Re-apply WIP fixes test-first; drop dio/retrofit/logger deps

**Files:** Modify `lib/src/config/generation_context.dart`, `lib/src/schema/openapi/v3/open_api_components.dart` (+regen), `lib/src/generator/**` (type-name literals), `pubspec.yaml`; Test `test/schema/openapi_parsing_test.dart`, `test/config/generation_context_builder_test.dart`

**Interfaces:** `GenerationContextBuilder({String? configPath, String? rootDirectory})`; `input_directory` and `output_directory` resolve against `rootDirectory` (default `Directory.current.path`).

- [ ] **Step 1: Failing tests**

```dart
test('additionalProperties may be a schema object', () {
  expect(
    () => OpenApiSchemas.fromJson({
      'type': 'object',
      'properties': <String, dynamic>{},
      'additionalProperties': {'type': 'string'},
    }),
    returnsNormally,
  );
});
```

```dart
// generation_context_builder_test.dart — serves the spec from a real HttpServer
late HttpServer server;
late Directory root;
var status = 200;
setUp(() async {
  root = Directory.systemTemp.createTempSync('s2d_');
  File(p.join(root.path, 'pubspec.yaml')).writeAsStringSync('name: app\n');
  server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
  server.listen((r) {
    r.response.statusCode = status;
    r.response.write(jsonEncode(_spec));
    r.response.close();
  });
  File(p.join(root.path, 'swagger_to_dart.yaml')).writeAsStringSync('''
swagger_to_dart:
  url: http://127.0.0.1:${server.port}/openapi.json
  input_directory: schema/openapi.json
''');
  Directory(p.join(root.path, 'schema')).createSync();
});

test('refreshes the cached spec even when it exists', () async {
  final cache = File(p.join(root.path, 'schema/openapi.json'))..writeAsStringSync('{}');
  await GenerationContextBuilder(rootDirectory: root.path).build();
  expect(jsonDecode(cache.readAsStringSync()), _spec);
});

test('falls back to the cached spec when the fetch fails', () async {
  status = 500;
  File(p.join(root.path, 'schema/openapi.json')).writeAsStringSync(jsonEncode(_spec));
  final ctx = await GenerationContextBuilder(rootDirectory: root.path).build();
  expect(ctx.openApi.info?.title, 'Cached');
});

test('fails when the fetch fails and nothing is cached', () async {
  status = 500;
  expect(GenerationContextBuilder(rootDirectory: root.path).build(), throwsA(anything));
});

test('names the missing input file', () async {
  File(p.join(root.path, 'swagger_to_dart.yaml'))
      .writeAsStringSync('swagger_to_dart:\n  input_directory: missing.json\n');
  expect(
    GenerationContextBuilder(rootDirectory: root.path).build(),
    throwsA(predicate((e) => '$e'.contains('missing.json'))),
  );
});
```

- [ ] **Step 2: Run** → FAIL (additionalProperties cast; `rootDirectory` unknown).
- [ ] **Step 3: Implement** — `git stash pop` (WIP), regenerate freezed code, add `rootDirectory`, replace Dio with `HttpClient` (2xx check, UTF-8 JSON object check), throw `FileSystemException('OpenAPI input file not found', path)`.
- [ ] **Step 4: Type-name literals** — replace `'$Body()'`-style interpolations of retrofit/dio/freezed types with plain literals (`'Body()'` …); remove `dio`, `retrofit` deps. Goldens must be unchanged.
- [ ] **Step 5: Run all tests** → PASS. **Step 6: Commit** — `fix: refresh cached spec, loud fallback, schema-valued additionalProperties; drop dio/retrofit deps`

### Task 8: CI, publish gate, contributor docs

**Files:** Create `.github/workflows/ci.yml`, `CLAUDE.md`, `CONTRIBUTING.md`; Modify `.github/workflows/publish.yml`

- [ ] **Step 1: ci.yml** — on `push: main` + `pull_request`; job `core` (dart-lang/setup-dart stable): `dart pub get`, format check over non-generated `packages/**/lib|bin|test/*.dart`, `dart analyze --fatal-infos packages/swagger_to_dart packages/postman_collection`, `dart test` in both packages; job `pana`: activate pana, copy `packages/swagger_to_dart` to a temp dir without `resolution: workspace`, run `pana --exit-code-threshold 0`.
- [ ] **Step 2: publish.yml** — same checks as `core` before `dart pub publish --force`.
- [ ] **Step 3: CLAUDE.md / CONTRIBUTING.md** — the red-green loop: add fixture → failing golden/e2e/unit → fix → `UPDATE_GOLDENS=1` → review diff → commit; command table.
- [ ] **Step 4: Validate YAML** (`python3 -c 'import yaml,sys;yaml.safe_load(open(sys.argv[1]))'`) and **commit** — `ci: analyze, test, e2e, pana on every PR`

## Phase B — Generated code quality and issue fixes (each red → green)

### Task 9: One string-literal helper (#59, #60, #64)

**Files:** Modify `lib/src/code/string.dart`, `api_client_generator.dart`, `enum_model_generator_strategy.dart`, `union_model_strategy.dart`, `open_api_schema_dart_type_converter.dart`; Test `test/code/string_test.dart`; fixture `issue_59_60_64_special_strings`

**Interfaces:** Produces `String dartString(String value)` (single-quoted literal whose runtime value is `value`); `Code stringCode(String value) => Code(dartString(value))`.

- [ ] **Step 1: Failing test**

```dart
test('dartString escapes everything that breaks a literal', () {
  expect(dartString("d'Artagnan"), r"'d\'Artagnan'");
  expect(dartString(r'$ref'), r"'\$ref'");
  expect(dartString(r'a\b'), r"'a\\b'");
  expect(dartString('line1\nline2\tx'), r"'line1\nline2\tx'");
  expect(dartString('Rafraîchir'), "'Rafraîchir'");
  expect(dartString('\u0007'), r"'\u{7}'");
});
```

- [ ] **Step 2: Run** → FAIL (undefined). **Step 3: Implement**

```dart
String dartString(String value) {
  final out = StringBuffer("'");
  for (final rune in value.runes) {
    out.write(switch (rune) {
      0x5C => r'\\',
      0x27 => r"\'",
      0x24 => r'\$',
      0x0A => r'\n',
      0x0D => r'\r',
      0x09 => r'\t',
      < 0x20 || 0x7F => '\\u{${rune.toRadixString(16)}}',
      _ => String.fromCharCode(rune),
    });
  }
  return (out..write("'")).toString();
}
```

- [ ] **Step 4: Use it everywhere** — extras (`encodeWithRawKeys` → uses `dartString` for keys and values), key constants, `@JsonValue`, `@GET('...')`/`@Query`/`@Path`/`@Header`, union values, defaults (`_dartLiteral`).
- [ ] **Step 5: Fixture** — summary `Rafraîchir le token d'authentification`, multi-line description, `$ref` in parameter schema, enum values `a'b`, `$x`, `c"d`, `back\slash`. Goldens + all tests → PASS.
- [ ] **Step 6: Commit** — `fix: escape every emitted string literal (#59, #60, #64)`

### Task 10: Clean directives and docs

**Files:** Modify `swagger_to_dart_code_generator.dart`, `json_serialization_convertor_generator.dart`, all strategies' `docs`; Test: e2e analyze gains `--fatal-warnings` behaviour (unskip for warnings)

- [ ] **Step 1: Red** — enable the e2e test with `--fatal-warnings` only; run → FAIL (`duplicate_export`, `unused_import`, `duplicate_import`).
- [ ] **Step 2: Implement** — emit libraries without a name (`library.rebuild((b) => b.name = null)` in `render()`; file names come from the map key); dedupe directives by `(type, url, as, show, hide)`; `models/exports.dart` exports `dart:typed_data`, `models.dart`, `json_converter.dart`, `package:dio/dio.dart`, `package:freezed_annotation/freezed_annotation.dart` + converter exports; `json_converter.dart` imports only what it uses; Flutter converters only when `isFlutterProject`; `MultipartFileJsonConverter` never exports Flutter; schema JSON in docs goes inside a ```` ```json ```` fence.
- [ ] **Step 3: Run e2e + goldens (`UPDATE_GOLDENS=1`)** → PASS. **Step 4: Commit** — `fix: unnamed libraries, deduped directives, pure-Dart safe converters`

### Task 11: No `dynamic?`, no `const` inside annotations

**Files:** Modify `open_api_schema_dart_type_converter.dart`, `property_generator_strategy.dart`; fixture `defaults_and_dynamic`

- [ ] **Step 1: Red** — e2e with `--fatal-infos` (final form, `skip` removed); fixture with free-form `{}` optional property, list/map/string defaults. Run → FAIL (`unnecessary_question_mark`, `unnecessary_const`, `prefer_single_quotes`).
- [ ] **Step 2: Implement** — single `String nullable(String type)` in the type converter that leaves `dynamic`/`Object?`/`…?` alone, used by properties and parameters; `_dartLiteral(value, {required bool inConstContext})` omits `const` inside `@Default(...)`, keeps it for parameter defaults.
- [ ] **Step 3: Run all** → PASS. **Step 4: Commit** — `fix: lint-clean generated code (no dynamic?, no redundant const)`

### Task 12: Parameter required/nullable (#50), generic model required list (#52), unique method names

**Files:** Modify `api_client_generator.dart`, `generic_model_generator_strategy.dart`; fixture `issue_50_52_optional_params`

- [ ] **Step 1: Failing golden expectations (unit test on render output)**

```dart
test('optional params are nullable, path params required (#50)', () {
  final client = renderSpec(_spec).files['api_client/items_client.dart']!;
  expect(client, contains("@Query('offset') double? offset"));
  expect(client, contains("@Query('limit') int limit = 20"));
  expect(client, contains("@Query('q') required String q"));
  expect(client, contains("@Path('id') required String id"));
  expect(client, contains("@Header('X-Trace') String? xTrace"));
});

test('generic models honour the required list (#52)', () {
  final model = renderSpec(_genericSpec, config: const SwaggerToDart(
    generationSource: GenerationSource.fastAPI,
    model: ModelConfig(supportGenericArguments: true),
  )).files['models/base_response.dart']!;
  expect(model, contains('required T data'));
  expect(model, contains('String? message'));
});

test('duplicate operationIds in one tag stay unique', () {
  final client = renderSpec(_dupSpec).files['api_client/items_client.dart']!;
  expect(client, contains('Future<HttpResponse<dynamic>> listItems('));
  expect(client, contains('listItems2('));
});
```

- [ ] **Step 2: Run** → FAIL. **Step 3: Implement** — `isRequired = p.in_ == path || p.required_ == true`; `required: isRequired && default == null`; optional without default → `nullable(type)`; generic strategy passes `required: requiredList.contains(key)`; method names deduped per client with numeric suffix.
- [ ] **Step 4: Run all** (goldens updated, e2e) → PASS. **Step 5: Commit** — `fix: honour required for params and generic models (#50, #52)`

### Task 13: Multipart wrapper forwards every parameter (#57)

**Files:** Modify `api_client_generator.dart`; fixture `issue_57_multipart_params` (PUT `/form/{id}`, multipart body `$ref: FormBody`, header `X-Req`, query `page`)

- [ ] **Step 1: Red** — golden expectation `id: id,`, `xReq: xReq,`, `page: page,` inside the extension call; e2e compile fails today (missing required argument).
- [ ] **Step 2: Implement** — call `${methodName}_(...)` with `requestBody` + every parameter by name + extras/cancel/progress.
- [ ] **Step 3: Run all** → PASS. **Step 4: Commit** — `fix: multipart wrapper forwards path/header/query params (#57)`

### Task 14: Inline enums (#55, #61), integer inline enums, enum defaults

**Files:** Modify `open_api_schema.dart` (`enum_` → `List<Object?>?`, regen), `open_api_schema_dart_type_converter.dart`, `property_generator_strategy.dart`, `api_client_generator.dart`, `enum_model_generator_strategy.dart`; fixture `issue_55_61_inline_enums`

**Interfaces:** `typeConverter.get(schema, {required String className, String? contextName, ...})`; `getDefaultValue(schema, {String? contextName})`; `static Map<String, String> EnumModelGeneratorStrategy.memberNames({required String enumKey, required String className, required List<Object> values, required Map<String, Map<String, String>> overrides})`.

- [ ] **Step 1: Red** — model `Pet.status` inline enum (no title, default `available`), query param `sort` inline enum (no title, default `asc`), inline integer enum `[1, 2]`, component enum with `model.enums` rename used as a default. Today: NPE; integer enum parse crash.
- [ ] **Step 2: Implement** — name = `title ?? parent.title ?? '<contextName>'` (`PetStatus`, `ListPetsSort`); inline enums keep their real JSON type; default values resolve through `memberNames` (so overrides apply); enum `null` entries dropped.
- [ ] **Step 3: Run all** → PASS. **Step 4: Commit** — `fix: name untitled inline enums from context (#55, #61)`

### Task 15: Identifier hygiene (#51, #28), property collisions, core-type names

**Files:** Modify `lib/src/utils/renaming.dart`, `regular_model_generator_strategy.dart`, `property_generator_strategy.dart`; Test `test/utils/renaming_test.dart`; fixture `identifiers`

- [ ] **Step 1: Failing tests**

```dart
expect(Renaming.instance.renameEnumValue('EXTERNAL'), 'external'); // #51
expect(Renaming.instance.renameProperty('some-header'), 'someHeader'); // #28
expect(Renaming.instance.renameProperty('default'), r'$default');
expect(Renaming.instance.renameEnumValue('new'), r'$new');
expect(Renaming.instance.renameEnumValue('+'), 'plus');
expect(Renaming.instance.renameEnumValue('-'), 'minus');
```

Fixture: properties `some-key` and `some_key` in one model (→ `someKey`, `someKey2`), models named `Error` and `Type`, header `X-API-Version`.
- [ ] **Step 2: Run** → FAIL. **Step 3: Implement** — guard only Dart reserved words, checked on the final identifier, escaped with a `$` prefix; `-` between alphanumerics is a word separator; per-model property name dedupe.
- [ ] **Step 4: Run all** → PASS. **Step 5: Commit** — `fix: readable, legal identifiers (#28, #51)`

### Task 16: Unions as plain sealed classes with flat JSON (#49, #58)

**Files:** Modify `open_api_components.dart` (`oneOf`, `anyOf`, `discriminator`; `type` optional; regen), `union_model_strategy.dart` (rewrite), `model_generator.dart`, `open_api_schema_dart_type_converter.dart`, `generation_context.dart`; fixture `unions` + `roundtrip_test.dart.tmpl`

**Interfaces:** `String GenerationContext.registerInlineModel(String className, Library Function(String className) build)` (suffixes on content conflict; component models keep first-wins but `addModel` now logs a warning when two different schemas map to one class name); `Library UnionModelStrategy.build({required String className, required List<UnionVariant> variants, String? discriminator})` with `typedef UnionVariant = ({String caseName, String? tag, OpenApiSchemaRef ref})`.

Generated shape:

```dart
sealed class Animal {
  const Animal();

  const factory Animal.dog(Dog value) = AnimalDog;
  const factory Animal.cat(Cat value) = AnimalCat;
  const factory Animal.fallback(Map<String, dynamic> value) = AnimalFallback;

  factory Animal.fromJson(Map<String, dynamic> json) => switch (json['pet_type']) {
        'dog' => AnimalDog(Dog.fromJson(json)),
        'cat' => AnimalCat(Cat.fromJson(json)),
        _ => AnimalFallback(json),
      };

  Map<String, dynamic> toJson();
}

final class AnimalDog extends Animal {
  const AnimalDog(this.value);

  final Dog value;

  @override
  Map<String, dynamic> toJson() => {...value.toJson(), 'pet_type': 'dog'};

  @override
  bool operator ==(Object other) => other is AnimalDog && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Animal.dog($value)';
}
```

Without a discriminator, `fromJson` tries variants in order (`try { return AnimalDog(Dog.fromJson(json)); } catch (_) { /* next variant */ }`) with a `ponytail:` comment; without `union_class_fallback_name`, an unmatched payload throws `ArgumentError.value`.

- [ ] **Step 1: Round-trip template (red)**

```dart
import 'package:swagger_to_dart_e2e/gen/unions/models/models.dart';
import 'package:test/test.dart';

void main() {
  test('flat discriminated JSON decodes and re-encodes (#49)', () {
    final json = {'pet_type': 'dog', 'name': 'Rex', 'bark': true};
    final animal = Animal.fromJson(json);
    expect(animal, isA<AnimalDog>());
    expect(animal.toJson(), json);
  });

  test('top-level component oneOf is a union (#58)', () {
    final pet = Pet.fromJson({
      'animals': [
        {'pet_type': 'cat', 'name': 'Tom', 'lives': 9},
      ],
    });
    expect(pet.animals.single, isA<AnimalCat>());
  });

  test('unknown discriminator falls back', () {
    expect(Animal.fromJson({'pet_type': 'parrot'}), isA<AnimalFallback>());
  });

  test('anyOf without discriminator picks the matching variant', () {
    expect(Shape.fromJson({'radius': 2}), isA<ShapeCircle>());
    expect(Shape.fromJson({'width': 1, 'height': 2}), isA<ShapeRect>());
  });
}
```

- [ ] **Step 2: Run e2e** → FAIL (compile errors / `value` envelope). **Step 3: Implement** strategy + parsing + model generator (component `oneOf`/`anyOf` of refs → union; implicit mapping by schema name when `mapping` is absent) + inline registration via `registerInlineModel`; union JSON converters removed.
- [ ] **Step 4: Run all** → PASS. **Step 5: Commit** — `feat!: unions as sealed classes with flat JSON (#49, #58)`

### Task 17: `allOf` and OpenAPI 3.1 type forms

**Files:** Modify `open_api_components.dart`, `open_api_schema.dart` (converter pre-processing), `model_generator.dart`; fixture `allof_and_31`

- [ ] **Step 1: Red** — `Pet: allOf[$ref Base{id}, {name required}]` → fields `id`, `name`; property `owner: allOf[$ref Base], nullable: true` → `Base? owner`; `type: ["string","null"]` → `String?`; component with properties but no `type`; self-referencing `Node{children: List<Node>}`; `A allOf[B]`, `B allOf[A]` cycle → generates (cycle broken, no stack overflow).
- [ ] **Step 2: Implement** — JSON pre-processing: list `type` → first non-`null` + `nullable: true`; single-item inline `allOf` unwrapped (outer `nullable`/`default`/`description` kept); component `allOf` merged (properties + required, refs resolved recursively with a visited set).
- [ ] **Step 3: Run all** → PASS. **Step 4: Commit** — `feat: allOf composition and OpenAPI 3.1 type arrays`

### Task 18: Binary responses (#54) and multipart files

**Files:** Modify `api_client_generator.dart`, `open_api_schema_dart_type_converter.dart`, `json_serialization_convertor_generator.dart`; fixture `issue_54_binary`

- [ ] **Step 1: Red** — `GET /image` (`image/png`, binary) and `GET /report` (`application/pdf`) → `Future<HttpResponse<Uint8List>>` + `@DioResponseType(ResponseType.bytes)`; `GET /text` (`text/plain`) → `Future<HttpResponse<String>>`; `POST /upload` multipart `file: binary` with `generation_source: dotnet` → `MultipartFile file`; success response = lowest 2xx, else `default`.
- [ ] **Step 2: Implement.** **Step 3: Run all** → PASS. **Step 4: Commit** — `feat: typed binary downloads and multipart files for every source (#54)`

### Task 19: Content-type robustness (#56) and `enum_fallback_type`

**Files:** Modify `swagger_to_dart_yaml.dart` (+regen), `enum_model_generator_strategy.dart`; fixtures `issue_56_content_types`, `enum_fallback_unknown`

- [ ] **Step 1: Red** — spec with `text/plain`, `application/xml`, multiple JSON media types in requests and responses renders and compiles; with `enum_fallback_type: unknown`, enum `Status{active}` gains `unknown` and `Status.fromJson('weird') == Status.unknown` (round-trip template); default config value is `throwException`.
- [ ] **Step 2: Implement** — string enums add `@JsonValue('unknown') unknown` unless present; int enums use `min(values) - 1`. **Step 3: Run all** → PASS. **Step 4: Commit** — `fix: enum_fallback_type unknown adds a real member; default unchanged at runtime`

## Phase C — Example, docs, release

### Task 20: Example on the latest toolchain + converter tests + CI job

**Files:** Modify `packages/swagger_to_dart/example/{pubspec.yaml,Makefile,.gitignore,swagger_to_dart.yaml}`, `json_serialization_convertor_generator.dart` (Color fix); Create `example/test/json_converter_test.dart`; Modify `.github/workflows/ci.yml` (job `example`)

- [ ] **Step 1: Red** — `example/test/json_converter_test.dart`:

```dart
import 'package:example/src/gen/models/exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('#RRGGBB parses as opaque', () {
    expect(const ColorStringJsonConverter().fromJson('#FF0000'), const Color(0xFFFF0000));
  });
  test('TimeOfDay round-trips', () {
    const c = TimeOfDayStringJsonConverter();
    expect(c.fromJson('13:05:00'), const TimeOfDay(hour: 13, minute: 5));
    expect(c.fromJson('PT1H30M'), const TimeOfDay(hour: 1, minute: 30));
    expect(c.toJson(const TimeOfDay(hour: 1, minute: 5)), '01:05:00');
  });
}
```

- [ ] **Step 2: Implement** — example deps latest (`retrofit_generator ^10.2.11`, `build_runner ^2.16.1`, `freezed ^4.0.2`, `json_serializable ^6.14.1`), `sdk: ^3.9.0`, gitignore `*.g.dart`/`*.freezed.dart` under `lib/src/gen`, regenerate with the new generator; Color converter pads 6-digit hex with `FF`.
- [ ] **Step 3: Run** `fvm flutter pub get && fvm dart run build_runner build && fvm dart analyze --fatal-infos lib test && fvm flutter test` → PASS.
- [ ] **Step 4: CI `example` job** (subosito/flutter-action stable): regenerate, `git diff --exit-code -- lib/src/gen`, build_runner, analyze, `flutter test`.
- [ ] **Step 5: Commit** — `chore(example): latest toolchain, converter tests, drift check`

### Task 21: Docs, CHANGELOG, version 5.0.0

**Files:** Modify `README.md`, `CHANGELOG.md`, `packages/swagger_to_dart/pubspec.yaml` (`version: 5.0.0`)

- [ ] **Step 1:** README — requirements (Dart ≥3.9, json_serializable ≥6.10 needs SDK floor ≥3.8), correct CLI (`dart run swagger_to_dart [--config path]`), full config reference, `build_runner build`, contributing link.
- [ ] **Step 2:** CHANGELOG `## 5.0.0` — Breaking / Added / Fixed with every row of the spec's behaviour table and a migration section.
- [ ] **Step 3: Verify** `dart pub publish --dry-run` in `packages/swagger_to_dart` (0 warnings). **Commit** — `docs: 5.0.0 README and CHANGELOG`

### Task 22: Final verification and hand-off

- [ ] **Step 1:** Full run: root `dart pub get`; `dart analyze --fatal-infos`; `dart test` (both packages, incl. e2e); pana ≥ 160; example job commands.
- [ ] **Step 2:** superpowers:requesting-code-review on the branch; fix findings test-first.
- [ ] **Step 3:** Push `feat/v5-tdd`, open PR (body: summary, issue map with `Fixes #…`, migration notes).
- [ ] **Step 4:** Close PR #62 and #65 with a short thank-you comment linking the new PR; delete local `refs/remotes/pr/*`.
