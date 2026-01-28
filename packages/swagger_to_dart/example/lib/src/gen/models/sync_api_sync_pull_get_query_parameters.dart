/// SyncApiSyncPullGetQueryParameters
/// {
///     "properties": {
///         "lastId": {
///             "type": "string",
///             "format": "uuid",
///             "nullable": true
///         },
///         "pageSize": {
///             "type": "integer",
///             "format": "int32",
///             "default": 1000
///         }
///     },
///     "type": "object",
///     "required": []
/// }
library sync_api_sync_pull_get_query_parameters;

import 'exports.dart';
part 'sync_api_sync_pull_get_query_parameters.freezed.dart';
part 'sync_api_sync_pull_get_query_parameters.g.dart'; // SyncApiSyncPullGetQueryParameters

@freezed
abstract class SyncApiSyncPullGetQueryParameters
    with _$SyncApiSyncPullGetQueryParameters {
  const SyncApiSyncPullGetQueryParameters._();

  @jsonSerializable
  const factory SyncApiSyncPullGetQueryParameters({
    /// lastId
    @JsonKey(name: SyncApiSyncPullGetQueryParameters.lastIdKey_) String? lastId,

    /// pageSize
    @Default(1000)
    @JsonKey(name: SyncApiSyncPullGetQueryParameters.pageSizeKey_)
    int pageSize,
  }) = _SyncApiSyncPullGetQueryParameters;

  factory SyncApiSyncPullGetQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$SyncApiSyncPullGetQueryParametersFromJson(json);

  static const String lastIdKey_ = r'lastId';

  static const String pageSizeKey_ = r'pageSize';
}
