//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TemplateDto {
  /// Returns a new [TemplateDto] instance.
  TemplateDto({
    required this.id,
    required this.name,
    this.variables = const [],
    required this.content,
    required this.createdAt,
  });

  /// ID of template
  String id;

  /// Template name
  String name;

  /// Variables available in template that can be replaced with values
  List<TemplateVariable> variables;

  /// Content of the template
  String content;

  /// Created at time
  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TemplateDto &&
     other.id == id &&
     other.name == name &&
     other.variables == variables &&
     other.content == content &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (variables.hashCode) +
    (content.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'TemplateDto[id=$id, name=$name, variables=$variables, content=$content, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'variables'] = this.variables;
      json[r'content'] = this.content;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [TemplateDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TemplateDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TemplateDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TemplateDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TemplateDto(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        variables: TemplateVariable.listFromJson(json[r'variables'])!,
        content: mapValueOfType<String>(json, r'content')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<TemplateDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TemplateDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TemplateDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TemplateDto> mapFromJson(dynamic json) {
    final map = <String, TemplateDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TemplateDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TemplateDto-objects as value to a dart map
  static Map<String, List<TemplateDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TemplateDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TemplateDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'variables',
    'content',
    'createdAt',
  };
}

