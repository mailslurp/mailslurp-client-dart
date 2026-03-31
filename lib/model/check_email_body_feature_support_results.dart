//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CheckEmailBodyFeatureSupportResults {
  /// Returns a new [CheckEmailBodyFeatureSupportResults] instance.
  CheckEmailBodyFeatureSupportResults({
    required this.result,
  });

  EmailFeatureSupportResult result;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CheckEmailBodyFeatureSupportResults &&
     other.result == result;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (result.hashCode);

  @override
  String toString() => 'CheckEmailBodyFeatureSupportResults[result=$result]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'result'] = this.result;
    return json;
  }

  /// Returns a new [CheckEmailBodyFeatureSupportResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CheckEmailBodyFeatureSupportResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CheckEmailBodyFeatureSupportResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CheckEmailBodyFeatureSupportResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CheckEmailBodyFeatureSupportResults(
        result: EmailFeatureSupportResult.fromJson(json[r'result'])!,
      );
    }
    return null;
  }

  static List<CheckEmailBodyFeatureSupportResults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckEmailBodyFeatureSupportResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckEmailBodyFeatureSupportResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CheckEmailBodyFeatureSupportResults> mapFromJson(dynamic json) {
    final map = <String, CheckEmailBodyFeatureSupportResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CheckEmailBodyFeatureSupportResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CheckEmailBodyFeatureSupportResults-objects as value to a dart map
  static Map<String, List<CheckEmailBodyFeatureSupportResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CheckEmailBodyFeatureSupportResults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CheckEmailBodyFeatureSupportResults.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'result',
  };
}

