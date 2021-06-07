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
    this.analysis,
    this.attachments = const [],
    this.bcc = const [],
    this.body,
    this.bodyMD5Hash,
    this.cc = const [],
    this.charset,
    this.createdAt,
    this.from,
    this.headers = const {},
    this.id,
    this.inboxId,
    this.isHTML,
    this.read,
    this.replyTo,
    this.subject,
    this.teamAccess,
    this.to = const [],
    this.updatedAt,
    this.userId,
  });

  EmailAnalysis analysis;

  /// List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension.
  List<String> attachments;

  /// List of `BCC` recipients email was addressed to
  List<String> bcc;

  /// The body of the email message
  String body;

  /// A hash signature of the email message
  String bodyMD5Hash;

  /// List of `CC` recipients email was addressed to
  List<String> cc;

  /// Detected character set of the email body such as UTF-8
  String charset;

  /// When was the email received by MailSlurp
  DateTime createdAt;

  /// Who the email was sent from
  String from;

  /// Collection of SMTP headers attached to email
  Map<String, String> headers;

  /// ID of the email entity
  String id;

  /// ID of the inbox that received the email
  String inboxId;

  /// Is the email body HTML
  bool isHTML;

  /// Read flag. Has the email ever been viewed in the dashboard or fetched via the API? If so the email is marked as read.
  bool read;

  /// The `replyTo` field on the received email message
  String replyTo;

  /// The subject line of the email message
  String subject;

  /// Can the email be accessed by organization team members
  bool teamAccess;

  /// List of `To` recipients that email was addressed to
  List<String> to;

  /// When was the email last updated
  DateTime updatedAt;

  /// ID of user that email belongs to
  String userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Email &&
     other.analysis == analysis &&
     other.attachments == attachments &&
     other.bcc == bcc &&
     other.body == body &&
     other.bodyMD5Hash == bodyMD5Hash &&
     other.cc == cc &&
     other.charset == charset &&
     other.createdAt == createdAt &&
     other.from == from &&
     other.headers == headers &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.isHTML == isHTML &&
     other.read == read &&
     other.replyTo == replyTo &&
     other.subject == subject &&
     other.teamAccess == teamAccess &&
     other.to == to &&
     other.updatedAt == updatedAt &&
     other.userId == userId;

  @override
  int get hashCode =>
    (analysis == null ? 0 : analysis.hashCode) +
    (attachments == null ? 0 : attachments.hashCode) +
    (bcc == null ? 0 : bcc.hashCode) +
    (body == null ? 0 : body.hashCode) +
    (bodyMD5Hash == null ? 0 : bodyMD5Hash.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (charset == null ? 0 : charset.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (headers == null ? 0 : headers.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (isHTML == null ? 0 : isHTML.hashCode) +
    (read == null ? 0 : read.hashCode) +
    (replyTo == null ? 0 : replyTo.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (teamAccess == null ? 0 : teamAccess.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (userId == null ? 0 : userId.hashCode);

  @override
  String toString() => 'Email[analysis=$analysis, attachments=$attachments, bcc=$bcc, body=$body, bodyMD5Hash=$bodyMD5Hash, cc=$cc, charset=$charset, createdAt=$createdAt, from=$from, headers=$headers, id=$id, inboxId=$inboxId, isHTML=$isHTML, read=$read, replyTo=$replyTo, subject=$subject, teamAccess=$teamAccess, to=$to, updatedAt=$updatedAt, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (analysis != null) {
      json[r'analysis'] = analysis;
    }
    if (attachments != null) {
      json[r'attachments'] = attachments;
    }
    if (bcc != null) {
      json[r'bcc'] = bcc;
    }
    if (body != null) {
      json[r'body'] = body;
    }
    if (bodyMD5Hash != null) {
      json[r'bodyMD5Hash'] = bodyMD5Hash;
    }
    if (cc != null) {
      json[r'cc'] = cc;
    }
    if (charset != null) {
      json[r'charset'] = charset;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (from != null) {
      json[r'from'] = from;
    }
    if (headers != null) {
      json[r'headers'] = headers;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
    if (isHTML != null) {
      json[r'isHTML'] = isHTML;
    }
    if (read != null) {
      json[r'read'] = read;
    }
    if (replyTo != null) {
      json[r'replyTo'] = replyTo;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
    if (teamAccess != null) {
      json[r'teamAccess'] = teamAccess;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    return json;
  }

  /// Returns a new [Email] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Email fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Email(
        analysis: EmailAnalysis.fromJson(json[r'analysis']),
        attachments: json[r'attachments'] == null
          ? null
          : (json[r'attachments'] as List).cast<String>(),
        bcc: json[r'bcc'] == null
          ? null
          : (json[r'bcc'] as List).cast<String>(),
        body: json[r'body'],
        bodyMD5Hash: json[r'bodyMD5Hash'],
        cc: json[r'cc'] == null
          ? null
          : (json[r'cc'] as List).cast<String>(),
        charset: json[r'charset'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        from: json[r'from'],
        headers: json[r'headers'] == null ?
          null :
          (json[r'headers'] as Map).cast<String, String>(),
        id: json[r'id'],
        inboxId: json[r'inboxId'],
        isHTML: json[r'isHTML'],
        read: json[r'read'],
        replyTo: json[r'replyTo'],
        subject: json[r'subject'],
        teamAccess: json[r'teamAccess'],
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        userId: json[r'userId'],
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

