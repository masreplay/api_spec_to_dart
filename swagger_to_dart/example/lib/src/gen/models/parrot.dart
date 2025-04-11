import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'parrot.freezed.dart';
part 'parrot.g.dart';

/// Parrot
@freezed
abstract class Parrot with _$Parrot {
  const Parrot._();

  static const String nameKey = 'name';
  static const String typeKey = 'type';
  static const String phrasesKey = 'phrases';

  @JsonSerializable(converters: convertors)
  const factory Parrot({
    /// name, The animal's name
    @JsonKey(name: Parrot.nameKey) required String name,

    /// type
    @Default('parrot') @JsonKey(name: Parrot.typeKey) String type,

    /// phrases, Phrases the parrot can say
    @JsonKey(name: Parrot.phrasesKey) required List<String> phrases,
  }) = _Parrot;

  factory Parrot.fromJson(Map<String, dynamic> json) => _$ParrotFromJson(json);
}
