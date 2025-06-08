import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'format/format.dart';

part 'postman_collection_base.freezed.dart';
part 'postman_collection_base.g.dart';

@freezed
class PostmanCollection with _$PostmanCollection {
  const PostmanCollection._();

  const factory PostmanCollection({
    required PostmanCollectionInfo info,
    required List<PostmanCollectionItem> item,
    PostmanCollectionAuth? auth,
    List<PostmanCollectionEvent>? event,
    Map<String, dynamic>? protocolProfileBehavior,
    List<PostmanCollectionVariable>? variable,
  }) = _PostmanCollection;

  static String filename(String filename) {
    return '$filename.postman_collection.json';
  }

  factory PostmanCollection.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionFromJson(json);
}

@freezed
class PostmanCollectionInfo with _$PostmanCollectionInfo {
  const PostmanCollectionInfo._();

  const factory PostmanCollectionInfo({
    @JsonKey(name: '_postman_id') String? postmanId,
    required String name,
    required String schema,
    String? description,
    PostmanCollectionVersion? version,
    @JsonKey(name: '_exporter_id') String? exporterId,
    @JsonKey(name: '_collection_link') String? collectionLink,
  }) = _PostmanCollectionInfo;

  static const String schemaV210 =
      'https://schema.getpostman.com/json/collection/v2.1.0/collection.json';

  factory PostmanCollectionInfo.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionInfoFromJson(json);
}

@freezed
class PostmanCollectionVersion with _$PostmanCollectionVersion {
  const PostmanCollectionVersion._();

  const factory PostmanCollectionVersion({
    required int major,
    required int minor,
    required int patch,
    String? identifier,
    Object? meta,
  }) = _PostmanCollectionVersion;

  // 0.0.1+1-beta
  factory PostmanCollectionVersion.fromString(String value) {
    final parts = value.split('+');
    final version = parts[0].split('-')[0];
    final preRelease = parts.length > 1 ? parts[1] : null;
    final versionParts = version.split('.');

    return PostmanCollectionVersion(
      major: int.parse(versionParts[0]),
      minor: int.parse(versionParts[1]),
      patch: int.parse(versionParts[2]),
      identifier: preRelease,
    );
  }

  factory PostmanCollectionVersion.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionVersionFromJson(json);
}

@freezed
class PostmanCollectionItem with _$PostmanCollectionItem {
  const PostmanCollectionItem._();

  const factory PostmanCollectionItem({
    String? id,
    required String name,
    String? description,
    List<PostmanCollectionVariable>? variable,
    List<PostmanCollectionEvent>? event,
    Map<String, dynamic>? protocolProfileBehavior,
    PostmanCollectionRequest? request,
    List<PostmanCollectionResponse>? response,
    List<PostmanCollectionItem>? item,
  }) = _PostmanCollectionItem;

  static String getNameFromFunction(Function function) {
    final string = function.toString();
    final firstQuote = string.indexOf("'");
    final secondQuote = string.indexOf("'", firstQuote + 1);
    final name = string.substring(firstQuote + 1, secondQuote);

    return toSentenceCase(name);
  }

  static String getNameFromClass(Type type) {
    final string = type.toString();
    final name = string.substring(string.indexOf('.') + 1);

    return toSentenceCase(name);
  }

  factory PostmanCollectionItem.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionItemFromJson(json);
}

@freezed
class PostmanCollectionAuth with _$PostmanCollectionAuth {
  const PostmanCollectionAuth._();

  const factory PostmanCollectionAuth({
    required PostmanCollectionAuthType type,
    List<PostmanCollectionAuthAttribute>? noauth,
    List<PostmanCollectionAuthAttribute>? apikey,
    List<PostmanCollectionAuthAttribute>? awsv4,
    List<PostmanCollectionAuthAttribute>? basic,
    List<PostmanCollectionAuthAttribute>? bearer,
    List<PostmanCollectionAuthAttribute>? digest,
    List<PostmanCollectionAuthAttribute>? edgegrid,
    List<PostmanCollectionAuthAttribute>? hawk,
    List<PostmanCollectionAuthAttribute>? ntlm,
    List<PostmanCollectionAuthAttribute>? oauth1,
    List<PostmanCollectionAuthAttribute>? oauth2,
  }) = _PostmanCollectionAuth;

  factory PostmanCollectionAuth.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionAuthFromJson(json);
}

@freezed
class PostmanCollectionAuthAttribute with _$PostmanCollectionAuthAttribute {
  const PostmanCollectionAuthAttribute._();

  const factory PostmanCollectionAuthAttribute({
    required String key,
    Object? value,
    String? type,
  }) = _PostmanCollectionAuthAttribute;

  factory PostmanCollectionAuthAttribute.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionAuthAttributeFromJson(json);
}

@freezed
class PostmanCollectionRequest with _$PostmanCollectionRequest {
  const PostmanCollectionRequest._();

  const factory PostmanCollectionRequest({
    PostmanCollectionAuth? auth,
    required String method,
    PostmanCollectionProxyConfig? proxy,
    PostmanCollectionCertificate? certificate,
    List<PostmanCollectionHeader>? header,
    PostmanCollectionRequestMode? body,
    PostmanCollectionUrl? url,
    String? description,
  }) = _PostmanCollectionRequest;

  factory PostmanCollectionRequest.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionRequestFromJson(json);

  factory PostmanCollectionRequest.fromRequestOptions(RequestOptions options) {
    return PostmanCollectionRequest(
      method: options.method,
      header: options.headers.isEmpty
          ? []
          : options.headers.entries.map((entry) {
              return PostmanCollectionHeader(
                key: entry.key,
                value: entry.value,
              );
            }).toList(),
      description: options.method,
      body: _body(options),
      url: PostmanCollectionUrl(
        raw: options.uri.toString(),
        // protocol: options.uri.scheme,
        port: options.uri.port == 443 ? null : options.uri.port.toString(),
        host: options.baseUrl,
        path: options.path,
        query: options.queryParameters.isEmpty
            ? []
            : options.queryParameters.entries.map((entry) {
                return PostmanCollectionQueryParam(
                  key: entry.key,
                  value: entry.value?.toString(),
                );
              }).toList(),
      ),
    );
  }

  static PostmanCollectionRequestMode _body(RequestOptions options) {
    PostmanCollectionRequestMode formData(Map<String, dynamic> data) {
      return PostmanCollectionRequestMode.formdata(
        formdata: data.entries.map((entry) {
          switch (entry.value) {
            case MultipartFile file:
              return PostmanFormDataEntry(
                key: entry.key,
                type: 'file',
                src: file.filename ?? '',
              );
            default:
              return PostmanFormDataEntry(
                key: entry.key,
                type: 'text',
                value: entry.value.toString(),
              );
          }
        }).toList(),
      );
    }

    final data = options.data;

    if (data is FormData) {
      return formData(
        Map<String, dynamic>.fromEntries(
          [...data.fields, ...data.files],
        ),
      );
    }

    return switch (options.contentType) {
      Headers.multipartFormDataContentType => formData(options.data),
      _ => PostmanCollectionRequestMode.raw(
          raw: options.data == null
              ? null
              : options.data is Map<String, dynamic>
                  ? JsonEncoder.withIndent('  ').convert(options.data)
                  : options.data?.toString(),
          options: {
            'raw': {'language': 'json'},
          },
        ),
    };
  }
}

@Freezed(
  unionKey: 'mode',
  fallbackUnion: 'raw',
)
class PostmanCollectionRequestMode with _$PostmanCollectionRequestMode {
  const PostmanCollectionRequestMode._();

  @FreezedUnionValue('raw')
  const factory PostmanCollectionRequestMode.raw({
    String? raw,
    Map<String, dynamic>? options,
  }) = _PostmanCollectionRequestMode;

  @FreezedUnionValue('formdata')
  const factory PostmanCollectionRequestMode.formdata({
    List<PostmanFormDataEntry>? formdata,
  }) = _PostmanCollectionRequestModeFormdata;

  factory PostmanCollectionRequestMode.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionRequestModeFromJson(json);
}

@freezed
class PostmanFormDataEntry with _$PostmanFormDataEntry {
  const PostmanFormDataEntry._();

  const factory PostmanFormDataEntry({
    required String key,
    String? src,
    String? value,
    String? type,
  }) = _PostmanFormDataEntry;

  factory PostmanFormDataEntry.fromJson(Map<String, dynamic> json) =>
      _$PostmanFormDataEntryFromJson(json);
}

@freezed
class PostmanCollectionUrl with _$PostmanCollectionUrl {
  const PostmanCollectionUrl._();

  const factory PostmanCollectionUrl({
    String? raw,
    String? protocol,
    Object? host,
    Object? path,
    String? port,
    List<PostmanCollectionQueryParam>? query,
    String? hash,
    List<PostmanCollectionVariable>? variable,
  }) = _PostmanCollectionUrl;

  factory PostmanCollectionUrl.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionUrlFromJson(json);
}

@freezed
class PostmanCollectionQueryParam with _$PostmanCollectionQueryParam {
  const PostmanCollectionQueryParam._();

  const factory PostmanCollectionQueryParam({
    String? key,
    String? value,
    bool? disabled,
    String? description,
  }) = _PostmanCollectionQueryParam;

  factory PostmanCollectionQueryParam.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionQueryParamFromJson(json);
}

@freezed
class PostmanCollectionVariable with _$PostmanCollectionVariable {
  const PostmanCollectionVariable._();

  const factory PostmanCollectionVariable({
    String? id,
    String? key,
    Object? value,
    PostmanCollectionVariableType? type,
    String? name,
    String? description,
    bool? system,
    bool? disabled,
  }) = _PostmanCollectionVariable;

  factory PostmanCollectionVariable.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionVariableFromJson(json);
}

@freezed
class PostmanCollectionEvent with _$PostmanCollectionEvent {
  const PostmanCollectionEvent._();

  const factory PostmanCollectionEvent({
    String? id,
    required String listen,
    PostmanCollectionScript? script,
    bool? disabled,
  }) = _PostmanCollectionEvent;

  factory PostmanCollectionEvent.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionEventFromJson(json);
}

@freezed
class PostmanCollectionScript with _$PostmanCollectionScript {
  const PostmanCollectionScript._();

  const factory PostmanCollectionScript({
    String? id,
    Map<String, dynamic>? packages,
    String? type,
    Object? exec,
    PostmanCollectionUrl? src,
    String? name,
  }) = _PostmanCollectionScript;

  factory PostmanCollectionScript.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionScriptFromJson(json);
}

@freezed
class PostmanCollectionResponse with _$PostmanCollectionResponse {
  const PostmanCollectionResponse._();

  const factory PostmanCollectionResponse({
    String? name,
    String? id,
    PostmanCollectionRequest? originalRequest,
    @JsonKey(name: '_postman_previewlanguage') String? postmanPreviewLanguage,
    Object? responseTime,
    Object? timings,
    Object? header,
    List<PostmanCollectionCookie>? cookie,
    String? body,
    String? status,
    int? code,
  }) = _PostmanCollectionResponse;

  factory PostmanCollectionResponse.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionResponseFromJson(json);
}

@freezed
class PostmanCollectionCookie with _$PostmanCollectionCookie {
  const PostmanCollectionCookie._();

  const factory PostmanCollectionCookie({
    required String domain,
    Object? expires,
    String? maxAge,
    bool? hostOnly,
    bool? httpOnly,
    String? name,
    String? path,
    bool? secure,
    bool? session,
    String? value,
    Object? extensions,
  }) = _PostmanCollectionCookie;

  factory PostmanCollectionCookie.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionCookieFromJson(json);
}

@freezed
class PostmanCollectionCertificate with _$PostmanCollectionCertificate {
  const PostmanCollectionCertificate._();

  const factory PostmanCollectionCertificate({
    String? name,
    List<String>? matches,
    PostmanCollectionCertificateSrc? key,
    PostmanCollectionCertificateSrc? cert,
    String? passphrase,
  }) = _PostmanCollectionCertificate;

  factory PostmanCollectionCertificate.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionCertificateFromJson(json);
}

@freezed
class PostmanCollectionCertificateSrc with _$PostmanCollectionCertificateSrc {
  const PostmanCollectionCertificateSrc._();

  const factory PostmanCollectionCertificateSrc({
    String? src,
  }) = _PostmanCollectionCertificateSrc;

  factory PostmanCollectionCertificateSrc.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionCertificateSrcFromJson(json);
}

@freezed
class PostmanCollectionProxyConfig with _$PostmanCollectionProxyConfig {
  const PostmanCollectionProxyConfig._();

  const factory PostmanCollectionProxyConfig({
    String? match,
    String? host,
    int? port,
    bool? tunnel,
    bool? disabled,
  }) = _PostmanCollectionProxyConfig;

  factory PostmanCollectionProxyConfig.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionProxyConfigFromJson(json);
}

enum PostmanCollectionAuthType {
  apikey,
  awsv4,
  basic,
  bearer,
  digest,
  edgegrid,
  hawk,
  noauth,
  oauth1,
  oauth2,
  ntlm,
}

enum PostmanCollectionVariableType {
  string,
  boolean,
  any,
  number,
}

@freezed
class PostmanCollectionHeader with _$PostmanCollectionHeader {
  const PostmanCollectionHeader._();

  const factory PostmanCollectionHeader({
    required String key,
    required String value,
    String? type,
    bool? disabled,
    String? description,
  }) = _PostmanCollectionHeader;

  factory PostmanCollectionHeader.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionHeaderFromJson(json);
}
