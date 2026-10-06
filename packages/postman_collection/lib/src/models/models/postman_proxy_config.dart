/// proxy-config
///
/// ```json
/// {
///     "properties": {
///         "match": {
///             "type": "string",
///             "description": "The Url match for which the proxy config is defined",
///             "default": "http+https://*/*"
///         },
///         "host": {
///             "type": "string",
///             "description": "The proxy server host"
///         },
///         "port": {
///             "type": "integer",
///             "description": "The proxy server port",
///             "default": 8080
///         },
///         "tunnel": {
///             "type": "boolean",
///             "description": "The tunneling details for the proxy config",
///             "default": false
///         },
///         "disabled": {
///             "type": "boolean",
///             "description": "When set to true, ignores this proxy configuration entity",
///             "default": false
///         }
///     },
///     "type": "object",
///     "description": "Using the Proxy, you can configure your custom proxy into the postman for particular url match"
/// }
/// ```
library;

import 'exports.dart';
part 'postman_proxy_config.freezed.dart';
part 'postman_proxy_config.g.dart';

@freezed
abstract class PostmanProxyConfig with _$PostmanProxyConfig {
  const PostmanProxyConfig._();

  @jsonSerializable
  const factory PostmanProxyConfig({
    /// match
    @Default('http+https://*/*')
    @JsonKey(name: PostmanProxyConfig.matchKey_)
    String match,

    /// host
    @JsonKey(name: PostmanProxyConfig.hostKey_) String? host,

    /// port
    @Default(8080) @JsonKey(name: PostmanProxyConfig.portKey_) int port,

    /// tunnel
    @Default(false) @JsonKey(name: PostmanProxyConfig.tunnelKey_) bool tunnel,

    /// disabled
    @Default(false)
    @JsonKey(name: PostmanProxyConfig.disabledKey_)
    bool disabled,
  }) = _PostmanProxyConfig;

  factory PostmanProxyConfig.fromJson(Map<String, dynamic> json) =>
      _$PostmanProxyConfigFromJson(json);

  static const String matchKey_ = 'match';

  static const String hostKey_ = 'host';

  static const String portKey_ = 'port';

  static const String tunnelKey_ = 'tunnel';

  static const String disabledKey_ = 'disabled';
}
