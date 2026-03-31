//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailHeaderAnalysisSummary {
  /// Returns a new [EmailHeaderAnalysisSummary] instance.
  EmailHeaderAnalysisSummary({
    this.spf,
    this.dkim,
    this.dmarc,
    this.fromDomain,
    this.returnPathDomain,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? spf;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dkim;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dmarc;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fromDomain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? returnPathDomain;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailHeaderAnalysisSummary &&
     other.spf == spf &&
     other.dkim == dkim &&
     other.dmarc == dmarc &&
     other.fromDomain == fromDomain &&
     other.returnPathDomain == returnPathDomain;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (spf == null ? 0 : spf!.hashCode) +
    (dkim == null ? 0 : dkim!.hashCode) +
    (dmarc == null ? 0 : dmarc!.hashCode) +
    (fromDomain == null ? 0 : fromDomain!.hashCode) +
    (returnPathDomain == null ? 0 : returnPathDomain!.hashCode);

  @override
  String toString() => 'EmailHeaderAnalysisSummary[spf=$spf, dkim=$dkim, dmarc=$dmarc, fromDomain=$fromDomain, returnPathDomain=$returnPathDomain]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.spf != null) {
      json[r'spf'] = this.spf;
    } else {
      json[r'spf'] = null;
    }
    if (this.dkim != null) {
      json[r'dkim'] = this.dkim;
    } else {
      json[r'dkim'] = null;
    }
    if (this.dmarc != null) {
      json[r'dmarc'] = this.dmarc;
    } else {
      json[r'dmarc'] = null;
    }
    if (this.fromDomain != null) {
      json[r'fromDomain'] = this.fromDomain;
    } else {
      json[r'fromDomain'] = null;
    }
    if (this.returnPathDomain != null) {
      json[r'returnPathDomain'] = this.returnPathDomain;
    } else {
      json[r'returnPathDomain'] = null;
    }
    return json;
  }

  /// Returns a new [EmailHeaderAnalysisSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailHeaderAnalysisSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailHeaderAnalysisSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailHeaderAnalysisSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailHeaderAnalysisSummary(
        spf: mapValueOfType<String>(json, r'spf'),
        dkim: mapValueOfType<String>(json, r'dkim'),
        dmarc: mapValueOfType<String>(json, r'dmarc'),
        fromDomain: mapValueOfType<String>(json, r'fromDomain'),
        returnPathDomain: mapValueOfType<String>(json, r'returnPathDomain'),
      );
    }
    return null;
  }

  static List<EmailHeaderAnalysisSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailHeaderAnalysisSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailHeaderAnalysisSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailHeaderAnalysisSummary> mapFromJson(dynamic json) {
    final map = <String, EmailHeaderAnalysisSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailHeaderAnalysisSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailHeaderAnalysisSummary-objects as value to a dart map
  static Map<String, List<EmailHeaderAnalysisSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailHeaderAnalysisSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailHeaderAnalysisSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

