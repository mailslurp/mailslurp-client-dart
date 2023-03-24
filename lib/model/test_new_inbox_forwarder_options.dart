//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TestNewInboxForwarderOptions {
  /// Returns a new [TestNewInboxForwarderOptions] instance.
  TestNewInboxForwarderOptions({
    @required this.inboxForwarderTestOptions,
    @required this.createInboxForwarderOptions,
  });

  InboxForwarderTestOptions inboxForwarderTestOptions;

  CreateInboxForwarderOptions createInboxForwarderOptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TestNewInboxForwarderOptions &&
     other.inboxForwarderTestOptions == inboxForwarderTestOptions &&
     other.createInboxForwarderOptions == createInboxForwarderOptions;

  @override
  int get hashCode =>
    (inboxForwarderTestOptions == null ? 0 : inboxForwarderTestOptions.hashCode) +
    (createInboxForwarderOptions == null ? 0 : createInboxForwarderOptions.hashCode);

  @override
  String toString() => 'TestNewInboxForwarderOptions[inboxForwarderTestOptions=$inboxForwarderTestOptions, createInboxForwarderOptions=$createInboxForwarderOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'inboxForwarderTestOptions'] = inboxForwarderTestOptions;
      json[r'createInboxForwarderOptions'] = createInboxForwarderOptions;
    return json;
  }

  /// Returns a new [TestNewInboxForwarderOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TestNewInboxForwarderOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TestNewInboxForwarderOptions(
        inboxForwarderTestOptions: InboxForwarderTestOptions.fromJson(json[r'inboxForwarderTestOptions']),
        createInboxForwarderOptions: CreateInboxForwarderOptions.fromJson(json[r'createInboxForwarderOptions']),
    );

  static List<TestNewInboxForwarderOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TestNewInboxForwarderOptions>[]
      : json.map((v) => TestNewInboxForwarderOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, TestNewInboxForwarderOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TestNewInboxForwarderOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TestNewInboxForwarderOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TestNewInboxForwarderOptions-objects as value to a dart map
  static Map<String, List<TestNewInboxForwarderOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TestNewInboxForwarderOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TestNewInboxForwarderOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

