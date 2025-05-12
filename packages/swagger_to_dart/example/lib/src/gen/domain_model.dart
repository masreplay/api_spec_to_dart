library domain_model;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'domain_model.freezed.dart';
part 'domain_model.g.dart'; // DomainModel

@freezed
abstract class DomainModel with _$DomainModel {
  const DomainModel._();

  const factory DomainModel(
    /// domain
    @JsonKey(name: domainKey) String domain,
  ) = _DomainModel;

  factory DomainModel.fromJson(Map<String, dynamic> json) =>
      _$DomainModelFromJson(json);

  static const String domainKey = "domain";
}
