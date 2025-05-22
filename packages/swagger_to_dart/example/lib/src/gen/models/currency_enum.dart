// CurrencyEnum
// {
//     "properties": {},
//     "type": "Hello",
//     "enum": [
//         "HI"
//     ]
// }

library;

import 'exports.dart';
part 'currency_enum.g.dart';

@JsonEnum(alwaysCreate: true)
enum CurrencyEnum {
  @JsonValue("HI")
  hi;

  String toJson() => _$CurrencyEnumEnumMap[this]!;
}
