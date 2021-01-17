part of mailslurp.api;

class TemplateDto {
  
  String content = null;
  
  DateTime createdAt = null;
  
  String id = null;
  
  String name = null;
  
  List<TemplateVariable> variables = [];
  TemplateDto();

  @override
  String toString() {
    return 'TemplateDto[content=$content, createdAt=$createdAt, id=$id, name=$name, variables=$variables, ]';
  }

  TemplateDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = json['content'];
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    id = json['id'];
    name = json['name'];
    variables = (json['variables'] == null) ?
      null :
      TemplateVariable.listFromJson(json['variables']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (content != null)
      json['content'] = content;
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (variables != null)
      json['variables'] = variables;
    return json;
  }

  static List<TemplateDto> listFromJson(List<dynamic> json) {
    return json == null ? List<TemplateDto>() : json.map((value) => TemplateDto.fromJson(value)).toList();
  }

  static Map<String, TemplateDto> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TemplateDto>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TemplateDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TemplateDto-objects as value to a dart map
  static Map<String, List<TemplateDto>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TemplateDto>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TemplateDto.listFromJson(value);
       });
     }
     return map;
  }
}

