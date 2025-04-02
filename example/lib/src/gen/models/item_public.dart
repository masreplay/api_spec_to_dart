import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_public.freezed.dart';
part 'item_public.g.dart';

/// ItemPublic
@freezed
sealed class ItemPublic with _$ItemPublic {
  const factory ItemPublic.fallback() = ItemPublicFallback;

  factory ItemPublic.fromJson(Map<String, dynamic> json) =>
      _$ItemPublicFromJson(json);
}
