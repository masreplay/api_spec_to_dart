/// PostmanItems
///
/// ```json
/// {
///     "anyOf": [
///         {
///             "$ref": "#/components/schemas/item"
///         },
///         {
///             "$ref": "#/components/schemas/item-group"
///         }
///     ],
///     "title": "Items",
///     "runtimeType": "anyOf"
/// }
/// ```
library;

import 'exports.dart';

sealed class PostmanItems {
  const PostmanItems();

  const factory PostmanItems.item(PostmanItem value) = PostmanItemsItem;
  const factory PostmanItems.itemGroup(PostmanItemGroup value) =
      PostmanItemsItemGroup;

  factory PostmanItems.fromJson(Map<String, dynamic> json) {
    // No discriminator in the spec: the variant whose required keys are all
    // present and that declares the most of the payload's keys wins (the
    // earlier one on a tie).
    const variants = <({Set<String> required, Set<String> declared})>[
      (
        required: {'request'},
        declared: {
          'id',
          'name',
          'description',
          'variable',
          'event',
          'request',
          'response',
          'protocolProfileBehavior',
        },
      ),
      (
        required: {'item'},
        declared: {
          'name',
          'description',
          'variable',
          'item',
          'event',
          'auth',
          'protocolProfileBehavior',
        },
      ),
    ];
    var best = -1;
    var bestScore = -1;
    for (var i = 0; i < variants.length; i++) {
      final variant = variants[i];
      if (!variant.required.every(json.containsKey)) continue;
      final score = json.keys.where(variant.declared.contains).length;
      if (score > bestScore) {
        best = i;
        bestScore = score;
      }
    }
    return switch (best) {
      0 => PostmanItemsItem(PostmanItem.fromJson(json)),
      1 => PostmanItemsItemGroup(PostmanItemGroup.fromJson(json)),
      _ => throw ArgumentError.value(
        json,
        'json',
        'No PostmanItems variant matches',
      ),
    };
  }

  Map<String, dynamic> toJson();
}

final class PostmanItemsItem extends PostmanItems {
  const PostmanItemsItem(this.value);

  final PostmanItem value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  bool operator ==(Object other) =>
      other is PostmanItemsItem && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'PostmanItems.item($value)';
}

final class PostmanItemsItemGroup extends PostmanItems {
  const PostmanItemsItemGroup(this.value);

  final PostmanItemGroup value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  bool operator ==(Object other) =>
      other is PostmanItemsItemGroup && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'PostmanItems.itemGroup($value)';
}
