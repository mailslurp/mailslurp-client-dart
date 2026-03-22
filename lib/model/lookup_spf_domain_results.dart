//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LookupSpfDomainResults {
  /// Returns a new [LookupSpfDomainResults] instance.
  LookupSpfDomainResults({
    required this.valid,
    required this.host,
    this.record,
    this.flattenedRecord,
    required this.lookupCount,
    this.mechanisms = const [],
    this.warnings = const [],
    this.errors = const [],
  });

  bool valid;

  String host;

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
  String? flattenedRecord;

  int lookupCount;

  List<SpfMechanismResult> mechanisms;

  List<String> warnings;

  List<String> errors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LookupSpfDomainResults &&
     other.valid == valid &&
     other.host == host &&
     other.record == record &&
     other.flattenedRecord == flattenedRecord &&
     other.lookupCount == lookupCount &&
     other.mechanisms == mechanisms &&
     other.warnings == warnings &&
     other.errors == errors;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (valid.hashCode) +
    (host.hashCode) +
    (record == null ? 0 : record!.hashCode) +
    (flattenedRecord == null ? 0 : flattenedRecord!.hashCode) +
    (lookupCount.hashCode) +
    (mechanisms.hashCode) +
    (warnings.hashCode) +
    (errors.hashCode);

  @override
  String toString() => 'LookupSpfDomainResults[valid=$valid, host=$host, record=$record, flattenedRecord=$flattenedRecord, lookupCount=$lookupCount, mechanisms=$mechanisms, warnings=$warnings, errors=$errors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'valid'] = this.valid;
      json[r'host'] = this.host;
    if (this.record != null) {
      json[r'record'] = this.record;
    } else {
      json[r'record'] = null;
    }
    if (this.flattenedRecord != null) {
      json[r'flattenedRecord'] = this.flattenedRecord;
    } else {
      json[r'flattenedRecord'] = null;
    }
      json[r'lookupCount'] = this.lookupCount;
      json[r'mechanisms'] = this.mechanisms;
      json[r'warnings'] = this.warnings;
      json[r'errors'] = this.errors;
    return json;
  }

  /// Returns a new [LookupSpfDomainResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LookupSpfDomainResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LookupSpfDomainResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LookupSpfDomainResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LookupSpfDomainResults(
        valid: mapValueOfType<bool>(json, r'valid')!,
        host: mapValueOfType<String>(json, r'host')!,
        record: mapValueOfType<String>(json, r'record'),
        flattenedRecord: mapValueOfType<String>(json, r'flattenedRecord'),
        lookupCount: mapValueOfType<int>(json, r'lookupCount')!,
        mechanisms: SpfMechanismResult.listFromJson(json[r'mechanisms']),
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

  static List<LookupSpfDomainResults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LookupSpfDomainResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LookupSpfDomainResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LookupSpfDomainResults> mapFromJson(dynamic json) {
    final map = <String, LookupSpfDomainResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LookupSpfDomainResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LookupSpfDomainResults-objects as value to a dart map
  static Map<String, List<LookupSpfDomainResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LookupSpfDomainResults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LookupSpfDomainResults.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'valid',
    'host',
    'lookupCount',
    'mechanisms',
    'warnings',
    'errors',
  };
}

