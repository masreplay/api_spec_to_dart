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
- Exported collections get shared, so credentials stay out: headers whose
  names look like credentials (`Authorization`, `Proxy-Authorization`,
  `Cookie`, `X-Api-Key`, …) are not recorded, and query, form and
  urlencoded values with such names become `<redacted>`. JSON bodies are
  recorded as sent; scrub them yourself if they carry secrets.
- Recording never breaks the request: a body that is not JSON is recorded as
  its `toString()`. A `Map` sent as `application/x-www-form-urlencoded` is
  recorded as an urlencoded body.
- Add folders, saved responses or auth with the same models.

`test/dio_recipe_test.dart` covers the recipe (`dart test`).
