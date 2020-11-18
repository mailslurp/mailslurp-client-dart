part of mailslurp.api;

class BasicAuthOptions {
  
  String username = null;
  
  String password = null;
  BasicAuthOptions();

  @override
  String toString() {
    return 'BasicAuthOptions[username=$username, password=$password, ]';
  }

  BasicAuthOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    username = json['username'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (username != null)
      json['username'] = username;
    if (password != null)
      json['password'] = password;
    return json;
  }

  static List<BasicAuthOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<BasicAuthOptions>() : json.map((value) => BasicAuthOptions.fromJson(value)).toList();
  }

  static Map<String, BasicAuthOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BasicAuthOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BasicAuthOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BasicAuthOptions-objects as value to a dart map
  static Map<String, List<BasicAuthOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<BasicAuthOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = BasicAuthOptions.listFromJson(value);
       });
     }
     return map;
  }
}

