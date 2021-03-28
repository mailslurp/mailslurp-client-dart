part of mailslurp.api;

class InboxProjection {
  
  DateTime createdAt = null;
  
  String emailAddress = null;
  
  bool favourite = null;
  
  String id = null;
  
  String name = null;
  
  List<String> tags = [];
  
  bool teamAccess = null;
  InboxProjection();

  @override
  String toString() {
    return 'InboxProjection[createdAt=$createdAt, emailAddress=$emailAddress, favourite=$favourite, id=$id, name=$name, tags=$tags, teamAccess=$teamAccess, ]';
  }

  InboxProjection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    emailAddress = json['emailAddress'];
    favourite = json['favourite'];
    id = json['id'];
    name = json['name'];
    tags = (json['tags'] == null) ?
      null :
      (json['tags'] as List).cast<String>();
    teamAccess = json['teamAccess'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (emailAddress != null)
      json['emailAddress'] = emailAddress;
    if (favourite != null)
      json['favourite'] = favourite;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (tags != null)
      json['tags'] = tags;
    if (teamAccess != null)
      json['teamAccess'] = teamAccess;
    return json;
  }

  static List<InboxProjection> listFromJson(List<dynamic> json) {
    return json == null ? List<InboxProjection>() : json.map((value) => InboxProjection.fromJson(value)).toList();
  }

  static Map<String, InboxProjection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InboxProjection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InboxProjection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InboxProjection-objects as value to a dart map
  static Map<String, List<InboxProjection>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InboxProjection>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InboxProjection.listFromJson(value);
       });
     }
     return map;
  }
}

