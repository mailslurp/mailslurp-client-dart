//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AITransformDto {
  /// Returns a new [AITransformDto] instance.
  AITransformDto({
    required this.id,
    this.name,
    this.conditions = const [],
    this.instructions = const [],
    this.outputSchema,
    required this.createdAt,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  List<String> conditions;

  List<String> instructions;

  StructuredOutputSchema? outputSchema;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AITransformDto &&
     other.id == id &&
     other.name == name &&
     other.conditions == conditions &&
     other.instructions == instructions &&
     other.outputSchema == outputSchema &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (conditions.hashCode) +
    (instructions.hashCode) +
    (outputSchema == null ? 0 : outputSchema!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'AITransformDto[id=$id, name=$name, conditions=$conditions, instructions=$instructions, outputSchema=$outputSchema, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
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
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [AITransformDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AITransformDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AITransformDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AITransformDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AITransformDto(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name'),
        conditions: json[r'conditions'] is List
            ? (json[r'conditions'] as List).cast<String>()
            : const [],
        instructions: json[r'instructions'] is List
            ? (json[r'instructions'] as List).cast<String>()
            : const [],
        outputSchema: StructuredOutputSchema.fromJson(json[r'outputSchema']),
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<AITransformDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AITransformDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AITransformDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AITransformDto> mapFromJson(dynamic json) {
    final map = <String, AITransformDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AITransformDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AITransformDto-objects as value to a dart map
  static Map<String, List<AITransformDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AITransformDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AITransformDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'createdAt',
  };
}

