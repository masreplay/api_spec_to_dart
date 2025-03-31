import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:swagger_api_client/src/gen/models/models.dart';
     
    


part 'token.freezed.dart';
part 'token.g.dart';

/// Token

@freezed
abstract class Token with _$Token {
  const Token._();

  static const String accessTokenKey = 'access_token';
static const String tokenTypeKey = 'token_type';

  @JsonSerializable(converters: convertors)
  const factory Token({
/// access_token
@JsonKey(name: Token.accessTokenKey)
required String accessToken,/// token_type
@Default('bearer')
@JsonKey(name: Token.tokenTypeKey)
String tokenType,  }) = _Token;

  factory Token.fromJson(
    Map<String, dynamic> json,
  ) => _$TokenFromJson(
    json,
  );
}
