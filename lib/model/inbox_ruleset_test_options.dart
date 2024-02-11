//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxRulesetTestOptions {
  /// Returns a new [InboxRulesetTestOptions] instance.
  InboxRulesetTestOptions({
    required this.testTarget,
  });

  String testTarget;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxRulesetTestOptions &&
     other.testTarget == testTarget;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (testTarget.hashCode);

  @override
  String toString() => 'InboxRulesetTestOptions[testTarget=$testTarget]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'testTarget'] = this.testTarget;
    return json;
  }

  /// Returns a new [InboxRulesetTestOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxRulesetTestOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxRulesetTestOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxRulesetTestOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxRulesetTestOptions(
        testTarget: mapValueOfType<String>(json, r'testTarget')!,
      );
    }
    return null;
  }

  static List<InboxRulesetTestOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxRulesetTestOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxRulesetTestOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxRulesetTestOptions> mapFromJson(dynamic json) {
    final map = <String, InboxRulesetTestOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxRulesetTestOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxRulesetTestOptions-objects as value to a dart map
  static Map<String, List<InboxRulesetTestOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxRulesetTestOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxRulesetTestOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'testTarget',
  };
}

