import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/code/string.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class GenericModelGeneratorStrategy
    extends ModelGeneratorStrategy<MapEntry<String, OpenApiSchemas>> {
  const GenericModelGeneratorStrategy(super.context);

  @override
  Library build(MapEntry<String, OpenApiSchemas> model) {
    final title = model.value.title;
    String effectiveTitle = title ?? model.key;

    final generationSource = context.config.generationSource;
    String? standardTitle;

    if (generationSource == GenerationSource.abpIO) {
      _debug('abpIO: $effectiveTitle');
      standardTitle = AbpGenericParser.toStandardFormat(effectiveTitle);
      _debug('abpIO.generic.standardTitle: $standardTitle');
    } else if (generationSource == GenerationSource.fastAPI &&
        FastApiGenericParser.isFastApiFormat(effectiveTitle)) {
      standardTitle = FastApiGenericParser.toStandardFormat(effectiveTitle);
    }

    if (standardTitle == null) {
      throw ArgumentError(
          'Cannot generate generic model for title: $effectiveTitle');
    }

    return _buildGenericClass(standardTitle, model);
  }

  Library _buildGenericClass(
    String title,
    MapEntry<String, OpenApiSchemas> model,
  ) {
    _debug('buildGenericClass: $title');
    final isAbpGeneric = AbpGenericParser.isAbpFormat(title);
    final isFastApiGeneric =
        !isAbpGeneric && FastApiGenericParser.isFastApiFormat(title);

    if (!isAbpGeneric && !isFastApiGeneric) {
      throw ArgumentError(
          'Title is not in a recognized generic format: $title');
    }

    String? baseClass;
    List<String> genericArguments;

    if (isAbpGeneric) {
      baseClass = AbpGenericParser.extractBaseClassName(title);
      genericArguments = AbpGenericParser.extractGenericArguments(title);
    } else {
      baseClass = FastApiGenericParser.extractBaseClassName(title);
      genericArguments = FastApiGenericParser.extractGenericArguments(title);
    }

    if (baseClass == null || genericArguments.isEmpty) {
      throw ArgumentError(
          'Cannot extract base class or generic arguments from: $title');
    }

    final overrideTypes = <String, String>{};
    final genericTypeParams = <String>[];
    final fromJsonParams = <Parameter>[];

    for (var i = 0; i < genericArguments.length; i++) {
      final genericType = i == 0 ? 'T' : 'T${i + 1}';
      genericTypeParams.add(genericType);

      final genericArg = genericArguments[i];
      String? resolvedType;

      if (isAbpGeneric) {
        final schemas = context.openApi.components?.schemas ?? {};
        for (final entry in schemas.entries) {
          if (entry.key == genericArg ||
              entry.value.title == genericArg ||
              entry.key.endsWith(genericArg.split('.').last)) {
            resolvedType = context.extension.typeConverter.getRef(
              OpenApiSchemaRef(ref: '#/components/schemas/${entry.key}'),
            );
            break;
          }
        }
      } else {
        final schemas = context.openApi.components?.schemas ?? {};
        for (final entry in schemas.entries) {
          if (entry.key == genericArg ||
              entry.value.title == genericArg ||
              entry.key.contains(genericArg)) {
            resolvedType = context.extension.typeConverter.getRef(
              OpenApiSchemaRef(ref: '#/components/schemas/${entry.key}'),
            );
            break;
          }
        }
      }

      resolvedType ??= genericArg;
      overrideTypes[resolvedType] = genericType;

      fromJsonParams.add(
        Parameter(
          (b) => b
            ..name = 'fromJson$genericType'
            ..type = refer('$genericType Function(Object? json)'),
        ),
      );
    }

    final prefixes = context.config.model.removeModelPrefixes;
    final className = Renaming.instance.renameClass(
      baseClass,
      removePrefixes: prefixes.isNotEmpty ? prefixes : null,
    );
    final filename = Renaming.instance.renameFile(className);

    final properties = model.value.properties ?? {};
    final genericTypesString = genericTypeParams.join(', ');

    return Library((b) => b
      ..name = filename
      ..directives.addAll([
        Directive.import('exports.dart'),
        Directive.part('$filename.freezed.dart'),
        Directive.part('$filename.g.dart'),
      ])
      ..docs.addAll([
        '/// ${model.key}',
        '/// $className',
        ...JsonFactory.instance
            .encode(model.value.toJson())
            .split('\n')
            .map((e) => '/// $e'),
      ])
      ..body.addAll([
        Class((b) => b
          ..annotations.addAll([
            refer('Freezed(genericArgumentFactories: true)'),
          ])
          ..abstract = true
          ..name = className
          ..types.addAll(genericTypeParams.map((t) => refer(t)))
          ..mixins.add(refer('_\$$className<$genericTypesString>'))
          ..fields.addAll([
            ...properties.entries.map((entry) {
              final name = Renaming.instance.renameProperty(entry.key);

              return Field(
                (b) => b
                  ..static = true
                  ..modifier = FieldModifier.constant
                  ..name = _getKey(name)
                  ..type = refer('String')
                  ..assignment = stringCode(entry.key),
              );
            }),
          ])
          ..constructors.addAll([
            Constructor(
              (b) => b
                ..constant = true
                ..name = '_',
            ),
            Constructor(
              (b) => b
                ..annotations.addAll([
                  refer(
                    'JsonSerializable(converters: jsonSerializableConverters, genericArgumentFactories: true, createFieldMap: true)',
                  ),
                ])
                ..constant = true
                ..factory = true
                ..redirect = refer('_$className<$genericTypesString>')
                ..optionalParameters.addAll([
                  ...properties.entries.map((entry) {
                    return context.extension.propertyGenerator.build(
                      entry,
                      className: className,
                      overrideTypes: overrideTypes,
                    );
                  }),
                ]),
            ),
            Constructor(
              (b) => b
                ..factory = true
                ..name = 'fromJson'
                ..lambda = false
                ..requiredParameters.addAll([
                  Parameter(
                    (b) => b
                      ..name = 'json'
                      ..type = refer('Map<String, dynamic>'),
                  ),
                  ...fromJsonParams,
                ])
                ..body = Code(
                  '_\$${className}FromJson<$genericTypesString>(json, ${fromJsonParams.map((p) => p.name).join(', ')})',
                ),
            ),
          ]))
      ]));
  }

  static String? _getKey(String name) => '${name}Key_';

  void _debug(String s) {
    print('GenericModelGeneratorStrategy._debug: $s');
  }

  bool shouldUseGenericStrategy(MapEntry<String, OpenApiSchemas> model) {
    final supportGenericArguments =
        context.config.model.supportGenericArguments;
    if (!supportGenericArguments) {
      return false;
    }

    final title = model.value.title;
    String effectiveTitle = title ?? model.key;
    final generationSource = context.config.generationSource;

    if (generationSource == GenerationSource.abpIO) {
      final standardTitle = AbpGenericParser.toStandardFormat(effectiveTitle);
      return standardTitle != null;
    }

    if (generationSource == GenerationSource.fastAPI) {
      return FastApiGenericParser.isFastApiFormat(effectiveTitle);
    }

    return false;
  }
}

class AbpGenericParser {
  static bool isAbpFormat(String input) {
    return input.contains('`') && _hasBacktickFormat(input);
  }

  static String? toStandardFormat(String input) {
    print(
        'DEBUG: RegularModelGeneratorStrategy.supportGenericArguments: AbpGenericParser.toStandardFormat called with input: $input');

    if (!isAbpFormat(input)) {
      print('DEBUG: Not ABP format.');
      return null;
    }

    // Find the backtick
    final backtickIndex = input.indexOf('`');
    if (backtickIndex == -1) {
      print('DEBUG: No backtick found.');
      return null;
    }

    // Extract base class name (everything before the backtick)
    final baseClassName = input.substring(0, backtickIndex);
    print('DEBUG: baseClassName = $baseClassName');

    // Find the opening bracket after the backtick
    final bracketStart = input.indexOf('[[', backtickIndex);
    if (bracketStart == -1) {
      // No generics, just return the base class name
      print(
          'DEBUG: No generic [[ found. Returning short class name for $baseClassName');
      return _extractShortClassName(baseClassName);
    }

    // Extract everything after the first `[[`
    final genericsContent = input.substring(bracketStart + 2);
    print('DEBUG: genericsContent = $genericsContent');

    // Parse generic arguments
    final genericTypes = _parseGenericArguments(genericsContent);
    print('DEBUG: genericTypes = $genericTypes');

    if (genericTypes.isEmpty) {
      print(
          'DEBUG: No generic types found. Returning short class name for $baseClassName');
      return _extractShortClassName(baseClassName);
    }

    // Extract short names from full type names
    final shortGenericTypes = genericTypes.map((type) {
      final short = _extractShortClassName(type);
      print('DEBUG: Short generic type from $type = $short');
      return short;
    }).toList();

    // Combine base class name with generics
    final shortBaseClassName = _extractShortClassName(baseClassName);
    print(
        'DEBUG: shortBaseClassName = $shortBaseClassName, shortGenericTypes = $shortGenericTypes');
    final result = '$shortBaseClassName<${shortGenericTypes.join(', ')}>';
    print('DEBUG: Resulting standard format = $result');
    return result;
  }

  static List<String> extractGenericArguments(String input) {
    if (!isAbpFormat(input)) {
      return [];
    }

    try {
      final bracketStart = input.indexOf('[[');
      if (bracketStart == -1) {
        return [];
      }

      final genericsContent = input.substring(bracketStart + 2);
      return _parseGenericArguments(genericsContent);
    } catch (e) {
      return [];
    }
  }

  static String? extractBaseClassName(String input) {
    if (!isAbpFormat(input)) {
      return null;
    }

    final backtickIndex = input.indexOf('`');
    if (backtickIndex == -1) {
      return null;
    }

    return input.substring(0, backtickIndex);
  }

  static bool _hasBacktickFormat(String input) {
    final backtickIndex = input.indexOf('`');
    if (backtickIndex == -1 || backtickIndex == input.length - 1) {
      return false;
    }

    // Check if there's a number after the backtick
    final afterBacktick = input.substring(backtickIndex + 1);
    final numberMatch = RegExp(r'^\d+').firstMatch(afterBacktick);
    return numberMatch != null;
  }

  static List<String> _parseGenericArguments(String content) {
    final types = <String>[];
    final buffer = StringBuffer();
    int bracketDepth = 0;
    bool insideArg = false;

    // Since we extracted content after [[, we might already be inside an argument
    // Start with bracketDepth = 0 and insideArg = true if content doesn't start with [
    if (content.isNotEmpty && content[0] != '[') {
      insideArg = true;
    }

    for (var i = 0; i < content.length; i++) {
      final char = content[i];

      if (char == '[') {
        bracketDepth++;
        if (bracketDepth == 1) {
          // Start of a new generic argument
          insideArg = true;
          buffer.clear();
        } else {
          buffer.write(char);
        }
      } else if (char == ']') {
        if (bracketDepth == 0 && insideArg) {
          // We're at the closing bracket of the first argument (no [ was seen)
          // Extract what we've collected so far
          final argContent = buffer.toString();
          final typeName = _extractTypeNameFromArg(argContent);
          if (typeName.isNotEmpty) {
            types.add(typeName);
          }
          insideArg = false;
          buffer.clear();
          // Continue to see if there are more arguments
        } else if (bracketDepth == 1 && insideArg) {
          // End of current generic argument bracket
          final argContent = buffer.toString();
          // Extract type name (first part before comma)
          final typeName = _extractTypeNameFromArg(argContent);
          if (typeName.isNotEmpty) {
            types.add(typeName);
          }
          insideArg = false;
          buffer.clear();
        } else {
          buffer.write(char);
        }
        bracketDepth--;
        if (bracketDepth < 0) {
          // Reached the end of all brackets, stop parsing
          break;
        }
      } else if (char == ',' && bracketDepth == 0 && insideArg) {
        // First comma in the argument (when we're at depth 0, meaning no [ was seen)
        // This separates type name from assembly info
        final typeName = _extractTypeNameFromArg(buffer.toString());
        if (typeName.isNotEmpty) {
          types.add(typeName);
        }
        buffer.clear();
        insideArg = false;
        // Skip the rest until closing bracket
        while (i < content.length - 1 && content[i + 1] != ']') {
          i++;
        }
      } else if (char == ',' && bracketDepth == 1 && insideArg) {
        // First comma in the argument - this separates type name from assembly info
        // We've already captured the type name, so we can stop here
        final typeName = _extractTypeNameFromArg(buffer.toString());
        if (typeName.isNotEmpty) {
          types.add(typeName);
        }
        buffer.clear();
        insideArg = false;
        // Skip the rest until closing bracket
        while (i < content.length - 1 && content[i + 1] != ']') {
          i++;
        }
      } else if (insideArg) {
        buffer.write(char);
      }
    }

    // Handle last argument if buffer is not empty
    if (buffer.isNotEmpty && insideArg) {
      final typeName = _extractTypeNameFromArg(buffer.toString());
      if (typeName.isNotEmpty) {
        types.add(typeName);
      }
    }

    return types;
  }

  static String _extractTypeNameFromArg(String argContent) {
    // Take the part before the first comma
    final commaIndex = argContent.indexOf(',');
    if (commaIndex == -1) {
      return argContent.trim();
    }
    return argContent.substring(0, commaIndex).trim();
  }

  static String _extractShortClassName(String fullName) {
    final parts = fullName.split('.');
    return parts.isNotEmpty ? parts.last : fullName;
  }
}

class FastApiGenericParser {
  static bool isFastApiFormat(String input) {
    // FastAPI format uses square brackets, not backtick
    // It should not be ABP format
    if (input.contains('`')) {
      return false;
    }

    // Check for square bracket pattern
    final bracketPattern = RegExp(r'^[^\[\]]+\[.+\]$');
    return bracketPattern.hasMatch(input);
  }

  static String? toStandardFormat(String input) {
    if (!isFastApiFormat(input)) {
      return null;
    }

    try {
      final genericStart = input.indexOf('[');
      final genericEnd = input.lastIndexOf(']');

      if (genericStart == -1 ||
          genericEnd == -1 ||
          genericEnd <= genericStart) {
        return null;
      }

      final baseClassName = input.substring(0, genericStart);
      final genericsContent = input.substring(genericStart + 1, genericEnd);

      // Split generics by comma, but respect nested brackets
      final genericTypes = _splitGenerics(genericsContent);

      if (genericTypes.isEmpty) {
        return baseClassName;
      }

      // Recursively process nested generics
      final processedGenerics = genericTypes.map((type) {
        // Check if this type itself has generics
        final converted = toStandardFormat(type.trim());
        return converted ?? type.trim();
      }).join(', ');

      return '$baseClassName<$processedGenerics>';
    } catch (e) {
      return null;
    }
  }

  static List<String> _splitGenerics(String input) {
    final parts = <String>[];
    final buffer = StringBuffer();
    int depth = 0;

    for (var i = 0; i < input.length; i++) {
      final char = input[i];

      if (char == '[') {
        depth++;
        buffer.write(char);
      } else if (char == ']') {
        depth--;
        buffer.write(char);
      } else if (char == ',' && depth == 0) {
        // Top-level comma - split here
        parts.add(buffer.toString());
        buffer.clear();
      } else {
        buffer.write(char);
      }
    }

    // Add remaining part
    if (buffer.isNotEmpty) {
      parts.add(buffer.toString());
    }

    return parts;
  }

  static List<String> extractGenericArguments(String input) {
    if (!isFastApiFormat(input)) {
      return [];
    }

    try {
      final genericStart = input.indexOf('[');
      final genericEnd = input.lastIndexOf(']');

      if (genericStart == -1 || genericEnd == -1) {
        return [];
      }

      final genericsContent = input.substring(genericStart + 1, genericEnd);
      return _splitGenerics(genericsContent);
    } catch (e) {
      return [];
    }
  }

  static String? extractBaseClassName(String input) {
    if (!isFastApiFormat(input)) {
      return null;
    }

    final genericStart = input.indexOf('[');
    if (genericStart == -1) {
      return null;
    }

    return input.substring(0, genericStart);
  }
}
