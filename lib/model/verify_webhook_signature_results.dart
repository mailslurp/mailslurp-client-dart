//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VerifyWebhookSignatureResults {
  /// Returns a new [VerifyWebhookSignatureResults] instance.
  VerifyWebhookSignatureResults({
    required this.isValid,
  });

  bool isValid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VerifyWebhookSignatureResults &&
     other.isValid == isValid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isValid.hashCode);

  @override
  String toString() => 'VerifyWebhookSignatureResults[isValid=$isValid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'isValid'] = this.isValid;
    return json;
  }

  /// Returns a new [VerifyWebhookSignatureResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VerifyWebhookSignatureResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VerifyWebhookSignatureResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VerifyWebhookSignatureResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VerifyWebhookSignatureResults(
        isValid: mapValueOfType<bool>(json, r'isValid')!,
      );
    }
    return null;
  }

  static List<VerifyWebhookSignatureResults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VerifyWebhookSignatureResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerifyWebhookSignatureResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VerifyWebhookSignatureResults> mapFromJson(dynamic json) {
    final map = <String, VerifyWebhookSignatureResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VerifyWebhookSignatureResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VerifyWebhookSignatureResults-objects as value to a dart map
  static Map<String, List<VerifyWebhookSignatureResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VerifyWebhookSignatureResults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VerifyWebhookSignatureResults.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'isValid',
  };
}

