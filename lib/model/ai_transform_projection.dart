//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AITransformProjection {
  /// Returns a new [AITransformProjection] instance.
  AITransformProjection({
    required this.createdAt,
    this.conditions = const [],
    this.instructions = const [],
    this.outputSchema,
    this.name,
    required this.id,
  });

  DateTime createdAt;

  List<String> conditions;

  List<String> instructions;

  StructuredOutputSchema? outputSchema;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AITransformProjection &&
     other.createdAt == createdAt &&
     other.conditions == conditions &&
     other.instructions == instructions &&
     other.outputSchema == outputSchema &&
     other.name == name &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt.hashCode) +
    (conditions.hashCode) +
    (instructions.hashCode) +
    (outputSchema == null ? 0 : outputSchema!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'AITransformProjection[createdAt=$createdAt, conditions=$conditions, instructions=$instructions, outputSchema=$outputSchema, name=$name, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'conditions'] = this.conditions;
      json[r'instructions'] = this.instructions;
    if (this.outputSchema != null) {
      json[r'outputSchema'] = this.outputSchema;
    } else {
      json[r'outputSchema'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [AITransformProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AITransformProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AITransformProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AITransformProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AITransformProjection(
        createdAt: mapDateTime(json, r'createdAt', '')!,
        conditions: json[r'conditions'] is List
            ? (json[r'conditions'] as List).cast<String>()
            : const [],
        instructions: json[r'instructions'] is List
            ? (json[r'instructions'] as List).cast<String>()
            : const [],
        outputSchema: StructuredOutputSchema.fromJson(json[r'outputSchema']),
        name: mapValueOfType<String>(json, r'name'),
        id: mapValueOfType<String>(json, r'id')!,
      );
    }
    return null;
  }

  static List<AITransformProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AITransformProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AITransformProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AITransformProjection> mapFromJson(dynamic json) {
    final map = <String, AITransformProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AITransformProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AITransformProjection-objects as value to a dart map
  static Map<String, List<AITransformProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AITransformProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AITransformProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'createdAt',
    'id',
  };
}

