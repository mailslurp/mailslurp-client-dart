//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxForwarderTestResult {
  /// Returns a new [InboxForwarderTestResult] instance.
  InboxForwarderTestResult({
    this.matches = const {},
    required this.doesMatch,
  });

  Map<String, bool> matches;

  bool doesMatch;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxForwarderTestResult &&
     other.matches == matches &&
     other.doesMatch == doesMatch;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (matches.hashCode) +
    (doesMatch.hashCode);

  @override
  String toString() => 'InboxForwarderTestResult[matches=$matches, doesMatch=$doesMatch]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'matches'] = this.matches;
      json[r'doesMatch'] = this.doesMatch;
    return json;
  }

  /// Returns a new [InboxForwarderTestResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxForwarderTestResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxForwarderTestResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxForwarderTestResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxForwarderTestResult(
        matches: mapCastOfType<String, bool>(json, r'matches')!,
        doesMatch: mapValueOfType<bool>(json, r'doesMatch')!,
      );
    }
    return null;
  }

  static List<InboxForwarderTestResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxForwarderTestResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxForwarderTestResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxForwarderTestResult> mapFromJson(dynamic json) {
    final map = <String, InboxForwarderTestResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxForwarderTestResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxForwarderTestResult-objects as value to a dart map
  static Map<String, List<InboxForwarderTestResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxForwarderTestResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxForwarderTestResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'matches',
    'doesMatch',
  };
}

