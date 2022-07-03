//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailPreview {
  /// Returns a new [EmailPreview] instance.
  EmailPreview({
    @required this.id,
    this.subject,
    this.to = const [],
    this.from,
    this.bcc = const [],
    this.cc = const [],
    @required this.createdAt,
    @required this.read,
    this.attachments = const [],
  });

  /// ID of the email entity
  String id;

  /// The subject line of the email message as specified by SMTP subject header
  String subject;

  /// List of `To` recipient email addresses that the email was addressed to. See recipients object for names.
  List<String> to;

  /// Who the email was sent from. An email address - see fromName for the sender name.
  String from;

  /// List of `BCC` recipients email addresses that the email was addressed to. See recipients object for names.
  List<String> bcc;

  /// List of `CC` recipients email addresses that the email was addressed to. See recipients object for names.
  List<String> cc;

  /// When was the email received by MailSlurp
  DateTime createdAt;

  /// Read flag. Has the email ever been viewed in the dashboard or fetched via the API with a hydrated body? If so the email is marked as read. Paginated results do not affect read status. Read status is different to email opened event as it depends on your own account accessing the email. Email opened is determined by tracking pixels sent to other uses if enable during sending. You can listened for both email read and email opened events using webhooks.
  bool read;

  /// List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension.
  List<String> attachments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailPreview &&
     other.id == id &&
     other.subject == subject &&
     other.to == to &&
     other.from == from &&
     other.bcc == bcc &&
     other.cc == cc &&
     other.createdAt == createdAt &&
     other.read == read &&
     other.attachments == attachments;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (bcc == null ? 0 : bcc.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (read == null ? 0 : read.hashCode) +
    (attachments == null ? 0 : attachments.hashCode);

  @override
  String toString() => 'EmailPreview[id=$id, subject=$subject, to=$to, from=$from, bcc=$bcc, cc=$cc, createdAt=$createdAt, read=$read, attachments=$attachments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (subject != null) {
      json[r'subject'] = subject;
    }
      json[r'to'] = to;
    if (from != null) {
      json[r'from'] = from;
    }
    if (bcc != null) {
      json[r'bcc'] = bcc;
    }
    if (cc != null) {
      json[r'cc'] = cc;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'read'] = read;
    if (attachments != null) {
      json[r'attachments'] = attachments;
    }
    return json;
  }

  /// Returns a new [EmailPreview] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EmailPreview fromJson(Map<String, dynamic> json) => json == null
    ? null
    : EmailPreview(
        id: json[r'id'],
        subject: json[r'subject'],
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
        from: json[r'from'],
        bcc: json[r'bcc'] == null
          ? null
          : (json[r'bcc'] as List).cast<String>(),
        cc: json[r'cc'] == null
          ? null
          : (json[r'cc'] as List).cast<String>(),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        read: json[r'read'],
        attachments: json[r'attachments'] == null
          ? null
          : (json[r'attachments'] as List).cast<String>(),
    );

  static List<EmailPreview> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <EmailPreview>[]
      : json.map((v) => EmailPreview.fromJson(v)).toList(growable: true == growable);

  static Map<String, EmailPreview> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EmailPreview>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = EmailPreview.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of EmailPreview-objects as value to a dart map
  static Map<String, List<EmailPreview>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EmailPreview>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = EmailPreview.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

