//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxForwarderTestResult {
  /// Returns a new [InboxForwarderTestResult] instance.
  InboxForwarderTestResult({
    this.matches = const {},
    this.doesMatch,
  });

  Map<String, bool> matches;

  bool doesMatch;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxForwarderTestResult &&
     other.matches == matches &&
     other.doesMatch == doesMatch;

  @override
  int get hashCode =>
    (matches == null ? 0 : matches.hashCode) +
    (doesMatch == null ? 0 : doesMatch.hashCode);

  @override
  String toString() => 'InboxForwarderTestResult[matches=$matches, doesMatch=$doesMatch]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (matches != null) {
      json[r'matches'] = matches;
    }
    if (doesMatch != null) {
      json[r'doesMatch'] = doesMatch;
    }
    return json;
  }

  /// Returns a new [InboxForwarderTestResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InboxForwarderTestResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InboxForwarderTestResult(
        matches: json[r'matches'] == null ?
          null :
          (json[r'matches'] as Map).cast<String, bool>(),
        doesMatch: json[r'doesMatch'],
    );

  static List<InboxForwarderTestResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxForwarderTestResult>[]
      : json.map((v) => InboxForwarderTestResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, InboxForwarderTestResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InboxForwarderTestResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InboxForwarderTestResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InboxForwarderTestResult-objects as value to a dart map
  static Map<String, List<InboxForwarderTestResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InboxForwarderTestResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InboxForwarderTestResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

