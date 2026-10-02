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

`package:json_schema` 5.2.2 cannot compile `dependentSchemas`, so the tests
strip it when loading the OpenAPI schemas. That keyword only checks parameter
`style`/`explode` combinations; the files here stay untouched.
