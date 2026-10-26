//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CheckDomainMonitorOptions {
  /// Returns a new [CheckDomainMonitorOptions] instance.
  CheckDomainMonitorOptions({
    required this.domain,
    this.captchaToken,
  });

  /// Domain to evaluate
  String domain;

  /// Optional captcha token when captcha protection is enabled
  String? captchaToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CheckDomainMonitorOptions &&
     other.domain == domain &&
     other.captchaToken == captchaToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain.hashCode) +
    (captchaToken == null ? 0 : captchaToken!.hashCode);

  @override
  String toString() => 'CheckDomainMonitorOptions[domain=$domain, captchaToken=$captchaToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domain'] = this.domain;
    if (this.captchaToken != null) {
      json[r'captchaToken'] = this.captchaToken;
    } else {
      json[r'captchaToken'] = null;
    }
    return json;
  }

  /// Returns a new [CheckDomainMonitorOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CheckDomainMonitorOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CheckDomainMonitorOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CheckDomainMonitorOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CheckDomainMonitorOptions(
        domain: mapValueOfType<String>(json, r'domain')!,
        captchaToken: mapValueOfType<String>(json, r'captchaToken'),
      );
    }
    return null;
  }

  static List<CheckDomainMonitorOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckDomainMonitorOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckDomainMonitorOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CheckDomainMonitorOptions> mapFromJson(dynamic json) {
    final map = <String, CheckDomainMonitorOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CheckDomainMonitorOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CheckDomainMonitorOptions-objects as value to a dart map
  static Map<String, List<CheckDomainMonitorOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CheckDomainMonitorOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CheckDomainMonitorOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domain',
  };
}

