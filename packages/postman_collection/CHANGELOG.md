## 0.1.0

- Build with freezed 4 / json_serializable 6.14 and the latest Dart SDK
  (SDK floor `^3.9.0`).
- **Breaking:** freezed 3+ no longer generates `map`/`when` helpers — use Dart
  pattern matching (`switch (mode) { PostmanCollectionRequestMode(...) => ... }`).
- Remove stray `*.postman_collection.json` outputs that were shipped inside `lib/`.
- Fix the package test pointing at a non-existent fixture.

## 0.0.9

- fix multipart formdata issue

## 0.0.8

- Add support for multipart formdata

## 0.0.7

- Read version from string for example 1.0.0
- Read version from pubspec.yaml

## 0.0.6

- Fix request body type

## 0.0.5

- Fix query data type

## 0.0.4

- Add request mode

## 0.0.3

- Fix url in collection

## 0.0.2

- Added new feature.
- Fixed bug.
- Add more documentation.

## 0.0.1

- Initial version.
