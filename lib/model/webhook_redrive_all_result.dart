//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookRedriveAllResult {
  /// Returns a new [WebhookRedriveAllResult] instance.
  WebhookRedriveAllResult({
    required this.success,
    this.message,
  });

  bool success;

  String? message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookRedriveAllResult &&
     other.success == success &&
     other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (message == null ? 0 : message!.hashCode);

  @override
  String toString() => 'WebhookRedriveAllResult[success=$success, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    return json;
  }

  /// Returns a new [WebhookRedriveAllResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookRedriveAllResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookRedriveAllResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookRedriveAllResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookRedriveAllResult(
        success: mapValueOfType<bool>(json, r'success')!,
        message: mapValueOfType<String>(json, r'message'),
      );
    }
    return null;
  }

  static List<WebhookRedriveAllResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookRedriveAllResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookRedriveAllResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookRedriveAllResult> mapFromJson(dynamic json) {
    final map = <String, WebhookRedriveAllResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookRedriveAllResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookRedriveAllResult-objects as value to a dart map
  static Map<String, List<WebhookRedriveAllResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookRedriveAllResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookRedriveAllResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
  };
}

