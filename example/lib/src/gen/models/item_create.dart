import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'item_create.freezed.dart';
part 'item_create.g.dart';

/// ItemCreate

@freezed
abstract class ItemCreate with _$ItemCreate {
  @JsonSerializable(converters: convertors)
  const factory ItemCreate({
    /// title
    @JsonKey(name: ItemCreate.titleKey) required String title,

    /// Description
    @JsonKey(name: ItemCreate.descriptionKey) required String? description,
  }) = _ItemCreate;

  factory ItemCreate.fromJson(Map<String, dynamic> json) =>
      _$ItemCreateFromJson(json);
  const ItemCreate._();

  static const String titleKey = 'title';
  static const String descriptionKey = 'description';
}
