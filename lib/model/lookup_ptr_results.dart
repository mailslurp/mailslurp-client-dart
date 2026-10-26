//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LookupPtrResults {
  /// Returns a new [LookupPtrResults] instance.
  LookupPtrResults({
    required this.ip,
    this.ptrHostnames = const [],
    required this.forwardConfirmed,
    this.forwardARecords = const [],
    this.forwardAaaaRecords = const [],
    this.warnings = const [],
    this.errors = const [],
  });

  String ip;

  List<String> ptrHostnames;

  bool forwardConfirmed;

  List<String> forwardARecords;

  List<String> forwardAaaaRecords;

  List<String> warnings;

  List<String> errors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LookupPtrResults &&
     other.ip == ip &&
     other.ptrHostnames == ptrHostnames &&
     other.forwardConfirmed == forwardConfirmed &&
     other.forwardARecords == forwardARecords &&
     other.forwardAaaaRecords == forwardAaaaRecords &&
     other.warnings == warnings &&
     other.errors == errors;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ip.hashCode) +
    (ptrHostnames.hashCode) +
    (forwardConfirmed.hashCode) +
    (forwardARecords.hashCode) +
    (forwardAaaaRecords.hashCode) +
    (warnings.hashCode) +
    (errors.hashCode);

  @override
  String toString() => 'LookupPtrResults[ip=$ip, ptrHostnames=$ptrHostnames, forwardConfirmed=$forwardConfirmed, forwardARecords=$forwardARecords, forwardAaaaRecords=$forwardAaaaRecords, warnings=$warnings, errors=$errors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ip'] = this.ip;
      json[r'ptrHostnames'] = this.ptrHostnames;
      json[r'forwardConfirmed'] = this.forwardConfirmed;
      json[r'forwardARecords'] = this.forwardARecords;
      json[r'forwardAaaaRecords'] = this.forwardAaaaRecords;
      json[r'warnings'] = this.warnings;
      json[r'errors'] = this.errors;
    return json;
  }

  /// Returns a new [LookupPtrResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LookupPtrResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LookupPtrResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LookupPtrResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LookupPtrResults(
        ip: mapValueOfType<String>(json, r'ip')!,
        ptrHostnames: json[r'ptrHostnames'] is List
            ? (json[r'ptrHostnames'] as List).cast<String>()
            : const [],
        forwardConfirmed: mapValueOfType<bool>(json, r'forwardConfirmed')!,
        forwardARecords: json[r'forwardARecords'] is List
            ? (json[r'forwardARecords'] as List).cast<String>()
            : const [],
        forwardAaaaRecords: json[r'forwardAaaaRecords'] is List
            ? (json[r'forwardAaaaRecords'] as List).cast<String>()
            : const [],
        warnings: json[r'warnings'] is List
            ? (json[r'warnings'] as List).cast<String>()
            : const [],
        errors: json[r'errors'] is List
            ? (json[r'errors'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<LookupPtrResults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LookupPtrResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LookupPtrResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LookupPtrResults> mapFromJson(dynamic json) {
    final map = <String, LookupPtrResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LookupPtrResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LookupPtrResults-objects as value to a dart map
  static Map<String, List<LookupPtrResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LookupPtrResults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LookupPtrResults.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ip',
    'ptrHostnames',
    'forwardConfirmed',
    'forwardARecords',
    'forwardAaaaRecords',
    'warnings',
    'errors',
  };
}

