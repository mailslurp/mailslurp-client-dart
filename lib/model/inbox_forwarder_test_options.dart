//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxForwarderTestOptions {
  /// Returns a new [InboxForwarderTestOptions] instance.
  InboxForwarderTestOptions({
    this.testValue,
  });

  String testValue;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxForwarderTestOptions &&
     other.testValue == testValue;

  @override
  int get hashCode =>
    (testValue == null ? 0 : testValue.hashCode);

  @override
  String toString() => 'InboxForwarderTestOptions[testValue=$testValue]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (testValue != null) {
      json[r'testValue'] = testValue;
    }
    return json;
  }

  /// Returns a new [InboxForwarderTestOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InboxForwarderTestOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InboxForwarderTestOptions(
        testValue: json[r'testValue'],
    );

  static List<InboxForwarderTestOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxForwarderTestOptions>[]
      : json.map((v) => InboxForwarderTestOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, InboxForwarderTestOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InboxForwarderTestOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InboxForwarderTestOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InboxForwarderTestOptions-objects as value to a dart map
  static Map<String, List<InboxForwarderTestOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InboxForwarderTestOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InboxForwarderTestOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

