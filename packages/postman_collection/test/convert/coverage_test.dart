import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

/// Where every property of the official v2.1 schema goes. A path is
/// `<definition>.<property path inside it>` (root properties have no
/// prefix), e.g. `request.body.formdata.src`.
const coverage = <String, String>{
  // Collection.
  'info': 'mapped: info',
  'item': 'mapped: paths and webhooks (operations) and tags (folders)',
  'event': 'dropped: scripts are not representable in OpenAPI',
  'variable': 'mapped: collection variables, resolved everywhere',
  'auth': 'mapped: document security',
  'protocolProfileBehavior': 'dropped: client config',
  // info
  'info.name': 'mapped: info.title',
  'info._postman_id': 'dropped: a Postman id is not representable in OpenAPI',
  'info.description': 'mapped: info.description',
  'info.version': 'mapped: info.version (default 1.0.0)',
  'info.schema': 'mapped: selects the input version to normalize',
  // description
  'description.content':
      'mapped: info, tag, operation, parameter and property descriptions',
  'description.type':
      'dropped: the description format is not representable in OpenAPI '
      '(CommonMark only)',
  'description.version': 'dropped: not representable in OpenAPI',
  // version
  'version.major': 'mapped: info.version major',
  'version.minor': 'mapped: info.version minor',
  'version.patch': 'mapped: info.version patch',
  'version.identifier': 'mapped: info.version pre-release identifier',
  'version.meta': 'dropped: not representable in OpenAPI',
  // item
  'item.id': 'dropped: a Postman id is not representable in OpenAPI',
  'item.name': 'mapped: operation summary and operationId, webhook name',
  'item.description':
      'mapped: operation description (when the request has '
      'none)',
  'item.variable': 'mapped: variables resolved within the item',
  'item.event': 'dropped: scripts are not representable in OpenAPI',
  'item.request': 'mapped: one operation per method and path',
  'item.response': 'mapped: responses',
  'item.protocolProfileBehavior': 'dropped: client config',
  // item-group
  'item-group.name':
      'mapped: tag (folder path joined with " / "), empty folders too; a '
      'Webhooks folder gives webhooks',
  'item-group.description': 'mapped: tag description',
  'item-group.variable': 'mapped: variables resolved within the folder',
  'item-group.item': 'mapped: operations under the folder tag',
  'item-group.event': 'dropped: scripts are not representable in OpenAPI',
  'item-group.auth': 'mapped: security inherited by the folder',
  'item-group.protocolProfileBehavior': 'dropped: client config',
  // variable
  'variable.id': 'mapped: variable name when key is missing',
  'variable.key': 'mapped: variable name; path parameter (url.variable)',
  'variable.value':
      'mapped: substituted text: examples, samples and server '
      'variable defaults; path parameter example (url.variable)',
  'variable.type':
      'mapped: path parameter schema type (url.variable); collection '
      'variables substitute as text',
  'variable.name': 'dropped: a display name is not representable in OpenAPI',
  'variable.description': 'mapped: path parameter description (url.variable)',
  'variable.system': 'dropped: a Postman flag is not representable in OpenAPI',
  'variable.disabled': 'mapped: disabled variables stay unresolved',
  // event and script
  'event.id': 'dropped: scripts are not representable in OpenAPI',
  'event.listen': 'dropped: scripts are not representable in OpenAPI',
  'event.script': 'dropped: scripts are not representable in OpenAPI',
  'event.disabled': 'dropped: scripts are not representable in OpenAPI',
  'script.id': 'dropped: scripts are not representable in OpenAPI',
  'script.type': 'dropped: scripts are not representable in OpenAPI',
  'script.exec': 'dropped: scripts are not representable in OpenAPI',
  'script.src': 'dropped: scripts are not representable in OpenAPI',
  'script.name': 'dropped: scripts are not representable in OpenAPI',
  // url
  'url.raw':
      'mapped: origin, path and query when structured fields are '
      'missing',
  'url.protocol': 'mapped: server or operation server scheme',
  'url.host': 'mapped: server or operation server host',
  'url.path': 'mapped: path template (:id and {{id}} become {id})',
  'url.path.type': 'dropped: a segment kind is not representable in OpenAPI',
  'url.path.value': 'mapped: path segment',
  'url.port': 'mapped: server or operation server port',
  'url.query': 'mapped: query parameters (repeated keys are arrays)',
  'url.query.key': 'mapped: query parameter name',
  'url.query.value': 'mapped: query parameter example (credentials withheld)',
  'url.query.disabled':
      'mapped: disabled query parameters are documented '
      'too (optional)',
  'url.query.description': 'mapped: query parameter description',
  'url.hash':
      'dropped: a fragment is never sent, so not representable in '
      'OpenAPI',
  'url.variable': 'mapped: path parameter description, example and type',
  // request
  'request.url': 'mapped: path, path and query parameters, servers',
  'request.auth': 'mapped: operation security (inherited when missing)',
  'request.proxy': 'dropped: client config',
  'request.certificate': 'dropped: client config and secrets',
  'request.method': 'mapped: path item method (QUERY and others use 3.2)',
  'request.description': 'mapped: operation description',
  'request.header': 'mapped: header and cookie parameters, body media type',
  'request.body': 'mapped: requestBody',
  'request.body.mode': 'mapped: media type and schema kind',
  'request.body.raw':
      'mapped: inferred JSON schema and example, else a '
      'string',
  'request.body.graphql':
      'mapped: application/json {query, variables, '
      'operationName}',
  'request.body.urlencoded': 'mapped: form object',
  'request.body.urlencoded.key': 'mapped: form property name',
  'request.body.urlencoded.value':
      'mapped: inferred form property and '
      'example',
  'request.body.urlencoded.disabled':
      'mapped: disabled fields are '
      'documented too',
  'request.body.urlencoded.description': 'mapped: form property description',
  'request.body.formdata': 'mapped: multipart/form-data object',
  'request.body.formdata.key': 'mapped: part name',
  'request.body.formdata.value': 'mapped: inferred text part and example',
  'request.body.formdata.disabled':
      'mapped: disabled parts are documented '
      'too',
  'request.body.formdata.type': 'mapped: file parts are binary',
  'request.body.formdata.contentType': 'mapped: encoding contentType',
  'request.body.formdata.description': 'mapped: part description',
  'request.body.formdata.src':
      'mapped: an array gives an array of binaries '
      '(local paths are client config, not copied)',
  'request.body.file': 'mapped: binary body',
  'request.body.file.src': 'dropped: a local file path is client config',
  'request.body.file.content':
      'dropped: file content is not representable '
      'in OpenAPI beyond format: binary',
  'request.body.options': 'mapped: the raw language picks the media type',
  'request.body.disabled': 'mapped: a disabled body gives no requestBody',
  // auth
  'auth.type': 'mapped: security scheme type (noauth gives security: [])',
  'auth.noauth': 'mapped: security: []',
  'auth.apikey':
      'mapped: apiKey scheme name and location (the key is a '
      'secret)',
  'auth.awsv4': 'mapped: http AWS4-HMAC-SHA256 (keys are secrets)',
  'auth.basic': 'mapped: http basic (credentials are secrets)',
  'auth.bearer': 'mapped: http bearer (the token is a secret)',
  'auth.digest': 'mapped: http digest (credentials are secrets)',
  'auth.edgegrid': 'mapped: http EG1-HMAC-SHA256 (tokens are secrets)',
  'auth.hawk': 'mapped: http Hawk (keys are secrets)',
  'auth.ntlm': 'mapped: http NTLM (credentials are secrets)',
  'auth.oauth1': 'mapped: http OAuth (keys and tokens are secrets)',
  'auth.oauth2':
      'mapped: oauth2 flows, URLs and scopes (tokens and client '
      'credentials are secrets)',
  'auth-attribute.key': 'mapped: picks the configuration attributes',
  'auth-attribute.value':
      'mapped: apikey name and location, oauth2 grant '
      'type, URLs and scopes; every other value is a secret, never copied, '
      'and examples containing one are dropped',
  'auth-attribute.type': 'dropped: not representable in OpenAPI',
  // proxy-config
  'proxy-config.match': 'dropped: client config',
  'proxy-config.host': 'dropped: client config',
  'proxy-config.port': 'dropped: client config',
  'proxy-config.tunnel': 'dropped: client config',
  'proxy-config.disabled': 'dropped: client config',
  // certificate
  'certificate.name': 'dropped: client config',
  'certificate.matches': 'dropped: client config',
  'certificate.key': 'dropped: client config and secrets',
  'certificate.key.src': 'dropped: client config and secrets',
  'certificate.cert': 'dropped: client config',
  'certificate.cert.src': 'dropped: client config',
  'certificate.passphrase': 'dropped: secret',
  // header
  'header.key': 'mapped: header parameter or response header name',
  'header.value': 'mapped: example (credentials withheld)',
  'header.disabled':
      'mapped: disabled headers are documented too '
      '(optional)',
  'header.description': 'mapped: parameter description',
  // response
  'response.id': 'dropped: a Postman id is not representable in OpenAPI',
  'response.originalRequest':
      "mapped: merged into the item's operation "
      '(query, headers, body samples)',
  'response.responseTime': 'dropped: not representable in OpenAPI',
  'response.timings': 'dropped: not representable in OpenAPI',
  'response.header':
      'mapped: response headers (not transport ones) and '
      'media type',
  'response.cookie':
      'dropped: cookies are not representable in OpenAPI and '
      'hold secrets',
  'response.body':
      'mapped: inferred schema and example per status and '
      'media type',
  'response.status':
      'mapped: status code from the reason phrase; response '
      'description',
  'response.code': 'mapped: status code',
  // cookie
  'cookie.domain': 'dropped: cookies are not representable in OpenAPI',
  'cookie.expires': 'dropped: cookies are not representable in OpenAPI',
  'cookie.maxAge': 'dropped: cookies are not representable in OpenAPI',
  'cookie.hostOnly': 'dropped: cookies are not representable in OpenAPI',
  'cookie.httpOnly': 'dropped: cookies are not representable in OpenAPI',
  'cookie.name': 'dropped: cookies are not representable in OpenAPI',
  'cookie.path': 'dropped: cookies are not representable in OpenAPI',
  'cookie.secure': 'dropped: cookies are not representable in OpenAPI',
  'cookie.session': 'dropped: cookies are not representable in OpenAPI',
  'cookie.value': 'dropped: secret',
  'cookie.extensions': 'dropped: cookies are not representable in OpenAPI',
};

/// Every property path of a JSON Schema, following `$ref`, `oneOf`, `anyOf`,
/// `items` and `properties`. Each definition is walked once (cutting
/// cycles) and names the paths inside it.
Set<String> propertyPaths(Map<String, Object?> schema) {
  final definitions = schema['definitions']! as Map<String, Object?>;
  final paths = <String>{};
  final walked = <String>{};
  void walk(Object? node, String prefix) {
    if (node is! Map) return;
    if (node[r'$ref'] case final String ref) {
      final name = ref.split('/').last;
      if (walked.add(name)) walk(definitions[name], name);
      return;
    }
    for (final key in ['oneOf', 'anyOf']) {
      for (final variant in node[key] as List? ?? const []) {
        walk(variant, prefix);
      }
    }
    walk(node['items'], prefix);
    for (final MapEntry(:key, :value)
        in (node['properties'] as Map? ?? const {}).entries) {
      final path = prefix.isEmpty ? '$key' : '$prefix.$key';
      paths.add(path);
      walk(value, path);
    }
  }

  walk(schema, '');
  return paths;
}

void main() {
  test('every property of the official v2.1 schema is mapped or dropped', () {
    final schema = jsonDecode(
      File('../../schemas/postman/v2.1.0/collection.json').readAsStringSync(),
    );
    expect(
      propertyPaths(schema as Map<String, Object?>),
      coverage.keys.toSet(),
    );
  });

  test('dropped reasons are the spec\'s: not representable in OpenAPI, '
      'client config or secrets', () {
    for (final MapEntry(key: path, value: where) in coverage.entries) {
      expect(
        where,
        anyOf(
          startsWith('mapped: '),
          allOf(
            startsWith('dropped: '),
            anyOf(
              contains('not representable in OpenAPI'),
              contains('client config'),
              contains('secret'),
            ),
          ),
        ),
        reason: path,
      );
    }
  });

  test('fields the converter reads are mapped', () {
    for (final path in [
      // url.variable entries are variable objects: path parameter type and
      // description.
      'variable.type',
      'variable.description',
      'variable.key',
      'variable.value',
    ]) {
      expect(coverage[path], startsWith('mapped: '), reason: path);
    }
  });

  test('the fields the spec drops are dropped', () {
    for (final path in [
      'event',
      'item.event',
      'item-group.event',
      'protocolProfileBehavior',
      'item.protocolProfileBehavior',
      'item-group.protocolProfileBehavior',
      'request.proxy',
      'request.certificate',
      'response.cookie',
      'response.responseTime',
      'response.timings',
    ]) {
      expect(coverage[path], startsWith('dropped: '), reason: path);
    }
  });
}
