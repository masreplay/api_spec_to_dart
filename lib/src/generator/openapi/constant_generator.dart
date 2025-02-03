import 'package:freezed_annotation/freezed_annotation.dart';

part 'constant_generator.g.dart';

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum ConstantFields {
  page('page'),
  perPage('per_page'),
  ;

  const ConstantFields(this.value);

  factory ConstantFields.fromJson(String value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }

  final String value;

  String toJson() => _$ConstantFieldsEnumMap[this]!;

  static List<String> get valuesJson => values.map((e) => e.value).toList();
}

class ConstantGenerator {
  const ConstantGenerator();

  String run() {
    final content = StringBuffer();
//example
// abstract final class APIConstants {
//   const APIConstants._();

//   static const String page = 'page';
// }

    content.writeln('''
    // GENERATED CODE - DO NOT MODIFY BY HAND
    // Swagger to Dart Generator 
   ''');

    content.writeln('abstract class APIConstants {');
    content.writeln('const APIConstants._();');

    for (final field in ConstantFields.values) {
      content
          .writeln('static const String ${field.name} = \'${field.value}\';');
    }

    content.writeln('}');
    return content.toString();
  }
}
