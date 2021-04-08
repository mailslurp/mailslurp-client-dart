part of mailslurp.api;

class ForwardEmailOptions {
  /* Optional bcc recipients */
  List<String> bcc = [];
  /* Optional cc recipients */
  List<String> cc = [];
  /* Subject for forwarded email */
  String subject = null;
  /* To recipients for forwarded email */
  List<String> to = [];
  ForwardEmailOptions();

  @override
  String toString() {
    return 'ForwardEmailOptions[bcc=$bcc, cc=$cc, subject=$subject, to=$to, ]';
  }

  ForwardEmailOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    bcc = (json['bcc'] == null) ?
      null :
      (json['bcc'] as List).cast<String>();
    cc = (json['cc'] == null) ?
      null :
      (json['cc'] as List).cast<String>();
    subject = json['subject'];
    to = (json['to'] == null) ?
      null :
      (json['to'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (bcc != null)
      json['bcc'] = bcc;
    if (cc != null)
      json['cc'] = cc;
    if (subject != null)
      json['subject'] = subject;
    if (to != null)
      json['to'] = to;
    return json;
  }

  static List<ForwardEmailOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<ForwardEmailOptions>() : json.map((value) => ForwardEmailOptions.fromJson(value)).toList();
  }

  static Map<String, ForwardEmailOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ForwardEmailOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ForwardEmailOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ForwardEmailOptions-objects as value to a dart map
  static Map<String, List<ForwardEmailOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ForwardEmailOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ForwardEmailOptions.listFromJson(value);
       });
     }
     return map;
  }
}

