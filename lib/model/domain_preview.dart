part of mailslurp.api;

class DomainPreview {
  
  String catchAllInboxId = null;
  
  DateTime createdAt = null;
  
  String domain = null;
  
  String id = null;
  DomainPreview();

  @override
  String toString() {
    return 'DomainPreview[catchAllInboxId=$catchAllInboxId, createdAt=$createdAt, domain=$domain, id=$id, ]';
  }

  DomainPreview.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    catchAllInboxId = json['catchAllInboxId'];
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    domain = json['domain'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (catchAllInboxId != null)
      json['catchAllInboxId'] = catchAllInboxId;
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (domain != null)
      json['domain'] = domain;
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<DomainPreview> listFromJson(List<dynamic> json) {
    return json == null ? List<DomainPreview>() : json.map((value) => DomainPreview.fromJson(value)).toList();
  }

  static Map<String, DomainPreview> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DomainPreview>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DomainPreview.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DomainPreview-objects as value to a dart map
  static Map<String, List<DomainPreview>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DomainPreview>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DomainPreview.listFromJson(value);
       });
     }
     return map;
  }
}

