//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LookupPtrOptions {
  /// Returns a new [LookupPtrOptions] instance.
  LookupPtrOptions({
    required this.ip,
    this.captchaToken,
  });

  /// IPv4 or IPv6 address to inspect
  String ip;

  String? captchaToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LookupPtrOptions &&
     other.ip == ip &&
     other.captchaToken == captchaToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ip.hashCode) +
    (captchaToken == null ? 0 : captchaToken!.hashCode);

  @override
  String toString() => 'LookupPtrOptions[ip=$ip, captchaToken=$captchaToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ip'] = this.ip;
    if (this.captchaToken != null) {
      json[r'captchaToken'] = this.captchaToken;
    } else {
      json[r'captchaToken'] = null;
    }
    return json;
  }

  /// Returns a new [LookupPtrOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LookupPtrOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LookupPtrOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LookupPtrOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LookupPtrOptions(
        ip: mapValueOfType<String>(json, r'ip')!,
        captchaToken: mapValueOfType<String>(json, r'captchaToken'),
      );
    }
    return null;
  }

  static List<LookupPtrOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LookupPtrOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LookupPtrOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LookupPtrOptions> mapFromJson(dynamic json) {
    final map = <String, LookupPtrOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LookupPtrOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LookupPtrOptions-objects as value to a dart map
  static Map<String, List<LookupPtrOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LookupPtrOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LookupPtrOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ip',
  };
}

