/// PostmanAuthType
///
/// ```json
/// {
///     "properties": {},
///     "type": "string",
///     "enum": [
///         "apikey",
///         "awsv4",
///         "basic",
///         "bearer",
///         "digest",
///         "edgegrid",
///         "hawk",
///         "noauth",
///         "oauth1",
///         "oauth2",
///         "ntlm"
///     ]
/// }
/// ```
library;

import 'exports.dart';
part 'postman_auth_type.g.dart';

@JsonEnum(alwaysCreate: true)
enum PostmanAuthType {
  @JsonValue('apikey')
  apikey,
  @JsonValue('awsv4')
  awsv4,
  @JsonValue('basic')
  basic,
  @JsonValue('bearer')
  bearer,
  @JsonValue('digest')
  digest,
  @JsonValue('edgegrid')
  edgegrid,
  @JsonValue('hawk')
  hawk,
  @JsonValue('noauth')
  noauth,
  @JsonValue('oauth1')
  oauth1,
  @JsonValue('oauth2')
  oauth2,
  @JsonValue('ntlm')
  ntlm,
  @JsonValue('unknown')
  unknown;

  factory PostmanAuthType.fromJson(String json) =>
      PostmanAuthType.values.firstWhere(
        (e) => e.toJson() == json,
        orElse: () => PostmanAuthType.unknown,
      );

  String toJson() => _$PostmanAuthTypeEnumMap[this]!;
}
