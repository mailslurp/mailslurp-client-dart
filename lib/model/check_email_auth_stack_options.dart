//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CheckEmailAuthStackOptions {
  /// Returns a new [CheckEmailAuthStackOptions] instance.
  CheckEmailAuthStackOptions({
    required this.domain,
    this.dkimSelector,
    this.captchaToken,
  });

  String domain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dkimSelector;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? captchaToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CheckEmailAuthStackOptions &&
     other.domain == domain &&
     other.dkimSelector == dkimSelector &&
     other.captchaToken == captchaToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain.hashCode) +
    (dkimSelector == null ? 0 : dkimSelector!.hashCode) +
    (captchaToken == null ? 0 : captchaToken!.hashCode);

  @override
  String toString() => 'CheckEmailAuthStackOptions[domain=$domain, dkimSelector=$dkimSelector, captchaToken=$captchaToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domain'] = this.domain;
    if (this.dkimSelector != null) {
      json[r'dkimSelector'] = this.dkimSelector;
    } else {
      json[r'dkimSelector'] = null;
    }
    if (this.captchaToken != null) {
      json[r'captchaToken'] = this.captchaToken;
    } else {
      json[r'captchaToken'] = null;
    }
    return json;
  }

  /// Returns a new [CheckEmailAuthStackOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CheckEmailAuthStackOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CheckEmailAuthStackOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CheckEmailAuthStackOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CheckEmailAuthStackOptions(
        domain: mapValueOfType<String>(json, r'domain')!,
        dkimSelector: mapValueOfType<String>(json, r'dkimSelector'),
        captchaToken: mapValueOfType<String>(json, r'captchaToken'),
      );
    }
    return null;
  }

  static List<CheckEmailAuthStackOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckEmailAuthStackOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckEmailAuthStackOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CheckEmailAuthStackOptions> mapFromJson(dynamic json) {
    final map = <String, CheckEmailAuthStackOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CheckEmailAuthStackOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CheckEmailAuthStackOptions-objects as value to a dart map
  static Map<String, List<CheckEmailAuthStackOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CheckEmailAuthStackOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CheckEmailAuthStackOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domain',
  };
}

