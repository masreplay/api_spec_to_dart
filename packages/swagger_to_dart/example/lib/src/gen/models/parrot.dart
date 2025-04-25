import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'parrot.freezed.dart';
part 'parrot.g.dart';

/// Parrot
@freezed
abstract class Parrot with _$Parrot {
  @JsonSerializable(converters: Convertors.convertors)
  const factory Parrot({
    required String name,
    required String type,
    required List<String> phrases,
  }) = _Parrot;

  factory Parrot.fromJson(Map<String, dynamic> json) => _$ParrotFromJson(json);
}
