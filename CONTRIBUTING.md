# Contributing

This repository is test-driven: every behaviour change starts as a failing
test, and CI blocks anything that is not green.

## Setup

The toolchain is pinned with [fvm](https://fvm.app) (`.fvmrc`).

```sh
fvm dart pub get --no-example        # resolves the whole pub workspace
```

| Package | What it is |
|---|---|
| `packages/swagger_to_dart` | The generator (published) |
| `packages/swagger_to_dart/example` | Flutter app generated from a FastAPI spec (own resolution) |
| `packages/swagger_to_dart_e2e` | Unpublished project the e2e test compiles generated code in |
| `packages/postman_collection` | Postman → OpenAPI converter and typed Postman models (published separately; swagger_to_dart depends on it) |
| `schemas/` | Unmodified official Postman and OpenAPI JSON Schemas that tests validate against (see `schemas/README.md`) |

## Commands (in `packages/swagger_to_dart`)

| Command | Runs |
|---|---|
| `fvm dart test -x e2e` | Unit + golden tests (seconds) |
| `fvm dart test` | Everything, including the e2e compile check (~30 s) |
| `UPDATE_GOLDENS=1 fvm dart test -t golden` | Rewrites golden snapshots |
| `fvm dart run build_runner build` | Regenerates the generator's own freezed models |
| `fvm dart analyze --fatal-infos` | Static analysis (must be clean) |

## Commands (in `packages/postman_collection`)

| Command | Runs |
|---|---|
| `fvm dart test` | Converter unit, golden and model round-trip tests |
| `UPDATE_GOLDENS=1 fvm dart test` | Rewrites `test/fixtures/*/openapi.json.golden` |
| `make models DART="fvm dart"` | Regenerates `lib/src/models` from `schemas/postman/v2.1.0/collection.json` with swagger_to_dart, then runs build_runner. Commit the result: CI fails when it is stale |

## The loop

1. **Reproduce.** Add a fixture `test/fixtures/<scenario>/` with an input
   file. Keep the spec minimal — one feature or issue per fixture, e.g.
   `issue_57_multipart_params`.

   | File | Role |
   |---|---|
   | `openapi.json`, `openapi.yaml`, `swagger.json` (Swagger 2.0), `schema.json` (JSON Schema), `collection.json` or a `collection/` directory (Postman v2.x export or v3 directory) | The input: the first that exists is read and converted to OpenAPI 3 exactly like users' input (`readSpecSync` + `toOpenApiJson`) |
   | `swagger_to_dart.yaml` | Generator config (optional) |
   | `pubspec.yaml` | The consuming project; a `flutter` dependency marks Flutter-only behaviour, which the e2e test skips (optional) |
   | `golden/<path>.golden` | Expected generated files |
   | `roundtrip_test.dart.tmpl` | Copied into `swagger_to_dart_e2e/test/` and run against the compiled output (optional) |

2. **Red.** Pick the cheapest failing signal:
   - a unit test for pure logic (`test/utils`, `test/generator`, …),
   - an assertion on `renderSpec(spec).files['models/x.dart']`,
   - the e2e test when the bug is "generates invalid Dart",
   - `roundtrip_test.dart.tmpl` in the fixture when generated code must
     *behave* (it is copied into `swagger_to_dart_e2e/test/` and run).
     Postman fixtures also get a generated round-trip test: every saved
     JSON example of the typed response (the lowest 2xx status, the one the
     generator types) must decode with its response model and re-encode to
     the same value; examples of other statuses are not checked.

   Run it and watch it fail for the reason you expect.
3. **Green.** Minimal change in `lib/`.
4. **Snapshot.** `UPDATE_GOLDENS=1 fvm dart test -t golden`, then read the
   golden diff — it is the user-visible change. A new fixture snapshots every
   file; delete the goldens that are not about the scenario.
5. **Verify.** `fvm dart test` and `fvm dart analyze --fatal-infos`.
6. **Changelog.** Note user-visible changes in `CHANGELOG.md` (and in
   `packages/postman_collection/CHANGELOG.md` for that package).

A converter change in `postman_collection` follows the same loop with its
own fixtures (`test/fixtures/<scenario>/collection.json` or `collection/`,
golden `openapi.json.golden`, plus `warnings.txt.golden` when it warns).
Inputs are validated against the official Postman schema of their version
and outputs against the official OpenAPI 3.1/3.2 schema. A generator change
that alters the Postman models needs `make models` and the regenerated files
committed.
