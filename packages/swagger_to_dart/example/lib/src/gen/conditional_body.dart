library conditional_body.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'conditional_body.freezed.dart';
part 'conditional_body.g.dart'; // ConditionalBody

@freezed
abstract class ConditionalBody with _$ConditionalBody {
  const ConditionalBody._();

  const factory ConditionalBody() = _ConditionalBody;

  factory ConditionalBody.fromJson(Map<String, dynamic> json) =>
      _$ConditionalBodyFromJson(json);
}
