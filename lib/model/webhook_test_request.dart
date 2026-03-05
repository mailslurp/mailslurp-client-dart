//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookTestRequest {
  /// Returns a new [WebhookTestRequest] instance.
  WebhookTestRequest({
    required this.url,
    required this.method,
    this.headers = const {},
    this.payload,
  });

  String url;

  WebhookTestRequestMethodEnum method;

  Map<String, String> headers;

  String? payload;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookTestRequest &&
     other.url == url &&
     other.method == method &&
     other.headers == headers &&
     other.payload == payload;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (url.hashCode) +
    (method.hashCode) +
    (headers.hashCode) +
    (payload == null ? 0 : payload!.hashCode);

  @override
  String toString() => 'WebhookTestRequest[url=$url, method=$method, headers=$headers, payload=$payload]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'url'] = this.url;
      json[r'method'] = this.method;
      json[r'headers'] = this.headers;
    if (this.payload != null) {
      json[r'payload'] = this.payload;
    } else {
      json[r'payload'] = null;
    }
    return json;
  }

  /// Returns a new [WebhookTestRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookTestRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookTestRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookTestRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookTestRequest(
        url: mapValueOfType<String>(json, r'url')!,
        method: WebhookTestRequestMethodEnum.fromJson(json[r'method'])!,
        headers: mapCastOfType<String, String>(json, r'headers')!,
        payload: mapValueOfType<String>(json, r'payload'),
      );
    }
    return null;
  }

  static List<WebhookTestRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookTestRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookTestRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookTestRequest> mapFromJson(dynamic json) {
    final map = <String, WebhookTestRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookTestRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookTestRequest-objects as value to a dart map
  static Map<String, List<WebhookTestRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookTestRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookTestRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'url',
    'method',
    'headers',
  };
}


class WebhookTestRequestMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookTestRequestMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const POST = WebhookTestRequestMethodEnum._(r'POST');
  static const DELETE = WebhookTestRequestMethodEnum._(r'DELETE');
  static const GET = WebhookTestRequestMethodEnum._(r'GET');
  static const PUT = WebhookTestRequestMethodEnum._(r'PUT');
  static const PATCH = WebhookTestRequestMethodEnum._(r'PATCH');
  static const HEAD = WebhookTestRequestMethodEnum._(r'HEAD');
  static const OPTIONS = WebhookTestRequestMethodEnum._(r'OPTIONS');
  static const TRACE = WebhookTestRequestMethodEnum._(r'TRACE');

  /// List of all possible values in this [enum][WebhookTestRequestMethodEnum].
  static const values = <WebhookTestRequestMethodEnum>[
    POST,
    DELETE,
    GET,
    PUT,
    PATCH,
    HEAD,
    OPTIONS,
    TRACE,
  ];

  static WebhookTestRequestMethodEnum? fromJson(dynamic value) => WebhookTestRequestMethodEnumTypeTransformer().decode(value);

  static List<WebhookTestRequestMethodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookTestRequestMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookTestRequestMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookTestRequestMethodEnum] to String,
/// and [decode] dynamic data back to [WebhookTestRequestMethodEnum].
class WebhookTestRequestMethodEnumTypeTransformer {
  factory WebhookTestRequestMethodEnumTypeTransformer() => _instance ??= const WebhookTestRequestMethodEnumTypeTransformer._();

  const WebhookTestRequestMethodEnumTypeTransformer._();

  String encode(WebhookTestRequestMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookTestRequestMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookTestRequestMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'POST': return WebhookTestRequestMethodEnum.POST;
        case r'DELETE': return WebhookTestRequestMethodEnum.DELETE;
        case r'GET': return WebhookTestRequestMethodEnum.GET;
        case r'PUT': return WebhookTestRequestMethodEnum.PUT;
        case r'PATCH': return WebhookTestRequestMethodEnum.PATCH;
        case r'HEAD': return WebhookTestRequestMethodEnum.HEAD;
        case r'OPTIONS': return WebhookTestRequestMethodEnum.OPTIONS;
        case r'TRACE': return WebhookTestRequestMethodEnum.TRACE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookTestRequestMethodEnumTypeTransformer] instance.
  static WebhookTestRequestMethodEnumTypeTransformer? _instance;
}


