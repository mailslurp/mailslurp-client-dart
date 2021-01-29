part of mailslurp.api;

class UpdateAliasOptions {
  /* Optional name for alias */
  String name = null;
  UpdateAliasOptions();

  @override
  String toString() {
    return 'UpdateAliasOptions[name=$name, ]';
  }

  UpdateAliasOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<UpdateAliasOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<UpdateAliasOptions>() : json.map((value) => UpdateAliasOptions.fromJson(value)).toList();
  }

  static Map<String, UpdateAliasOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UpdateAliasOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UpdateAliasOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UpdateAliasOptions-objects as value to a dart map
  static Map<String, List<UpdateAliasOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<UpdateAliasOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = UpdateAliasOptions.listFromJson(value);
       });
     }
     return map;
  }
}

