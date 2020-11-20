part of mailslurp.api;

class TemplateProjection {
  
  DateTime createdAt = null;
  
  String id = null;
  
  String name = null;
  
  DateTime updatedAt = null;
  
  List<String> variables = [];
  TemplateProjection();

  @override
  String toString() {
    return 'TemplateProjection[createdAt=$createdAt, id=$id, name=$name, updatedAt=$updatedAt, variables=$variables, ]';
  }

  TemplateProjection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    id = json['id'];
    name = json['name'];
    updatedAt = (json['updatedAt'] == null) ?
      null :
      DateTime.parse(json['updatedAt']);
    variables = (json['variables'] == null) ?
      null :
      (json['variables'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (updatedAt != null)
      json['updatedAt'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (variables != null)
      json['variables'] = variables;
    return json;
  }

  static List<TemplateProjection> listFromJson(List<dynamic> json) {
    return json == null ? List<TemplateProjection>() : json.map((value) => TemplateProjection.fromJson(value)).toList();
  }

  static Map<String, TemplateProjection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TemplateProjection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TemplateProjection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TemplateProjection-objects as value to a dart map
  static Map<String, List<TemplateProjection>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TemplateProjection>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TemplateProjection.listFromJson(value);
       });
     }
     return map;
  }
}

