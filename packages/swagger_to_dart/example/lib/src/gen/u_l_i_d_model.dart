library u_l_i_d_model;

import 'exports.dart';
part 'u_l_i_d_model.freezed.dart';
part 'u_l_i_d_model.g.dart'; // ULIDModel

@freezed
abstract class ULIDModel with _$ULIDModel {
  const ULIDModel._();

  factory ULIDModel.fromJson(Map<String, dynamic> json) =>
      _$ULIDModelFromJson(json);
}
