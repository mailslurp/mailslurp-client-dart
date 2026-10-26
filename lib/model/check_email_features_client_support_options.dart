//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CheckEmailFeaturesClientSupportOptions {
  /// Returns a new [CheckEmailFeaturesClientSupportOptions] instance.
  CheckEmailFeaturesClientSupportOptions({
    required this.emailBody,
  });

  String emailBody;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CheckEmailFeaturesClientSupportOptions &&
     other.emailBody == emailBody;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emailBody.hashCode);

  @override
  String toString() => 'CheckEmailFeaturesClientSupportOptions[emailBody=$emailBody]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'emailBody'] = this.emailBody;
    return json;
  }

  /// Returns a new [CheckEmailFeaturesClientSupportOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CheckEmailFeaturesClientSupportOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CheckEmailFeaturesClientSupportOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CheckEmailFeaturesClientSupportOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CheckEmailFeaturesClientSupportOptions(
        emailBody: mapValueOfType<String>(json, r'emailBody')!,
      );
    }
    return null;
  }

  static List<CheckEmailFeaturesClientSupportOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckEmailFeaturesClientSupportOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckEmailFeaturesClientSupportOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CheckEmailFeaturesClientSupportOptions> mapFromJson(dynamic json) {
    final map = <String, CheckEmailFeaturesClientSupportOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CheckEmailFeaturesClientSupportOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CheckEmailFeaturesClientSupportOptions-objects as value to a dart map
  static Map<String, List<CheckEmailFeaturesClientSupportOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CheckEmailFeaturesClientSupportOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CheckEmailFeaturesClientSupportOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'emailBody',
  };
}

