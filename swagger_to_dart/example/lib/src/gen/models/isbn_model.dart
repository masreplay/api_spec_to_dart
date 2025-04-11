import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "isbn_model.freezed.dart";
part "isbn_model.g.dart";

/// ISBNModel
@freezed
abstract class IsbnModel with _$IsbnModel {
  const IsbnModel._();

  static const String isbnKey = "isbn";

  @JsonSerializable(converters: convertors)
  const factory IsbnModel({
    /// isbn
    @JsonKey(name: IsbnModel.isbnKey) required String isbn,
  }) = _IsbnModel;

  factory IsbnModel.fromJson(Map<String, dynamic> json) =>
      _$IsbnModelFromJson(json);
}
