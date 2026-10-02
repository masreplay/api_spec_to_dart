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
| `packages/postman_collection` | Postman collection models (published separately) |

## Commands (in `packages/swagger_to_dart`)

| Command | Runs |
|---|---|
| `fvm dart test -x e2e` | Unit + golden tests (seconds) |
| `fvm dart test` | Everything, including the e2e compile check (~30 s) |
| `UPDATE_GOLDENS=1 fvm dart test -t golden` | Rewrites golden snapshots |
| `fvm dart run build_runner build` | Regenerates the generator's own freezed models |
| `fvm dart analyze --fatal-infos` | Static analysis (must be clean) |

## The loop

1. **Reproduce.** Add a fixture `test/fixtures/<scenario>/` with an input
   file. Keep the spec minimal — one feature or issue per fixture, e.g.
   `issue_57_multipart_params`.

   | File | Role |
   |---|---|
   | `openapi.json`, `openapi.yaml`, `swagger.json` (Swagger 2.0), `schema.json` (JSON Schema), `collection.json` (Postman) | The input: the first that exists is read and converted to OpenAPI 3 exactly like users' input (`readSpecSync` + `toOpenApiJson`) |
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

   Run it and watch it fail for the reason you expect.
3. **Green.** Minimal change in `lib/`.
4. **Snapshot.** `UPDATE_GOLDENS=1 fvm dart test -t golden`, then read the
   golden diff — it is the user-visible change. A new fixture snapshots every
   file; delete the goldens that are not about the scenario.
5. **Verify.** `fvm dart test` and `fvm dart analyze --fatal-infos`.
6. **Changelog.** Note user-visible changes in `CHANGELOG.md`.
