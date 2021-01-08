part of mailslurp.api;

class EmailPreview {
  /* List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. */
  List<String> attachments = [];
  /* List of `BCC` recipients email was addressed to */
  List<String> bcc = [];
  /* List of `CC` recipients email was addressed to */
  List<String> cc = [];
  /* When was the email received by MailSlurp */
  DateTime createdAt = null;
  /* Who the email was sent from */
  String from = null;
  /* ID of the email */
  String id = null;
  /* Has the email been viewed ever */
  bool read = null;
  /* The subject line of the email message */
  String subject = null;
  /* List of `To` recipients email was addressed to */
  List<String> to = [];
  EmailPreview();

  @override
  String toString() {
    return 'EmailPreview[attachments=$attachments, bcc=$bcc, cc=$cc, createdAt=$createdAt, from=$from, id=$id, read=$read, subject=$subject, to=$to, ]';
  }

  EmailPreview.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    attachments = (json['attachments'] == null) ?
      null :
      (json['attachments'] as List).cast<String>();
    bcc = (json['bcc'] == null) ?
      null :
      (json['bcc'] as List).cast<String>();
    cc = (json['cc'] == null) ?
      null :
      (json['cc'] as List).cast<String>();
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    from = json['from'];
    id = json['id'];
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
    if (cc != null)
      json['cc'] = cc;
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (from != null)
      json['from'] = from;
    if (id != null)
      json['id'] = id;
    if (read != null)
      json['read'] = read;
    if (subject != null)
      json['subject'] = subject;
    if (to != null)
      json['to'] = to;
    return json;
  }

  static List<EmailPreview> listFromJson(List<dynamic> json) {
    return json == null ? List<EmailPreview>() : json.map((value) => EmailPreview.fromJson(value)).toList();
  }

  static Map<String, EmailPreview> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EmailPreview>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EmailPreview.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EmailPreview-objects as value to a dart map
  static Map<String, List<EmailPreview>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EmailPreview>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EmailPreview.listFromJson(value);
       });
     }
     return map;
  }
}

