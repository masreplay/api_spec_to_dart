import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'conditional_body.freezed.dart';
part 'conditional_body.g.dart';

/// ConditionalBody
@freezed
abstract class ConditionalBody with _$ConditionalBody {
  @JsonSerializable(converters: Convertors.convertors)
  const factory ConditionalBody({
    required int? itemId,
    required String? itemName,
  }) = _ConditionalBody;

  factory ConditionalBody.fromJson(Map<String, dynamic> json) =>
      _$ConditionalBodyFromJson(json);
}
