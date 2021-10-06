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
    @required this.doesMatch,
    this.matches = const {},
  });

  bool doesMatch;

  Map<String, bool> matches;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxForwarderTestResult &&
     other.doesMatch == doesMatch &&
     other.matches == matches;

  @override
  int get hashCode =>
    (doesMatch == null ? 0 : doesMatch.hashCode) +
    (matches == null ? 0 : matches.hashCode);

  @override
  String toString() => 'InboxForwarderTestResult[doesMatch=$doesMatch, matches=$matches]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'doesMatch'] = doesMatch;
      json[r'matches'] = matches;
    return json;
  }

  /// Returns a new [InboxForwarderTestResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InboxForwarderTestResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InboxForwarderTestResult(
        doesMatch: json[r'doesMatch'],
        matches: json[r'matches'] == null ?
          null :
          (json[r'matches'] as Map).cast<String, bool>(),
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

