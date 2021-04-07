part of mailslurp.api;

class ThreadProjection {
  
  String aliasId = null;
  
  List<String> bcc = [];
  
  List<String> cc = [];
  
  DateTime createdAt = null;
  
  String id = null;
  
  String inboxId = null;
  
  String name = null;
  
  String subject = null;
  
  List<String> to = [];
  
  DateTime updatedAt = null;
  
  String userId = null;
  ThreadProjection();

  @override
  String toString() {
    return 'ThreadProjection[aliasId=$aliasId, bcc=$bcc, cc=$cc, createdAt=$createdAt, id=$id, inboxId=$inboxId, name=$name, subject=$subject, to=$to, updatedAt=$updatedAt, userId=$userId, ]';
  }

  ThreadProjection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    aliasId = json['aliasId'];
    bcc = (json['bcc'] == null) ?
      null :
      (json['bcc'] as List).cast<String>();
    cc = (json['cc'] == null) ?
      null :
      (json['cc'] as List).cast<String>();
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    id = json['id'];
    inboxId = json['inboxId'];
    name = json['name'];
    subject = json['subject'];
    to = (json['to'] == null) ?
      null :
      (json['to'] as List).cast<String>();
    updatedAt = (json['updatedAt'] == null) ?
      null :
      DateTime.parse(json['updatedAt']);
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (aliasId != null)
      json['aliasId'] = aliasId;
    if (bcc != null)
      json['bcc'] = bcc;
    if (cc != null)
      json['cc'] = cc;
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (inboxId != null)
      json['inboxId'] = inboxId;
    if (name != null)
      json['name'] = name;
    if (subject != null)
      json['subject'] = subject;
    if (to != null)
      json['to'] = to;
    if (updatedAt != null)
      json['updatedAt'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (userId != null)
      json['userId'] = userId;
    return json;
  }

  static List<ThreadProjection> listFromJson(List<dynamic> json) {
    return json == null ? List<ThreadProjection>() : json.map((value) => ThreadProjection.fromJson(value)).toList();
  }

  static Map<String, ThreadProjection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ThreadProjection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ThreadProjection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ThreadProjection-objects as value to a dart map
  static Map<String, List<ThreadProjection>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ThreadProjection>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ThreadProjection.listFromJson(value);
       });
     }
     return map;
  }
}

