/// ISBNModel
/// {
///     "properties": {
///         "isbn": {
///             "type": "string",
///             "title": "Isbn"
///         }
///     },
///     "type": "object",
///     "required": [
///         "isbn"
///     ],
///     "title": "ISBNModel"
/// }
library;

import 'exports.dart';
part 'isbn_model.freezed.dart';
part 'isbn_model.g.dart'; // IsbnModel

@freezed
abstract class IsbnModel with _$IsbnModel {
  const IsbnModel._();

  @jsonSerializable
  const factory IsbnModel({
    /// isbn
    @JsonKey(name: IsbnModel.isbnKey) required String isbn,
  }) = _IsbnModel;

  factory IsbnModel.fromJson(Map<String, dynamic> json) =>
      _$IsbnModelFromJson(json);

  static const String isbnKey = r'isbn';
}
