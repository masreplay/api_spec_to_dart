import 'package:swagger_to_dart/swagger_to_dart.dart';

class OpenApiSchemaDartTypeConverter {
  const OpenApiSchemaDartTypeConverter(this.context);

  final GenerationContext context;

  String? getDefaultValue(OpenApiSchema schema) {
    final default_ = schema.default_;
    switch (schema) {
      case OpenApiSchemaType schema:
        return _dartLiteral(default_);
      case OpenApiSchemaRef schema:
        final dartType = getRef(schema);
        final refSchema = context.openApi.getOpenApiSchemasByRef(schema.ref!)!;

        if (refSchema.enum_ != null && default_ != null) {
          return '$dartType.${default_}';
        }

        return default_ == null ? null : default_.toString();
      case OpenApiSchemaAnyOf schema:
        return default_ == null ? null : default_.toString();
      case OpenApiSchemaOneOf schema:
        return default_ == null ? null : default_.toString();
    }
  }

  String? _dartLiteral(Object? value) {
    if (value == null) return null;
    if (value is String) {
      return "'${value.replaceAll("'", "\\'")}'";
    }
    if (value is num || value is bool) {
      return value.toString();
    }
    if (value is List) {
      final items = value.map(_dartLiteral).join(', ');
      return 'const [$items]';
    }
    if (value is Map) {
      final entries = value.entries
          .map((e) => '${_dartLiteral(e.key)}: ${_dartLiteral(e.value)}')
          .join(', ');
      return 'const {$entries}';
    }
    return value.toString();
  }

  String get(
    OpenApiSchema schema, {
    required String className,
  }) {
    switch (schema) {
      case OpenApiSchemaType schema:
        return getType(schema, className: className);
      case OpenApiSchemaRef schema:
        return getRef(schema);
      case OpenApiSchemaAnyOf schema:
        return getAny(schema, className: className);
      case OpenApiSchemaOneOf schema:
        return getOneOf(schema, className: className);
    }
  }

  String getRef(OpenApiSchemaRef schema) {
    return Renaming.instance.renameRefClass(schema);
  }

  String getAny(
    OpenApiSchemaAnyOf schema, {
    required String className,
  }) {
    final anyOf = schema.anyOf ?? [];
    final nonNullSchemas = anyOf
        .where((e) =>
            !(e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_))
        .toList();
    final isNullable = nonNullSchemas.length != anyOf.length;

    if (nonNullSchemas.length == 1) {
      final dartType = get(
        nonNullSchemas.first,
        className: className,
      );
      return dartType + (isNullable ? '?' : '');
    }

    if (nonNullSchemas.every((e) => e is OpenApiSchemaRef)) {
      return PropertyGeneratorStrategy(context).createUnionClass(
        nonNullSchemas,
        className: className,
      );
    }

    return 'dynamic';
  }

  String getOneOf(
    OpenApiSchemaOneOf schema, {
    required String className,
  }) {
    final oneOf = schema.oneOf ?? [];
    final nonNullSchemas = oneOf
        .where((e) =>
            !(e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_))
        .toList();

    if (nonNullSchemas.length == 1) {
      return get(
        nonNullSchemas.first,
        className: className,
      );
    }

    return 'dynamic';
  }

  String getType(
    OpenApiSchemaType schema, {
    required String className,
  }) {
    switch (schema.type) {
      case OpenApiSchemaVarType.string:
        switch (schema.format) {
          case 'date-time':
            return 'DateTime';
          case 'date':
            return 'DateTime';
          case 'color-hex':
            return 'Color';
          case 'binary':
            return 'MultipartFile';
          case 'uuid':
            return 'String';
          case 'time' || 'duration':
            return context.isFlutterProject ? 'TimeOfDay' : 'String';
          case 'uri':
            return 'Uri';
          default:
            return 'String';
        }
      case OpenApiSchemaVarType.number:
        return 'double';
      case OpenApiSchemaVarType.integer:
        return 'int';
      case OpenApiSchemaVarType.boolean:
        return 'bool';
      case OpenApiSchemaVarType.array:
        final items = schema.items;
        final dartType =
            items == null ? null : get(items, className: className);

        return dartType == null ? 'List<dynamic>' : 'List<$dartType>';
      case OpenApiSchemaVarType.object:
        if (schema.items == null) return 'Map<String, dynamic>';

        return 'Map<String, ${className}>';
      case OpenApiSchemaVarType.null_ || OpenApiSchemaVarType.$unknown || null:
        return 'dynamic';
    }
  }
}
