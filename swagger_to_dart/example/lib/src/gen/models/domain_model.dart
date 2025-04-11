import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "domain_model.freezed.dart";
part "domain_model.g.dart";

/// DomainModel
@freezed
abstract class DomainModel with _$DomainModel {
  const DomainModel._();

  static const String domainKey = "domain";

  @JsonSerializable(converters: convertors)
  const factory DomainModel({
    /// domain
    @JsonKey(name: DomainModel.domainKey) required String domain,
  }) = _DomainModel;

  factory DomainModel.fromJson(Map<String, dynamic> json) =>
      _$DomainModelFromJson(json);
}
