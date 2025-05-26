import 'package:freezed_annotation/freezed_annotation.dart';

import 'open_api_components.dart';
import 'open_api_info.dart';
import 'open_api_paths.dart';

part 'open_api.freezed.dart';
part 'open_api.g.dart';

typedef OpenApiPaths
    = Map<String, Map<OpenApiPathMethodEnum, OpenApiPathMethod>>;

@freezed
abstract class OpenApi with _$OpenApi {
  const OpenApi._();

  const factory OpenApi({
    @JsonKey(name: 'openapi') String? openapi,
    @JsonKey(name: 'info') OpenApiInfo? info,
    @JsonKey(name: 'servers') List<OpenApiServer>? servers,
    @JsonKey(name: 'paths') OpenApiPaths? paths,
    @JsonKey(name: 'components') OpenApiComponents? components,
    @JsonKey(name: 'tags') List<OpenApiTag>? tags,
    Map<String, dynamic>? extraJson,
  }) = _OpenApi;

  factory OpenApi.fromJson(Map<String, dynamic> json) =>
      _$OpenApiFromJson(json);
}

@freezed
abstract class OpenApiTag with _$OpenApiTag {
  const OpenApiTag._();

  const factory OpenApiTag({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') required String? description,
  }) = _OpenApiTag;

  factory OpenApiTag.fromJson(Map<String, dynamic> json) =>
      _$OpenApiTagFromJson(json);
}

@freezed
abstract class OpenApiServer with _$OpenApiServer {
  const OpenApiServer._();

  const factory OpenApiServer({
    @JsonKey(name: 'url') required Uri url,
    @JsonKey(name: 'description') required String? description,
  }) = _OpenApiServer;

  factory OpenApiServer.fromJson(Map<String, dynamic> json) =>
      _$OpenApiServerFromJson(json);
}
