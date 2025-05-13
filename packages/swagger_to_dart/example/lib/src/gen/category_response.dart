library category_response;

import 'exports.dart';
part 'category_response.freezed.dart';
part 'category_response.g.dart'; // CategoryResponse

@freezed
abstract class CategoryResponse with _$CategoryResponse {
  const CategoryResponse._();

  const factory CategoryResponse({
    /// id
    @JsonKey(name: CategoryResponse.idKey) required int id,

    /// name
    @JsonKey(name: CategoryResponse.nameKey) required String name,
  }) = _CategoryResponse;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);

  static const String idKey = "id";

  static const String nameKey = "name";
}
