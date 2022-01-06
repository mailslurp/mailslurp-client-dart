//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TemplateProjection {
  /// Returns a new [TemplateProjection] instance.
  TemplateProjection({
    @required this.name,
    @required this.id,
    @required this.createdAt,
    this.variables = const {},
    @required this.updatedAt,
  });

  String name;

  String id;

  DateTime createdAt;

  Set<String> variables;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TemplateProjection &&
     other.name == name &&
     other.id == id &&
     other.createdAt == createdAt &&
     other.variables == variables &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (variables == null ? 0 : variables.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'TemplateProjection[name=$name, id=$id, createdAt=$createdAt, variables=$variables, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = name;
      json[r'id'] = id;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'variables'] = variables;
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [TemplateProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TemplateProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TemplateProjection(
        name: json[r'name'],
        id: json[r'id'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        variables: json[r'variables'] == null
          ? null
          : (json[r'variables'] as Set).cast<String>(),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
    );

  static List<TemplateProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TemplateProjection>[]
      : json.map((v) => TemplateProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, TemplateProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TemplateProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TemplateProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TemplateProjection-objects as value to a dart map
  static Map<String, List<TemplateProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TemplateProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TemplateProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

