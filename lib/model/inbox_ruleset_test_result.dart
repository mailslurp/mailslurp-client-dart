//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxRulesetTestResult {
  /// Returns a new [InboxRulesetTestResult] instance.
  InboxRulesetTestResult({
    @required this.matches,
    this.rulesetMatches = const {},
  });

  bool matches;

  /// Map of inbox ruleset ID to boolean of if target matches
  Map<String, bool> rulesetMatches;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxRulesetTestResult &&
     other.matches == matches &&
     other.rulesetMatches == rulesetMatches;

  @override
  int get hashCode =>
    (matches == null ? 0 : matches.hashCode) +
    (rulesetMatches == null ? 0 : rulesetMatches.hashCode);

  @override
  String toString() => 'InboxRulesetTestResult[matches=$matches, rulesetMatches=$rulesetMatches]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'matches'] = matches;
    if (rulesetMatches != null) {
      json[r'rulesetMatches'] = rulesetMatches;
    }
    return json;
  }

  /// Returns a new [InboxRulesetTestResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InboxRulesetTestResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InboxRulesetTestResult(
        matches: json[r'matches'],
        rulesetMatches: json[r'rulesetMatches'] == null ?
          null :
          (json[r'rulesetMatches'] as Map).cast<String, bool>(),
    );

  static List<InboxRulesetTestResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxRulesetTestResult>[]
      : json.map((v) => InboxRulesetTestResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, InboxRulesetTestResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InboxRulesetTestResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InboxRulesetTestResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InboxRulesetTestResult-objects as value to a dart map
  static Map<String, List<InboxRulesetTestResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InboxRulesetTestResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InboxRulesetTestResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

