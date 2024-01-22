//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TemplateProjection {
  /// Returns a new [TemplateProjection] instance.
  TemplateProjection({
    this.variables = const [],
    required this.createdAt,
    required this.updatedAt,
    required this.name,
    required this.id,
  });

  List<String> variables;

  DateTime createdAt;

  DateTime updatedAt;

  String name;

  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TemplateProjection &&
     other.variables == variables &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.name == name &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (variables.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (name.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'TemplateProjection[variables=$variables, createdAt=$createdAt, updatedAt=$updatedAt, name=$name, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'variables'] = this.variables;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
      json[r'name'] = this.name;
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [TemplateProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TemplateProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TemplateProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TemplateProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TemplateProjection(
        variables: json[r'variables'] is List
            ? (json[r'variables'] as List).cast<String>()
            : const [],
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        name: mapValueOfType<String>(json, r'name')!,
        id: mapValueOfType<String>(json, r'id')!,
      );
    }
    return null;
  }

  static List<TemplateProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TemplateProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TemplateProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TemplateProjection> mapFromJson(dynamic json) {
    final map = <String, TemplateProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TemplateProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TemplateProjection-objects as value to a dart map
  static Map<String, List<TemplateProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TemplateProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TemplateProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'variables',
    'createdAt',
    'updatedAt',
    'name',
    'id',
  };
}

