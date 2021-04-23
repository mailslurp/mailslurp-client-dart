//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SentEmailDto {
  /// Returns a new [SentEmailDto] instance.
  SentEmailDto({
    this.attachments = const [],
    this.bcc = const [],
    this.body,
    this.bodyMD5Hash,
    this.cc = const [],
    this.charset,
    this.from,
    this.id,
    this.inboxId,
    this.isHTML,
    this.replyTo,
    @required this.sentAt,
    this.subject,
    this.to = const [],
    this.userId,
  });

  /// Array of IDs of attachments that were sent with this email
  List<String> attachments;

  List<String> bcc;

  String body;

  /// MD5 Hash
  String bodyMD5Hash;

  List<String> cc;

  String charset;

  String from;

  /// ID of sent email
  String id;

  /// Inbox ID email was sent from
  String inboxId;

  bool isHTML;

  String replyTo;

  DateTime sentAt;

  String subject;

  /// Recipients email was sent to
  List<String> to;

  /// User ID
  String userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SentEmailDto &&
     other.attachments == attachments &&
     other.bcc == bcc &&
     other.body == body &&
     other.bodyMD5Hash == bodyMD5Hash &&
     other.cc == cc &&
     other.charset == charset &&
     other.from == from &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.isHTML == isHTML &&
     other.replyTo == replyTo &&
     other.sentAt == sentAt &&
     other.subject == subject &&
     other.to == to &&
     other.userId == userId;

  @override
  int get hashCode =>
    (attachments == null ? 0 : attachments.hashCode) +
    (bcc == null ? 0 : bcc.hashCode) +
    (body == null ? 0 : body.hashCode) +
    (bodyMD5Hash == null ? 0 : bodyMD5Hash.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (charset == null ? 0 : charset.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (isHTML == null ? 0 : isHTML.hashCode) +
    (replyTo == null ? 0 : replyTo.hashCode) +
    (sentAt == null ? 0 : sentAt.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (userId == null ? 0 : userId.hashCode);

  @override
  String toString() => 'SentEmailDto[attachments=$attachments, bcc=$bcc, body=$body, bodyMD5Hash=$bodyMD5Hash, cc=$cc, charset=$charset, from=$from, id=$id, inboxId=$inboxId, isHTML=$isHTML, replyTo=$replyTo, sentAt=$sentAt, subject=$subject, to=$to, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (from != null) {
      json[r'from'] = from;
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
    if (replyTo != null) {
      json[r'replyTo'] = replyTo;
    }
      json[r'sentAt'] = sentAt.toUtc().toIso8601String();
    if (subject != null) {
      json[r'subject'] = subject;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    return json;
  }

  /// Returns a new [SentEmailDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SentEmailDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SentEmailDto(
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
        from: json[r'from'],
        id: json[r'id'],
        inboxId: json[r'inboxId'],
        isHTML: json[r'isHTML'],
        replyTo: json[r'replyTo'],
        sentAt: json[r'sentAt'] == null
          ? null
          : DateTime.parse(json[r'sentAt']),
        subject: json[r'subject'],
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
        userId: json[r'userId'],
    );

  static List<SentEmailDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SentEmailDto>[]
      : json.map((v) => SentEmailDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, SentEmailDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SentEmailDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = SentEmailDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SentEmailDto-objects as value to a dart map
  static Map<String, List<SentEmailDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SentEmailDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SentEmailDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

