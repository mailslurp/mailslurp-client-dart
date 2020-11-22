part of mailslurp.api;

class SentEmail {
  
  List<String> attachments = [];
  
  List<String> bcc = [];
  
  String bodyMD5Hash = null;
  
  String bodyS3Key = null;
  
  List<String> cc = [];
  
  String charset = null;
  
  DateTime createdAt = null;
  
  String from = null;
  
  String id = null;
  
  String inboxId = null;
  
  bool isHTML = null;
  
  String subject = null;
  
  List<String> to = [];
  
  DateTime updatedAt = null;
  
  String userId = null;
  SentEmail();

  @override
  String toString() {
    return 'SentEmail[attachments=$attachments, bcc=$bcc, bodyMD5Hash=$bodyMD5Hash, bodyS3Key=$bodyS3Key, cc=$cc, charset=$charset, createdAt=$createdAt, from=$from, id=$id, inboxId=$inboxId, isHTML=$isHTML, subject=$subject, to=$to, updatedAt=$updatedAt, userId=$userId, ]';
  }

  SentEmail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    attachments = (json['attachments'] == null) ?
      null :
      (json['attachments'] as List).cast<String>();
    bcc = (json['bcc'] == null) ?
      null :
      (json['bcc'] as List).cast<String>();
    bodyMD5Hash = json['bodyMD5Hash'];
    bodyS3Key = json['bodyS3Key'];
    cc = (json['cc'] == null) ?
      null :
      (json['cc'] as List).cast<String>();
    charset = json['charset'];
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    from = json['from'];
    id = json['id'];
    inboxId = json['inboxId'];
    isHTML = json['isHTML'];
    subject = json['subject'];
    to = (json['to'] == null) ?
      null :
      (json['to'] as List).cast<String>();
    updatedAt = (json['updatedAt'] == null) ?
      null :
      DateTime.parse(json['updatedAt']);
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
    if (bodyS3Key != null)
      json['bodyS3Key'] = bodyS3Key;
    if (cc != null)
      json['cc'] = cc;
    if (charset != null)
      json['charset'] = charset;
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (from != null)
      json['from'] = from;
    if (id != null)
      json['id'] = id;
    if (inboxId != null)
      json['inboxId'] = inboxId;
    if (isHTML != null)
      json['isHTML'] = isHTML;
    if (subject != null)
      json['subject'] = subject;
    if (to != null)
      json['to'] = to;
    if (updatedAt != null)
      json['updatedAt'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (userId != null)
      json['userId'] = userId;
    return json;
  }

  static List<SentEmail> listFromJson(List<dynamic> json) {
    return json == null ? List<SentEmail>() : json.map((value) => SentEmail.fromJson(value)).toList();
  }

  static Map<String, SentEmail> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SentEmail>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SentEmail.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SentEmail-objects as value to a dart map
  static Map<String, List<SentEmail>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SentEmail>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SentEmail.listFromJson(value);
       });
     }
     return map;
  }
}

