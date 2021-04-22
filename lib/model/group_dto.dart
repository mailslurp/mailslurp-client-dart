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
    @required this.createdAt,
    this.description,
    @required this.id,
    @required this.name,
  });

  DateTime createdAt;

  String description;

  String id;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupDto &&
     other.createdAt == createdAt &&
     other.description == description &&
     other.id == id &&
     other.name == name;

  @override
  int get hashCode =>
    (createdAt == null ? 0 : createdAt.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'GroupDto[createdAt=$createdAt, description=$description, id=$id, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    if (description != null) {
      json[r'description'] = description;
    }
      json[r'id'] = id;
      json[r'name'] = name;
    return json;
  }

  /// Returns a new [GroupDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GroupDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GroupDto(
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        description: json[r'description'],
        id: json[r'id'],
        name: json[r'name'],
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

