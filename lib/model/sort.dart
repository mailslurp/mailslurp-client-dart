part of mailslurp.api;

class Sort {
  
  bool empty = null;
  
  bool sorted = null;
  
  bool unsorted = null;
  Sort();

  @override
  String toString() {
    return 'Sort[empty=$empty, sorted=$sorted, unsorted=$unsorted, ]';
  }

  Sort.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    empty = json['empty'];
    sorted = json['sorted'];
    unsorted = json['unsorted'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (empty != null)
      json['empty'] = empty;
    if (sorted != null)
      json['sorted'] = sorted;
    if (unsorted != null)
      json['unsorted'] = unsorted;
    return json;
  }

  static List<Sort> listFromJson(List<dynamic> json) {
    return json == null ? List<Sort>() : json.map((value) => Sort.fromJson(value)).toList();
  }

  static Map<String, Sort> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Sort>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Sort.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Sort-objects as value to a dart map
  static Map<String, List<Sort>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Sort>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Sort.listFromJson(value);
       });
     }
     return map;
  }
}

