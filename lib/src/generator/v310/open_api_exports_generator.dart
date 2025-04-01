import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/swagger_to_dart.dart';

/// Class responsible for generating export files for models and clients
class OpenApiExportsGenerator {
  const OpenApiExportsGenerator({required this.config});

  final SwaggerToDartConfig config;

  /// Generates the exports.dart file for models
  Future<void> generateModelsExports() async {
    final modelsDir = Directory(config.modelsOutputDirectory);
    if (!modelsDir.existsSync()) {
      return;
    }

    final buffer = StringBuffer();
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

    // Get all model files
    final modelFiles =
        modelsDir
            .listSync()
            .where((entity) => entity is File && entity.path.endsWith('.dart'))
            .map((entity) => entity as File)
            .where(
              (file) =>
                  !file.path.endsWith('.g.dart') &&
                  !file.path.endsWith('.freezed.dart'),
            )
            .toList();

    // Group models by category
    final userModels = <File>[];
    final itemModels = <File>[];
    final authModels = <File>[];
    final queryModels = <File>[];
    final errorModels = <File>[];
    final utilityModels = <File>[];

    for (final file in modelFiles) {
      final fileName = path.basenameWithoutExtension(file.path);
      if (fileName.toLowerCase().contains('user')) {
        userModels.add(file);
      } else if (fileName.toLowerCase().contains('item')) {
        itemModels.add(file);
      } else if (fileName.toLowerCase().contains('token') ||
          fileName.toLowerCase().contains('login') ||
          fileName.toLowerCase().contains('password')) {
        authModels.add(file);
      } else if (fileName.toLowerCase().contains('query')) {
        queryModels.add(file);
      } else if (fileName.toLowerCase().contains('error')) {
        errorModels.add(file);
      } else {
        utilityModels.add(file);
      }
    }

    // Write exports for each category
    if (userModels.isNotEmpty) {
      buffer.writeln('// User-related models');
      for (final file in userModels) {
        buffer.writeln("export '${path.basename(file.path)}';");
      }
      buffer.writeln();
    }

    if (itemModels.isNotEmpty) {
      buffer.writeln('// Item-related models');
      for (final file in itemModels) {
        buffer.writeln("export '${path.basename(file.path)}';");
      }
      buffer.writeln();
    }

    if (authModels.isNotEmpty) {
      buffer.writeln('// Authentication models');
      for (final file in authModels) {
        buffer.writeln("export '${path.basename(file.path)}';");
      }
      buffer.writeln();
    }

    if (queryModels.isNotEmpty) {
      buffer.writeln('// Query models');
      for (final file in queryModels) {
        buffer.writeln("export '${path.basename(file.path)}';");
      }
      buffer.writeln();
    }

    if (errorModels.isNotEmpty) {
      buffer.writeln('// Error models');
      for (final file in errorModels) {
        buffer.writeln("export '${path.basename(file.path)}';");
      }
      buffer.writeln();
    }

    if (utilityModels.isNotEmpty) {
      buffer.writeln('// Utility models');
      for (final file in utilityModels) {
        buffer.writeln("export '${path.basename(file.path)}';");
      }
      buffer.writeln();
    }

    final exportsFile = File(
      path.join(config.modelsOutputDirectory, 'models.dart'),
    );
    await exportsFile.writeAsString(buffer.toString());
  }

  /// Generates the exports.dart file for clients
  Future<void> generateClientsExports() async {
    final clientsDir = Directory(config.clientsOutputDirectory);
    if (!clientsDir.existsSync()) {
      return;
    }

    final buffer = StringBuffer();
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

    // Get all client files
    final clientFiles =
        clientsDir
            .listSync()
            .where((entity) => entity is File && entity.path.endsWith('.dart'))
            .map((entity) => entity as File)
            .where((file) => !file.path.endsWith('.g.dart'))
            .toList();

    // Group clients by category
    final baseClients = <File>[];
    final authClients = <File>[];
    final resourceClients = <File>[];
    final utilityClients = <File>[];
    final privateClients = <File>[];

    for (final file in clientFiles) {
      final fileName = path.basenameWithoutExtension(file.path);
      if (fileName.toLowerCase().contains('api_client')) {
        baseClients.add(file);
      } else if (fileName.toLowerCase().contains('login')) {
        authClients.add(file);
      } else if (fileName.toLowerCase().contains('private')) {
        privateClients.add(file);
      } else if (fileName.toLowerCase().contains('utils')) {
        utilityClients.add(file);
      } else {
        resourceClients.add(file);
      }
    }

    // Write exports for each category
    if (baseClients.isNotEmpty) {
      buffer.writeln('// Base client');
      for (final file in baseClients) {
        buffer.writeln("export '${path.basename(file.path)}';");
      }
      buffer.writeln();
    }

    if (authClients.isNotEmpty) {
      buffer.writeln('// Authentication clients');
      for (final file in authClients) {
        buffer.writeln("export '${path.basename(file.path)}';");
      }
      buffer.writeln();
    }

    if (resourceClients.isNotEmpty) {
      buffer.writeln('// Resource clients');
      for (final file in resourceClients) {
        buffer.writeln("export '${path.basename(file.path)}';");
      }
      buffer.writeln();
    }

    if (utilityClients.isNotEmpty) {
      buffer.writeln('// Utility clients');
      for (final file in utilityClients) {
        buffer.writeln("export '${path.basename(file.path)}';");
      }
      buffer.writeln();
    }

    if (privateClients.isNotEmpty) {
      buffer.writeln('// Private clients');
      for (final file in privateClients) {
        buffer.writeln("export '${path.basename(file.path)}';");
      }
      buffer.writeln();
    }

    final exportsFile = File(
      path.join(config.clientsOutputDirectory, 'clients.dart'),
    );
    await exportsFile.writeAsString(buffer.toString());
  }
}
