//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailAnalysis {
  /// Returns a new [EmailAnalysis] instance.
  EmailAnalysis({
    this.spamVerdict,
    this.virusVerdict,
    this.spfVerdict,
    this.dkimVerdict,
    this.dmarcVerdict,
  });

  /// Verdict of spam ranking analysis
  String? spamVerdict;

  /// Verdict of virus scan analysis
  String? virusVerdict;

  /// Verdict of Send Policy Framework record spoofing analysis
  String? spfVerdict;

  /// Verdict of DomainKeys Identified Mail analysis
  String? dkimVerdict;

  /// Verdict of Domain-based Message Authentication Reporting and Conformance analysis
  String? dmarcVerdict;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailAnalysis &&
     other.spamVerdict == spamVerdict &&
     other.virusVerdict == virusVerdict &&
     other.spfVerdict == spfVerdict &&
     other.dkimVerdict == dkimVerdict &&
     other.dmarcVerdict == dmarcVerdict;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (spamVerdict == null ? 0 : spamVerdict!.hashCode) +
    (virusVerdict == null ? 0 : virusVerdict!.hashCode) +
    (spfVerdict == null ? 0 : spfVerdict!.hashCode) +
    (dkimVerdict == null ? 0 : dkimVerdict!.hashCode) +
    (dmarcVerdict == null ? 0 : dmarcVerdict!.hashCode);

  @override
  String toString() => 'EmailAnalysis[spamVerdict=$spamVerdict, virusVerdict=$virusVerdict, spfVerdict=$spfVerdict, dkimVerdict=$dkimVerdict, dmarcVerdict=$dmarcVerdict]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.spamVerdict != null) {
      json[r'spamVerdict'] = this.spamVerdict;
    } else {
      json[r'spamVerdict'] = null;
    }
    if (this.virusVerdict != null) {
      json[r'virusVerdict'] = this.virusVerdict;
    } else {
      json[r'virusVerdict'] = null;
    }
    if (this.spfVerdict != null) {
      json[r'spfVerdict'] = this.spfVerdict;
    } else {
      json[r'spfVerdict'] = null;
    }
    if (this.dkimVerdict != null) {
      json[r'dkimVerdict'] = this.dkimVerdict;
    } else {
      json[r'dkimVerdict'] = null;
    }
    if (this.dmarcVerdict != null) {
      json[r'dmarcVerdict'] = this.dmarcVerdict;
    } else {
      json[r'dmarcVerdict'] = null;
    }
    return json;
  }

  /// Returns a new [EmailAnalysis] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailAnalysis? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailAnalysis[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailAnalysis[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailAnalysis(
        spamVerdict: mapValueOfType<String>(json, r'spamVerdict'),
        virusVerdict: mapValueOfType<String>(json, r'virusVerdict'),
        spfVerdict: mapValueOfType<String>(json, r'spfVerdict'),
        dkimVerdict: mapValueOfType<String>(json, r'dkimVerdict'),
        dmarcVerdict: mapValueOfType<String>(json, r'dmarcVerdict'),
      );
    }
    return null;
  }

  static List<EmailAnalysis>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailAnalysis>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailAnalysis.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailAnalysis> mapFromJson(dynamic json) {
    final map = <String, EmailAnalysis>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailAnalysis.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailAnalysis-objects as value to a dart map
  static Map<String, List<EmailAnalysis>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailAnalysis>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailAnalysis.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

