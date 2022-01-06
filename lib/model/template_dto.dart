//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TemplateDto {
  /// Returns a new [TemplateDto] instance.
  TemplateDto({
    this.id,
    this.name,
    this.variables = const [],
    this.content,
    this.createdAt,
  });

  String id;

  String name;

  List<TemplateVariable> variables;

  String content;

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
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (variables == null ? 0 : variables.hashCode) +
    (content == null ? 0 : content.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() => 'TemplateDto[id=$id, name=$name, variables=$variables, content=$content, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (variables != null) {
      json[r'variables'] = variables;
    }
    if (content != null) {
      json[r'content'] = content;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    return json;
  }

  /// Returns a new [TemplateDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TemplateDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TemplateDto(
        id: json[r'id'],
        name: json[r'name'],
        variables: TemplateVariable.listFromJson(json[r'variables']),
        content: json[r'content'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
    );

  static List<TemplateDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TemplateDto>[]
      : json.map((v) => TemplateDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, TemplateDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TemplateDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TemplateDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TemplateDto-objects as value to a dart map
  static Map<String, List<TemplateDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TemplateDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TemplateDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

