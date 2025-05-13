import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/config/generation_context.dart';
import 'package:swagger_to_dart/src/utils/renaming.dart';

class SwaggerToDartCodeBuilder {
  SwaggerToDartCodeBuilder._();

  static SwaggerToDartCodeBuilder get _instance => SwaggerToDartCodeBuilder._();
  static SwaggerToDartCodeBuilder get instance => _instance;

  Library class_({
    required GenerationContext context,
    required List<String> clients,
  }) {
    final className = Renaming.instance.renameClass(
      context.swaggerToDart.apiClientClassName,
    );

    final parameters = [
      (
        optional: true,
        parameter: Parameter(
          (b) => b
            ..name = 'dio'
            ..type = refer('Dio'),
        )
      ),
      (
        optional: false,
        parameter: Parameter(
          (b) => b
            ..name = 'baseUrl'
            ..type = refer('String?'),
        )
      ),
      (
        optional: false,
        parameter: Parameter(
          (b) => b
            ..name = 'errorLogger'
            ..type = refer('ParseErrorLogger?'),
        )
      ),
    ];

    return Library(
      (b) => b
        ..name = 'api_base_client'
        ..docs.addAll([
          context.openApi.info.title,
          if (context.openApi.info.description case final description?)
            description,
          if (context.openApi.info.version case final version?) version,
          DateTime.now().toString(),
        ])
        ..directives.addAll([
          Directive.import('package:dio/dio.dart'),
          Directive.import('package:retrofit/retrofit.dart'),
          context.importModelsDirective,
        ])
        ..body.add(
          Class((b) => b
            ..name = className
            ..constructors.addAll([
              Constructor((b) => b
                    ..requiredParameters.addAll([
                      for (final item in parameters)
                        if (!item.optional) item.parameter,
                    ])
                  // ..optionalParameters.addAll([
                  //   for (final item in parameters)
                  //     if (item.optional) item.parameter,
                  // ]),
                  ),
            ])
            ..fields.addAll([
              for (final item in parameters)
                Field(
                  (b) => b
                    ..name = item.parameter.name
                    ..type = item.parameter.type,
                ),
            ])),
        ),
    );
  }

  Library exports() {
    return Library((b) => b
      ..name = 'exports'
      ..directives.addAll([
        Directive.export('package:models/models.dart'),
        Directive.export('package:models/models.dart'),
      ]));
  }

  Library convertors(bool isFlutterProject) {
    final buffer = StringBuffer();

    buffer.writeln("import 'package:dio/dio.dart';");
    buffer.writeln("import 'package:json_annotation/json_annotation.dart';");
    if (isFlutterProject)
      buffer.writeln("import 'package:flutter/material.dart';");

    buffer.write('''
const convertors = <JsonConverter>[
  MultipartFileJsonConverter(),
  ${isFlutterProject ? 'TimeOfDayStringJsonConverter()' : ''}
  ${isFlutterProject ? 'ColorHexStringJsonConverter()' : ''}
];
''');

    buffer.writeln('''
class MultipartFileJsonConverter implements JsonConverter<MultipartFile, MultipartFile> {
  const MultipartFileJsonConverter();

  @override
  MultipartFile fromJson(MultipartFile json) => json;

  @override
  MultipartFile toJson(MultipartFile object) => object;
}
''');

    if (isFlutterProject) {
      buffer.writeln('''
class ColorHexStringJsonConverter implements JsonConverter<Color, String> {
  const ColorHexStringJsonConverter();

  @override
  Color fromJson(String json) {
    return Color(int.parse(json.substring(1), radix: 16));
  }

  @override
  String toJson(Color? object) {
    // ignore: deprecated_member_use
    return '#\${object?.value.toRadixString(16)}';
  }
}
''');

      buffer.writeln('''
/// [TimeOfDay] json converter
/// example: PT8H30M
class TimeOfDayStringJsonConverter implements JsonConverter<TimeOfDay, String> {
  const TimeOfDayStringJsonConverter();

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
''');
    }
    return Library((b) => b
      ..name = 'exports'
      ..directives.addAll([
        Directive.import('package:dio/dio.dart'),
      ])
      ..body.addAll([
        refer(buffer.toString()),
      ]));
  }
}
