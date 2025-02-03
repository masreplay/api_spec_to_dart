## 0.0.1

- Initial version.

## 0.0.2

- Add main.dart to the example

## 0.0.3

- Add description and documentation to the generation

## 0.0.4

- Fix multi line description

## 0.0.5

- Fix multi part as class

## 0.0.6

- Fix bugs

## 0.0.7

- Add `@deprecated` annotation
- Fix `@JsonKey(name: '')` name, was changing the name to snake_case

## 0.0.8

- Fix read the `JsonKey.name` from swagger `key` instead of the `title`

## 0.0.9

- Include metadata in `ApiClient` generated class

## 0.1.0

- Add support to `color-hex` `format` in `string` type

## 0.1.1

- Fix query name in `@Query` annotation by @shahad999

## 0.1.2

- Support one of as direct request body
  
## 0.1.3
- Fix List type

## 0.1.4
- add support to `list` of type `oneOf` by @shahad999

## 0.1.5
- union class fields

## 0.1.6
- `MultipartFile` support instead of `File` in `part` by @shahad999

## 0.1.8
- Add field name from the api like 'per_page' to 'perPageKey = 'per_page';' by @shahad999'