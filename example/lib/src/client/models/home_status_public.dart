import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'home_status_public.freezed.dart';
part 'home_status_public.g.dart';

@freezed
class HomeStatusPublic with _$HomeStatusPublic {
  const factory HomeStatusPublic({
    @Default(String.status) @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String? description,
    @Default(no_study_program)
    @JsonKey(name: 'status')
    required HomeProcessStatus status,
  }) = _HomeStatusPublic;

  factory HomeStatusPublic.fromJson(Map<String, dynamic> json) =>
      _$HomeStatusPublicFromJson(json);
}
