part of mailslurp.api;

class SimpleSendEmailOptions {
  /* Body of the email message. Supports HTML */
  String body = null;
  /* ID of inbox to send from. If null an inbox will be created for sending */
  String senderId = null;
  /* Subject line of the email */
  String subject = null;
  /* Email address to send to */
  String to = null;
  SimpleSendEmailOptions();

  @override
  String toString() {
    return 'SimpleSendEmailOptions[body=$body, senderId=$senderId, subject=$subject, to=$to, ]';
  }

  SimpleSendEmailOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    body = json['body'];
    senderId = json['senderId'];
    subject = json['subject'];
    to = json['to'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (body != null)
      json['body'] = body;
    if (senderId != null)
      json['senderId'] = senderId;
    if (subject != null)
      json['subject'] = subject;
    if (to != null)
      json['to'] = to;
    return json;
  }

  static List<SimpleSendEmailOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<SimpleSendEmailOptions>() : json.map((value) => SimpleSendEmailOptions.fromJson(value)).toList();
  }

  static Map<String, SimpleSendEmailOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SimpleSendEmailOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SimpleSendEmailOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SimpleSendEmailOptions-objects as value to a dart map
  static Map<String, List<SimpleSendEmailOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SimpleSendEmailOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SimpleSendEmailOptions.listFromJson(value);
       });
     }
     return map;
  }
}

