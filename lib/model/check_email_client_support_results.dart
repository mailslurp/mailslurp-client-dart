//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CheckEmailClientSupportResults {
  /// Returns a new [CheckEmailClientSupportResults] instance.
  CheckEmailClientSupportResults({
    required this.result,
  });

  EmailFeatureSupportResult result;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CheckEmailClientSupportResults &&
     other.result == result;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (result.hashCode);

  @override
  String toString() => 'CheckEmailClientSupportResults[result=$result]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'result'] = this.result;
    return json;
  }

  /// Returns a new [CheckEmailClientSupportResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CheckEmailClientSupportResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CheckEmailClientSupportResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CheckEmailClientSupportResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CheckEmailClientSupportResults(
        result: EmailFeatureSupportResult.fromJson(json[r'result'])!,
      );
    }
    return null;
  }

  static List<CheckEmailClientSupportResults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckEmailClientSupportResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckEmailClientSupportResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CheckEmailClientSupportResults> mapFromJson(dynamic json) {
    final map = <String, CheckEmailClientSupportResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CheckEmailClientSupportResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CheckEmailClientSupportResults-objects as value to a dart map
  static Map<String, List<CheckEmailClientSupportResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CheckEmailClientSupportResults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CheckEmailClientSupportResults.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'result',
  };
}

