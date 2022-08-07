//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxRulesetTestOptions {
  /// Returns a new [InboxRulesetTestOptions] instance.
  InboxRulesetTestOptions({
    @required this.testTarget,
  });

  String testTarget;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxRulesetTestOptions &&
     other.testTarget == testTarget;

  @override
  int get hashCode =>
    (testTarget == null ? 0 : testTarget.hashCode);

  @override
  String toString() => 'InboxRulesetTestOptions[testTarget=$testTarget]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'testTarget'] = testTarget;
    return json;
  }

  /// Returns a new [InboxRulesetTestOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InboxRulesetTestOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InboxRulesetTestOptions(
        testTarget: json[r'testTarget'],
    );

  static List<InboxRulesetTestOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxRulesetTestOptions>[]
      : json.map((v) => InboxRulesetTestOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, InboxRulesetTestOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InboxRulesetTestOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InboxRulesetTestOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InboxRulesetTestOptions-objects as value to a dart map
  static Map<String, List<InboxRulesetTestOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InboxRulesetTestOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InboxRulesetTestOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

