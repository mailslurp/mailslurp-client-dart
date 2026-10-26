//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SubmitPublicSpamTestOptions {
  /// Returns a new [SubmitPublicSpamTestOptions] instance.
  SubmitPublicSpamTestOptions({
    this.captchaToken,
  });

  /// Optional captcha token when captcha protection is enabled.
  String? captchaToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubmitPublicSpamTestOptions &&
     other.captchaToken == captchaToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (captchaToken == null ? 0 : captchaToken!.hashCode);

  @override
  String toString() => 'SubmitPublicSpamTestOptions[captchaToken=$captchaToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.captchaToken != null) {
      json[r'captchaToken'] = this.captchaToken;
    } else {
      json[r'captchaToken'] = null;
    }
    return json;
  }

  /// Returns a new [SubmitPublicSpamTestOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubmitPublicSpamTestOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubmitPublicSpamTestOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubmitPublicSpamTestOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubmitPublicSpamTestOptions(
        captchaToken: mapValueOfType<String>(json, r'captchaToken'),
      );
    }
    return null;
  }

  static List<SubmitPublicSpamTestOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubmitPublicSpamTestOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubmitPublicSpamTestOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubmitPublicSpamTestOptions> mapFromJson(dynamic json) {
    final map = <String, SubmitPublicSpamTestOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubmitPublicSpamTestOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubmitPublicSpamTestOptions-objects as value to a dart map
  static Map<String, List<SubmitPublicSpamTestOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubmitPublicSpamTestOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubmitPublicSpamTestOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

