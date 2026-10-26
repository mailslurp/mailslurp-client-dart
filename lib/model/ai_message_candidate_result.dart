//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AIMessageCandidateResult {
  /// Returns a new [AIMessageCandidateResult] instance.
  AIMessageCandidateResult({
    required this.message,
    required this.match,
  });

  AIMessageReference message;

  AIMessageMatchResult match;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AIMessageCandidateResult &&
     other.message == message &&
     other.match == match;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message.hashCode) +
    (match.hashCode);

  @override
  String toString() => 'AIMessageCandidateResult[message=$message, match=$match]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'message'] = this.message;
      json[r'match'] = this.match;
    return json;
  }

  /// Returns a new [AIMessageCandidateResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AIMessageCandidateResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AIMessageCandidateResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AIMessageCandidateResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AIMessageCandidateResult(
        message: AIMessageReference.fromJson(json[r'message'])!,
        match: AIMessageMatchResult.fromJson(json[r'match'])!,
      );
    }
    return null;
  }

  static List<AIMessageCandidateResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessageCandidateResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessageCandidateResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AIMessageCandidateResult> mapFromJson(dynamic json) {
    final map = <String, AIMessageCandidateResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AIMessageCandidateResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AIMessageCandidateResult-objects as value to a dart map
  static Map<String, List<AIMessageCandidateResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AIMessageCandidateResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AIMessageCandidateResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'message',
    'match',
  };
}

