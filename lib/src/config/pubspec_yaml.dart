import 'package:freezed_annotation/freezed_annotation.dart';

part 'pubspec_yaml.freezed.dart';
part 'pubspec_yaml.g.dart';

@freezed
abstract class PubspecYaml with _$PubspecYaml {
  const PubspecYaml._();

  const factory PubspecYaml({
    required String name,
    @Default('0.0.0') String version,
    String? description,
    String? homepage,
    Map<String, String>? environment,
    Map<String, dynamic>? dependencies,
    Map<String, dynamic>? devDependencies,
    Map<String, dynamic>? flutter,
  }) = _PubspecYaml;

  factory PubspecYaml.fromJson(Map<String, dynamic> json) =>
      _$PubspecYamlFromJson(json);

  factory PubspecYaml.fromYaml(Map<String, dynamic> yaml) =>
      PubspecYaml.fromJson(yaml);

  static const String filename = 'pubspec.yaml';

  bool get isFlutter =>
      dependencies?.containsKey('flutter') == true ||
      devDependencies?.containsKey('flutter') == true ||
      flutter != null;
}
