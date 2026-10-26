//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AIMessageMatchOptions {
  /// Returns a new [AIMessageMatchOptions] instance.
  AIMessageMatchOptions({
    required this.prompt,
    required this.aiOptions,
  });

  String prompt;

  AIMessageAIOptions aiOptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AIMessageMatchOptions &&
     other.prompt == prompt &&
     other.aiOptions == aiOptions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (prompt.hashCode) +
    (aiOptions.hashCode);

  @override
  String toString() => 'AIMessageMatchOptions[prompt=$prompt, aiOptions=$aiOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'prompt'] = this.prompt;
      json[r'aiOptions'] = this.aiOptions;
    return json;
  }

  /// Returns a new [AIMessageMatchOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AIMessageMatchOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AIMessageMatchOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AIMessageMatchOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AIMessageMatchOptions(
        prompt: mapValueOfType<String>(json, r'prompt')!,
        aiOptions: AIMessageAIOptions.fromJson(json[r'aiOptions'])!,
      );
    }
    return null;
  }

  static List<AIMessageMatchOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessageMatchOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessageMatchOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AIMessageMatchOptions> mapFromJson(dynamic json) {
    final map = <String, AIMessageMatchOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AIMessageMatchOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AIMessageMatchOptions-objects as value to a dart map
  static Map<String, List<AIMessageMatchOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AIMessageMatchOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AIMessageMatchOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'prompt',
    'aiOptions',
  };
}

