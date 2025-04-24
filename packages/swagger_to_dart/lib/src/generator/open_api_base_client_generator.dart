import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

/// Generates the base API client class using code_builder
class OpenApiBaseClientGenerator {
  const OpenApiBaseClientGenerator({
    required this.config,
    required this.openApi,
  });

  final ConfigComponents config;
  final OpenApi openApi;

  /// Builds the Dart code for the base API client
  String generator({required List<String> clients}) {
    final className = config.baseConfig.swaggerToDart.apiClientClassName;
    final library = Library((lib) {
      // Core imports
      lib.directives.addAll([
        Directive.import('package:dio/dio.dart'),
        Directive.import('package:retrofit/retrofit.dart'),
      ]);

      // Add imports for each API client
      for (final tag in clients) {
        final clientFileName =
            '${config.namingUtils.renameFile(tag)}_client.dart';
        lib.directives.add(Directive.import(clientFileName));
      }

      // Add imports from config.importClientsCode
      final importRegex = RegExp(r"import\s+'([^']+)';");
      for (final match in importRegex
          .allMatches(config.importConfig.importClientsCode.join('\n'))) {
        lib.directives.add(Directive.import(match.group(1)!));
      }

      // File header comments
      lib.body.add(Code('// ${openApi.info.title}'));
      if (openApi.info.description != null) {
        lib.body.add(Code('// ${openApi.info.description!}'));
      }
      if (openApi.info.version != null) {
        lib.body.add(Code('// Version: ${openApi.info.version!}'));
      }
      lib.body.add(Code('// Generated: ${DateTime.now().toIso8601String()}'));

      // Class definition
      lib.body.add(Class((c) {
        c.docs.add('/// Base API client for ${openApi.info.title}');
        c.name = className;

        // Constructor
        c.constructors.add(Constructor((ctr) {
          ctr.requiredParameters.add(Parameter((p) => p
            ..name = 'dio'
            ..toThis = true));
          ctr.optionalParameters.add(Parameter((p) => p
            ..name = 'baseUrl'
            ..named = true
            ..toThis = true));
          ctr.optionalParameters.add(Parameter((p) => p
            ..name = 'errorLogger'
            ..named = true
            ..toThis = true));
        }));

        // Fields
        c.fields.addAll([
          Field((f) => f
            ..name = 'dio'
            ..type = refer('Dio')
            ..modifier = FieldModifier.final$),
          Field((f) => f
            ..name = 'baseUrl'
            ..type = refer('String?')
            ..modifier = FieldModifier.final$),
          Field((f) => f
            ..name = 'errorLogger'
            ..type = refer('ParseErrorLogger?')
            ..modifier = FieldModifier.final$),
        ]);

        // Client getters
        for (final tag in clients) {
          final propName = config.namingUtils.renameProperty(tag);
          final clientClass = '${config.namingUtils.renameClass(tag)}Client';
          c.methods.add(Method((m) {
            m.type = MethodType.getter;
            m.returns = refer(clientClass);
            m.name = propName;
            m.body = Code('return $clientClass(dio);');
          }));
        }
      }));
    });

    final emitter = DartEmitter.scoped(useNullSafetySyntax: true);
    final formatter =
        DartFormatter(languageVersion: DartFormatter.latestLanguageVersion);
    return formatter.format('${library.accept(emitter)}');
  }
}
