import 'package:swagger_to_dart/swagger_to_dart.dart';

class OpenApiSchemaDartTypeConverter {
  const OpenApiSchemaDartTypeConverter(this.context);

  final GenerationContext context;

  String? getDefaultValue(OpenApiSchema schema) {
    final default_ = schema.default_;
    switch (schema) {
      case OpenApiSchemaType _:
        return _dartLiteral(default_);
      case OpenApiSchemaRef schema:
        final dartType = getRef(schema);
        final refSchema = context.openApi.getOpenApiSchemasByRef(schema.ref!)!;

        if (refSchema.enum_ != null && default_ != null) {
          return '$dartType.${default_}';
        }

        return default_ == null ? null : default_.toString();
      case OpenApiSchemaAnyOf _:
        return default_ == null ? null : default_.toString();
      case OpenApiSchemaOneOf _:
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
    final anyOf = schema.anyOf;
    final schemas = anyOf.where((e) {
      return !(e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_);
    }).toList();
    final isNullable = schemas.length != anyOf.length;

    if (schemas.length == 1) {
      final dartType = get(
        schemas.first,
        className: className,
      );
      return dartType + (isNullable ? '?' : '');
    }

    if (schemas.every((e) => e is OpenApiSchemaRef)) {
      return _createUnionClass(schemas);
    }

    return 'dynamic';
  }

  String getOneOf(
    OpenApiSchemaOneOf schema, {
    required String className,
  }) {
    final oneOf = schema.oneOf;
    final schemas = oneOf.where((e) {
      return !(e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_);
    }).toList();

    if (schemas.length == 1) {
      return get(schemas.first, className: className);
    }

    if (schemas.every((e) => e is OpenApiSchemaRef)) {
      return _createUnionClass(schemas);
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

  String _createUnionClass(List<OpenApiSchema> schemas) {
    final (model, className) =
        UnionModelStrategy(context).buildSchemas(schemas);
    context.addModel(model);

    return className;
  }
}
