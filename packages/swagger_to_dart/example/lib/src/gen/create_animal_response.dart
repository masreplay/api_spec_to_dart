library;

import 'exports.dart';
part 'create_animal_response.freezed.dart';
part 'create_animal_response.g.dart'; // CreateAnimalResponse

@freezed
sealed class CreateAnimalResponse with _$CreateAnimalResponse {
  const CreateAnimalResponse._();

  const factory CreateAnimalResponse.fallback(Map<String, dynamic> value) =
      CreateAnimalResponseFallback;

  factory CreateAnimalResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateAnimalResponseFromJson(json);
}
