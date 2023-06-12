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
    this.rulesetMatches = const {},
    @required this.matches,
  });

  /// Map of inbox ruleset ID to boolean of if target matches
  Map<String, bool> rulesetMatches;

  bool matches;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxRulesetTestResult &&
     other.rulesetMatches == rulesetMatches &&
     other.matches == matches;

  @override
  int get hashCode =>
    (rulesetMatches == null ? 0 : rulesetMatches.hashCode) +
    (matches == null ? 0 : matches.hashCode);

  @override
  String toString() => 'InboxRulesetTestResult[rulesetMatches=$rulesetMatches, matches=$matches]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rulesetMatches'] = rulesetMatches;
      json[r'matches'] = matches;
    return json;
  }

  /// Returns a new [InboxRulesetTestResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InboxRulesetTestResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InboxRulesetTestResult(
        rulesetMatches: json[r'rulesetMatches'] == null ?
          null :
          (json[r'rulesetMatches'] as Map).cast<String, bool>(),
        matches: json[r'matches'],
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

