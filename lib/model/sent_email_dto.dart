part of mailslurp.api;

class SentEmailDto {
  /* Array of IDs of attachments that were sent with this email */
  List<String> attachments = [];
  
  List<String> bcc = [];
  
  String body = null;
  /* MD5 Hash */
  String bodyMD5Hash = null;
  
  List<String> cc = [];
  
  String charset = null;
  
  String from = null;
  /* ID of sent email */
  String id = null;
  /* Inbox ID email was sent from */
  String inboxId = null;
  
  bool isHTML = null;
  
  String replyTo = null;
  
  DateTime sentAt = null;
  
  String subject = null;
  /* Recipients email was sent to */
  List<String> to = [];
  /* User ID */
  String userId = null;
  SentEmailDto();

  @override
  String toString() {
    return 'SentEmailDto[attachments=$attachments, bcc=$bcc, body=$body, bodyMD5Hash=$bodyMD5Hash, cc=$cc, charset=$charset, from=$from, id=$id, inboxId=$inboxId, isHTML=$isHTML, replyTo=$replyTo, sentAt=$sentAt, subject=$subject, to=$to, userId=$userId, ]';
  }

  SentEmailDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    attachments = (json['attachments'] == null) ?
      null :
      (json['attachments'] as List).cast<String>();
    bcc = (json['bcc'] == null) ?
      null :
      (json['bcc'] as List).cast<String>();
    body = json['body'];
    bodyMD5Hash = json['bodyMD5Hash'];
    cc = (json['cc'] == null) ?
      null :
      (json['cc'] as List).cast<String>();
    charset = json['charset'];
    from = json['from'];
    id = json['id'];
    inboxId = json['inboxId'];
    isHTML = json['isHTML'];
    replyTo = json['replyTo'];
    sentAt = (json['sentAt'] == null) ?
      null :
      DateTime.parse(json['sentAt']);
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
    if (body != null)
      json['body'] = body;
    if (bodyMD5Hash != null)
      json['bodyMD5Hash'] = bodyMD5Hash;
    if (cc != null)
      json['cc'] = cc;
    if (charset != null)
      json['charset'] = charset;
    if (from != null)
      json['from'] = from;
    if (id != null)
      json['id'] = id;
    if (inboxId != null)
      json['inboxId'] = inboxId;
    if (isHTML != null)
      json['isHTML'] = isHTML;
    if (replyTo != null)
      json['replyTo'] = replyTo;
    if (sentAt != null)
      json['sentAt'] = sentAt == null ? null : sentAt.toUtc().toIso8601String();
    if (subject != null)
      json['subject'] = subject;
    if (to != null)
      json['to'] = to;
    if (userId != null)
      json['userId'] = userId;
    return json;
  }

  static List<SentEmailDto> listFromJson(List<dynamic> json) {
    return json == null ? List<SentEmailDto>() : json.map((value) => SentEmailDto.fromJson(value)).toList();
  }

  static Map<String, SentEmailDto> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SentEmailDto>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SentEmailDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SentEmailDto-objects as value to a dart map
  static Map<String, List<SentEmailDto>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SentEmailDto>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SentEmailDto.listFromJson(value);
       });
     }
     return map;
  }
}

