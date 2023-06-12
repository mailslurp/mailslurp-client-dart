//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TestPhoneNumberOptions {
  /// Returns a new [TestPhoneNumberOptions] instance.
  TestPhoneNumberOptions({
    @required this.message,
  });

  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TestPhoneNumberOptions &&
     other.message == message;

  @override
  int get hashCode =>
    (message == null ? 0 : message.hashCode);

  @override
  String toString() => 'TestPhoneNumberOptions[message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'message'] = message;
    return json;
  }

  /// Returns a new [TestPhoneNumberOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TestPhoneNumberOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TestPhoneNumberOptions(
        message: json[r'message'],
    );

  static List<TestPhoneNumberOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TestPhoneNumberOptions>[]
      : json.map((v) => TestPhoneNumberOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, TestPhoneNumberOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TestPhoneNumberOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TestPhoneNumberOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TestPhoneNumberOptions-objects as value to a dart map
  static Map<String, List<TestPhoneNumberOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TestPhoneNumberOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TestPhoneNumberOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

