/// CreateSalePointDto
/// {
///     "properties": {
///         "name": {
///             "type": "string"
///         },
///         "users_id": {
///             "type": "array",
///             "items": {
///                 "type": "string",
///                 "format": "uuid"
///             }
///         }
///     },
///     "type": "object",
///     "required": [
///         "name",
///         "users_id"
///     ],
///     "additionalProperties": false
/// }
library create_sale_point_dto;

import 'exports.dart';
part 'create_sale_point_dto.freezed.dart';
part 'create_sale_point_dto.g.dart'; // CreateSalePointDto

@freezed
abstract class CreateSalePointDto with _$CreateSalePointDto {
  const CreateSalePointDto._();

  @jsonSerializable
  const factory CreateSalePointDto({
    /// name
    @JsonKey(name: CreateSalePointDto.nameKey_) required String name,

    /// usersId
    @JsonKey(name: CreateSalePointDto.usersIdKey_)
    required List<String> usersId,
  }) = _CreateSalePointDto;

  factory CreateSalePointDto.fromJson(Map<String, dynamic> json) =>
      _$CreateSalePointDtoFromJson(json);

  static const String nameKey_ = r'name';

  static const String usersIdKey_ = r'users_id';
}
