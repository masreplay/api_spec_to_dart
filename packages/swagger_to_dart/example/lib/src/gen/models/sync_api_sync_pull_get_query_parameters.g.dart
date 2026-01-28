// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_api_sync_pull_get_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SyncApiSyncPullGetQueryParameters _$SyncApiSyncPullGetQueryParametersFromJson(
        Map<String, dynamic> json) =>
    _SyncApiSyncPullGetQueryParameters(
      lastId: json['lastId'] as String?,
      pageSize: (json['pageSize'] as num?)?.toInt() ?? 1000,
    );

Map<String, dynamic> _$SyncApiSyncPullGetQueryParametersToJson(
        _SyncApiSyncPullGetQueryParameters instance) =>
    <String, dynamic>{
      if (instance.lastId case final value?) 'lastId': value,
      'pageSize': instance.pageSize,
    };
