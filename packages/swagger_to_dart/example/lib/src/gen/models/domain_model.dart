import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'domain_model.freezed.dart';
part 'domain_model.g.dart';

/// DomainModel
@freezed
abstract class DomainModel with _$DomainModel {
  @JsonSerializable(converters: Convertors.convertors)
  const factory DomainModel({required String domain}) = _DomainModel;

  factory DomainModel.fromJson(Map<String, dynamic> json) =>
      _$DomainModelFromJson(json);
}
