import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

typedef _CustomJsonConverter = ({
  String className,
  List<Directive> directives,
  String code,
});

///
/// Generate Enum, Union, Regular models
///
class JsonConvertorGenerator extends LibraryGenerator {
  const JsonConvertorGenerator(super.context);

  ({Library library, List<Directive> directives}) build() {
    final isFlutterProject = context.isFlutterProject;

    final customJsonConverters = <_CustomJsonConverter>[];

    switch (context.config.generationSource) {
      case GenerationSource.fastAPI:
        customJsonConverters.add(getFastAPIMultipartFileJsonConvertor());
        if (isFlutterProject)
          customJsonConverters.add(getTimeOfDayStringJsonConvertor());
        break;
      case GenerationSource.dotnet:
        customJsonConverters.add(getTimeOfDayStringJsonConvertor());
        break;
      default:
        break;
    }

    final library = Library(
      (b) => b
        ..name = 'json_converter'
        ..directives.addAll([
          Directive.import('package:dio/dio.dart'),
          // TODO: check if isFlutter project
          Directive.import('package:flutter/material.dart'),
          Directive.import('models.dart'),
          Directive.import('package:json_annotation/json_annotation.dart'),
        ])
        ..body.addAll([
          ...context.jsonConvertor,
          for (final entry in customJsonConverters) Code(entry.code),
          Code('''
const jsonSerializableConverters = <JsonConverter>[
  ${customJsonConverters.map((e) => '${e.className}()').join(',\n')}
  ${context.jsonConvertor.map((e) => '${e.name}()').join(',\n')}
];

const jsonSerializable = JsonSerializable(
  converters: jsonSerializableConverters,
);
''')
        ]),
    );

    return (
      library: library,
      directives: [
        ...library.directives,
        ...customJsonConverters.map((e) => Directive.export(e.className)),
      ]
    );
  }

  _CustomJsonConverter getFastAPIMultipartFileJsonConvertor() {
    final String className = 'MultipartFileJsonConverter';
    return (
      className: className,
      code: '''
class $className implements JsonConverter<MultipartFile, MultipartFile> {
  const $className();

  @override
  MultipartFile fromJson(MultipartFile json) => json;

  @override
  MultipartFile toJson(MultipartFile object) => object;
}
''',
    );
  }

  _CustomJsonConverter getTimeOfDayStringJsonConvertor() {
    final String className = 'TimeOfDayStringJsonConverter';
    return (
      className: className,
      directives: [],
      code: '''
class $className implements JsonConverter<TimeOfDay, String> {
  const $className();

  @override
  TimeOfDay fromJson(String json) {
    if (json.contains(':')) {
      final time = json.split(':');
      return TimeOfDay(hour: int.parse(time[0]), minute: int.parse(time[1]));
    } else {
      final regex = RegExp(r'PT(?:(\d+)H)?(?:(\d+)M)?');
      final match = regex.firstMatch(json);

      int hours = match?.group(1) != null ? int.parse(match!.group(1)!) : 0;
      int minutes = match?.group(2) != null ? int.parse(match!.group(2)!) : 0;

      return TimeOfDay(hour: hours, minute: minutes);
    }
  }

  @override
  String toJson(TimeOfDay object) {
    return '\${object.hour.toString().padLeft(2, '0')}:\${object.minute.toString().padLeft(2, '0')}:00';
  }
} 
''',
    );
  }
}
