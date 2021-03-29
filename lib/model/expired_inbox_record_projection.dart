part of mailslurp.api;

class ExpiredInboxRecordProjection {
  
  DateTime createdAt = null;
  
  String emailAddress = null;
  
  String id = null;
  
  String userId = null;
  ExpiredInboxRecordProjection();

  @override
  String toString() {
    return 'ExpiredInboxRecordProjection[createdAt=$createdAt, emailAddress=$emailAddress, id=$id, userId=$userId, ]';
  }

  ExpiredInboxRecordProjection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    emailAddress = json['emailAddress'];
    id = json['id'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (emailAddress != null)
      json['emailAddress'] = emailAddress;
    if (id != null)
      json['id'] = id;
    if (userId != null)
      json['userId'] = userId;
    return json;
  }

  static List<ExpiredInboxRecordProjection> listFromJson(List<dynamic> json) {
    return json == null ? List<ExpiredInboxRecordProjection>() : json.map((value) => ExpiredInboxRecordProjection.fromJson(value)).toList();
  }

  static Map<String, ExpiredInboxRecordProjection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExpiredInboxRecordProjection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExpiredInboxRecordProjection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ExpiredInboxRecordProjection-objects as value to a dart map
  static Map<String, List<ExpiredInboxRecordProjection>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ExpiredInboxRecordProjection>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ExpiredInboxRecordProjection.listFromJson(value);
       });
     }
     return map;
  }
}

