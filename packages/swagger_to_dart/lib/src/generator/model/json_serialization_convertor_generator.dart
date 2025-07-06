import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

typedef CustomJsonConverter = ({
  String classCall,
  List<Directive> imports,
  List<Directive> exports,
  String code,
});

///
/// Generate Enum, Union, Regular models
///
class JsonConvertorGenerator extends LibraryGenerator {
  const JsonConvertorGenerator(super.context);

  ({Library library, List<Directive> directives}) build() {
    final isFlutterProject = context.isFlutterProject;

    final customJsonConverters = <CustomJsonConverter>[];

    switch (context.config.generationSource) {
      case GenerationSource.fastAPI:
        customJsonConverters.add(getFastAPIMultipartFileJsonConvertor());
        if (isFlutterProject) {
          customJsonConverters.add(getTimeOfDayStringJsonConvertor());
          customJsonConverters.add(getColorStringJsonConvertor());
        }
        break;
      case GenerationSource.dotnet:
        customJsonConverters.add(getTimeOfDayStringJsonConvertor());
        break;
      default:
        break;
    }

    final buffer = StringBuffer();
    buffer.write('''
const jsonSerializableConverters = <JsonConverter>[
''');
    if (customJsonConverters.isNotEmpty) {
      buffer.write(customJsonConverters.map((e) => e.classCall).join(',\n'));
      buffer.write(',\n');
    }
    if (context.jsonConvertor.isNotEmpty) {
      buffer.write(context.jsonConvertor.map((e) => '${e.name}()').join(',\n'));
    }
    buffer.write('];\n');
    buffer.write('''
const jsonSerializable = JsonSerializable(
  converters: jsonSerializableConverters,
);
''');

    final library = Library(
      (b) => b
        ..name = 'json_converter'
        ..directives.addAll([
          Directive.import('package:dio/dio.dart'),
          Directive.import('exports.dart'),
          Directive.import('package:json_annotation/json_annotation.dart'),
          for (final entry in customJsonConverters) ...entry.imports,
        ])
        ..body.addAll([
          ...context.jsonConvertor,
          for (final entry in customJsonConverters) Code(entry.code),
          Code(buffer.toString()),
        ]),
    );

    return (
      library: library,
      directives: [
        ...library.directives,
        ...customJsonConverters.expand((e) => e.exports),
      ]
    );
  }

  CustomJsonConverter getFastAPIMultipartFileJsonConvertor() {
    return (
      classCall: 'MultipartFileJsonConverter()',
      imports: [
        Directive.import('package:dio/dio.dart'),
        Directive.import('package:json_annotation/json_annotation.dart'),
      ],
      exports: [
        Directive.export('package:flutter/material.dart'),
      ],
      code: r'''
class MultipartFileJsonConverter
    implements JsonConverter<MultipartFile, MultipartFile> {
  const MultipartFileJsonConverter();

  @override
  MultipartFile fromJson(MultipartFile json) => json;

  @override
  MultipartFile toJson(MultipartFile object) => object;
}
''',
    );
  }

  CustomJsonConverter getTimeOfDayStringJsonConvertor() {
    return (
      classCall: 'TimeOfDayStringJsonConverter()',
      imports: [
        Directive.import('package:flutter/material.dart'),
        Directive.import('package:json_annotation/json_annotation.dart'),
      ],
      exports: [
        Directive.export('package:flutter/material.dart'),
      ],
      code: r'''
class TimeOfDayStringJsonConverter implements JsonConverter<TimeOfDay, String> {
  const TimeOfDayStringJsonConverter();

  // 1:30:00 -> 1:30
  // PT1H30M -> 1:30:00
  @override
  TimeOfDay fromJson(String json) {
    if (json.contains(':')) {
      final time = json.split(':');
      return TimeOfDay(
        hour: int.tryParse(time[0]) ?? 0,
        minute: int.tryParse(time[1]) ?? 0,
      );
    } else {
      final regex = RegExp(r'PT(?:(\d+)H)?(?:(\d+)M)?');
      final match = regex.firstMatch(json);

      final hours =
          match?.group(1) != null ? int.tryParse(match!.group(1)!) ?? 0 : 0;
      final minutes =
          match?.group(2) != null ? int.tryParse(match!.group(2)!) ?? 0 : 0;

      return TimeOfDay(
        hour: hours,
        minute: minutes,
      );
    }
  }

  // 1:30 -> 1:30:00
  @override
  String toJson(TimeOfDay object) {
    final hour = object.hour.toString().padLeft(2, '0');
    final minute = object.minute.toString().padLeft(2, '0');
    final second = '00';

    return '$hour:$minute:$second';
  }
}
''',
    );
  }

  CustomJsonConverter getColorStringJsonConvertor() {
    return (
      classCall: 'ColorStringJsonConverter()',
      imports: [
        Directive.import('package:flutter/material.dart'),
        Directive.import('package:json_annotation/json_annotation.dart'),
      ],
      exports: [
        Directive.export('package:flutter/material.dart'),
      ],
      code: r'''
class ColorStringJsonConverter implements JsonConverter<Color, String> {
  const ColorStringJsonConverter();

  // #000000 -> Color(0xFF000000)
  // #00000000 -> Color(0x00000000)
  @override
  Color fromJson(String json) {
    if (json.startsWith('#')) {
      return Color(int.parse(json.substring(1), radix: 16));
    } else {
      return Color(int.parse(json, radix: 16));
    }
  }

  // #000000 -> Color(0xFF000000)
  // #00000000 -> Color(0x00000000)
  @override
  String toJson(Color object) {
    return '#${object.toARGB32().toRadixString(16).padLeft(8, '0')}';
  }
}
''',
    );
  }
}
