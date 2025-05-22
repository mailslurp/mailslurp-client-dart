//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TestInboxRulesetSendingOptions {
  /// Returns a new [TestInboxRulesetSendingOptions] instance.
  TestInboxRulesetSendingOptions({
    required this.inboxId,
    required this.recipient,
  });

  String inboxId;

  String recipient;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TestInboxRulesetSendingOptions &&
     other.inboxId == inboxId &&
     other.recipient == recipient;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (inboxId.hashCode) +
    (recipient.hashCode);

  @override
  String toString() => 'TestInboxRulesetSendingOptions[inboxId=$inboxId, recipient=$recipient]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'inboxId'] = this.inboxId;
      json[r'recipient'] = this.recipient;
    return json;
  }

  /// Returns a new [TestInboxRulesetSendingOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TestInboxRulesetSendingOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TestInboxRulesetSendingOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TestInboxRulesetSendingOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TestInboxRulesetSendingOptions(
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        recipient: mapValueOfType<String>(json, r'recipient')!,
      );
    }
    return null;
  }

  static List<TestInboxRulesetSendingOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TestInboxRulesetSendingOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TestInboxRulesetSendingOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TestInboxRulesetSendingOptions> mapFromJson(dynamic json) {
    final map = <String, TestInboxRulesetSendingOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TestInboxRulesetSendingOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TestInboxRulesetSendingOptions-objects as value to a dart map
  static Map<String, List<TestInboxRulesetSendingOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TestInboxRulesetSendingOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TestInboxRulesetSendingOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'inboxId',
    'recipient',
  };
}

