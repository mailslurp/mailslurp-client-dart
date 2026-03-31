//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AnalyzeDmarcReportOptions {
  /// Returns a new [AnalyzeDmarcReportOptions] instance.
  AnalyzeDmarcReportOptions({
    required this.reportXml,
    this.captchaToken,
  });

  String reportXml;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? captchaToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnalyzeDmarcReportOptions &&
     other.reportXml == reportXml &&
     other.captchaToken == captchaToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (reportXml.hashCode) +
    (captchaToken == null ? 0 : captchaToken!.hashCode);

  @override
  String toString() => 'AnalyzeDmarcReportOptions[reportXml=$reportXml, captchaToken=$captchaToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'reportXml'] = this.reportXml;
    if (this.captchaToken != null) {
      json[r'captchaToken'] = this.captchaToken;
    } else {
      json[r'captchaToken'] = null;
    }
    return json;
  }

  /// Returns a new [AnalyzeDmarcReportOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnalyzeDmarcReportOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnalyzeDmarcReportOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnalyzeDmarcReportOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnalyzeDmarcReportOptions(
        reportXml: mapValueOfType<String>(json, r'reportXml')!,
        captchaToken: mapValueOfType<String>(json, r'captchaToken'),
      );
    }
    return null;
  }

  static List<AnalyzeDmarcReportOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnalyzeDmarcReportOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnalyzeDmarcReportOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnalyzeDmarcReportOptions> mapFromJson(dynamic json) {
    final map = <String, AnalyzeDmarcReportOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnalyzeDmarcReportOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnalyzeDmarcReportOptions-objects as value to a dart map
  static Map<String, List<AnalyzeDmarcReportOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnalyzeDmarcReportOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnalyzeDmarcReportOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'reportXml',
  };
}

