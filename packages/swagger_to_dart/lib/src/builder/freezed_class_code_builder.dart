import 'package:code_builder/code_builder.dart';

class FreezedClassCodeBuilder {
  static const FreezedClassCodeBuilder _instance =
      const FreezedClassCodeBuilder._();

  const FreezedClassCodeBuilder._();

  static FreezedClassCodeBuilder get instance => _instance;

  Library class_({
    required String className,
    required String filename,
    required List<Parameter> parameters,
  }) {

    return Library(
      (b) => b
        ..name = '${filename}.dart'
        ..directives.addAll(_directives(filename: filename))
        ..body.addAll([
          Class(
            (b) => b
              ..docs.addAll([
                '// ${className}',
              ])
              ..annotations.addAll([refer('freezed')])
              ..abstract = true
              ..name = className
              ..mixins.addAll([refer('_\$${className}')])
              ..fields.addAll([
                for (final entry in parameters)
                  Field(
                    (b) => b
                      ..static = true
                      ..modifier = FieldModifier.constant
                      ..name = _keyField(entry.name)
                      ..type = refer('$String')
                      ..assignment = Code('"${entry.name}"'),
                  ),
              ])
              ..constructors.addAll([
                _privateConstructor(className: className),
                Constructor(
                  (b) => b
                    ..constant = true
                    ..factory = true
                    ..redirect = refer('_${className}')
                    ..optionalParameters.addAll([...parameters]),
                ),
                _fromJsonFactoryConstructor(className: className)
              ]),
          )
        ]),
    );
  }

  Library unionClass_({
    required String className,
    required String filename,
    required List<({String type, List<Parameter> parameters})> unions,
  }) {
    return Library(
      (b) => b
        ..directives.addAll(_directives(filename: filename))
        ..body.addAll([
          Class(
            (b) => b
              ..docs.addAll([
                '// ${className}',
              ])
              ..annotations.addAll([refer('freezed')])
              ..abstract = true
              ..name = className
              ..mixins.addAll([refer('_\$${className}')])
              ..fields.addAll([
                for (final entry in unions.expand((e) => e.parameters))
                  Field(
                    (b) => b
                      ..static = true
                      ..modifier = FieldModifier.constant
                      ..name = _keyField(entry.name)
                      ..type = refer('$String')
                      ..assignment = Code('"${entry.name}"'),
                  ),
              ])
              ..constructors.addAll([
                _privateConstructor(className: className),
                // Constructor(
                //   (b) => b
                //     ..constant = true
                //     ..factory = true
                //     ..redirect = refer('_${className}')
                //     ..optionalParameters.addAll([...parameters]),
                // ),
                _fromJsonFactoryConstructor(className: className)
              ]),
          )
        ]),
    );
  }

  Parameter parameter_({
    required String name,
    required String type,
    Object? defaultValue = null,
    bool isDeprecated = false,
  }) {
    return Parameter(
      (b) => b
        ..docs.addAll([
          '/// ${name}',
        ])
        ..required = defaultValue == null
        ..annotations.addAll([
          if (defaultValue != null) refer('Default($defaultValue)'),
          if (isDeprecated) refer('@deprecated'),
          refer('JsonKey(name: ${_keyField(name)})')
        ])
        ..name = name
        ..type = refer(type),
    );
  }

  String _keyField(String name) {
    return '${name}Key';
  }

  List<Directive> _directives({required String filename}) {
    return [
      Directive.import(
        'package:freezed_annotation/freezed_annotation.dart',
      ),
      Directive.import('convertors.dart'),
      Directive.part('${filename}.freezed.dart'),
      Directive.part('${filename}.g.dart'),
    ];
  }

  Constructor _privateConstructor({required String className}) {
    return Constructor(
      (b) => b
        ..constant = true
        ..name = '_',
    );
  }

  Constructor _fromJsonFactoryConstructor({required String className}) {
    return Constructor(
      (b) => b
        ..factory = true
        ..name = 'fromJson'
        ..requiredParameters.addAll([
          Parameter((b) => b
            ..name = 'json'
            ..type = refer('Map<String, dynamic>')),
        ])
        ..lambda = true
        ..body = Code('_\$${className}FromJson(json)'),
    );
  }
}
