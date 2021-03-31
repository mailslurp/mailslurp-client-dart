part of mailslurp.api;

class Alias {
  
  DateTime createdAt = null;
  
  String emailAddress = null;
  
  String id = null;
  
  String inboxId = null;
  
  String name = null;
  
  DateTime updatedAt = null;
  
  bool useThreads = null;
  
  String userId = null;
  Alias();

  @override
  String toString() {
    return 'Alias[createdAt=$createdAt, emailAddress=$emailAddress, id=$id, inboxId=$inboxId, name=$name, updatedAt=$updatedAt, useThreads=$useThreads, userId=$userId, ]';
  }

  Alias.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    emailAddress = json['emailAddress'];
    id = json['id'];
    inboxId = json['inboxId'];
    name = json['name'];
    updatedAt = (json['updatedAt'] == null) ?
      null :
      DateTime.parse(json['updatedAt']);
    useThreads = json['useThreads'];
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
    if (inboxId != null)
      json['inboxId'] = inboxId;
    if (name != null)
      json['name'] = name;
    if (updatedAt != null)
      json['updatedAt'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (useThreads != null)
      json['useThreads'] = useThreads;
    if (userId != null)
      json['userId'] = userId;
    return json;
  }

  static List<Alias> listFromJson(List<dynamic> json) {
    return json == null ? List<Alias>() : json.map((value) => Alias.fromJson(value)).toList();
  }

  static Map<String, Alias> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Alias>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Alias.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Alias-objects as value to a dart map
  static Map<String, List<Alias>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Alias>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Alias.listFromJson(value);
       });
     }
     return map;
  }
}

