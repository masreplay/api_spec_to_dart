import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'home_feed_section_model.freezed.dart';
part 'home_feed_section_model.g.dart';

@freezed
class HomeFeedSectionModel with _$HomeFeedSectionModel {
  const HomeFeedSectionModel._();

  @JsonSerializable(converters: convertors)
  const factory HomeFeedSectionModel() = _HomeFeedSectionModel;

  factory HomeFeedSectionModel.fromJson(Map<String, dynamic> json) =>
      _$HomeFeedSectionModelFromJson(json);
}
