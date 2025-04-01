
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
     
    

part 'item_update.freezed.dart';
part 'item_update.g.dart';

/// ItemUpdate

@freezed
abstract class ItemUpdate with _$ItemUpdate {

  @JsonSerializable(converters: convertors)
  const factory ItemUpdate({
/// Title
@JsonKey(name: ItemUpdate.titleKey)
required String? title,/// Description
@JsonKey(name: ItemUpdate.descriptionKey)
required String? description,  }) = _ItemUpdate;

  factory ItemUpdate.fromJson(
    Map<String, dynamic> json,
  ) => _$ItemUpdateFromJson(
    json,
  );
  const ItemUpdate._();

  static const String titleKey = 'title';
static const String descriptionKey = 'description';
}
