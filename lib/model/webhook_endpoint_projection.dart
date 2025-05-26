//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookEndpointProjection {
  /// Returns a new [WebhookEndpointProjection] instance.
  WebhookEndpointProjection({
    required this.url,
    required this.health,
  });

  String url;

  WebhookEndpointProjectionHealthEnum health;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookEndpointProjection &&
     other.url == url &&
     other.health == health;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (url.hashCode) +
    (health.hashCode);

  @override
  String toString() => 'WebhookEndpointProjection[url=$url, health=$health]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'url'] = this.url;
      json[r'health'] = this.health;
    return json;
  }

  /// Returns a new [WebhookEndpointProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookEndpointProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookEndpointProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookEndpointProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookEndpointProjection(
        url: mapValueOfType<String>(json, r'url')!,
        health: WebhookEndpointProjectionHealthEnum.fromJson(json[r'health'])!,
      );
    }
    return null;
  }

  static List<WebhookEndpointProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookEndpointProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookEndpointProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookEndpointProjection> mapFromJson(dynamic json) {
    final map = <String, WebhookEndpointProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookEndpointProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookEndpointProjection-objects as value to a dart map
  static Map<String, List<WebhookEndpointProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookEndpointProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookEndpointProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'url',
    'health',
  };
}


class WebhookEndpointProjectionHealthEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookEndpointProjectionHealthEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HEALTHY = WebhookEndpointProjectionHealthEnum._(r'HEALTHY');
  static const UNHEALTHY = WebhookEndpointProjectionHealthEnum._(r'UNHEALTHY');

  /// List of all possible values in this [enum][WebhookEndpointProjectionHealthEnum].
  static const values = <WebhookEndpointProjectionHealthEnum>[
    HEALTHY,
    UNHEALTHY,
  ];

  static WebhookEndpointProjectionHealthEnum? fromJson(dynamic value) => WebhookEndpointProjectionHealthEnumTypeTransformer().decode(value);

  static List<WebhookEndpointProjectionHealthEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookEndpointProjectionHealthEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookEndpointProjectionHealthEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookEndpointProjectionHealthEnum] to String,
/// and [decode] dynamic data back to [WebhookEndpointProjectionHealthEnum].
class WebhookEndpointProjectionHealthEnumTypeTransformer {
  factory WebhookEndpointProjectionHealthEnumTypeTransformer() => _instance ??= const WebhookEndpointProjectionHealthEnumTypeTransformer._();

  const WebhookEndpointProjectionHealthEnumTypeTransformer._();

  String encode(WebhookEndpointProjectionHealthEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookEndpointProjectionHealthEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookEndpointProjectionHealthEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HEALTHY': return WebhookEndpointProjectionHealthEnum.HEALTHY;
        case r'UNHEALTHY': return WebhookEndpointProjectionHealthEnum.UNHEALTHY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookEndpointProjectionHealthEnumTypeTransformer] instance.
  static WebhookEndpointProjectionHealthEnumTypeTransformer? _instance;
}


