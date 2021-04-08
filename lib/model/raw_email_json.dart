part of mailslurp.api;

class RawEmailJson {
  
  String content = null;
  RawEmailJson();

  @override
  String toString() {
    return 'RawEmailJson[content=$content, ]';
  }

  RawEmailJson.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (content != null)
      json['content'] = content;
    return json;
  }

  static List<RawEmailJson> listFromJson(List<dynamic> json) {
    return json == null ? List<RawEmailJson>() : json.map((value) => RawEmailJson.fromJson(value)).toList();
  }

  static Map<String, RawEmailJson> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RawEmailJson>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RawEmailJson.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RawEmailJson-objects as value to a dart map
  static Map<String, List<RawEmailJson>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RawEmailJson>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RawEmailJson.listFromJson(value);
       });
     }
     return map;
  }
}

