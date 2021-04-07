part of mailslurp.api;

class EmailTextLinesResult {
  
  String body = null;
  
  List<String> lines = [];
  EmailTextLinesResult();

  @override
  String toString() {
    return 'EmailTextLinesResult[body=$body, lines=$lines, ]';
  }

  EmailTextLinesResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    body = json['body'];
    lines = (json['lines'] == null) ?
      null :
      (json['lines'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (body != null)
      json['body'] = body;
    if (lines != null)
      json['lines'] = lines;
    return json;
  }

  static List<EmailTextLinesResult> listFromJson(List<dynamic> json) {
    return json == null ? List<EmailTextLinesResult>() : json.map((value) => EmailTextLinesResult.fromJson(value)).toList();
  }

  static Map<String, EmailTextLinesResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EmailTextLinesResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EmailTextLinesResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EmailTextLinesResult-objects as value to a dart map
  static Map<String, List<EmailTextLinesResult>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EmailTextLinesResult>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EmailTextLinesResult.listFromJson(value);
       });
     }
     return map;
  }
}

