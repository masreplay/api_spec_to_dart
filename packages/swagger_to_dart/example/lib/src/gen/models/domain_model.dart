/// DomainModel
/// {
///     "properties": {
///         "domain": {
///             "type": "string",
///             "title": "Domain"
///         }
///     },
///     "type": "object",
///     "required": [
///         "domain"
///     ],
///     "title": "DomainModel"
/// }
library domain_model;

import 'exports.dart';
part 'domain_model.freezed.dart';
part 'domain_model.g.dart'; // DomainModel

@freezed
abstract class DomainModel with _$DomainModel {
  const DomainModel._();

  @jsonSerializable
  const factory DomainModel({
    /// domain
    @JsonKey(name: DomainModel.domainKey_) required String domain,
  }) = _DomainModel;

  factory DomainModel.fromJson(Map<String, dynamic> json) =>
      _$DomainModelFromJson(json);

  static const String domainKey_ = r'domain';
}
