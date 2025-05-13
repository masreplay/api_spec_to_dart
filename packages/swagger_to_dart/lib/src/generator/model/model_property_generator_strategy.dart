import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/builder/builder.dart';
import 'package:swagger_to_dart/src/config/generation_context.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

///
/// Convert OpenApiSchema to Parameter
///
abstract class PropertyGeneratorStrategy {
  const PropertyGeneratorStrategy(this.context);

  final GenerationContext context;

  Parameter generate({
    required String className,
    required String propertyName,
    required String key,
    required OpenApiSchema schema,
  });
}

class TypePropertyGenerator extends PropertyGeneratorStrategy {
  const TypePropertyGenerator(super.context);

  @override
  Parameter generate({
    required String className,
    required String propertyName,
    required String key,
    required OpenApiSchema schema,
  }) {
    if (schema is! OpenApiSchemaType) {
      throw ArgumentError(
        'Expected OpenApiSchemaType but got ${schema.runtimeType}',
      );
    }

    final dartType = context.dartTypeConverter.getDartType(
      format: schema.format,
      type: schema.type,
      genericType: _getDependentType(schema.items),
      items: schema.items,
      title: schema.title,
      parentTitle: className,
    );

    return FreezedClassCodeBuilder.instance.parameter(
      className: className,
      name: propertyName,
      type: dartType,
      isDeprecated: false,
      defaultValue: _getTypedDefaultValue(schema, dartType),
    );
  }

  String? _getDependentType(OpenApiSchema? items) {
    return switch (items) {
      OpenApiSchemaRef value => Renaming.instance.renameRefClass(value),
      OpenApiSchemaAnyOf value =>
        context.dartTypeConverter.convertOpenApiAnyOfToDartType(value),
      _ => null,
    };
  }

  Object? _getTypedDefaultValue(
    OpenApiSchemaType schema,
    String dartType,
  ) {
    final defaultValue = schema.default_;
    if (defaultValue == null) {
      return null;
    }

    switch (schema.type) {
      case OpenApiSchemaVarType.string:
        return '\'${defaultValue}\'';
      case OpenApiSchemaVarType.boolean:
        return defaultValue.toString();
      case OpenApiSchemaVarType.integer:
      case OpenApiSchemaVarType.number:
        return defaultValue.toString();
      case OpenApiSchemaVarType.array:
        if (defaultValue is List) {
          final formattedItems = defaultValue.map((item) {
            if (item is String) {
              return '\'${item}\'';
            } else {
              return item.toString();
            }
          }).join(', ');
          return '[$formattedItems]';
        }
        return null;
      case OpenApiSchemaVarType.object:
        if (defaultValue is Map) {
          return 'const ${defaultValue}';
        }
        return null;
      case OpenApiSchemaVarType.null_:
        return 'null';
      default:
        if (dartType == 'DateTime' && defaultValue is String) {
          return 'DateTime.parse(\'${defaultValue}\')';
        } else if (dartType == 'Uri' && defaultValue is String) {
          return 'Uri.parse(\'${defaultValue}\')';
        }
        return defaultValue.toString();
    }
  }
}

class RefPropertyGenerator extends PropertyGeneratorStrategy {
  const RefPropertyGenerator(super.context);

  @override
  Parameter generate({
    required String className,
    required String propertyName,
    required String key,
    required OpenApiSchema schema,
  }) {
    if (schema is! OpenApiSchemaRef) {
      throw ArgumentError(
        'Expected OpenApiSchemaRef but got ${schema.runtimeType}',
      );
    }

    final refClassName = Renaming.instance.renameRefClass(schema);

    return FreezedClassCodeBuilder.instance.parameter(
      className: className,
      name: propertyName,
      type: refClassName,
      isDeprecated: false,
      defaultValue: _getDefaultValueCode(schema.default_, refClassName),
    );
  }

  String? _getDefaultValueCode(Object? defaultValue, String className) {
    if (defaultValue == 'null') {
      return 'null';
    } else if (defaultValue != null && defaultValue is int) {
      return '$className.value${Renaming.instance.renameProperty("$defaultValue")}';
    } else if (defaultValue != null && defaultValue is String) {
      return '$className.${Renaming.instance.renameProperty(defaultValue)}';
    }
    return null;
  }
}

class AnyOfPropertyGenerator extends PropertyGeneratorStrategy {
  const AnyOfPropertyGenerator(super.context);

  @override
  Parameter generate({
    required String className,
    required String propertyName,
    required String key,
    required OpenApiSchema schema,
  }) {
    if (schema is! OpenApiSchemaAnyOf) {
      throw ArgumentError(
        'Expected OpenApiSchemaAnyOf but got ${schema.runtimeType}',
      );
    }

    final dartType = _resolveDartType(schema, className, propertyName);

    return FreezedClassCodeBuilder.instance.parameter(
      className: className,
      name: propertyName,
      type: dartType,
      defaultValue: _getDefaultValueCode(schema.default_, dartType),
    );
  }

  String _resolveDartType(
    OpenApiSchemaAnyOf value,
    String className,
    String propertyName,
  ) {
    final isNullable = value.anyOf!.any(
      (e) => e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_,
    );

    final nonNullSchemas = value.anyOf!
        .where(
          (e) =>
              !(e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_),
        )
        .toList();

    if (nonNullSchemas.length == 1) {
      final baseType = resolveDartType(nonNullSchemas.first);
      return isNullable ? '$baseType?' : baseType;
    }

    final types =
        nonNullSchemas.map((schema) => resolveDartType(schema)).toList();

    // TODO(masreplay): handle the generation of the case
    final unionClassName = types.map(Renaming.instance.renameClass).join('Or');

    return isNullable ? '$unionClassName?' : unionClassName;
  }

  String? _getDefaultValueCode(Object? defaultValue, String className) {
    if (defaultValue == 'null') {
      return 'null';
    } else if (defaultValue != null && defaultValue is int) {
      return '$className.value${Renaming.instance.renameProperty("$defaultValue")}';
    } else if (defaultValue != null && defaultValue is String) {
      return '$className.${Renaming.instance.renameProperty(defaultValue)}';
    }
    return null;
  }

  String resolveDartType(OpenApiSchema schema) {
    return switch (schema) {
      OpenApiSchemaType value => context.dartTypeConverter.getDartType(
          type: value.type,
          format: value.format,
          genericType: switch (value.items) {
            OpenApiSchemaRef value => Renaming.instance.renameRefClass(value),
            OpenApiSchemaAnyOf value => _resolveAnyOfType(value),
            _ => null,
          },
          items: value.items,
          title: value.title,
          parentTitle: schema.title),
      OpenApiSchemaRef value => Renaming.instance.renameRefClass(value),
      OpenApiSchemaAnyOf value => _resolveAnyOfType(value),
      _ =>
        throw ArgumentError('Unsupported schema type: ${schema.runtimeType}'),
    };
  }

  String _resolveAnyOfType(OpenApiSchemaAnyOf value) {
    final nonNullSchemas = value.anyOf!
        .where(
          (e) =>
              !(e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_),
        )
        .toList();

    if (nonNullSchemas.length == 1) {
      return resolveDartType(nonNullSchemas.first);
    }

    final types =
        nonNullSchemas.map((schema) => resolveDartType(schema)).toList();
    return types.map(Renaming.instance.renameClass).join('Or');
  }
}
