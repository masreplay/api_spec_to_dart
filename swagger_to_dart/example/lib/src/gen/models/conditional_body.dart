import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'conditional_body.freezed.dart';
part 'conditional_body.g.dart';

/// ConditionalBody
@freezed
abstract class ConditionalBody with _$ConditionalBody {
  const ConditionalBody._();

  static const String itemIdKey = 'item_id';
  static const String itemNameKey = 'item_name';

  @JsonSerializable(converters: convertors)
  const factory ConditionalBody({
    /// Item Id, Item ID (if provided)
    @JsonKey(name: ConditionalBody.itemIdKey) required int? itemId,

    /// Item Name, Item name (if provided)
    @JsonKey(name: ConditionalBody.itemNameKey) required String? itemName,
  }) = _ConditionalBody;

  factory ConditionalBody.fromJson(Map<String, dynamic> json) =>
      _$ConditionalBodyFromJson(json);
}
