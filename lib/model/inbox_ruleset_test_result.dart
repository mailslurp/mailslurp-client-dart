//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxRulesetTestResult {
  /// Returns a new [InboxRulesetTestResult] instance.
  InboxRulesetTestResult({
    this.rulesetMatches = const {},
    required this.matches,
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
    // ignore: unnecessary_parenthesis
    (rulesetMatches.hashCode) +
    (matches.hashCode);

  @override
  String toString() => 'InboxRulesetTestResult[rulesetMatches=$rulesetMatches, matches=$matches]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rulesetMatches'] = this.rulesetMatches;
      json[r'matches'] = this.matches;
    return json;
  }

  /// Returns a new [InboxRulesetTestResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxRulesetTestResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxRulesetTestResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxRulesetTestResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxRulesetTestResult(
        rulesetMatches: mapCastOfType<String, bool>(json, r'rulesetMatches')!,
        matches: mapValueOfType<bool>(json, r'matches')!,
      );
    }
    return null;
  }

  static List<InboxRulesetTestResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxRulesetTestResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxRulesetTestResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxRulesetTestResult> mapFromJson(dynamic json) {
    final map = <String, InboxRulesetTestResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxRulesetTestResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxRulesetTestResult-objects as value to a dart map
  static Map<String, List<InboxRulesetTestResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxRulesetTestResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxRulesetTestResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'rulesetMatches',
    'matches',
  };
}

