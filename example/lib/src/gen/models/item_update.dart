import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_update.freezed.dart';
part 'item_update.g.dart';

/// ItemUpdate
@freezed
sealed class ItemUpdate with _$ItemUpdate {
  const factory ItemUpdate.fallback() = ItemUpdateFallback;

  factory ItemUpdate.fromJson(Map<String, dynamic> json) =>
      _$ItemUpdateFromJson(json);
}
