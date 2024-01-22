//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TestInboxRulesetSendingResult {
  /// Returns a new [TestInboxRulesetSendingResult] instance.
  TestInboxRulesetSendingResult({
    required this.canSend,
  });

  bool canSend;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TestInboxRulesetSendingResult &&
     other.canSend == canSend;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (canSend.hashCode);

  @override
  String toString() => 'TestInboxRulesetSendingResult[canSend=$canSend]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'canSend'] = this.canSend;
    return json;
  }

  /// Returns a new [TestInboxRulesetSendingResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TestInboxRulesetSendingResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TestInboxRulesetSendingResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TestInboxRulesetSendingResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TestInboxRulesetSendingResult(
        canSend: mapValueOfType<bool>(json, r'canSend')!,
      );
    }
    return null;
  }

  static List<TestInboxRulesetSendingResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TestInboxRulesetSendingResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TestInboxRulesetSendingResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TestInboxRulesetSendingResult> mapFromJson(dynamic json) {
    final map = <String, TestInboxRulesetSendingResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TestInboxRulesetSendingResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TestInboxRulesetSendingResult-objects as value to a dart map
  static Map<String, List<TestInboxRulesetSendingResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TestInboxRulesetSendingResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TestInboxRulesetSendingResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'canSend',
  };
}

