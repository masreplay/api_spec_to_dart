// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_collection_base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostmanCollectionImpl _$$PostmanCollectionImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionImpl(
      info:
          PostmanCollectionInfo.fromJson(json['info'] as Map<String, dynamic>),
      item: (json['item'] as List<dynamic>)
          .map((e) => PostmanCollectionItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      auth: json['auth'] == null
          ? null
          : PostmanCollectionAuth.fromJson(
              json['auth'] as Map<String, dynamic>),
      event: (json['event'] as List<dynamic>?)
          ?.map(
              (e) => PostmanCollectionEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      protocolProfileBehavior:
          json['protocolProfileBehavior'] as Map<String, dynamic>?,
      variable: (json['variable'] as List<dynamic>?)
          ?.map((e) =>
              PostmanCollectionVariable.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostmanCollectionImplToJson(
    _$PostmanCollectionImpl instance) {
  final val = <String, dynamic>{
    'info': instance.info.toJson(),
    'item': instance.item.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('auth', instance.auth?.toJson());
  writeNotNull('event', instance.event?.map((e) => e.toJson()).toList());
  writeNotNull('protocolProfileBehavior', instance.protocolProfileBehavior);
  writeNotNull('variable', instance.variable?.map((e) => e.toJson()).toList());
  return val;
}

_$PostmanCollectionInfoImpl _$$PostmanCollectionInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionInfoImpl(
      postmanId: json['_postman_id'] as String?,
      name: json['name'] as String,
      schema: json['schema'] as String,
      description: json['description'] as String?,
      version: json['version'] == null
          ? null
          : PostmanCollectionVersion.fromJson(
              json['version'] as Map<String, dynamic>),
      exporterId: json['_exporter_id'] as String?,
      collectionLink: json['_collection_link'] as String?,
    );

Map<String, dynamic> _$$PostmanCollectionInfoImplToJson(
    _$PostmanCollectionInfoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_postman_id', instance.postmanId);
  val['name'] = instance.name;
  val['schema'] = instance.schema;
  writeNotNull('description', instance.description);
  writeNotNull('version', instance.version?.toJson());
  writeNotNull('_exporter_id', instance.exporterId);
  writeNotNull('_collection_link', instance.collectionLink);
  return val;
}

_$PostmanCollectionVersionImpl _$$PostmanCollectionVersionImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionVersionImpl(
      major: (json['major'] as num).toInt(),
      minor: (json['minor'] as num).toInt(),
      patch: (json['patch'] as num).toInt(),
      identifier: json['identifier'] as String?,
      meta: json['meta'],
    );

Map<String, dynamic> _$$PostmanCollectionVersionImplToJson(
    _$PostmanCollectionVersionImpl instance) {
  final val = <String, dynamic>{
    'major': instance.major,
    'minor': instance.minor,
    'patch': instance.patch,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('identifier', instance.identifier);
  writeNotNull('meta', instance.meta);
  return val;
}

_$PostmanCollectionItemImpl _$$PostmanCollectionItemImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionItemImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      variable: (json['variable'] as List<dynamic>?)
          ?.map((e) =>
              PostmanCollectionVariable.fromJson(e as Map<String, dynamic>))
          .toList(),
      event: (json['event'] as List<dynamic>?)
          ?.map(
              (e) => PostmanCollectionEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      protocolProfileBehavior:
          json['protocolProfileBehavior'] as Map<String, dynamic>?,
      request: json['request'] == null
          ? null
          : PostmanCollectionRequest.fromJson(
              json['request'] as Map<String, dynamic>),
      response: (json['response'] as List<dynamic>?)
          ?.map((e) =>
              PostmanCollectionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      item: (json['item'] as List<dynamic>?)
          ?.map(
              (e) => PostmanCollectionItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostmanCollectionItemImplToJson(
    _$PostmanCollectionItemImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  writeNotNull('description', instance.description);
  writeNotNull('variable', instance.variable?.map((e) => e.toJson()).toList());
  writeNotNull('event', instance.event?.map((e) => e.toJson()).toList());
  writeNotNull('protocolProfileBehavior', instance.protocolProfileBehavior);
  writeNotNull('request', instance.request?.toJson());
  writeNotNull('response', instance.response?.map((e) => e.toJson()).toList());
  writeNotNull('item', instance.item?.map((e) => e.toJson()).toList());
  return val;
}

_$PostmanCollectionAuthImpl _$$PostmanCollectionAuthImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionAuthImpl(
      type: $enumDecode(_$PostmanCollectionAuthTypeEnumMap, json['type']),
      noauth: (json['noauth'] as List<dynamic>?)
          ?.map((e) => PostmanCollectionAuthAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      apikey: (json['apikey'] as List<dynamic>?)
          ?.map((e) => PostmanCollectionAuthAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      awsv4: (json['awsv4'] as List<dynamic>?)
          ?.map((e) => PostmanCollectionAuthAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      basic: (json['basic'] as List<dynamic>?)
          ?.map((e) => PostmanCollectionAuthAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      bearer: (json['bearer'] as List<dynamic>?)
          ?.map((e) => PostmanCollectionAuthAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      digest: (json['digest'] as List<dynamic>?)
          ?.map((e) => PostmanCollectionAuthAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      edgegrid: (json['edgegrid'] as List<dynamic>?)
          ?.map((e) => PostmanCollectionAuthAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      hawk: (json['hawk'] as List<dynamic>?)
          ?.map((e) => PostmanCollectionAuthAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      ntlm: (json['ntlm'] as List<dynamic>?)
          ?.map((e) => PostmanCollectionAuthAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      oauth1: (json['oauth1'] as List<dynamic>?)
          ?.map((e) => PostmanCollectionAuthAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      oauth2: (json['oauth2'] as List<dynamic>?)
          ?.map((e) => PostmanCollectionAuthAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostmanCollectionAuthImplToJson(
    _$PostmanCollectionAuthImpl instance) {
  final val = <String, dynamic>{
    'type': _$PostmanCollectionAuthTypeEnumMap[instance.type]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('noauth', instance.noauth?.map((e) => e.toJson()).toList());
  writeNotNull('apikey', instance.apikey?.map((e) => e.toJson()).toList());
  writeNotNull('awsv4', instance.awsv4?.map((e) => e.toJson()).toList());
  writeNotNull('basic', instance.basic?.map((e) => e.toJson()).toList());
  writeNotNull('bearer', instance.bearer?.map((e) => e.toJson()).toList());
  writeNotNull('digest', instance.digest?.map((e) => e.toJson()).toList());
  writeNotNull('edgegrid', instance.edgegrid?.map((e) => e.toJson()).toList());
  writeNotNull('hawk', instance.hawk?.map((e) => e.toJson()).toList());
  writeNotNull('ntlm', instance.ntlm?.map((e) => e.toJson()).toList());
  writeNotNull('oauth1', instance.oauth1?.map((e) => e.toJson()).toList());
  writeNotNull('oauth2', instance.oauth2?.map((e) => e.toJson()).toList());
  return val;
}

const _$PostmanCollectionAuthTypeEnumMap = {
  PostmanCollectionAuthType.apikey: 'apikey',
  PostmanCollectionAuthType.awsv4: 'awsv4',
  PostmanCollectionAuthType.basic: 'basic',
  PostmanCollectionAuthType.bearer: 'bearer',
  PostmanCollectionAuthType.digest: 'digest',
  PostmanCollectionAuthType.edgegrid: 'edgegrid',
  PostmanCollectionAuthType.hawk: 'hawk',
  PostmanCollectionAuthType.noauth: 'noauth',
  PostmanCollectionAuthType.oauth1: 'oauth1',
  PostmanCollectionAuthType.oauth2: 'oauth2',
  PostmanCollectionAuthType.ntlm: 'ntlm',
};

_$PostmanCollectionAuthAttributeImpl
    _$$PostmanCollectionAuthAttributeImplFromJson(Map<String, dynamic> json) =>
        _$PostmanCollectionAuthAttributeImpl(
          key: json['key'] as String,
          value: json['value'],
          type: json['type'] as String?,
        );

Map<String, dynamic> _$$PostmanCollectionAuthAttributeImplToJson(
    _$PostmanCollectionAuthAttributeImpl instance) {
  final val = <String, dynamic>{
    'key': instance.key,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value', instance.value);
  writeNotNull('type', instance.type);
  return val;
}

_$PostmanCollectionRequestImpl _$$PostmanCollectionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionRequestImpl(
      auth: json['auth'] == null
          ? null
          : PostmanCollectionAuth.fromJson(
              json['auth'] as Map<String, dynamic>),
      method: json['method'] as String,
      proxy: json['proxy'] == null
          ? null
          : PostmanCollectionProxyConfig.fromJson(
              json['proxy'] as Map<String, dynamic>),
      certificate: json['certificate'] == null
          ? null
          : PostmanCollectionCertificate.fromJson(
              json['certificate'] as Map<String, dynamic>),
      header: (json['header'] as List<dynamic>?)
          ?.map((e) =>
              PostmanCollectionHeader.fromJson(e as Map<String, dynamic>))
          .toList(),
      body: json['body'] == null
          ? null
          : PostmanCollectionRequestMode.fromJson(
              json['body'] as Map<String, dynamic>),
      url: json['url'] == null
          ? null
          : PostmanCollectionUrl.fromJson(json['url'] as Map<String, dynamic>),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$PostmanCollectionRequestImplToJson(
    _$PostmanCollectionRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('auth', instance.auth?.toJson());
  val['method'] = instance.method;
  writeNotNull('proxy', instance.proxy?.toJson());
  writeNotNull('certificate', instance.certificate?.toJson());
  writeNotNull('header', instance.header?.map((e) => e.toJson()).toList());
  writeNotNull('body', instance.body?.toJson());
  writeNotNull('url', instance.url?.toJson());
  writeNotNull('description', instance.description);
  return val;
}

_$PostmanCollectionRequestModeImpl _$$PostmanCollectionRequestModeImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionRequestModeImpl(
      raw: json['raw'] as String?,
      options: json['options'] as Map<String, dynamic>?,
      $type: json['mode'] as String?,
    );

Map<String, dynamic> _$$PostmanCollectionRequestModeImplToJson(
    _$PostmanCollectionRequestModeImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('raw', instance.raw);
  writeNotNull('options', instance.options);
  val['mode'] = instance.$type;
  return val;
}

_$PostmanCollectionRequestModeFormdataImpl
    _$$PostmanCollectionRequestModeFormdataImplFromJson(
            Map<String, dynamic> json) =>
        _$PostmanCollectionRequestModeFormdataImpl(
          formdata: (json['formdata'] as List<dynamic>?)
              ?.map((e) =>
                  PostmanFormDataEntry.fromJson(e as Map<String, dynamic>))
              .toList(),
          $type: json['mode'] as String?,
        );

Map<String, dynamic> _$$PostmanCollectionRequestModeFormdataImplToJson(
    _$PostmanCollectionRequestModeFormdataImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('formdata', instance.formdata?.map((e) => e.toJson()).toList());
  val['mode'] = instance.$type;
  return val;
}

_$PostmanFormDataEntryImpl _$$PostmanFormDataEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanFormDataEntryImpl(
      key: json['key'] as String,
      src: json['src'] as String?,
      value: json['value'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$PostmanFormDataEntryImplToJson(
    _$PostmanFormDataEntryImpl instance) {
  final val = <String, dynamic>{
    'key': instance.key,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('src', instance.src);
  writeNotNull('value', instance.value);
  writeNotNull('type', instance.type);
  return val;
}

_$PostmanCollectionUrlImpl _$$PostmanCollectionUrlImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionUrlImpl(
      raw: json['raw'] as String?,
      protocol: json['protocol'] as String?,
      host: json['host'],
      path: json['path'],
      port: json['port'] as String?,
      query: (json['query'] as List<dynamic>?)
          ?.map((e) =>
              PostmanCollectionQueryParam.fromJson(e as Map<String, dynamic>))
          .toList(),
      hash: json['hash'] as String?,
      variable: (json['variable'] as List<dynamic>?)
          ?.map((e) =>
              PostmanCollectionVariable.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostmanCollectionUrlImplToJson(
    _$PostmanCollectionUrlImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('raw', instance.raw);
  writeNotNull('protocol', instance.protocol);
  writeNotNull('host', instance.host);
  writeNotNull('path', instance.path);
  writeNotNull('port', instance.port);
  writeNotNull('query', instance.query?.map((e) => e.toJson()).toList());
  writeNotNull('hash', instance.hash);
  writeNotNull('variable', instance.variable?.map((e) => e.toJson()).toList());
  return val;
}

_$PostmanCollectionQueryParamImpl _$$PostmanCollectionQueryParamImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionQueryParamImpl(
      key: json['key'] as String?,
      value: json['value'] as String?,
      disabled: json['disabled'] as bool?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$PostmanCollectionQueryParamImplToJson(
    _$PostmanCollectionQueryParamImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  writeNotNull('disabled', instance.disabled);
  writeNotNull('description', instance.description);
  return val;
}

_$PostmanCollectionVariableImpl _$$PostmanCollectionVariableImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionVariableImpl(
      id: json['id'] as String?,
      key: json['key'] as String?,
      value: json['value'],
      type: $enumDecodeNullable(
          _$PostmanCollectionVariableTypeEnumMap, json['type']),
      name: json['name'] as String?,
      description: json['description'] as String?,
      system: json['system'] as bool?,
      disabled: json['disabled'] as bool?,
    );

Map<String, dynamic> _$$PostmanCollectionVariableImplToJson(
    _$PostmanCollectionVariableImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  writeNotNull('type', _$PostmanCollectionVariableTypeEnumMap[instance.type]);
  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('system', instance.system);
  writeNotNull('disabled', instance.disabled);
  return val;
}

const _$PostmanCollectionVariableTypeEnumMap = {
  PostmanCollectionVariableType.string: 'string',
  PostmanCollectionVariableType.boolean: 'boolean',
  PostmanCollectionVariableType.any: 'any',
  PostmanCollectionVariableType.number: 'number',
};

_$PostmanCollectionEventImpl _$$PostmanCollectionEventImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionEventImpl(
      id: json['id'] as String?,
      listen: json['listen'] as String,
      script: json['script'] == null
          ? null
          : PostmanCollectionScript.fromJson(
              json['script'] as Map<String, dynamic>),
      disabled: json['disabled'] as bool?,
    );

Map<String, dynamic> _$$PostmanCollectionEventImplToJson(
    _$PostmanCollectionEventImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['listen'] = instance.listen;
  writeNotNull('script', instance.script?.toJson());
  writeNotNull('disabled', instance.disabled);
  return val;
}

_$PostmanCollectionScriptImpl _$$PostmanCollectionScriptImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionScriptImpl(
      id: json['id'] as String?,
      packages: json['packages'] as Map<String, dynamic>?,
      type: json['type'] as String?,
      exec: json['exec'],
      src: json['src'] == null
          ? null
          : PostmanCollectionUrl.fromJson(json['src'] as Map<String, dynamic>),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$PostmanCollectionScriptImplToJson(
    _$PostmanCollectionScriptImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('packages', instance.packages);
  writeNotNull('type', instance.type);
  writeNotNull('exec', instance.exec);
  writeNotNull('src', instance.src?.toJson());
  writeNotNull('name', instance.name);
  return val;
}

_$PostmanCollectionResponseImpl _$$PostmanCollectionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionResponseImpl(
      name: json['name'] as String?,
      id: json['id'] as String?,
      originalRequest: json['originalRequest'] == null
          ? null
          : PostmanCollectionRequest.fromJson(
              json['originalRequest'] as Map<String, dynamic>),
      postmanPreviewLanguage: json['_postman_previewlanguage'] as String?,
      responseTime: json['responseTime'],
      timings: json['timings'],
      header: json['header'],
      cookie: (json['cookie'] as List<dynamic>?)
          ?.map((e) =>
              PostmanCollectionCookie.fromJson(e as Map<String, dynamic>))
          .toList(),
      body: json['body'] as String?,
      status: json['status'] as String?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PostmanCollectionResponseImplToJson(
    _$PostmanCollectionResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('id', instance.id);
  writeNotNull('originalRequest', instance.originalRequest?.toJson());
  writeNotNull('_postman_previewlanguage', instance.postmanPreviewLanguage);
  writeNotNull('responseTime', instance.responseTime);
  writeNotNull('timings', instance.timings);
  writeNotNull('header', instance.header);
  writeNotNull('cookie', instance.cookie?.map((e) => e.toJson()).toList());
  writeNotNull('body', instance.body);
  writeNotNull('status', instance.status);
  writeNotNull('code', instance.code);
  return val;
}

_$PostmanCollectionCookieImpl _$$PostmanCollectionCookieImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionCookieImpl(
      domain: json['domain'] as String,
      expires: json['expires'],
      maxAge: json['maxAge'] as String?,
      hostOnly: json['hostOnly'] as bool?,
      httpOnly: json['httpOnly'] as bool?,
      name: json['name'] as String?,
      path: json['path'] as String?,
      secure: json['secure'] as bool?,
      session: json['session'] as bool?,
      value: json['value'] as String?,
      extensions: json['extensions'],
    );

Map<String, dynamic> _$$PostmanCollectionCookieImplToJson(
    _$PostmanCollectionCookieImpl instance) {
  final val = <String, dynamic>{
    'domain': instance.domain,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('expires', instance.expires);
  writeNotNull('maxAge', instance.maxAge);
  writeNotNull('hostOnly', instance.hostOnly);
  writeNotNull('httpOnly', instance.httpOnly);
  writeNotNull('name', instance.name);
  writeNotNull('path', instance.path);
  writeNotNull('secure', instance.secure);
  writeNotNull('session', instance.session);
  writeNotNull('value', instance.value);
  writeNotNull('extensions', instance.extensions);
  return val;
}

_$PostmanCollectionCertificateImpl _$$PostmanCollectionCertificateImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionCertificateImpl(
      name: json['name'] as String?,
      matches:
          (json['matches'] as List<dynamic>?)?.map((e) => e as String).toList(),
      key: json['key'] == null
          ? null
          : PostmanCollectionCertificateSrc.fromJson(
              json['key'] as Map<String, dynamic>),
      cert: json['cert'] == null
          ? null
          : PostmanCollectionCertificateSrc.fromJson(
              json['cert'] as Map<String, dynamic>),
      passphrase: json['passphrase'] as String?,
    );

Map<String, dynamic> _$$PostmanCollectionCertificateImplToJson(
    _$PostmanCollectionCertificateImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('matches', instance.matches);
  writeNotNull('key', instance.key?.toJson());
  writeNotNull('cert', instance.cert?.toJson());
  writeNotNull('passphrase', instance.passphrase);
  return val;
}

_$PostmanCollectionCertificateSrcImpl
    _$$PostmanCollectionCertificateSrcImplFromJson(Map<String, dynamic> json) =>
        _$PostmanCollectionCertificateSrcImpl(
          src: json['src'] as String?,
        );

Map<String, dynamic> _$$PostmanCollectionCertificateSrcImplToJson(
    _$PostmanCollectionCertificateSrcImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('src', instance.src);
  return val;
}

_$PostmanCollectionProxyConfigImpl _$$PostmanCollectionProxyConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionProxyConfigImpl(
      match: json['match'] as String?,
      host: json['host'] as String?,
      port: (json['port'] as num?)?.toInt(),
      tunnel: json['tunnel'] as bool?,
      disabled: json['disabled'] as bool?,
    );

Map<String, dynamic> _$$PostmanCollectionProxyConfigImplToJson(
    _$PostmanCollectionProxyConfigImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('match', instance.match);
  writeNotNull('host', instance.host);
  writeNotNull('port', instance.port);
  writeNotNull('tunnel', instance.tunnel);
  writeNotNull('disabled', instance.disabled);
  return val;
}

_$PostmanCollectionHeaderImpl _$$PostmanCollectionHeaderImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionHeaderImpl(
      key: json['key'] as String,
      value: json['value'] as String,
      type: json['type'] as String?,
      disabled: json['disabled'] as bool?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$PostmanCollectionHeaderImplToJson(
    _$PostmanCollectionHeaderImpl instance) {
  final val = <String, dynamic>{
    'key': instance.key,
    'value': instance.value,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('disabled', instance.disabled);
  writeNotNull('description', instance.description);
  return val;
}
