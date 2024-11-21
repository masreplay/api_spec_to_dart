import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_type_enum.g.dart';

///OrderTypeEnum

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum OrderTypeEnum {
  ekyc('ekyc'),
  course('course'),
  certificate('certificate'),
  payment('payment'),
  scholarship('scholarship'),
  enrollment('enrollment'),
  ;

  const OrderTypeEnum(this.value);

  factory OrderTypeEnum.fromJson(String value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
  final String value;

  String toJson() => _$OrderTypeEnumEnumMap[this]!;
}
