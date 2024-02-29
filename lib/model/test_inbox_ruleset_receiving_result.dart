//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TestInboxRulesetReceivingResult {
  /// Returns a new [TestInboxRulesetReceivingResult] instance.
  TestInboxRulesetReceivingResult({
    required this.canReceive,
  });

  bool canReceive;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TestInboxRulesetReceivingResult &&
     other.canReceive == canReceive;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (canReceive.hashCode);

  @override
  String toString() => 'TestInboxRulesetReceivingResult[canReceive=$canReceive]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'canReceive'] = this.canReceive;
    return json;
  }

  /// Returns a new [TestInboxRulesetReceivingResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TestInboxRulesetReceivingResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TestInboxRulesetReceivingResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TestInboxRulesetReceivingResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TestInboxRulesetReceivingResult(
        canReceive: mapValueOfType<bool>(json, r'canReceive')!,
      );
    }
    return null;
  }

  static List<TestInboxRulesetReceivingResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TestInboxRulesetReceivingResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TestInboxRulesetReceivingResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TestInboxRulesetReceivingResult> mapFromJson(dynamic json) {
    final map = <String, TestInboxRulesetReceivingResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TestInboxRulesetReceivingResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TestInboxRulesetReceivingResult-objects as value to a dart map
  static Map<String, List<TestInboxRulesetReceivingResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TestInboxRulesetReceivingResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TestInboxRulesetReceivingResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'canReceive',
  };
}

