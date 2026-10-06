// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_proxy_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanProxyConfig _$PostmanProxyConfigFromJson(Map<String, dynamic> json) =>
    _PostmanProxyConfig(
      match: json['match'] as String? ?? 'http+https://*/*',
      host: json['host'] as String?,
      port: (json['port'] as num?)?.toInt() ?? 8080,
      tunnel: json['tunnel'] as bool? ?? false,
      disabled: json['disabled'] as bool? ?? false,
    );

Map<String, dynamic> _$PostmanProxyConfigToJson(_PostmanProxyConfig instance) =>
    <String, dynamic>{
      'match': instance.match,
      'host': ?instance.host,
      'port': instance.port,
      'tunnel': instance.tunnel,
      'disabled': instance.disabled,
    };
