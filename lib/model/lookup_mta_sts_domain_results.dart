//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LookupMtaStsDomainResults {
  /// Returns a new [LookupMtaStsDomainResults] instance.
  LookupMtaStsDomainResults({
    required this.valid,
    required this.query,
    this.records = const [],
    required this.wellKnownQuery,
    required this.wellKnownPresent,
    required this.wellKnownValue,
    this.errors = const [],
    this.warnings = const [],
  });

  bool valid;

  DNSLookupOptions query;

  List<DNSLookupResult> records;

  String wellKnownQuery;

  bool wellKnownPresent;

  String wellKnownValue;

  List<String> errors;

  List<String> warnings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LookupMtaStsDomainResults &&
     other.valid == valid &&
     other.query == query &&
     other.records == records &&
     other.wellKnownQuery == wellKnownQuery &&
     other.wellKnownPresent == wellKnownPresent &&
     other.wellKnownValue == wellKnownValue &&
     other.errors == errors &&
     other.warnings == warnings;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (valid.hashCode) +
    (query.hashCode) +
    (records.hashCode) +
    (wellKnownQuery.hashCode) +
    (wellKnownPresent.hashCode) +
    (wellKnownValue.hashCode) +
    (errors.hashCode) +
    (warnings.hashCode);

  @override
  String toString() => 'LookupMtaStsDomainResults[valid=$valid, query=$query, records=$records, wellKnownQuery=$wellKnownQuery, wellKnownPresent=$wellKnownPresent, wellKnownValue=$wellKnownValue, errors=$errors, warnings=$warnings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'valid'] = this.valid;
      json[r'query'] = this.query;
      json[r'records'] = this.records;
      json[r'wellKnownQuery'] = this.wellKnownQuery;
      json[r'wellKnownPresent'] = this.wellKnownPresent;
      json[r'wellKnownValue'] = this.wellKnownValue;
      json[r'errors'] = this.errors;
      json[r'warnings'] = this.warnings;
    return json;
  }

  /// Returns a new [LookupMtaStsDomainResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LookupMtaStsDomainResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LookupMtaStsDomainResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LookupMtaStsDomainResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LookupMtaStsDomainResults(
        valid: mapValueOfType<bool>(json, r'valid')!,
        query: DNSLookupOptions.fromJson(json[r'query'])!,
        records: DNSLookupResult.listFromJson(json[r'records'])!,
        wellKnownQuery: mapValueOfType<String>(json, r'wellKnownQuery')!,
        wellKnownPresent: mapValueOfType<bool>(json, r'wellKnownPresent')!,
        wellKnownValue: mapValueOfType<String>(json, r'wellKnownValue')!,
        errors: json[r'errors'] is List
            ? (json[r'errors'] as List).cast<String>()
            : const [],
        warnings: json[r'warnings'] is List
            ? (json[r'warnings'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<LookupMtaStsDomainResults>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LookupMtaStsDomainResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LookupMtaStsDomainResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LookupMtaStsDomainResults> mapFromJson(dynamic json) {
    final map = <String, LookupMtaStsDomainResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LookupMtaStsDomainResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LookupMtaStsDomainResults-objects as value to a dart map
  static Map<String, List<LookupMtaStsDomainResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LookupMtaStsDomainResults>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LookupMtaStsDomainResults.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'valid',
    'query',
    'records',
    'wellKnownQuery',
    'wellKnownPresent',
    'wellKnownValue',
    'errors',
    'warnings',
  };
}

