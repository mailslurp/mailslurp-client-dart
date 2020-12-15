part of mailslurp.api;

class GroupDto {
  
  DateTime createdAt = null;
  
  String description = null;
  
  String id = null;
  
  String name = null;
  GroupDto();

  @override
  String toString() {
    return 'GroupDto[createdAt=$createdAt, description=$description, id=$id, name=$name, ]';
  }

  GroupDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    description = json['description'];
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<GroupDto> listFromJson(List<dynamic> json) {
    return json == null ? List<GroupDto>() : json.map((value) => GroupDto.fromJson(value)).toList();
  }

  static Map<String, GroupDto> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GroupDto>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GroupDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GroupDto-objects as value to a dart map
  static Map<String, List<GroupDto>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<GroupDto>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = GroupDto.listFromJson(value);
       });
     }
     return map;
  }
}

