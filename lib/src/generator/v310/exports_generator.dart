import 'dart:io';
import 'package:swagger_to_dart/swagger_to_dart.dart';
import '../../utils/file_handler.dart';

/// Generates export files for models and clients
class ExportsGenerator {
  ExportsGenerator({required this.config, required this.fileHandler});

  final SwaggerToDartConfig config;
  final FileHandler fileHandler;

  /// Generates the exports file for models
  Future<void> generateModelsExports() async {
    final modelsDir = config.modelsOutputDirectory;
    if (!fileHandler.directoryExists(modelsDir)) {
      return;
    }

    final buffer = StringBuffer();
    _writeModelsHeader(buffer);

    final modelFiles = fileHandler.listDartFiles(modelsDir);
    final categorizedModels = _categorizeModels(modelFiles);

    _writeModelExports(buffer, categorizedModels);
    await fileHandler.writeFile('$modelsDir/models.dart', buffer.toString());
  }

  /// Generates the exports file for clients
  Future<void> generateClientsExports() async {
    final clientsDir = config.clientsOutputDirectory;
    if (!fileHandler.directoryExists(clientsDir)) {
      return;
    }

    final buffer = StringBuffer();
    _writeClientsHeader(buffer);

    final clientFiles = fileHandler.listDartFiles(clientsDir);
    final categorizedClients = _categorizeClients(clientFiles);

    _writeClientExports(buffer, categorizedClients);
    await fileHandler.writeFile('$clientsDir/clients.dart', buffer.toString());
  }

  void _writeModelsHeader(StringBuffer buffer) {
    buffer.writeln('/// This file exports all generated data models');
    buffer.writeln(
      '/// Use this file as the main import point for all data models',
    );
    buffer.writeln('///');
    buffer.writeln(
      '/// The exports are organized into the following categories:',
    );
    buffer.writeln('/// 1. User-related models');
    buffer.writeln('/// 2. Item-related models');
    buffer.writeln('/// 3. Authentication models');
    buffer.writeln('/// 4. Query models');
    buffer.writeln('/// 5. Error models');
    buffer.writeln('/// 6. Utility models');
    buffer.writeln();
  }

  void _writeClientsHeader(StringBuffer buffer) {
    buffer.writeln('/// This file exports all generated API clients');
    buffer.writeln(
      '/// Use this file as the main import point for all API clients',
    );
    buffer.writeln('///');
    buffer.writeln('/// The exports include:');
    buffer.writeln('/// - Base API client');
    buffer.writeln('/// - Authentication clients (login)');
    buffer.writeln('/// - Resource-specific clients (users, items, etc.)');
    buffer.writeln('/// - Utility clients');
    buffer.writeln('/// - Private clients');
    buffer.writeln();
  }

  Map<String, List<File>> _categorizeModels(List<File> files) {
    final categories = <String, List<File>>{
      'user': [],
      'item': [],
      'auth': [],
      'query': [],
      'error': [],
      'utility': [],
    };

    for (final file in files) {
      final fileName =
          fileHandler.getFileNameWithoutExtension(file.path).toLowerCase();

      if (fileName.contains('user')) {
        categories['user']!.add(file);
      } else if (fileName.contains('item')) {
        categories['item']!.add(file);
      } else if (fileName.contains('token') ||
          fileName.contains('login') ||
          fileName.contains('password')) {
        categories['auth']!.add(file);
      } else if (fileName.contains('query')) {
        categories['query']!.add(file);
      } else if (fileName.contains('error')) {
        categories['error']!.add(file);
      } else {
        categories['utility']!.add(file);
      }
    }

    return categories;
  }

  Map<String, List<File>> _categorizeClients(List<File> files) {
    final categories = <String, List<File>>{
      'base': [],
      'auth': [],
      'resource': [],
      'utility': [],
      'private': [],
    };

    for (final file in files) {
      final fileName =
          fileHandler.getFileNameWithoutExtension(file.path).toLowerCase();

      if (fileName.contains('api_client')) {
        categories['base']!.add(file);
      } else if (fileName.contains('login')) {
        categories['auth']!.add(file);
      } else if (fileName.contains('private')) {
        categories['private']!.add(file);
      } else if (fileName.contains('utils')) {
        categories['utility']!.add(file);
      } else {
        categories['resource']!.add(file);
      }
    }

    return categories;
  }

  void _writeModelExports(
    StringBuffer buffer,
    Map<String, List<File>> categories,
  ) {
    final categoryNames = {
      'user': 'User-related models',
      'item': 'Item-related models',
      'auth': 'Authentication models',
      'query': 'Query models',
      'error': 'Error models',
      'utility': 'Utility models',
    };

    for (final entry in categories.entries) {
      if (entry.value.isNotEmpty) {
        buffer.writeln('// ${categoryNames[entry.key]}');
        for (final file in entry.value) {
          buffer.writeln("export '${file.path.split('/').last}';");
        }
        buffer.writeln();
      }
    }
  }

  void _writeClientExports(
    StringBuffer buffer,
    Map<String, List<File>> categories,
  ) {
    final categoryNames = {
      'base': 'Base client',
      'auth': 'Authentication clients',
      'resource': 'Resource clients',
      'utility': 'Utility clients',
      'private': 'Private clients',
    };

    for (final entry in categories.entries) {
      if (entry.value.isNotEmpty) {
        buffer.writeln('// ${categoryNames[entry.key]}');
        for (final file in entry.value) {
          buffer.writeln("export '${file.path.split('/').last}';");
        }
        buffer.writeln();
      }
    }
  }
}
