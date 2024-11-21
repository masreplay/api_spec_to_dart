import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:example/src/gen/models/models.dart';

part 'home_response.freezed.dart';
part 'home_response.g.dart';

@freezed
class HomeResponse with _$HomeResponse {
  const factory HomeResponse.fallback() = HomeResponseFallback;

  @FreezedUnionValue('HomeFeedPublic')
  const factory HomeResponse.homeFeedPublic(
    HomeFeedPublic value,
  ) = HomeResponseHomeFeedPublic;

  @FreezedUnionValue('HomeStatusPublic')
  const factory HomeResponse.homeStatusPublic(
    HomeStatusPublic value,
  ) = HomeResponseHomeStatusPublic;

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);
}
