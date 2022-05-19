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
    @required this.updatedAt,
    @required this.createdAt,
    this.variables = const [],
  });

  String name;

  String id;

  DateTime updatedAt;

  DateTime createdAt;

  List<String> variables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TemplateProjection &&
     other.name == name &&
     other.id == id &&
     other.updatedAt == updatedAt &&
     other.createdAt == createdAt &&
     other.variables == variables;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (variables == null ? 0 : variables.hashCode);

  @override
  String toString() => 'TemplateProjection[name=$name, id=$id, updatedAt=$updatedAt, createdAt=$createdAt, variables=$variables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = name;
      json[r'id'] = id;
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'variables'] = variables;
    return json;
  }

  /// Returns a new [TemplateProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TemplateProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TemplateProjection(
        name: json[r'name'],
        id: json[r'id'],
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        variables: json[r'variables'] == null
          ? null
          : (json[r'variables'] as List).cast<String>(),
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

