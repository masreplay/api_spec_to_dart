// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_collection_base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanCollection _$PostmanCollectionFromJson(
  Map<String, dynamic> json,
) => _PostmanCollection(
  info: PostmanCollectionInfo.fromJson(json['info'] as Map<String, dynamic>),
  item: (json['item'] as List<dynamic>)
      .map((e) => PostmanCollectionItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  auth: json['auth'] == null
      ? null
      : PostmanCollectionAuth.fromJson(json['auth'] as Map<String, dynamic>),
  event: (json['event'] as List<dynamic>?)
      ?.map((e) => PostmanCollectionEvent.fromJson(e as Map<String, dynamic>))
      .toList(),
  protocolProfileBehavior:
      json['protocolProfileBehavior'] as Map<String, dynamic>?,
  variable: (json['variable'] as List<dynamic>?)
      ?.map(
        (e) => PostmanCollectionVariable.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$PostmanCollectionToJson(_PostmanCollection instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
      'item': instance.item.map((e) => e.toJson()).toList(),
      'auth': ?instance.auth?.toJson(),
      'event': ?instance.event?.map((e) => e.toJson()).toList(),
      'protocolProfileBehavior': ?instance.protocolProfileBehavior,
      'variable': ?instance.variable?.map((e) => e.toJson()).toList(),
    };

_PostmanCollectionInfo _$PostmanCollectionInfoFromJson(
  Map<String, dynamic> json,
) => _PostmanCollectionInfo(
  postmanId: json['_postman_id'] as String?,
  name: json['name'] as String,
  schema: json['schema'] as String,
  description: json['description'] as String?,
  version: json['version'] == null
      ? null
      : PostmanCollectionVersion.fromJson(
          json['version'] as Map<String, dynamic>,
        ),
  exporterId: json['_exporter_id'] as String?,
  collectionLink: json['_collection_link'] as String?,
);

Map<String, dynamic> _$PostmanCollectionInfoToJson(
  _PostmanCollectionInfo instance,
) => <String, dynamic>{
  '_postman_id': ?instance.postmanId,
  'name': instance.name,
  'schema': instance.schema,
  'description': ?instance.description,
  'version': ?instance.version?.toJson(),
  '_exporter_id': ?instance.exporterId,
  '_collection_link': ?instance.collectionLink,
};

_PostmanCollectionVersion _$PostmanCollectionVersionFromJson(
  Map<String, dynamic> json,
) => _PostmanCollectionVersion(
  major: (json['major'] as num).toInt(),
  minor: (json['minor'] as num).toInt(),
  patch: (json['patch'] as num).toInt(),
  identifier: json['identifier'] as String?,
  meta: json['meta'],
);

Map<String, dynamic> _$PostmanCollectionVersionToJson(
  _PostmanCollectionVersion instance,
) => <String, dynamic>{
  'major': instance.major,
  'minor': instance.minor,
  'patch': instance.patch,
  'identifier': ?instance.identifier,
  'meta': ?instance.meta,
};

_PostmanCollectionItem _$PostmanCollectionItemFromJson(
  Map<String, dynamic> json,
) => _PostmanCollectionItem(
  id: json['id'] as String?,
  name: json['name'] as String,
  description: json['description'] as String?,
  variable: (json['variable'] as List<dynamic>?)
      ?.map(
        (e) => PostmanCollectionVariable.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  event: (json['event'] as List<dynamic>?)
      ?.map((e) => PostmanCollectionEvent.fromJson(e as Map<String, dynamic>))
      .toList(),
  protocolProfileBehavior:
      json['protocolProfileBehavior'] as Map<String, dynamic>?,
  request: json['request'] == null
      ? null
      : PostmanCollectionRequest.fromJson(
          json['request'] as Map<String, dynamic>,
        ),
  response: (json['response'] as List<dynamic>?)
      ?.map(
        (e) => PostmanCollectionResponse.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  item: (json['item'] as List<dynamic>?)
      ?.map((e) => PostmanCollectionItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PostmanCollectionItemToJson(
  _PostmanCollectionItem instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'name': instance.name,
  'description': ?instance.description,
  'variable': ?instance.variable?.map((e) => e.toJson()).toList(),
  'event': ?instance.event?.map((e) => e.toJson()).toList(),
  'protocolProfileBehavior': ?instance.protocolProfileBehavior,
  'request': ?instance.request?.toJson(),
  'response': ?instance.response?.map((e) => e.toJson()).toList(),
  'item': ?instance.item?.map((e) => e.toJson()).toList(),
};

_PostmanCollectionAuth _$PostmanCollectionAuthFromJson(
  Map<String, dynamic> json,
) => _PostmanCollectionAuth(
  type: $enumDecode(_$PostmanCollectionAuthTypeEnumMap, json['type']),
  noauth: (json['noauth'] as List<dynamic>?)
      ?.map(
        (e) =>
            PostmanCollectionAuthAttribute.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  apikey: (json['apikey'] as List<dynamic>?)
      ?.map(
        (e) =>
            PostmanCollectionAuthAttribute.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  awsv4: (json['awsv4'] as List<dynamic>?)
      ?.map(
        (e) =>
            PostmanCollectionAuthAttribute.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  basic: (json['basic'] as List<dynamic>?)
      ?.map(
        (e) =>
            PostmanCollectionAuthAttribute.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  bearer: (json['bearer'] as List<dynamic>?)
      ?.map(
        (e) =>
            PostmanCollectionAuthAttribute.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  digest: (json['digest'] as List<dynamic>?)
      ?.map(
        (e) =>
            PostmanCollectionAuthAttribute.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  edgegrid: (json['edgegrid'] as List<dynamic>?)
      ?.map(
        (e) =>
            PostmanCollectionAuthAttribute.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  hawk: (json['hawk'] as List<dynamic>?)
      ?.map(
        (e) =>
            PostmanCollectionAuthAttribute.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  ntlm: (json['ntlm'] as List<dynamic>?)
      ?.map(
        (e) =>
            PostmanCollectionAuthAttribute.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  oauth1: (json['oauth1'] as List<dynamic>?)
      ?.map(
        (e) =>
            PostmanCollectionAuthAttribute.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  oauth2: (json['oauth2'] as List<dynamic>?)
      ?.map(
        (e) =>
            PostmanCollectionAuthAttribute.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$PostmanCollectionAuthToJson(
  _PostmanCollectionAuth instance,
) => <String, dynamic>{
  'type': _$PostmanCollectionAuthTypeEnumMap[instance.type]!,
  'noauth': ?instance.noauth?.map((e) => e.toJson()).toList(),
  'apikey': ?instance.apikey?.map((e) => e.toJson()).toList(),
  'awsv4': ?instance.awsv4?.map((e) => e.toJson()).toList(),
  'basic': ?instance.basic?.map((e) => e.toJson()).toList(),
  'bearer': ?instance.bearer?.map((e) => e.toJson()).toList(),
  'digest': ?instance.digest?.map((e) => e.toJson()).toList(),
  'edgegrid': ?instance.edgegrid?.map((e) => e.toJson()).toList(),
  'hawk': ?instance.hawk?.map((e) => e.toJson()).toList(),
  'ntlm': ?instance.ntlm?.map((e) => e.toJson()).toList(),
  'oauth1': ?instance.oauth1?.map((e) => e.toJson()).toList(),
  'oauth2': ?instance.oauth2?.map((e) => e.toJson()).toList(),
};

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

_PostmanCollectionAuthAttribute _$PostmanCollectionAuthAttributeFromJson(
  Map<String, dynamic> json,
) => _PostmanCollectionAuthAttribute(
  key: json['key'] as String,
  value: json['value'],
  type: json['type'] as String?,
);

Map<String, dynamic> _$PostmanCollectionAuthAttributeToJson(
  _PostmanCollectionAuthAttribute instance,
) => <String, dynamic>{
  'key': instance.key,
  'value': ?instance.value,
  'type': ?instance.type,
};

_PostmanCollectionRequest _$PostmanCollectionRequestFromJson(
  Map<String, dynamic> json,
) => _PostmanCollectionRequest(
  auth: json['auth'] == null
      ? null
      : PostmanCollectionAuth.fromJson(json['auth'] as Map<String, dynamic>),
  method: json['method'] as String,
  proxy: json['proxy'] == null
      ? null
      : PostmanCollectionProxyConfig.fromJson(
          json['proxy'] as Map<String, dynamic>,
        ),
  certificate: json['certificate'] == null
      ? null
      : PostmanCollectionCertificate.fromJson(
          json['certificate'] as Map<String, dynamic>,
        ),
  header: (json['header'] as List<dynamic>?)
      ?.map((e) => PostmanCollectionHeader.fromJson(e as Map<String, dynamic>))
      .toList(),
  body: json['body'] == null
      ? null
      : PostmanCollectionRequestMode.fromJson(
          json['body'] as Map<String, dynamic>,
        ),
  url: json['url'] == null
      ? null
      : PostmanCollectionUrl.fromJson(json['url'] as Map<String, dynamic>),
  description: json['description'] as String?,
);

Map<String, dynamic> _$PostmanCollectionRequestToJson(
  _PostmanCollectionRequest instance,
) => <String, dynamic>{
  'auth': ?instance.auth?.toJson(),
  'method': instance.method,
  'proxy': ?instance.proxy?.toJson(),
  'certificate': ?instance.certificate?.toJson(),
  'header': ?instance.header?.map((e) => e.toJson()).toList(),
  'body': ?instance.body?.toJson(),
  'url': ?instance.url?.toJson(),
  'description': ?instance.description,
};

_PostmanCollectionRequestModeRaw _$PostmanCollectionRequestModeRawFromJson(
  Map<String, dynamic> json,
) => _PostmanCollectionRequestModeRaw(
  raw: json['raw'] as String?,
  options: json['options'] as Map<String, dynamic>?,
  $type: json['mode'] as String?,
);

Map<String, dynamic> _$PostmanCollectionRequestModeRawToJson(
  _PostmanCollectionRequestModeRaw instance,
) => <String, dynamic>{
  'raw': ?instance.raw,
  'options': ?instance.options,
  'mode': instance.$type,
};

_PostmanCollectionRequestModeFormdata
_$PostmanCollectionRequestModeFormdataFromJson(Map<String, dynamic> json) =>
    _PostmanCollectionRequestModeFormdata(
      formdata: (json['formdata'] as List<dynamic>?)
          ?.map((e) => PostmanFormDataEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['mode'] as String?,
    );

Map<String, dynamic> _$PostmanCollectionRequestModeFormdataToJson(
  _PostmanCollectionRequestModeFormdata instance,
) => <String, dynamic>{
  'formdata': ?instance.formdata?.map((e) => e.toJson()).toList(),
  'mode': instance.$type,
};

_PostmanFormDataEntry _$PostmanFormDataEntryFromJson(
  Map<String, dynamic> json,
) => _PostmanFormDataEntry(
  key: json['key'] as String,
  src: json['src'] as String?,
  value: json['value'] as String?,
  type: json['type'] as String?,
);

Map<String, dynamic> _$PostmanFormDataEntryToJson(
  _PostmanFormDataEntry instance,
) => <String, dynamic>{
  'key': instance.key,
  'src': ?instance.src,
  'value': ?instance.value,
  'type': ?instance.type,
};

_PostmanCollectionUrl _$PostmanCollectionUrlFromJson(
  Map<String, dynamic> json,
) => _PostmanCollectionUrl(
  raw: json['raw'] as String?,
  protocol: json['protocol'] as String?,
  host: json['host'],
  path: json['path'],
  port: json['port'] as String?,
  query: (json['query'] as List<dynamic>?)
      ?.map(
        (e) => PostmanCollectionQueryParam.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  hash: json['hash'] as String?,
  variable: (json['variable'] as List<dynamic>?)
      ?.map(
        (e) => PostmanCollectionVariable.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$PostmanCollectionUrlToJson(
  _PostmanCollectionUrl instance,
) => <String, dynamic>{
  'raw': ?instance.raw,
  'protocol': ?instance.protocol,
  'host': ?instance.host,
  'path': ?instance.path,
  'port': ?instance.port,
  'query': ?instance.query?.map((e) => e.toJson()).toList(),
  'hash': ?instance.hash,
  'variable': ?instance.variable?.map((e) => e.toJson()).toList(),
};

_PostmanCollectionQueryParam _$PostmanCollectionQueryParamFromJson(
  Map<String, dynamic> json,
) => _PostmanCollectionQueryParam(
  key: json['key'] as String?,
  value: json['value'] as String?,
  disabled: json['disabled'] as bool?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$PostmanCollectionQueryParamToJson(
  _PostmanCollectionQueryParam instance,
) => <String, dynamic>{
  'key': ?instance.key,
  'value': ?instance.value,
  'disabled': ?instance.disabled,
  'description': ?instance.description,
};

_PostmanCollectionVariable _$PostmanCollectionVariableFromJson(
  Map<String, dynamic> json,
) => _PostmanCollectionVariable(
  id: json['id'] as String?,
  key: json['key'] as String?,
  value: json['value'],
  type: $enumDecodeNullable(
    _$PostmanCollectionVariableTypeEnumMap,
    json['type'],
  ),
  name: json['name'] as String?,
  description: json['description'] as String?,
  system: json['system'] as bool?,
  disabled: json['disabled'] as bool?,
);

Map<String, dynamic> _$PostmanCollectionVariableToJson(
  _PostmanCollectionVariable instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'key': ?instance.key,
  'value': ?instance.value,
  'type': ?_$PostmanCollectionVariableTypeEnumMap[instance.type],
  'name': ?instance.name,
  'description': ?instance.description,
  'system': ?instance.system,
  'disabled': ?instance.disabled,
};

const _$PostmanCollectionVariableTypeEnumMap = {
  PostmanCollectionVariableType.string: 'string',
  PostmanCollectionVariableType.boolean: 'boolean',
  PostmanCollectionVariableType.any: 'any',
  PostmanCollectionVariableType.number: 'number',
};

_PostmanCollectionEvent _$PostmanCollectionEventFromJson(
  Map<String, dynamic> json,
) => _PostmanCollectionEvent(
  id: json['id'] as String?,
  listen: json['listen'] as String,
  script: json['script'] == null
      ? null
      : PostmanCollectionScript.fromJson(
          json['script'] as Map<String, dynamic>,
        ),
  disabled: json['disabled'] as bool?,
);

Map<String, dynamic> _$PostmanCollectionEventToJson(
  _PostmanCollectionEvent instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'listen': instance.listen,
  'script': ?instance.script?.toJson(),
  'disabled': ?instance.disabled,
};

_PostmanCollectionScript _$PostmanCollectionScriptFromJson(
  Map<String, dynamic> json,
) => _PostmanCollectionScript(
  id: json['id'] as String?,
  packages: json['packages'] as Map<String, dynamic>?,
  type: json['type'] as String?,
  exec: json['exec'],
  src: json['src'] == null
      ? null
      : PostmanCollectionUrl.fromJson(json['src'] as Map<String, dynamic>),
  name: json['name'] as String?,
);

Map<String, dynamic> _$PostmanCollectionScriptToJson(
  _PostmanCollectionScript instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'packages': ?instance.packages,
  'type': ?instance.type,
  'exec': ?instance.exec,
  'src': ?instance.src?.toJson(),
  'name': ?instance.name,
};

_PostmanCollectionResponse _$PostmanCollectionResponseFromJson(
  Map<String, dynamic> json,
) => _PostmanCollectionResponse(
  name: json['name'] as String?,
  id: json['id'] as String?,
  originalRequest: json['originalRequest'] == null
      ? null
      : PostmanCollectionRequest.fromJson(
          json['originalRequest'] as Map<String, dynamic>,
        ),
  postmanPreviewLanguage: json['_postman_previewlanguage'] as String?,
  responseTime: json['responseTime'],
  timings: json['timings'],
  header: json['header'],
  cookie: (json['cookie'] as List<dynamic>?)
      ?.map((e) => PostmanCollectionCookie.fromJson(e as Map<String, dynamic>))
      .toList(),
  body: json['body'] as String?,
  status: json['status'] as String?,
  code: (json['code'] as num?)?.toInt(),
);

Map<String, dynamic> _$PostmanCollectionResponseToJson(
  _PostmanCollectionResponse instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'id': ?instance.id,
  'originalRequest': ?instance.originalRequest?.toJson(),
  '_postman_previewlanguage': ?instance.postmanPreviewLanguage,
  'responseTime': ?instance.responseTime,
  'timings': ?instance.timings,
  'header': ?instance.header,
  'cookie': ?instance.cookie?.map((e) => e.toJson()).toList(),
  'body': ?instance.body,
  'status': ?instance.status,
  'code': ?instance.code,
};

_PostmanCollectionCookie _$PostmanCollectionCookieFromJson(
  Map<String, dynamic> json,
) => _PostmanCollectionCookie(
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

Map<String, dynamic> _$PostmanCollectionCookieToJson(
  _PostmanCollectionCookie instance,
) => <String, dynamic>{
  'domain': instance.domain,
  'expires': ?instance.expires,
  'maxAge': ?instance.maxAge,
  'hostOnly': ?instance.hostOnly,
  'httpOnly': ?instance.httpOnly,
  'name': ?instance.name,
  'path': ?instance.path,
  'secure': ?instance.secure,
  'session': ?instance.session,
  'value': ?instance.value,
  'extensions': ?instance.extensions,
};

_PostmanCollectionCertificate _$PostmanCollectionCertificateFromJson(
  Map<String, dynamic> json,
) => _PostmanCollectionCertificate(
  name: json['name'] as String?,
  matches: (json['matches'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  key: json['key'] == null
      ? null
      : PostmanCollectionCertificateSrc.fromJson(
          json['key'] as Map<String, dynamic>,
        ),
  cert: json['cert'] == null
      ? null
      : PostmanCollectionCertificateSrc.fromJson(
          json['cert'] as Map<String, dynamic>,
        ),
  passphrase: json['passphrase'] as String?,
);

Map<String, dynamic> _$PostmanCollectionCertificateToJson(
  _PostmanCollectionCertificate instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'matches': ?instance.matches,
  'key': ?instance.key?.toJson(),
  'cert': ?instance.cert?.toJson(),
  'passphrase': ?instance.passphrase,
};

_PostmanCollectionCertificateSrc _$PostmanCollectionCertificateSrcFromJson(
  Map<String, dynamic> json,
) => _PostmanCollectionCertificateSrc(src: json['src'] as String?);

Map<String, dynamic> _$PostmanCollectionCertificateSrcToJson(
  _PostmanCollectionCertificateSrc instance,
) => <String, dynamic>{'src': ?instance.src};

_PostmanCollectionProxyConfig _$PostmanCollectionProxyConfigFromJson(
  Map<String, dynamic> json,
) => _PostmanCollectionProxyConfig(
  match: json['match'] as String?,
  host: json['host'] as String?,
  port: (json['port'] as num?)?.toInt(),
  tunnel: json['tunnel'] as bool?,
  disabled: json['disabled'] as bool?,
);

Map<String, dynamic> _$PostmanCollectionProxyConfigToJson(
  _PostmanCollectionProxyConfig instance,
) => <String, dynamic>{
  'match': ?instance.match,
  'host': ?instance.host,
  'port': ?instance.port,
  'tunnel': ?instance.tunnel,
  'disabled': ?instance.disabled,
};

_PostmanCollectionHeader _$PostmanCollectionHeaderFromJson(
  Map<String, dynamic> json,
) => _PostmanCollectionHeader(
  key: json['key'] as String,
  value: json['value'] as String,
  type: json['type'] as String?,
  disabled: json['disabled'] as bool?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$PostmanCollectionHeaderToJson(
  _PostmanCollectionHeader instance,
) => <String, dynamic>{
  'key': instance.key,
  'value': instance.value,
  'type': ?instance.type,
  'disabled': ?instance.disabled,
  'description': ?instance.description,
};
