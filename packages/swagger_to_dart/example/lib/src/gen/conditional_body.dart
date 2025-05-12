library;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'models.dart';
part 'conditional_body.freezed.dart';
part 'conditional_body.g.dart'; // ConditionalBody

@freezed
abstract class ConditionalBody with _$ConditionalBody {
  const ConditionalBody._();

  const factory ConditionalBody({
    /// itemId
    @JsonKey(name: itemIdKey) int? itemId,

    /// itemName
    @JsonKey(name: itemNameKey) String? itemName,
  }) = _ConditionalBody;

  factory ConditionalBody.fromJson(Map<String, dynamic> json) =>
      _$ConditionalBodyFromJson(json);

  static const String itemIdKey = "itemId";

  static const String itemNameKey = "itemName";
}
