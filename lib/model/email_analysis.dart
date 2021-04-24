//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailAnalysis {
  /// Returns a new [EmailAnalysis] instance.
  EmailAnalysis({
    this.dkimVerdict,
    this.dmarcVerdict,
    this.spamVerdict,
    this.spfVerdict,
    this.virusVerdict,
  });

  /// Verdict of DomainKeys Identified Mail analysis
  String dkimVerdict;

  /// Verdict of Domain-based Message Authentication Reporting and Conformance analysis
  String dmarcVerdict;

  /// Verdict of spam ranking analysis
  String spamVerdict;

  /// Verdict of Send Policy Framework record spoofing analysis
  String spfVerdict;

  /// Verdict of virus scan analysis
  String virusVerdict;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailAnalysis &&
     other.dkimVerdict == dkimVerdict &&
     other.dmarcVerdict == dmarcVerdict &&
     other.spamVerdict == spamVerdict &&
     other.spfVerdict == spfVerdict &&
     other.virusVerdict == virusVerdict;

  @override
  int get hashCode =>
    (dkimVerdict == null ? 0 : dkimVerdict.hashCode) +
    (dmarcVerdict == null ? 0 : dmarcVerdict.hashCode) +
    (spamVerdict == null ? 0 : spamVerdict.hashCode) +
    (spfVerdict == null ? 0 : spfVerdict.hashCode) +
    (virusVerdict == null ? 0 : virusVerdict.hashCode);

  @override
  String toString() => 'EmailAnalysis[dkimVerdict=$dkimVerdict, dmarcVerdict=$dmarcVerdict, spamVerdict=$spamVerdict, spfVerdict=$spfVerdict, virusVerdict=$virusVerdict]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (dkimVerdict != null) {
      json[r'dkimVerdict'] = dkimVerdict;
    }
    if (dmarcVerdict != null) {
      json[r'dmarcVerdict'] = dmarcVerdict;
    }
    if (spamVerdict != null) {
      json[r'spamVerdict'] = spamVerdict;
    }
    if (spfVerdict != null) {
      json[r'spfVerdict'] = spfVerdict;
    }
    if (virusVerdict != null) {
      json[r'virusVerdict'] = virusVerdict;
    }
    return json;
  }

  /// Returns a new [EmailAnalysis] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EmailAnalysis fromJson(Map<String, dynamic> json) => json == null
    ? null
    : EmailAnalysis(
        dkimVerdict: json[r'dkimVerdict'],
        dmarcVerdict: json[r'dmarcVerdict'],
        spamVerdict: json[r'spamVerdict'],
        spfVerdict: json[r'spfVerdict'],
        virusVerdict: json[r'virusVerdict'],
    );

  static List<EmailAnalysis> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <EmailAnalysis>[]
      : json.map((v) => EmailAnalysis.fromJson(v)).toList(growable: true == growable);

  static Map<String, EmailAnalysis> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EmailAnalysis>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = EmailAnalysis.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of EmailAnalysis-objects as value to a dart map
  static Map<String, List<EmailAnalysis>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EmailAnalysis>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = EmailAnalysis.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

