//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LookupTlsReportingDomainResults {
  /// Returns a new [LookupTlsReportingDomainResults] instance.
  LookupTlsReportingDomainResults({
    required this.valid,
    required this.query,
    this.records = const [],
    this.errors = const [],
    this.warnings = const [],
  });

  bool valid;

  DNSLookupOptions query;

  List<DNSLookupResult> records;

  List<String> errors;

  List<String> warnings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LookupTlsReportingDomainResults &&
     other.valid == valid &&
     other.query == query &&
     other.records == records &&
     other.errors == errors &&
     other.warnings == warnings;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (valid.hashCode) +
    (query.hashCode) +
    (records.hashCode) +
    (errors.hashCode) +
    (warnings.hashCode);

  @override
  String toString() => 'LookupTlsReportingDomainResults[valid=$valid, query=$query, records=$records, errors=$errors, warnings=$warnings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'valid'] = this.valid;
      json[r'query'] = this.query;
      json[r'records'] = this.records;
      json[r'errors'] = this.errors;
      json[r'warnings'] = this.warnings;
    return json;
  }

  /// Returns a new [LookupTlsReportingDomainResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LookupTlsReportingDomainResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LookupTlsReportingDomainResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LookupTlsReportingDomainResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LookupTlsReportingDomainResults(
        valid: mapValueOfType<bool>(json, r'valid')!,
        query: DNSLookupOptions.fromJson(json[r'query'])!,
        records: DNSLookupResult.listFromJson(json[r'records'])!,
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

  static List<LookupTlsReportingDomainResults>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LookupTlsReportingDomainResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LookupTlsReportingDomainResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LookupTlsReportingDomainResults> mapFromJson(dynamic json) {
    final map = <String, LookupTlsReportingDomainResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LookupTlsReportingDomainResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LookupTlsReportingDomainResults-objects as value to a dart map
  static Map<String, List<LookupTlsReportingDomainResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LookupTlsReportingDomainResults>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LookupTlsReportingDomainResults.listFromJson(entry.value, growable: growable,);
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
    'errors',
    'warnings',
  };
}

