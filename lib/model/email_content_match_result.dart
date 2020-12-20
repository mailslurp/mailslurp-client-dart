part of mailslurp.api;

class EmailContentMatchResult {
  
  List<String> matches = [];
  
  String pattern = null;
  EmailContentMatchResult();

  @override
  String toString() {
    return 'EmailContentMatchResult[matches=$matches, pattern=$pattern, ]';
  }

  EmailContentMatchResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    matches = (json['matches'] == null) ?
      null :
      (json['matches'] as List).cast<String>();
    pattern = json['pattern'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (matches != null)
      json['matches'] = matches;
    if (pattern != null)
      json['pattern'] = pattern;
    return json;
  }

  static List<EmailContentMatchResult> listFromJson(List<dynamic> json) {
    return json == null ? List<EmailContentMatchResult>() : json.map((value) => EmailContentMatchResult.fromJson(value)).toList();
  }

  static Map<String, EmailContentMatchResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EmailContentMatchResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EmailContentMatchResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EmailContentMatchResult-objects as value to a dart map
  static Map<String, List<EmailContentMatchResult>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EmailContentMatchResult>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EmailContentMatchResult.listFromJson(value);
       });
     }
     return map;
  }
}

