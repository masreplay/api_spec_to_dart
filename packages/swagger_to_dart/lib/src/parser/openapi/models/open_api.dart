import 'package:freezed_annotation/freezed_annotation.dart';

import 'open_api_components.dart';
import 'open_api_info.dart';
import 'open_api_paths.dart';

part 'open_api.freezed.dart';
part 'open_api.g.dart';

@freezed
abstract class OpenApi with _$OpenApi {
  const OpenApi._();

  const factory OpenApi({
    @JsonKey(name: 'openapi') required String openapi,
    @JsonKey(name: 'info') required OpenApiInfo info,
    @JsonKey(name: 'servers') required List<OpenApiServer>? servers,
    @JsonKey(name: 'paths') required OpenApiPaths? paths,
    @JsonKey(name: 'components') required OpenApiComponents? components,
  }) = _OpenApi;

  factory OpenApi.fromJson(Map<String, dynamic> json) =>
      _$OpenApiFromJson(json);
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
