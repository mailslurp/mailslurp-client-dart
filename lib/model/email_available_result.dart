//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailAvailableResult {
  /// Returns a new [EmailAvailableResult] instance.
  EmailAvailableResult({
    required this.available,
  });

  bool available;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailAvailableResult &&
     other.available == available;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available.hashCode);

  @override
  String toString() => 'EmailAvailableResult[available=$available]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'available'] = this.available;
    return json;
  }

  /// Returns a new [EmailAvailableResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailAvailableResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailAvailableResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailAvailableResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailAvailableResult(
        available: mapValueOfType<bool>(json, r'available')!,
      );
    }
    return null;
  }

  static List<EmailAvailableResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailAvailableResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailAvailableResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailAvailableResult> mapFromJson(dynamic json) {
    final map = <String, EmailAvailableResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailAvailableResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailAvailableResult-objects as value to a dart map
  static Map<String, List<EmailAvailableResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailAvailableResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailAvailableResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'available',
  };
}

