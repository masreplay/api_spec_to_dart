# CLAUDE.md

Read `CONTRIBUTING.md` first: setup, commands and the red-green loop live there.

Rules for agents working in this repo:

- **Test first, always.** No change under `packages/swagger_to_dart/lib/`
  without a test you watched fail. Bugs in generated code get a fixture under
  `test/fixtures/` plus the cheapest failing signal (unit, golden, e2e or
  round-trip).
- **Goldens are the review surface.** After `UPDATE_GOLDENS=1 fvm dart test -t golden`,
  read the diff of every changed `.golden`; never refresh goldens to silence a
  failure you have not explained.
- **Done means:** `fvm dart test` (includes e2e) and
  `fvm dart analyze --fatal-infos` pass in `packages/swagger_to_dart`.
- Every string emitted into generated code goes through `dartString()`
  (`lib/src/code/string.dart`); never hand-quote.
- Use `fvm dart …`; outside the repo call the fvm SDK's `dart` binary directly
  (fvm tries to install whatever `.fvmrc` names).
- Resolve with `fvm dart pub get --no-example` (the example is a Flutter app
  with its own resolution).
