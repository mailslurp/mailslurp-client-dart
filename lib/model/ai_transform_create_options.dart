//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AITransformCreateOptions {
  /// Returns a new [AITransformCreateOptions] instance.
  AITransformCreateOptions({
    this.name,
    this.conditions = const [],
    this.instructions = const [],
    this.outputSchema,
    this.outputSchemaId,
    this.extractPrompt,
  });

  String? name;

  List<String>? conditions;

  List<String>? instructions;

  StructuredOutputSchema? outputSchema;

  String? outputSchemaId;

  String? extractPrompt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AITransformCreateOptions &&
     other.name == name &&
     other.conditions == conditions &&
     other.instructions == instructions &&
     other.outputSchema == outputSchema &&
     other.outputSchemaId == outputSchemaId &&
     other.extractPrompt == extractPrompt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (conditions == null ? 0 : conditions!.hashCode) +
    (instructions == null ? 0 : instructions!.hashCode) +
    (outputSchema == null ? 0 : outputSchema!.hashCode) +
    (outputSchemaId == null ? 0 : outputSchemaId!.hashCode) +
    (extractPrompt == null ? 0 : extractPrompt!.hashCode);

  @override
  String toString() => 'AITransformCreateOptions[name=$name, conditions=$conditions, instructions=$instructions, outputSchema=$outputSchema, outputSchemaId=$outputSchemaId, extractPrompt=$extractPrompt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.conditions != null) {
      json[r'conditions'] = this.conditions;
    } else {
      json[r'conditions'] = null;
    }
    if (this.instructions != null) {
      json[r'instructions'] = this.instructions;
    } else {
      json[r'instructions'] = null;
    }
    if (this.outputSchema != null) {
      json[r'outputSchema'] = this.outputSchema;
    } else {
      json[r'outputSchema'] = null;
    }
    if (this.outputSchemaId != null) {
      json[r'outputSchemaId'] = this.outputSchemaId;
    } else {
      json[r'outputSchemaId'] = null;
    }
    if (this.extractPrompt != null) {
      json[r'extractPrompt'] = this.extractPrompt;
    } else {
      json[r'extractPrompt'] = null;
    }
    return json;
  }

  /// Returns a new [AITransformCreateOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AITransformCreateOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AITransformCreateOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AITransformCreateOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AITransformCreateOptions(
        name: mapValueOfType<String>(json, r'name'),
        conditions: json[r'conditions'] is List
            ? (json[r'conditions'] as List).cast<String>()
            : const [],
        instructions: json[r'instructions'] is List
            ? (json[r'instructions'] as List).cast<String>()
            : const [],
        outputSchema: StructuredOutputSchema.fromJson(json[r'outputSchema']),
        outputSchemaId: mapValueOfType<String>(json, r'outputSchemaId'),
        extractPrompt: mapValueOfType<String>(json, r'extractPrompt'),
      );
    }
    return null;
  }

  static List<AITransformCreateOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AITransformCreateOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AITransformCreateOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AITransformCreateOptions> mapFromJson(dynamic json) {
    final map = <String, AITransformCreateOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AITransformCreateOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AITransformCreateOptions-objects as value to a dart map
  static Map<String, List<AITransformCreateOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AITransformCreateOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AITransformCreateOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

