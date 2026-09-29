# swagger_to_dart 5.0.0 — TDD foundation, fixes, modernization

Date: 2026-09-29 · Branch: `feat/v5-tdd`

## Goal

Make the repository test-driven (every behaviour change starts as a failing
test, CI blocks regressions) and use that harness to fix the generator's known
defects and open issues, shipping as **5.0.0** on the latest Flutter/Dart.

## Decisions (agreed with the maintainer)

| Topic | Decision |
|---|---|
| Scope | Everything: test harness + CI, test-first fixes, internal refactor, tooling modernization |
| Version | 5.0.0. Breaking changes allowed when they fix bugs or modernize; each one listed in the CHANGELOG migration section |
| Toolchain | Develop/CI on latest stable (Flutter 3.47 / Dart 3.13). Consumer SDK floor `^3.9.0` |
| Tests | Layered: unit → golden fixtures → e2e compile check → example drift check. Round-trip (run generated `fromJson`/`toJson`) only where an issue needs it |
| Open PRs | Idea sources, not merge candidates. Reimplement what helps, with tests, then close #62 and #65 |
| Process | No further questions. Work on a feature branch; never push to `main`, never tag/publish |

## Baseline (2026-09-29, before any change)

- `swagger_to_dart` (~4.4k LOC) has **no tests**; only CI is tag-triggered publish.
- Working tree had an uncommitted `additionalProperties: Object?` fix without
  regenerated freezed code → package did not compile.
- `dart analyze` reports 12 false errors from the nested Flutter `convertors/` dir.
- pub.dev score 150/160 (lint + formatting findings).
- On the latest toolchain the example only builds after upgrading
  `retrofit_generator` (≥10) and raising its SDK floor (json_serializable ≥6.10
  emits null-aware elements, Dart 3.8). Then generated code has 0 errors,
  24 warnings (duplicate/unused imports, `dynamic?`), ~9.4k infos (double
  quotes, library names).
- Committed example output is stale vs. the generator.

## Design

### 1. Repository & tooling

- **Pub workspace** at the root (`resolution: workspace`), pure-Dart members only:
  `packages/swagger_to_dart`, `packages/swagger_to_dart_e2e` (new, unpublished),
  `packages/postman_collection` (if its upgrade is mechanical; otherwise left standalone).
  Flutter packages (the example) stay standalone so plain Dart can resolve and
  publish the workspace.
- Delete dead config: `melos.yaml` (TODO stub), empty `.pre-commit-config.yaml`,
  tracked root `.dart_tool/` and `pubspec.lock`, junk timestamped JSON files in
  `postman_collection/lib/`, the nested `convertors/` package (its converters get
  tested through the generated example instead).
- Dependencies: allow latest everywhere, drop the `analyzer: 7.3.0` pin, `lints ^6`,
  drop unused `logger`; replace `dio` (URL fetch) with `dart:io HttpClient` and
  drop `retrofit`/`dio` imports used only for type names → fewer constraints
  forced onto consumers.
- Regenerate the package's own freezed/json code with the latest builders.
- Makefiles/README: `build_runner build` (the `--delete-conflicting-outputs`
  flag no longer exists), correct CLI usage (`--config` only).

### 2. Generator pipeline (testability seams)

- `SwaggerToDartCodeGenerator.render()` → `Map<String path, String source>`,
  pure and in-memory; `write()` does the I/O. `generate()` = render + write.
- Formatting failures no longer vanish: the unformatted source is written for
  inspection and the run exits non-zero listing every failing file.
- `GenerationContext.generate()` and strategy `generate()` become synchronous
  (they were unawaited `async` → errors surfaced as unhandled async crashes).
- `GenerationContextBuilder(rootDirectory:)` instead of hard-wired
  `Directory.current`; clear error when the input file is missing.
- `Recase` becomes stateless (its global mutable set caused `id` → `iD`, #63,
  and made output depend on generation order).
- One string-literal helper (`dartString`) used for every emitted string
  (annotations, enum `@JsonValue`, keys, defaults, extras) — single quotes,
  escapes `\ ' $` and control chars.
- Model registry: registering a model name that already exists with *different*
  content picks a suffixed name instead of silently dropping the second model.

### 3. Test harness (`packages/swagger_to_dart/test`)

- `test/support/` — `renderFixture(dir)` builds a `GenerationContext` from a
  fixture's `openapi.json` + optional `swagger_to_dart.yaml` + flutter flag,
  returns `render()` output.
- **Unit tests** for pure pieces: recase/renaming, generic parsers, type
  converter, default values, config parsing, OpenAPI parsing, string literals.
- **Golden tests** (`test/golden_test.dart`): each `test/fixtures/<name>/`
  holds a minimal spec for one feature/issue plus `golden/**.golden` expected
  files. `UPDATE_GOLDENS=1 dart test` rewrites them. Goldens use a `.golden`
  suffix so the analyzer/formatter never touch them. Tagged `golden`.
- **E2E compile check** (`test/e2e_test.dart`, tag `e2e`): renders every
  fixture into `packages/swagger_to_dart_e2e/lib/gen/<fixture>/`, runs
  `build_runner build` once, then `dart analyze --fatal-warnings` on the output.
  This is the red test for every "generates invalid Dart" issue.
- **Example drift** (CI only, Flutter): regenerate `example/`, fail on diff in
  swagger_to_dart output, run build_runner + analyze + `flutter test`
  (converter behaviour tests live in `example/test`). build_runner outputs of the
  example are no longer committed.

### 4. CI (`.github/workflows/ci.yml`)

On push to `main` and every PR:
1. `core` (Dart stable): pub get, format check (non-generated files),
   `dart analyze --fatal-infos`, `dart test` (unit + golden + e2e).
2. `example` (Flutter stable): regenerate → drift check → build_runner →
   analyze → `flutter test`.
3. `pana` (Dart stable): pub.dev score must stay 160/160 (includes the
   downgrade/lower-bound analysis pub.dev runs).

`publish.yml` runs the same checks before `dart pub publish`.
`CLAUDE.md` + `CONTRIBUTING.md` document the red-green loop and commands.

### 5. Generated-code behaviour changes (5.0.0)

| Change | Why | Issue |
|---|---|---|
| Two-letter words recased consistently (`id` not `iD`) | stateless Recase | #63 |
| Optional query/header params are nullable & not `required`; path params always required | honour `required` | #50, #52 |
| Generic models honour the `required` list | were always required | #52 |
| Multipart wrapper forwards every parameter | path/header params dropped → no compile | #57 |
| Inline enums without title get a context name (`<Class><Property>`) | NPE crash | #55, #61 |
| Only real reserved words escaped, as `name_`→ no more `externalaa`/`defaultAA` | built-in identifiers are legal | #51 |
| `some-header` → `someHeader` (hyphen is a word separator) | readable names | #28 |
| Discriminated unions: plain `sealed` class, flat JSON via discriminator, no `value` envelope; works as field, list item, request and response body | union JSON never matched real payloads | #49, PR #65 |
| Top-level component `oneOf`/`anyOf` generate unions | were regular models | #58, PR #62 |
| Non-discriminated unions try variants in order | previously always fell back | — |
| `allOf` merged into one model; single-item `allOf` unwrapped | properties silently missing | — |
| OpenAPI 3.1 `type: [T, "null"]`, nullable enums, missing `type` | parse failures | PR #62 |
| Binary responses (`format: binary`, `image/*`, `application/octet-stream`) → `Uint8List` + bytes response type, all sources | image downloads | #54 |
| Every emitted string single-quoted & escaped; no library names; deduped imports; no `dynamic?` | invalid code, 9k lint infos | #59, #60, #64 |
| Enum defaults respect `model.enums` renames; string defaults escaped | compile errors | — |
| Flutter-only converters emitted only for Flutter projects; no `flutter` export in pure Dart | pure Dart projects failed to compile | — |
| `#RRGGBB` colors parse as opaque | converter produced transparent colors | — |
| `enum_fallback_type` default is `throw` (unchanged runtime); `unknown` now really adds an `unknown` member | documented option never worked | — |
| Spec fetched from `url` always refreshes the local copy; fetch failure falls back loudly | stale specs | (WIP fix) |
| `additionalProperties` may be a schema | Swashbuckle specs crashed | (WIP fix) |

### 6. Issue & PR disposition

| # | Disposition |
|---|---|
| #64, #60, #59 | Fixed by string-literal helper; regression fixtures |
| #63, #57, #55, #61, #51, #50, #52, #49, #58, #28, #54 | Fixed test-first (table above) |
| #56 | Verify with fixture (content types are plain strings now); fixed if still failing |
| #38 | Out of scope (multi-format plugin architecture) — stays open |
| PR #62 | Ideas reimplemented (top-level unions, 3.1 nulls, param nullability, multipart forwarding). Not merged: its branch also deletes `postman_collection/` and `frameworks/` and adds a private API's generated code. Close |
| PR #65 | Ideas reimplemented (escaping, flat union JSON, inline-union naming). Close |

## Out of scope

Swagger 2.0 input, new CLI flags beyond `--config`, plugin architecture (#38),
new postman_collection features.

## Risks

- Golden output depends on the `dart_style` version → goldens asserted on
  latest stable only; a formatter release can require `UPDATE_GOLDENS=1`.
- Union redesign changes the generated union API surface (`fromJson`/`toJson`
  semantics, no freezed `copyWith` on union wrappers) — documented migration.
- E2E build_runner step adds ~1 min to CI; kept behind the `e2e` tag locally.
