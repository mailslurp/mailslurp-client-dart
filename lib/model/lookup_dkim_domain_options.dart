//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LookupDkimDomainOptions {
  /// Returns a new [LookupDkimDomainOptions] instance.
  LookupDkimDomainOptions({
    required this.host,
    this.selector,
  });

  /// Domain to inspect for DKIM
  String host;

  /// Optional selector. If omitted, common selectors are probed.
  String? selector;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LookupDkimDomainOptions &&
     other.host == host &&
     other.selector == selector;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (host.hashCode) +
    (selector == null ? 0 : selector!.hashCode);

  @override
  String toString() => 'LookupDkimDomainOptions[host=$host, selector=$selector]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'host'] = this.host;
    if (this.selector != null) {
      json[r'selector'] = this.selector;
    } else {
      json[r'selector'] = null;
    }
    return json;
  }

  /// Returns a new [LookupDkimDomainOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LookupDkimDomainOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LookupDkimDomainOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LookupDkimDomainOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LookupDkimDomainOptions(
        host: mapValueOfType<String>(json, r'host')!,
        selector: mapValueOfType<String>(json, r'selector'),
      );
    }
    return null;
  }

  static List<LookupDkimDomainOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LookupDkimDomainOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LookupDkimDomainOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LookupDkimDomainOptions> mapFromJson(dynamic json) {
    final map = <String, LookupDkimDomainOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LookupDkimDomainOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LookupDkimDomainOptions-objects as value to a dart map
  static Map<String, List<LookupDkimDomainOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LookupDkimDomainOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LookupDkimDomainOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'host',
  };
}

