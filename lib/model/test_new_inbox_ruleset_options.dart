//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TestNewInboxRulesetOptions {
  /// Returns a new [TestNewInboxRulesetOptions] instance.
  TestNewInboxRulesetOptions({
    this.inboxRulesetTestOptions,
    this.createInboxRulesetOptions,
  });

  InboxRulesetTestOptions inboxRulesetTestOptions;

  CreateInboxRulesetOptions createInboxRulesetOptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TestNewInboxRulesetOptions &&
     other.inboxRulesetTestOptions == inboxRulesetTestOptions &&
     other.createInboxRulesetOptions == createInboxRulesetOptions;

  @override
  int get hashCode =>
    (inboxRulesetTestOptions == null ? 0 : inboxRulesetTestOptions.hashCode) +
    (createInboxRulesetOptions == null ? 0 : createInboxRulesetOptions.hashCode);

  @override
  String toString() => 'TestNewInboxRulesetOptions[inboxRulesetTestOptions=$inboxRulesetTestOptions, createInboxRulesetOptions=$createInboxRulesetOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (inboxRulesetTestOptions != null) {
      json[r'inboxRulesetTestOptions'] = inboxRulesetTestOptions;
    }
    if (createInboxRulesetOptions != null) {
      json[r'createInboxRulesetOptions'] = createInboxRulesetOptions;
    }
    return json;
  }

  /// Returns a new [TestNewInboxRulesetOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TestNewInboxRulesetOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TestNewInboxRulesetOptions(
        inboxRulesetTestOptions: InboxRulesetTestOptions.fromJson(json[r'inboxRulesetTestOptions']),
        createInboxRulesetOptions: CreateInboxRulesetOptions.fromJson(json[r'createInboxRulesetOptions']),
    );

  static List<TestNewInboxRulesetOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TestNewInboxRulesetOptions>[]
      : json.map((v) => TestNewInboxRulesetOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, TestNewInboxRulesetOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TestNewInboxRulesetOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TestNewInboxRulesetOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TestNewInboxRulesetOptions-objects as value to a dart map
  static Map<String, List<TestNewInboxRulesetOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TestNewInboxRulesetOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TestNewInboxRulesetOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

