/// Interface for exports generation
abstract class ExportsGeneratorInterface {
  /// Generates the exports file for models
  Future<void> generateModelsExports();

  /// Generates the exports file for clients
  Future<void> generateClientsExports();
}
