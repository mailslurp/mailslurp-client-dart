part of mailslurp.api;

class SentEmailProjection {
  
  List<String> attachments = [];
  
  List<String> bcc = [];
  
  String bodyMD5Hash = null;
  
  List<String> cc = [];
  
  DateTime createdAt = null;
  
  String from = null;
  
  String id = null;
  
  String inboxId = null;
  
  String subject = null;
  
  List<String> to = [];
  
  String userId = null;
  SentEmailProjection();

  @override
  String toString() {
    return 'SentEmailProjection[attachments=$attachments, bcc=$bcc, bodyMD5Hash=$bodyMD5Hash, cc=$cc, createdAt=$createdAt, from=$from, id=$id, inboxId=$inboxId, subject=$subject, to=$to, userId=$userId, ]';
  }

  SentEmailProjection.fromJson(Map<String, dynamic> json) {
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
    subject = json['subject'];
    to = (json['to'] == null) ?
      null :
      (json['to'] as List).cast<String>();
    userId = json['userId'];
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
    if (subject != null)
      json['subject'] = subject;
    if (to != null)
      json['to'] = to;
    if (userId != null)
      json['userId'] = userId;
    return json;
  }

  static List<SentEmailProjection> listFromJson(List<dynamic> json) {
    return json == null ? List<SentEmailProjection>() : json.map((value) => SentEmailProjection.fromJson(value)).toList();
  }

  static Map<String, SentEmailProjection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SentEmailProjection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SentEmailProjection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SentEmailProjection-objects as value to a dart map
  static Map<String, List<SentEmailProjection>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SentEmailProjection>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SentEmailProjection.listFromJson(value);
       });
     }
     return map;
  }
}

