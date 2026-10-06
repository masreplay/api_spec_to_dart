# CLAUDE.md

Read `CONTRIBUTING.md` first: setup, commands and the red-green loop live there.

Rules for agents working in this repo:

- **Test first, always.** No change under `packages/*/lib/` without a test
  you watched fail. Bugs in generated code get a fixture under
  `test/fixtures/` plus the cheapest failing signal (unit, golden, e2e or
  round-trip).
- **Fixture inputs** (`packages/swagger_to_dart/test/fixtures/<name>/`): the
  first that exists of `openapi.json`, `openapi.yaml`, `swagger.json`
  (Swagger 2.0), `schema.json` (JSON Schema), `collection.json` or
  `collection/` (Postman) is read through `readSpecSync` + `toOpenApiJson`,
  the same path the CLI uses. Converter fixtures live in
  `packages/postman_collection/test/fixtures/` (`collection.json` or
  `collection/` → `openapi.json.golden`).
- **Official schemas** under `schemas/` stay byte-for-byte unmodified; tests
  may only apply semantically equivalent rewrites at load time.
- **No secrets:** never copy auth secret values (passwords, tokens, client
  secrets, API key values) into converter output (and so into goldens or
  generated code).
- **Postman models** in `packages/postman_collection/lib/src/models` are
  generated: change the generator or `swagger_to_dart.yaml`, then run
  `make models` there and commit the output (CI checks drift).
- **Goldens are the review surface.** After `UPDATE_GOLDENS=1 fvm dart test -t golden`,
  read the diff of every changed `.golden`; never refresh goldens to silence a
  failure you have not explained.
- **Done means:** `fvm dart test` (includes e2e) and
  `fvm dart analyze --fatal-infos` pass in every package you touched
  (`packages/swagger_to_dart`, `packages/postman_collection`), and
  `fvm dart format` leaves the hand-written files you touched unchanged
  (CI's format step and pana both fail otherwise).
- Every string emitted into generated code goes through `dartString()`
  (`lib/src/code/string.dart`); never hand-quote.
- Use `fvm dart …`; outside the repo call the fvm SDK's `dart` binary directly
  (fvm tries to install whatever `.fvmrc` names).
- Resolve with `fvm dart pub get --no-example` (the example is a Flutter app
  with its own resolution).
