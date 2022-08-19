//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GroupDto {
  /// Returns a new [GroupDto] instance.
  GroupDto({
    @required this.id,
    @required this.name,
    this.description,
    @required this.createdAt,
  });

  String id;

  String name;

  String description;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupDto &&
     other.id == id &&
     other.name == name &&
     other.description == description &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() => 'GroupDto[id=$id, name=$name, description=$description, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'name'] = name;
    if (description != null) {
      json[r'description'] = description;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [GroupDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GroupDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GroupDto(
        id: json[r'id'],
        name: json[r'name'],
        description: json[r'description'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
    );

  static List<GroupDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GroupDto>[]
      : json.map((v) => GroupDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, GroupDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GroupDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = GroupDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of GroupDto-objects as value to a dart map
  static Map<String, List<GroupDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GroupDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = GroupDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

