part of mailslurp.api;

class WebhookProjection {
  
  DateTime createdAt = null;
  
  String id = null;
  
  String inboxId = null;
  
  String name = null;
  
  DateTime updatedAt = null;
  
  String url = null;
  WebhookProjection();

  @override
  String toString() {
    return 'WebhookProjection[createdAt=$createdAt, id=$id, inboxId=$inboxId, name=$name, updatedAt=$updatedAt, url=$url, ]';
  }

  WebhookProjection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    id = json['id'];
    inboxId = json['inboxId'];
    name = json['name'];
    updatedAt = (json['updatedAt'] == null) ?
      null :
      DateTime.parse(json['updatedAt']);
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (inboxId != null)
      json['inboxId'] = inboxId;
    if (name != null)
      json['name'] = name;
    if (updatedAt != null)
      json['updatedAt'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WebhookProjection> listFromJson(List<dynamic> json) {
    return json == null ? List<WebhookProjection>() : json.map((value) => WebhookProjection.fromJson(value)).toList();
  }

  static Map<String, WebhookProjection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebhookProjection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WebhookProjection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WebhookProjection-objects as value to a dart map
  static Map<String, List<WebhookProjection>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<WebhookProjection>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = WebhookProjection.listFromJson(value);
       });
     }
     return map;
  }
}

