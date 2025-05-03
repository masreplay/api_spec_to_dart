import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class JsonSerializableCodeBuilder {
  const JsonSerializableCodeBuilder._();

  static JsonSerializableCodeBuilder get _instance =>
      const JsonSerializableCodeBuilder._();

  static JsonSerializableCodeBuilder get instance => _instance;

  Library convertorFile_({
    required String name,
    required ({String type, String body}) from,
    required ({String type, String body}) to,
  }) {
    final className = '${NamingUtils.instance.renameClass(name)}';
    final filename = NamingUtils.instance.renameFile(className);

    return Library(
      (b) => b
        ..name = filename
        ..directives.addAll([
          Directive.import('package:dio/dio.dart'),
          Directive.import('package:retrofit/retrofit.dart'),
        ])
        ..body.addAll([]),
    );
  }

  Class convertorClass_({
    required String name,
    required ({String type, String body}) from,
    required ({String type, String body}) to,
  }) {
    final className = '${NamingUtils.instance.renameClass(name)}';

    return Class(
      (b) => b
        ..name = className
        ..implements.add(refer('JsonConverter<${from.type}, ${to.type}>'))
        ..constructors.addAll([
          Constructor((b) => b..constant = true),
        ])
        ..methods.addAll([
          Method(
            (b) => b
              ..returns = refer(from.type)
              ..name = 'fromJson'
              ..requiredParameters.add(
                Parameter((b) => b
                  ..name = 'json'
                  ..type = refer(from.type)),
              )
              ..body = Block.of([
                Code(from.body),
              ]),
          ),
          Method(
            (b) => b
              ..returns = refer(to.type)
              ..name = 'toJson'
              ..optionalParameters.add(
                Parameter((b) => b
                  ..name = 'object'
                  ..type = refer(to.type)),
              )
              ..body = Block.of([
                Code(to.body),
              ]),
          ),
        ]),
    );
  }
}
