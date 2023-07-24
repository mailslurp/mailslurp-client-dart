//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookHeaderNameValue {
  /// Returns a new [WebhookHeaderNameValue] instance.
  WebhookHeaderNameValue({
    required this.name,
    required this.value,
  });

  /// Name of header
  String name;

  /// Value of header
  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookHeaderNameValue &&
     other.name == name &&
     other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (value.hashCode);

  @override
  String toString() => 'WebhookHeaderNameValue[name=$name, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [WebhookHeaderNameValue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookHeaderNameValue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookHeaderNameValue[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookHeaderNameValue[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookHeaderNameValue(
        name: mapValueOfType<String>(json, r'name')!,
        value: mapValueOfType<String>(json, r'value')!,
      );
    }
    return null;
  }

  static List<WebhookHeaderNameValue>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookHeaderNameValue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookHeaderNameValue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookHeaderNameValue> mapFromJson(dynamic json) {
    final map = <String, WebhookHeaderNameValue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookHeaderNameValue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookHeaderNameValue-objects as value to a dart map
  static Map<String, List<WebhookHeaderNameValue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookHeaderNameValue>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookHeaderNameValue.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'value',
  };
}

