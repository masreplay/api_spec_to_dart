# postman_collection example

```sh
dart pub get
dart run lib/main.dart
```

[`lib/main.dart`](lib/main.dart):

1. records two dio requests as a collection,
2. parses it into the typed models (`PostmanCollection.fromJson`) and walks
   its items,
3. converts it to OpenAPI with `postmanToOpenApi`.

## Recording dio requests: `lib/src/dio_recipe.dart`

Before 1.0.0, `postman_collection` shipped dio/retrofit helpers that turned
requests into collection items. 1.0.0 has no dio dependency (so the converter
stays light and swagger_to_dart can depend on it); the capability lives here
as a recipe to copy into your app:

- `PostmanRecorder` is a dio `Interceptor`. Each `RequestOptions` it sees
  becomes a `PostmanItem` (method, URL with host, path and query, headers,
  and a raw JSON, text or form-data body), built with the generated models.
- `recorder.collection('My API')` wraps them in a `PostmanCollection`;
  `jsonEncode(collection.toJson())` is a v2.1 collection Postman imports.
- The `Authorization` header is not recorded, since exported collections get
  shared. Add folders, saved responses or auth with the same models.
