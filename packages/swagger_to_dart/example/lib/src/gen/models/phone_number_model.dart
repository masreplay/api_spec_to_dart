import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'phone_number_model.freezed.dart';
part 'phone_number_model.g.dart';

/// PhoneNumberModel
@freezed
abstract class PhoneNumberModel with _$PhoneNumberModel {
  @JsonSerializable(converters: Convertors.convertors)
  const factory PhoneNumberModel({
    required String phone,
    required String phone2,
  }) = _PhoneNumberModel;

  factory PhoneNumberModel.fromJson(Map<String, dynamic> json) =>
      _$PhoneNumberModelFromJson(json);
}
