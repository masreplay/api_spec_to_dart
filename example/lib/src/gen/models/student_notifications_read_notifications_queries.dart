import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_notifications_read_notifications_queries.freezed.dart';
part 'student_notifications_read_notifications_queries.g.dart';

///studentNotificationsReadNotificationsQueries

@freezed
class StudentNotificationsReadNotificationsQueries
    with _$StudentNotificationsReadNotificationsQueries {
  const StudentNotificationsReadNotificationsQueries._();

  @JsonSerializable(converters: convertors)
  const factory StudentNotificationsReadNotificationsQueries({
    /// Is Read
    @JsonKey(name: 'isRead') required bool? isRead,

    /// Page
    @Default(1) @JsonKey(name: 'page') int page,

    /// Per Page
    @Default(10) @JsonKey(name: 'perPage') int perPage,
  }) = _StudentNotificationsReadNotificationsQueries;

  factory StudentNotificationsReadNotificationsQueries.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudentNotificationsReadNotificationsQueriesFromJson(json);
}
