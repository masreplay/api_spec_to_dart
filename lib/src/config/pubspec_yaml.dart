import 'package:freezed_annotation/freezed_annotation.dart';

part 'pubspec_yaml.freezed.dart';
part 'pubspec_yaml.g.dart';

@freezed
class PubspecYaml with _$PubspecYaml {
  const PubspecYaml._();

  const factory PubspecYaml({
    required String name,
  }) = _PubspecYaml;

  factory PubspecYaml.fromJson(Map<String, dynamic> json) =>
      _$PubspecYamlFromJson(json);

  factory PubspecYaml.fromYaml(Map<String, dynamic> json) {
    return PubspecYaml(
      name: json['name'],
    );
  }

  static const String filename = 'pubspec.yaml';

  // TODO: implement isFlutter
  bool get isFlutter => true;
}
