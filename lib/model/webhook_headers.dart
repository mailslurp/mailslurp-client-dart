//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookHeaders {
  /// Returns a new [WebhookHeaders] instance.
  WebhookHeaders({
    this.headers = const [],
  });

  /// List of header name value pairs to include with webhook requests
  List<WebhookHeaderNameValue> headers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookHeaders &&
     other.headers == headers;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (headers.hashCode);

  @override
  String toString() => 'WebhookHeaders[headers=$headers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'headers'] = this.headers;
    return json;
  }

  /// Returns a new [WebhookHeaders] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookHeaders? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookHeaders[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookHeaders[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookHeaders(
        headers: WebhookHeaderNameValue.listFromJson(json[r'headers']),
      );
    }
    return null;
  }

  static List<WebhookHeaders> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookHeaders>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookHeaders.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookHeaders> mapFromJson(dynamic json) {
    final map = <String, WebhookHeaders>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookHeaders.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookHeaders-objects as value to a dart map
  static Map<String, List<WebhookHeaders>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookHeaders>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookHeaders.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'headers',
  };
}

