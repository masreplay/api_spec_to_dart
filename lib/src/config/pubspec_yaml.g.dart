// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pubspec_yaml.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PubspecYaml _$PubspecYamlFromJson(Map<String, dynamic> json) => _PubspecYaml(
  name: json['name'] as String,
  version: json['version'] as String? ?? '0.0.0',
  description: json['description'] as String?,
  homepage: json['homepage'] as String?,
  environment: (json['environment'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  dependencies: json['dependencies'] as Map<String, dynamic>?,
  devDependencies: json['dev_dependencies'] as Map<String, dynamic>?,
  flutter: json['flutter'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$PubspecYamlToJson(_PubspecYaml instance) =>
    <String, dynamic>{
      'name': instance.name,
      'version': instance.version,
      if (instance.description case final value?) 'description': value,
      if (instance.homepage case final value?) 'homepage': value,
      if (instance.environment case final value?) 'environment': value,
      if (instance.dependencies case final value?) 'dependencies': value,
      if (instance.devDependencies case final value?) 'dev_dependencies': value,
      if (instance.flutter case final value?) 'flutter': value,
    };
