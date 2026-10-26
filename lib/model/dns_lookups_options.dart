//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DNSLookupsOptions {
  /// Returns a new [DNSLookupsOptions] instance.
  DNSLookupsOptions({
    this.lookups = const [],
  });

  List<DNSLookupOptions> lookups;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DNSLookupsOptions &&
     other.lookups == lookups;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (lookups.hashCode);

  @override
  String toString() => 'DNSLookupsOptions[lookups=$lookups]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'lookups'] = this.lookups;
    return json;
  }

  /// Returns a new [DNSLookupsOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DNSLookupsOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DNSLookupsOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DNSLookupsOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DNSLookupsOptions(
        lookups: DNSLookupOptions.listFromJson(json[r'lookups']),
      );
    }
    return null;
  }

  static List<DNSLookupsOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DNSLookupsOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DNSLookupsOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DNSLookupsOptions> mapFromJson(dynamic json) {
    final map = <String, DNSLookupsOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DNSLookupsOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DNSLookupsOptions-objects as value to a dart map
  static Map<String, List<DNSLookupsOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DNSLookupsOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DNSLookupsOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'lookups',
  };
}

