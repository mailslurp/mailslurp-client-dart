part of mailslurp.api;

class GroupProjection {
  
  DateTime createdAt = null;
  
  String description = null;
  
  String id = null;
  
  String name = null;
  GroupProjection();

  @override
  String toString() {
    return 'GroupProjection[createdAt=$createdAt, description=$description, id=$id, name=$name, ]';
  }

  GroupProjection.fromJson(Map<String, dynamic> json) {
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

  static List<GroupProjection> listFromJson(List<dynamic> json) {
    return json == null ? List<GroupProjection>() : json.map((value) => GroupProjection.fromJson(value)).toList();
  }

  static Map<String, GroupProjection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GroupProjection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GroupProjection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GroupProjection-objects as value to a dart map
  static Map<String, List<GroupProjection>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<GroupProjection>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = GroupProjection.listFromJson(value);
       });
     }
     return map;
  }
}

