import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'home_status_public.freezed.dart';
part 'home_status_public.g.dart';

///HomeStatusPublic

@freezed
class HomeStatusPublic with _$HomeStatusPublic {
  const HomeStatusPublic._();

  @JsonSerializable(converters: convertors)
  const factory HomeStatusPublic({
    /// Type
    @Default('status') @JsonKey(name: 'type') String type,

    /// Title
    @JsonKey(name: 'title') required String title,

    /// Description
    @JsonKey(name: 'description') required String? description,
    @Default(HomeProcessStatus.noStudyProgram)
    @JsonKey(name: 'status')
    HomeProcessStatus status,
  }) = _HomeStatusPublic;

  factory HomeStatusPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$HomeStatusPublicFromJson(json);
}
