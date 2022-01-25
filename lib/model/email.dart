//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Email {
  /// Returns a new [Email] instance.
  Email({
    @required this.id,
    @required this.userId,
    @required this.inboxId,
    this.to = const [],
    this.from,
    this.sender,
    this.recipients,
    this.replyTo,
    this.cc = const [],
    this.bcc = const [],
    this.headers = const {},
    this.attachments = const [],
    this.subject,
    this.body,
    this.bodyExcerpt,
    this.bodyMD5Hash,
    this.isHTML,
    this.charset,
    this.analysis,
    @required this.createdAt,
    @required this.updatedAt,
    @required this.read,
    @required this.teamAccess,
  });

  /// ID of the email entity
  String id;

  /// ID of user that email belongs to
  String userId;

  /// ID of the inbox that received the email
  String inboxId;

  /// List of `To` recipient email addresses that the email was addressed to. See recipients object for names.
  List<String> to;

  /// Who the email was sent from. An email address - see fromName for the sender name.
  String from;

  Sender sender;

  EmailRecipients recipients;

  /// The `replyTo` field on the received email message
  String replyTo;

  /// List of `CC` recipients email addresses that the email was addressed to. See recipients object for names.
  List<String> cc;

  /// List of `BCC` recipients email addresses that the email was addressed to. See recipients object for names.
  List<String> bcc;

  /// Collection of SMTP headers attached to email
  Map<String, String> headers;

  /// List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension.
  List<String> attachments;

  /// The subject line of the email message as specified by SMTP subject header
  String subject;

  /// The body of the email message as text parsed from the SMTP message body (does not include attachments). Fetch the raw content to access the SMTP message and use the attachments property to access attachments. The body is stored separately to the email entity so the body is not returned in paginated results only in full single email or wait requests.
  String body;

  /// An excerpt of the body of the email message for quick preview .
  String bodyExcerpt;

  /// A hash signature of the email message using MD5. Useful for comparing emails without fetching full body.
  String bodyMD5Hash;

  /// Is the email body content type HTML?
  bool isHTML;

  /// Detected character set of the email body such as UTF-8
  String charset;

  EmailAnalysis analysis;

  /// When was the email received by MailSlurp
  DateTime createdAt;

  /// When was the email last updated
  DateTime updatedAt;

  /// Read flag. Has the email ever been viewed in the dashboard or fetched via the API with a hydrated body? If so the email is marked as read. Paginated results do not affect read status. Read status is different to email opened event as it depends on your own account accessing the email. Email opened is determined by tracking pixels sent to other uses if enable during sending. You can listened for both email read and email opened events using webhooks.
  bool read;

  /// Can the email be accessed by organization team members
  bool teamAccess;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Email &&
     other.id == id &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.to == to &&
     other.from == from &&
     other.sender == sender &&
     other.recipients == recipients &&
     other.replyTo == replyTo &&
     other.cc == cc &&
     other.bcc == bcc &&
     other.headers == headers &&
     other.attachments == attachments &&
     other.subject == subject &&
     other.body == body &&
     other.bodyExcerpt == bodyExcerpt &&
     other.bodyMD5Hash == bodyMD5Hash &&
     other.isHTML == isHTML &&
     other.charset == charset &&
     other.analysis == analysis &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.read == read &&
     other.teamAccess == teamAccess;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (sender == null ? 0 : sender.hashCode) +
    (recipients == null ? 0 : recipients.hashCode) +
    (replyTo == null ? 0 : replyTo.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (bcc == null ? 0 : bcc.hashCode) +
    (headers == null ? 0 : headers.hashCode) +
    (attachments == null ? 0 : attachments.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (body == null ? 0 : body.hashCode) +
    (bodyExcerpt == null ? 0 : bodyExcerpt.hashCode) +
    (bodyMD5Hash == null ? 0 : bodyMD5Hash.hashCode) +
    (isHTML == null ? 0 : isHTML.hashCode) +
    (charset == null ? 0 : charset.hashCode) +
    (analysis == null ? 0 : analysis.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (read == null ? 0 : read.hashCode) +
    (teamAccess == null ? 0 : teamAccess.hashCode);

  @override
  String toString() => 'Email[id=$id, userId=$userId, inboxId=$inboxId, to=$to, from=$from, sender=$sender, recipients=$recipients, replyTo=$replyTo, cc=$cc, bcc=$bcc, headers=$headers, attachments=$attachments, subject=$subject, body=$body, bodyExcerpt=$bodyExcerpt, bodyMD5Hash=$bodyMD5Hash, isHTML=$isHTML, charset=$charset, analysis=$analysis, createdAt=$createdAt, updatedAt=$updatedAt, read=$read, teamAccess=$teamAccess]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'userId'] = userId;
      json[r'inboxId'] = inboxId;
      json[r'to'] = to;
    if (from != null) {
      json[r'from'] = from;
    }
    if (sender != null) {
      json[r'sender'] = sender;
    }
    if (recipients != null) {
      json[r'recipients'] = recipients;
    }
    if (replyTo != null) {
      json[r'replyTo'] = replyTo;
    }
    if (cc != null) {
      json[r'cc'] = cc;
    }
    if (bcc != null) {
      json[r'bcc'] = bcc;
    }
    if (headers != null) {
      json[r'headers'] = headers;
    }
    if (attachments != null) {
      json[r'attachments'] = attachments;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
    if (body != null) {
      json[r'body'] = body;
    }
    if (bodyExcerpt != null) {
      json[r'bodyExcerpt'] = bodyExcerpt;
    }
    if (bodyMD5Hash != null) {
      json[r'bodyMD5Hash'] = bodyMD5Hash;
    }
    if (isHTML != null) {
      json[r'isHTML'] = isHTML;
    }
    if (charset != null) {
      json[r'charset'] = charset;
    }
    if (analysis != null) {
      json[r'analysis'] = analysis;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
      json[r'read'] = read;
      json[r'teamAccess'] = teamAccess;
    return json;
  }

  /// Returns a new [Email] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Email fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Email(
        id: json[r'id'],
        userId: json[r'userId'],
        inboxId: json[r'inboxId'],
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
        from: json[r'from'],
        sender: Sender.fromJson(json[r'sender']),
        recipients: EmailRecipients.fromJson(json[r'recipients']),
        replyTo: json[r'replyTo'],
        cc: json[r'cc'] == null
          ? null
          : (json[r'cc'] as List).cast<String>(),
        bcc: json[r'bcc'] == null
          ? null
          : (json[r'bcc'] as List).cast<String>(),
        headers: json[r'headers'] == null ?
          null :
          (json[r'headers'] as Map).cast<String, String>(),
        attachments: json[r'attachments'] == null
          ? null
          : (json[r'attachments'] as List).cast<String>(),
        subject: json[r'subject'],
        body: json[r'body'],
        bodyExcerpt: json[r'bodyExcerpt'],
        bodyMD5Hash: json[r'bodyMD5Hash'],
        isHTML: json[r'isHTML'],
        charset: json[r'charset'],
        analysis: EmailAnalysis.fromJson(json[r'analysis']),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        read: json[r'read'],
        teamAccess: json[r'teamAccess'],
    );

  static List<Email> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Email>[]
      : json.map((v) => Email.fromJson(v)).toList(growable: true == growable);

  static Map<String, Email> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Email>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Email.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Email-objects as value to a dart map
  static Map<String, List<Email>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Email>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Email.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

