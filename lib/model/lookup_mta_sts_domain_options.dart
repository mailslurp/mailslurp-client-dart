//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LookupMtaStsDomainOptions {
  /// Returns a new [LookupMtaStsDomainOptions] instance.
  LookupMtaStsDomainOptions({
    required this.host,
  });

  String host;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LookupMtaStsDomainOptions &&
     other.host == host;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (host.hashCode);

  @override
  String toString() => 'LookupMtaStsDomainOptions[host=$host]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'host'] = this.host;
    return json;
  }

  /// Returns a new [LookupMtaStsDomainOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LookupMtaStsDomainOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LookupMtaStsDomainOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LookupMtaStsDomainOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LookupMtaStsDomainOptions(
        host: mapValueOfType<String>(json, r'host')!,
      );
    }
    return null;
  }

  static List<LookupMtaStsDomainOptions>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LookupMtaStsDomainOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LookupMtaStsDomainOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LookupMtaStsDomainOptions> mapFromJson(dynamic json) {
    final map = <String, LookupMtaStsDomainOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LookupMtaStsDomainOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LookupMtaStsDomainOptions-objects as value to a dart map
  static Map<String, List<LookupMtaStsDomainOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LookupMtaStsDomainOptions>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LookupMtaStsDomainOptions.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'host',
  };
}

