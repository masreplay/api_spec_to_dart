import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'home_feed_summery_section_model.freezed.dart';
part 'home_feed_summery_section_model.g.dart';

///HomeFeedSummerySectionModel

@freezed
class HomeFeedSummerySectionModel with _$HomeFeedSummerySectionModel {
  const HomeFeedSummerySectionModel._();

  @JsonSerializable(converters: convertors)
  const factory HomeFeedSummerySectionModel({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Type
    @Default('summary') @JsonKey(name: 'type') String type,

    /// Title
    @JsonKey(name: 'title') required String title,

    /// Description
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'data') required HomeFeedSummerySectionDataPublic data,
  }) = _HomeFeedSummerySectionModel;

  factory HomeFeedSummerySectionModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$HomeFeedSummerySectionModelFromJson(
        json,
      );
}
