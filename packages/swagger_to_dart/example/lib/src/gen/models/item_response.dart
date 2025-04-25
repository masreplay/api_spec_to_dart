import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'item_response.freezed.dart';
part 'item_response.g.dart';

/// ItemResponse
@freezed
abstract class ItemResponse with _$ItemResponse {
  @JsonSerializable(converters: Convertors.convertors)
  const factory ItemResponse({
    required int id,
    required String name,
    required String? description,
    required double price,
    required double? tax,
  }) = _ItemResponse;

  factory ItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemResponseFromJson(json);
}
