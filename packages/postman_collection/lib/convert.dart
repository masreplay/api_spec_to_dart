/// Postman collections (v1, v2.0, v2.1, v3 and the Postman API envelope) to
/// OpenAPI, and JSON Schema inference from JSON samples. Pure Dart; v3
/// directories are read by `package:postman_collection/io.dart`.
library;

export 'src/convert/infer_schema.dart' show inferJsonSchema;
export 'src/convert/normalize.dart'
    show isPostmanCollection, normalizePostmanCollection;
export 'src/convert/v3.dart' show postmanCollectionFromV3Files;
