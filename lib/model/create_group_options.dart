part of mailslurp.api;

class CreateGroupOptions {
  
  String name = null;
  
  String description = null;
  CreateGroupOptions();

  @override
  String toString() {
    return 'CreateGroupOptions[name=$name, description=$description, ]';
  }

  CreateGroupOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (description != null)
      json['description'] = description;
    return json;
  }

  static List<CreateGroupOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateGroupOptions>() : json.map((value) => CreateGroupOptions.fromJson(value)).toList();
  }

  static Map<String, CreateGroupOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateGroupOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateGroupOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateGroupOptions-objects as value to a dart map
  static Map<String, List<CreateGroupOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateGroupOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateGroupOptions.listFromJson(value);
       });
     }
     return map;
  }
}

