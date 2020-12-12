part of mailslurp.api;

class EmailProjection {
  
  List<String> attachments = [];
  
  List<String> bcc = [];
  
  String bodyMD5Hash = null;
  
  List<String> cc = [];
  
  DateTime createdAt = null;
  
  String from = null;
  
  String id = null;
  
  String inboxId = null;
  
  bool read = null;
  
  String subject = null;
  
  List<String> to = [];
  EmailProjection();

  @override
  String toString() {
    return 'EmailProjection[attachments=$attachments, bcc=$bcc, bodyMD5Hash=$bodyMD5Hash, cc=$cc, createdAt=$createdAt, from=$from, id=$id, inboxId=$inboxId, read=$read, subject=$subject, to=$to, ]';
  }

  EmailProjection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    attachments = (json['attachments'] == null) ?
      null :
      (json['attachments'] as List).cast<String>();
    bcc = (json['bcc'] == null) ?
      null :
      (json['bcc'] as List).cast<String>();
    bodyMD5Hash = json['bodyMD5Hash'];
    cc = (json['cc'] == null) ?
      null :
      (json['cc'] as List).cast<String>();
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    from = json['from'];
    id = json['id'];
    inboxId = json['inboxId'];
    read = json['read'];
    subject = json['subject'];
    to = (json['to'] == null) ?
      null :
      (json['to'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (attachments != null)
      json['attachments'] = attachments;
    if (bcc != null)
      json['bcc'] = bcc;
    if (bodyMD5Hash != null)
      json['bodyMD5Hash'] = bodyMD5Hash;
    if (cc != null)
      json['cc'] = cc;
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (from != null)
      json['from'] = from;
    if (id != null)
      json['id'] = id;
    if (inboxId != null)
      json['inboxId'] = inboxId;
    if (read != null)
      json['read'] = read;
    if (subject != null)
      json['subject'] = subject;
    if (to != null)
      json['to'] = to;
    return json;
  }

  static List<EmailProjection> listFromJson(List<dynamic> json) {
    return json == null ? List<EmailProjection>() : json.map((value) => EmailProjection.fromJson(value)).toList();
  }

  static Map<String, EmailProjection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EmailProjection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EmailProjection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EmailProjection-objects as value to a dart map
  static Map<String, List<EmailProjection>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EmailProjection>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EmailProjection.listFromJson(value);
       });
     }
     return map;
  }
}

