import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_notifications_mark_as_read_queries.freezed.dart';
part 'student_notifications_mark_as_read_queries.g.dart';

///studentNotificationsMarkAsReadQueries

@freezed
class StudentNotificationsMarkAsReadQueries
    with _$StudentNotificationsMarkAsReadQueries {
  const StudentNotificationsMarkAsReadQueries._();

  @JsonSerializable(converters: convertors)
  const factory StudentNotificationsMarkAsReadQueries({
    /// Id
    @JsonKey(name: 'id') required int id,
  }) = _StudentNotificationsMarkAsReadQueries;

  factory StudentNotificationsMarkAsReadQueries.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudentNotificationsMarkAsReadQueriesFromJson(json);
}
