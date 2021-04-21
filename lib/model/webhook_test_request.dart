//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookTestRequest {
  /// Returns a new [WebhookTestRequest] instance.
  WebhookTestRequest({
    this.headers = const {},
    @required this.method,
    this.payload,
    @required this.url,
  });

  Map<String, String> headers;

  WebhookTestRequestMethodEnum method;

  String payload;

  String url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookTestRequest &&
     other.headers == headers &&
     other.method == method &&
     other.payload == payload &&
     other.url == url;

  @override
  int get hashCode =>
    (headers == null ? 0 : headers.hashCode) +
    (method == null ? 0 : method.hashCode) +
    (payload == null ? 0 : payload.hashCode) +
    (url == null ? 0 : url.hashCode);

  @override
  String toString() => 'WebhookTestRequest[headers=$headers, method=$method, payload=$payload, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'headers'] = headers;
      json[r'method'] = method;
    if (payload != null) {
      json[r'payload'] = payload;
    }
      json[r'url'] = url;
    return json;
  }

  /// Returns a new [WebhookTestRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookTestRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookTestRequest(
        headers: json[r'headers'] == null ?
          null :
          (json[r'headers'] as Map).cast<String, String>(),
        method: WebhookTestRequestMethodEnum.fromJson(json[r'method']),
        payload: json[r'payload'],
        url: json[r'url'],
    );

  static List<WebhookTestRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookTestRequest>[]
      : json.map((v) => WebhookTestRequest.fromJson(v)).toList(growable: true == growable);

  static Map<String, WebhookTestRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WebhookTestRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WebhookTestRequest.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WebhookTestRequest-objects as value to a dart map
  static Map<String, List<WebhookTestRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WebhookTestRequest>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WebhookTestRequest.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class WebhookTestRequestMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookTestRequestMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GET = WebhookTestRequestMethodEnum._(r'GET');
  static const HEAD = WebhookTestRequestMethodEnum._(r'HEAD');
  static const POST = WebhookTestRequestMethodEnum._(r'POST');
  static const PUT = WebhookTestRequestMethodEnum._(r'PUT');
  static const PATCH = WebhookTestRequestMethodEnum._(r'PATCH');
  static const DELETE = WebhookTestRequestMethodEnum._(r'DELETE');
  static const OPTIONS = WebhookTestRequestMethodEnum._(r'OPTIONS');
  static const TRACE = WebhookTestRequestMethodEnum._(r'TRACE');

  /// List of all possible values in this [enum][WebhookTestRequestMethodEnum].
  static const values = <WebhookTestRequestMethodEnum>[
    GET,
    HEAD,
    POST,
    PUT,
    PATCH,
    DELETE,
    OPTIONS,
    TRACE,
  ];

  static WebhookTestRequestMethodEnum fromJson(dynamic value) =>
    WebhookTestRequestMethodEnumTypeTransformer().decode(value);

  static List<WebhookTestRequestMethodEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookTestRequestMethodEnum>[]
      : json
          .map((value) => WebhookTestRequestMethodEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WebhookTestRequestMethodEnum] to String,
/// and [decode] dynamic data back to [WebhookTestRequestMethodEnum].
class WebhookTestRequestMethodEnumTypeTransformer {
  const WebhookTestRequestMethodEnumTypeTransformer._();

  factory WebhookTestRequestMethodEnumTypeTransformer() => _instance ??= WebhookTestRequestMethodEnumTypeTransformer._();

  String encode(WebhookTestRequestMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookTestRequestMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookTestRequestMethodEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'GET': return WebhookTestRequestMethodEnum.GET;
      case r'HEAD': return WebhookTestRequestMethodEnum.HEAD;
      case r'POST': return WebhookTestRequestMethodEnum.POST;
      case r'PUT': return WebhookTestRequestMethodEnum.PUT;
      case r'PATCH': return WebhookTestRequestMethodEnum.PATCH;
      case r'DELETE': return WebhookTestRequestMethodEnum.DELETE;
      case r'OPTIONS': return WebhookTestRequestMethodEnum.OPTIONS;
      case r'TRACE': return WebhookTestRequestMethodEnum.TRACE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WebhookTestRequestMethodEnumTypeTransformer] instance.
  static WebhookTestRequestMethodEnumTypeTransformer _instance;
}

