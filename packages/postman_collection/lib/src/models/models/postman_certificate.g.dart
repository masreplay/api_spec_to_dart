// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_certificate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanCertificate _$PostmanCertificateFromJson(Map<String, dynamic> json) =>
    _PostmanCertificate(
      name: json['name'] as String?,
      matches: (json['matches'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      key: json['key'] == null
          ? null
          : PostmanCertificateKey.fromJson(json['key'] as Map<String, dynamic>),
      cert: json['cert'] == null
          ? null
          : PostmanCertificateCert.fromJson(
              json['cert'] as Map<String, dynamic>,
            ),
      passphrase: json['passphrase'] as String?,
    );

Map<String, dynamic> _$PostmanCertificateToJson(_PostmanCertificate instance) =>
    <String, dynamic>{
      'name': ?instance.name,
      'matches': ?instance.matches,
      'key': ?instance.key?.toJson(),
      'cert': ?instance.cert?.toJson(),
      'passphrase': ?instance.passphrase,
    };
