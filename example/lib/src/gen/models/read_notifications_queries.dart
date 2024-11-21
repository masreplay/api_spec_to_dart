import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'read_notifications_queries.freezed.dart';
part 'read_notifications_queries.g.dart';

///readNotificationsQueries

@freezed
class ReadNotificationsQueries with _$ReadNotificationsQueries {
  const ReadNotificationsQueries._();

  @JsonSerializable(converters: convertors)
  const factory ReadNotificationsQueries({
    /// Is Read
    @JsonKey(name: 'isRead') required bool? isRead,

    /// Page
    @Default(1) @JsonKey(name: 'page') required int page,

    /// Per Page
    @Default(10) @JsonKey(name: 'perPage') required int perPage,
  }) = _ReadNotificationsQueries;

  factory ReadNotificationsQueries.fromJson(Map<String, dynamic> json) =>
      _$ReadNotificationsQueriesFromJson(json);
}
