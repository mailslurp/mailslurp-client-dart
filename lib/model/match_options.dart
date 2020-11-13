part of mailslurp.api;

class MatchOptions {
  /* 1 or more match options. Options are additive so if one does not match the email is excluded from results */
  List<MatchOption> matches = [];
  MatchOptions();

  @override
  String toString() {
    return 'MatchOptions[matches=$matches, ]';
  }

  MatchOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    matches = (json['matches'] == null) ?
      null :
      MatchOption.listFromJson(json['matches']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (matches != null)
      json['matches'] = matches;
    return json;
  }

  static List<MatchOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<MatchOptions>() : json.map((value) => MatchOptions.fromJson(value)).toList();
  }

  static Map<String, MatchOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MatchOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MatchOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MatchOptions-objects as value to a dart map
  static Map<String, List<MatchOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<MatchOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = MatchOptions.listFromJson(value);
       });
     }
     return map;
  }
}

