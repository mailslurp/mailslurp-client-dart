part of mailslurp.api;

class Email {
  
  EmailAnalysis analysis = null;
  /* List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. */
  List<String> attachments = [];
  /* List of `BCC` recipients email was addressed to */
  List<String> bcc = [];
  /* The body of the email message */
  String body = null;
  /* A hash signature of the email message */
  String bodyMD5Hash = null;
  /* List of `CC` recipients email was addressed to */
  List<String> cc = [];
  /* Detected character set of the email body such as UTF-8 */
  String charset = null;
  /* When was the email received by MailSlurp */
  DateTime createdAt = null;
  /* Who the email was sent from */
  String from = null;
  
  Map<String, String> headers = {};
  /* ID of the email */
  String id = null;
  /* ID of the inbox that received the email */
  String inboxId = null;
  /* Was HTML sent in the email body */
  bool isHTML = null;
  /* Has the email been viewed ever */
  bool read = null;
  /* The replyTo field on the received email */
  String replyTo = null;
  /* The subject line of the email message */
  String subject = null;
  /* List of `To` recipients email was addressed to */
  List<String> to = [];
  /* When was the email last updated */
  DateTime updatedAt = null;
  /* ID of user that email belongs */
  String userId = null;
  Email();

  @override
  String toString() {
    return 'Email[analysis=$analysis, attachments=$attachments, bcc=$bcc, body=$body, bodyMD5Hash=$bodyMD5Hash, cc=$cc, charset=$charset, createdAt=$createdAt, from=$from, headers=$headers, id=$id, inboxId=$inboxId, isHTML=$isHTML, read=$read, replyTo=$replyTo, subject=$subject, to=$to, updatedAt=$updatedAt, userId=$userId, ]';
  }

  Email.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    analysis = (json['analysis'] == null) ?
      null :
      EmailAnalysis.fromJson(json['analysis']);
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
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    from = json['from'];
    headers = (json['headers'] == null) ?
      null :
      (json['headers'] as Map).cast<String, String>();
    id = json['id'];
    inboxId = json['inboxId'];
    isHTML = json['isHTML'];
    read = json['read'];
    replyTo = json['replyTo'];
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
    if (analysis != null)
      json['analysis'] = analysis;
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
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (from != null)
      json['from'] = from;
    if (headers != null)
      json['headers'] = headers;
    if (id != null)
      json['id'] = id;
    if (inboxId != null)
      json['inboxId'] = inboxId;
    if (isHTML != null)
      json['isHTML'] = isHTML;
    if (read != null)
      json['read'] = read;
    if (replyTo != null)
      json['replyTo'] = replyTo;
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

  static List<Email> listFromJson(List<dynamic> json) {
    return json == null ? List<Email>() : json.map((value) => Email.fromJson(value)).toList();
  }

  static Map<String, Email> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Email>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Email.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Email-objects as value to a dart map
  static Map<String, List<Email>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Email>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Email.listFromJson(value);
       });
     }
     return map;
  }
}

