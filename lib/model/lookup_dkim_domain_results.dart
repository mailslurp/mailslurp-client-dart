//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LookupDkimDomainResults {
  /// Returns a new [LookupDkimDomainResults] instance.
  LookupDkimDomainResults({
    required this.valid,
    this.queriedName,
    this.selector,
    this.record,
    this.algorithm,
    this.keyLength,
    this.checkedNames = const [],
    this.warnings = const [],
    this.errors = const [],
  });

  bool valid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? queriedName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? selector;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? record;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? algorithm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? keyLength;

  List<String> checkedNames;

  List<String> warnings;

  List<String> errors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LookupDkimDomainResults &&
     other.valid == valid &&
     other.queriedName == queriedName &&
     other.selector == selector &&
     other.record == record &&
     other.algorithm == algorithm &&
     other.keyLength == keyLength &&
     other.checkedNames == checkedNames &&
     other.warnings == warnings &&
     other.errors == errors;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (valid.hashCode) +
    (queriedName == null ? 0 : queriedName!.hashCode) +
    (selector == null ? 0 : selector!.hashCode) +
    (record == null ? 0 : record!.hashCode) +
    (algorithm == null ? 0 : algorithm!.hashCode) +
    (keyLength == null ? 0 : keyLength!.hashCode) +
    (checkedNames.hashCode) +
    (warnings.hashCode) +
    (errors.hashCode);

  @override
  String toString() => 'LookupDkimDomainResults[valid=$valid, queriedName=$queriedName, selector=$selector, record=$record, algorithm=$algorithm, keyLength=$keyLength, checkedNames=$checkedNames, warnings=$warnings, errors=$errors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'valid'] = this.valid;
    if (this.queriedName != null) {
      json[r'queriedName'] = this.queriedName;
    } else {
      json[r'queriedName'] = null;
    }
    if (this.selector != null) {
      json[r'selector'] = this.selector;
    } else {
      json[r'selector'] = null;
    }
    if (this.record != null) {
      json[r'record'] = this.record;
    } else {
      json[r'record'] = null;
    }
    if (this.algorithm != null) {
      json[r'algorithm'] = this.algorithm;
    } else {
      json[r'algorithm'] = null;
    }
    if (this.keyLength != null) {
      json[r'keyLength'] = this.keyLength;
    } else {
      json[r'keyLength'] = null;
    }
      json[r'checkedNames'] = this.checkedNames;
      json[r'warnings'] = this.warnings;
      json[r'errors'] = this.errors;
    return json;
  }

  /// Returns a new [LookupDkimDomainResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LookupDkimDomainResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LookupDkimDomainResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LookupDkimDomainResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LookupDkimDomainResults(
        valid: mapValueOfType<bool>(json, r'valid')!,
        queriedName: mapValueOfType<String>(json, r'queriedName'),
        selector: mapValueOfType<String>(json, r'selector'),
        record: mapValueOfType<String>(json, r'record'),
        algorithm: mapValueOfType<String>(json, r'algorithm'),
        keyLength: mapValueOfType<int>(json, r'keyLength'),
        checkedNames: json[r'checkedNames'] is List
            ? (json[r'checkedNames'] as List).cast<String>()
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

  static List<LookupDkimDomainResults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LookupDkimDomainResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LookupDkimDomainResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LookupDkimDomainResults> mapFromJson(dynamic json) {
    final map = <String, LookupDkimDomainResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LookupDkimDomainResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LookupDkimDomainResults-objects as value to a dart map
  static Map<String, List<LookupDkimDomainResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LookupDkimDomainResults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LookupDkimDomainResults.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'valid',
    'checkedNames',
    'warnings',
    'errors',
  };
}

