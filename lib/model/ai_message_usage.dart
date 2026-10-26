//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AIMessageUsage {
  /// Returns a new [AIMessageUsage] instance.
  AIMessageUsage({
    required this.tokens,
    required this.candidatesEvaluated,
    required this.complete,
    required this.reservedTokens,
  });

  /// Consumed MailSlurp AI tokens after applying the model multiplier. These are not raw provider tokens.
  int tokens;

  int candidatesEvaluated;

  /// False when a timed-out provider invocation is still settling. The reservation remains held and actual usage is settled when it finishes.
  bool complete;

  /// AI tokens held for provider attempts with unknown usage. Excluded from tokens; complete remains false until reconciliation.
  int reservedTokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AIMessageUsage &&
     other.tokens == tokens &&
     other.candidatesEvaluated == candidatesEvaluated &&
     other.complete == complete &&
     other.reservedTokens == reservedTokens;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tokens.hashCode) +
    (candidatesEvaluated.hashCode) +
    (complete.hashCode) +
    (reservedTokens.hashCode);

  @override
  String toString() => 'AIMessageUsage[tokens=$tokens, candidatesEvaluated=$candidatesEvaluated, complete=$complete, reservedTokens=$reservedTokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tokens'] = this.tokens;
      json[r'candidatesEvaluated'] = this.candidatesEvaluated;
      json[r'complete'] = this.complete;
      json[r'reservedTokens'] = this.reservedTokens;
    return json;
  }

  /// Returns a new [AIMessageUsage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AIMessageUsage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AIMessageUsage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AIMessageUsage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AIMessageUsage(
        tokens: mapValueOfType<int>(json, r'tokens')!,
        candidatesEvaluated: mapValueOfType<int>(json, r'candidatesEvaluated')!,
        complete: mapValueOfType<bool>(json, r'complete')!,
        reservedTokens: mapValueOfType<int>(json, r'reservedTokens')!,
      );
    }
    return null;
  }

  static List<AIMessageUsage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessageUsage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessageUsage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AIMessageUsage> mapFromJson(dynamic json) {
    final map = <String, AIMessageUsage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AIMessageUsage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AIMessageUsage-objects as value to a dart map
  static Map<String, List<AIMessageUsage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AIMessageUsage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AIMessageUsage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'tokens',
    'candidatesEvaluated',
    'complete',
    'reservedTokens',
  };
}

