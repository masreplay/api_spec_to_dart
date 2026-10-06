# Official schemas

Unmodified copies of the official JSON Schemas, retrieved 2026-10-02. Tests
validate converter inputs and outputs against them, and `postman_collection`'s
typed models are generated from `postman/v2.1.0/collection.json`.

| File | Source |
|---|---|
| `postman/v1.0.0/collection.json` | https://schema.postman.com/collection/json/v1.0.0/draft-07/collection.json |
| `postman/v2.0.0/collection.json` | https://schema.postman.com/collection/json/v2.0.0/draft-07/collection.json |
| `postman/v2.1.0/collection.json` | https://schema.postman.com/collection/json/v2.1.0/draft-07/collection.json |
| `openapi/2.0/schema.json` | https://spec.openapis.org/oas/2.0/schema/2017-08-27 |
| `openapi/3.0/schema.json` | https://spec.openapis.org/oas/3.0/schema/2024-10-18 |
| `openapi/3.1/schema.json` | https://spec.openapis.org/oas/3.1/schema/2026-08-03 |
| `openapi/3.2/schema.json` | https://spec.openapis.org/oas/3.2/schema/2026-08-30 |

Postman's current app format, collection v3.0.0, is a YAML file tree. No JSON
Schema is published for it. The field reference is
[Postman Collections schemas](https://learning.postman.com/docs/use/use-collections/collections-schemas)
and the `collection-schema-v3` skill in
[postmanlabs/postman-plugin](https://github.com/postmanlabs/postman-plugin/tree/main/skills/collection-schema-v3).

The files here stay untouched. `package:json_schema` 5.2.2 cannot compile
two constructs, so the tests' loader (`test/support/official_schema.dart` in
each package) applies two semantically equivalent rewrites in memory:

- `dependentSchemas` (OpenAPI 3.1/3.2 state parameter
  `style`/`explode`/`example` rules with it): each `dependentSchemas: {k: S}`
  becomes `allOf: [{if: {required: [k]}, then: S}]`, with `S` moved under
  `$defs` and the `$ref`s into it repointed.
- Remote `$ref`s that are alone in their object (the Swagger 2.0 schema
  refers to draft-04 that way, and 5.2.2 fails on a local ref into such a
  definition) are wrapped as `allOf: [{$ref}]` (swagger_to_dart's loader,
  the one that validates Swagger 2.0 inputs).
