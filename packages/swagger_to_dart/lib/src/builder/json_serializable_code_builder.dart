import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/utils/naming_utils.dart';

class JsonSerializableCodeBuilder {
  const JsonSerializableCodeBuilder._();

  static JsonSerializableCodeBuilder get _instance =>
      const JsonSerializableCodeBuilder._();

  static JsonSerializableCodeBuilder get instance => _instance;

  Library convertorFile_({
    required String className,
    required ({String type, String body}) from,
    required ({String type, String body}) to,
  }) {
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
    required String className,
    required ({String type, String body}) from,
    required ({String type, String body}) to,
  }) {
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

  // enum OpenApiSchemaVarType {
  //   @JsonValue('string')
  //   string,
  //   @JsonValue('number')
  //   number,
  //   @JsonValue('integer')
  //   integer,
  //   @JsonValue('boolean')
  //   boolean,
  //   @JsonValue('array')
  //   array,
  //   @JsonValue('object')
  //   object,
  //   @JsonValue('null')
  //   null_,

  //   $unknown,
  // }

  Enum jsonSerializableEnum_({
    required String className,
    required List<String> values,
  }) {
    return Enum(
      (b) => b
        ..name = className
        ..values.addAll([
          for (final value in values)
            EnumValue(
              (b) => b
                ..annotations.add(refer('@JsonValue($value)'))
                ..name = value,
            ),
        ]),
    );
  }
}
