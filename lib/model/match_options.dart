//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MatchOptions {
  /// Returns a new [MatchOptions] instance.
  MatchOptions({
    this.matches = const [],
    this.conditions = const [],
  });

  /// Zero or more match options such as `{ field: 'SUBJECT', should: 'CONTAIN', value: 'Welcome' }`. Options are additive so if one does not match the email is excluded from results
  List<MatchOption>? matches;

  /// Zero or more conditions such as `{ condition: 'HAS_ATTACHMENTS', value: 'TRUE' }`. Note the values are the strings `TRUE|FALSE` not booleans.
  List<ConditionOption>? conditions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MatchOptions &&
     other.matches == matches &&
     other.conditions == conditions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (matches == null ? 0 : matches!.hashCode) +
    (conditions == null ? 0 : conditions!.hashCode);

  @override
  String toString() => 'MatchOptions[matches=$matches, conditions=$conditions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.matches != null) {
      json[r'matches'] = this.matches;
    } else {
      json[r'matches'] = null;
    }
    if (this.conditions != null) {
      json[r'conditions'] = this.conditions;
    } else {
      json[r'conditions'] = null;
    }
    return json;
  }

  /// Returns a new [MatchOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MatchOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MatchOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MatchOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MatchOptions(
        matches: MatchOption.listFromJson(json[r'matches']),
        conditions: ConditionOption.listFromJson(json[r'conditions']),
      );
    }
    return null;
  }

  static List<MatchOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MatchOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MatchOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MatchOptions> mapFromJson(dynamic json) {
    final map = <String, MatchOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MatchOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MatchOptions-objects as value to a dart map
  static Map<String, List<MatchOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MatchOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MatchOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

