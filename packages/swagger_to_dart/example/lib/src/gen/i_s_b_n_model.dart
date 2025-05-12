library;

import 'exports.dart';
part 'i_s_b_n_model.freezed.dart';
part 'i_s_b_n_model.g.dart'; // ISBNModel

@freezed
abstract class ISBNModel with _$ISBNModel {
  const ISBNModel._();

  const factory ISBNModel({
    /// isbn
    @JsonKey(name: ISBNModel.isbnKey) required String isbn,
  }) = _ISBNModel;

  factory ISBNModel.fromJson(Map<String, dynamic> json) =>
      _$ISBNModelFromJson(json);

  static const String isbnKey = "isbn";
}
