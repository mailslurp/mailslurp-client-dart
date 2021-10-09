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
    this.attachments = const [],
    this.bcc = const [],
    this.cc = const [],
    this.createdAt,
    this.from,
    this.id,
    this.read,
    this.subject,
    this.to = const [],
  });

  /// List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension.
  List<String> attachments;

  /// List of `BCC` recipients email addresses that the email was addressed to. See recipients object for names.
  List<String> bcc;

  /// List of `CC` recipients email addresses that the email was addressed to. See recipients object for names.
  List<String> cc;

  /// When was the email received by MailSlurp
  DateTime createdAt;

  /// Who the email was sent from. An email address - see fromName for the sender name.
  String from;

  /// ID of the email entity
  String id;

  /// Read flag. Has the email ever been viewed in the dashboard or fetched via the API with a hydrated body? If so the email is marked as read. Paginated results do not affect read status. Read status is different to email opened event as it depends on your own account accessing the email. Email opened is determined by tracking pixels sent to other uses if enable during sending. You can listened for both email read and email opened events using webhooks.
  bool read;

  /// The subject line of the email message as specified by SMTP subject header
  String subject;

  /// List of `To` recipient email addresses that the email was addressed to. See recipients object for names.
  List<String> to;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailPreview &&
     other.attachments == attachments &&
     other.bcc == bcc &&
     other.cc == cc &&
     other.createdAt == createdAt &&
     other.from == from &&
     other.id == id &&
     other.read == read &&
     other.subject == subject &&
     other.to == to;

  @override
  int get hashCode =>
    (attachments == null ? 0 : attachments.hashCode) +
    (bcc == null ? 0 : bcc.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (read == null ? 0 : read.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (to == null ? 0 : to.hashCode);

  @override
  String toString() => 'EmailPreview[attachments=$attachments, bcc=$bcc, cc=$cc, createdAt=$createdAt, from=$from, id=$id, read=$read, subject=$subject, to=$to]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (attachments != null) {
      json[r'attachments'] = attachments;
    }
    if (bcc != null) {
      json[r'bcc'] = bcc;
    }
    if (cc != null) {
      json[r'cc'] = cc;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (from != null) {
      json[r'from'] = from;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (read != null) {
      json[r'read'] = read;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    return json;
  }

  /// Returns a new [EmailPreview] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EmailPreview fromJson(Map<String, dynamic> json) => json == null
    ? null
    : EmailPreview(
        attachments: json[r'attachments'] == null
          ? null
          : (json[r'attachments'] as List).cast<String>(),
        bcc: json[r'bcc'] == null
          ? null
          : (json[r'bcc'] as List).cast<String>(),
        cc: json[r'cc'] == null
          ? null
          : (json[r'cc'] as List).cast<String>(),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        from: json[r'from'],
        id: json[r'id'],
        read: json[r'read'],
        subject: json[r'subject'],
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
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

