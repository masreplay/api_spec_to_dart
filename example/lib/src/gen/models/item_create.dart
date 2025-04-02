import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_create.freezed.dart';
part 'item_create.g.dart';

/// ItemCreate
@freezed
sealed class ItemCreate with _$ItemCreate {
  const factory ItemCreate.fallback() = ItemCreateFallback;

  factory ItemCreate.fromJson(Map<String, dynamic> json) =>
      _$ItemCreateFromJson(json);
}
