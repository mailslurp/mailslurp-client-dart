//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookTestResponse {
  /// Returns a new [WebhookTestResponse] instance.
  WebhookTestResponse({
    this.statusCode,
    this.message,
  });

  int? statusCode;

  String? message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookTestResponse &&
     other.statusCode == statusCode &&
     other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (statusCode == null ? 0 : statusCode!.hashCode) +
    (message == null ? 0 : message!.hashCode);

  @override
  String toString() => 'WebhookTestResponse[statusCode=$statusCode, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.statusCode != null) {
      json[r'statusCode'] = this.statusCode;
    } else {
      json[r'statusCode'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    return json;
  }

  /// Returns a new [WebhookTestResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookTestResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookTestResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookTestResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookTestResponse(
        statusCode: mapValueOfType<int>(json, r'statusCode'),
        message: mapValueOfType<String>(json, r'message'),
      );
    }
    return null;
  }

  static List<WebhookTestResponse>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookTestResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookTestResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookTestResponse> mapFromJson(dynamic json) {
    final map = <String, WebhookTestResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookTestResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookTestResponse-objects as value to a dart map
  static Map<String, List<WebhookTestResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookTestResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookTestResponse.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

