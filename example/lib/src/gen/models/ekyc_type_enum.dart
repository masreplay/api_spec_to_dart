import 'package:freezed_annotation/freezed_annotation.dart';

part 'ekyc_type_enum.g.dart';

///EkycTypeEnum

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum EkycTypeEnum {
  innovatrics('innovatrics'),
  ;

  const EkycTypeEnum(this.value);

  factory EkycTypeEnum.fromJson(String value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
  final String value;

  String toJson() => _$EkycTypeEnumEnumMap[this]!;
}
