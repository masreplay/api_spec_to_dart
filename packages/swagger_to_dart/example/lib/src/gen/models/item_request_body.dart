import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'item_request_body.freezed.dart';
part 'item_request_body.g.dart';

/// ItemRequestBody
@freezed
abstract class ItemRequestBody with _$ItemRequestBody {
  @JsonSerializable(converters: Convertors.convertors)
  const factory ItemRequestBody({
    required String name,
    required String? description,
    required double price,
    required double? tax,
  }) = _ItemRequestBody;

  factory ItemRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ItemRequestBodyFromJson(json);
}
