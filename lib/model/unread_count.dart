part of mailslurp.api;

class UnreadCount {
  
  int count = null;
  UnreadCount();

  @override
  String toString() {
    return 'UnreadCount[count=$count, ]';
  }

  UnreadCount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (count != null)
      json['count'] = count;
    return json;
  }

  static List<UnreadCount> listFromJson(List<dynamic> json) {
    return json == null ? List<UnreadCount>() : json.map((value) => UnreadCount.fromJson(value)).toList();
  }

  static Map<String, UnreadCount> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UnreadCount>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UnreadCount.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UnreadCount-objects as value to a dart map
  static Map<String, List<UnreadCount>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<UnreadCount>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = UnreadCount.listFromJson(value);
       });
     }
     return map;
  }
}

