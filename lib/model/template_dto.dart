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
    @required this.content,
    @required this.createdAt,
    @required this.id,
    @required this.name,
    this.variables = const [],
  });

  String content;

  DateTime createdAt;

  String id;

  String name;

  List<TemplateVariable> variables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TemplateDto &&
     other.content == content &&
     other.createdAt == createdAt &&
     other.id == id &&
     other.name == name &&
     other.variables == variables;

  @override
  int get hashCode =>
    (content == null ? 0 : content.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (variables == null ? 0 : variables.hashCode);

  @override
  String toString() => 'TemplateDto[content=$content, createdAt=$createdAt, id=$id, name=$name, variables=$variables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'content'] = content;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'id'] = id;
      json[r'name'] = name;
      json[r'variables'] = variables;
    return json;
  }

  /// Returns a new [TemplateDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TemplateDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TemplateDto(
        content: json[r'content'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        id: json[r'id'],
        name: json[r'name'],
        variables: TemplateVariable.listFromJson(json[r'variables']),
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

