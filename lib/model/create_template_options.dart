part of mailslurp.api;

class CreateTemplateOptions {
  
  String name = null;
  
  String content = null;
  CreateTemplateOptions();

  @override
  String toString() {
    return 'CreateTemplateOptions[name=$name, content=$content, ]';
  }

  CreateTemplateOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (content != null)
      json['content'] = content;
    return json;
  }

  static List<CreateTemplateOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateTemplateOptions>() : json.map((value) => CreateTemplateOptions.fromJson(value)).toList();
  }

  static Map<String, CreateTemplateOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateTemplateOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateTemplateOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateTemplateOptions-objects as value to a dart map
  static Map<String, List<CreateTemplateOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateTemplateOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateTemplateOptions.listFromJson(value);
       });
     }
     return map;
  }
}

