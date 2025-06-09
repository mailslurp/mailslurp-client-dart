//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AITranformCreateOptions {
  /// Returns a new [AITranformCreateOptions] instance.
  AITranformCreateOptions({
    this.name,
    this.conditions = const [],
    this.instructions = const [],
    this.outputSchema,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  List<String> conditions;

  List<String> instructions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StructuredOutputSchema? outputSchema;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AITranformCreateOptions &&
     other.name == name &&
     other.conditions == conditions &&
     other.instructions == instructions &&
     other.outputSchema == outputSchema;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (conditions.hashCode) +
    (instructions.hashCode) +
    (outputSchema == null ? 0 : outputSchema!.hashCode);

  @override
  String toString() => 'AITranformCreateOptions[name=$name, conditions=$conditions, instructions=$instructions, outputSchema=$outputSchema]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'conditions'] = this.conditions;
      json[r'instructions'] = this.instructions;
    if (this.outputSchema != null) {
      json[r'outputSchema'] = this.outputSchema;
    } else {
      json[r'outputSchema'] = null;
    }
    return json;
  }

  /// Returns a new [AITranformCreateOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AITranformCreateOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AITranformCreateOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AITranformCreateOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AITranformCreateOptions(
        name: mapValueOfType<String>(json, r'name'),
        conditions: json[r'conditions'] is List
            ? (json[r'conditions'] as List).cast<String>()
            : const [],
        instructions: json[r'instructions'] is List
            ? (json[r'instructions'] as List).cast<String>()
            : const [],
        outputSchema: StructuredOutputSchema.fromJson(json[r'outputSchema']),
      );
    }
    return null;
  }

  static List<AITranformCreateOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AITranformCreateOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AITranformCreateOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AITranformCreateOptions> mapFromJson(dynamic json) {
    final map = <String, AITranformCreateOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AITranformCreateOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AITranformCreateOptions-objects as value to a dart map
  static Map<String, List<AITranformCreateOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AITranformCreateOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AITranformCreateOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

