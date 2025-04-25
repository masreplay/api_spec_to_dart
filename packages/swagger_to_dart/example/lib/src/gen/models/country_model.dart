import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'country_model.freezed.dart';
part 'country_model.g.dart';

/// CountryModel
@freezed
abstract class CountryModel with _$CountryModel {
  @JsonSerializable(converters: Convertors.convertors)
  const factory CountryModel({
    required String? alpha2,
    required String? alpha3,
    required String? numeric,
    required String? shortName,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
}
