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
    @required this.id,
    @required this.userId,
    @required this.inboxId,
    this.domainId,
    this.to = const [],
    this.from,
    this.replyTo,
    this.cc = const [],
    this.bcc = const [],
    this.attachments = const [],
    this.subject,
    this.bodyMD5Hash,
    this.body,
    this.toContacts = const [],
    this.toGroup,
    this.charset,
    this.isHTML,
    @required this.sentAt,
    this.pixelIds = const [],
    this.messageId,
    this.messageIds = const [],
    this.virtualSend,
    this.templateId,
    this.templateVariables = const {},
    this.html,
  });

  /// ID of sent email
  String id;

  /// User ID
  String userId;

  /// Inbox ID email was sent from
  String inboxId;

  /// Domain ID
  String domainId;

  /// Recipients email was sent to
  List<String> to;

  String from;

  String replyTo;

  List<String> cc;

  List<String> bcc;

  /// Array of IDs of attachments that were sent with this email
  List<String> attachments;

  String subject;

  /// MD5 Hash
  String bodyMD5Hash;

  String body;

  List<String> toContacts;

  String toGroup;

  String charset;

  bool isHTML;

  DateTime sentAt;

  List<String> pixelIds;

  String messageId;

  List<String> messageIds;

  bool virtualSend;

  String templateId;

  Map<String, Object> templateVariables;

  bool html;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SentEmailDto &&
     other.id == id &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.domainId == domainId &&
     other.to == to &&
     other.from == from &&
     other.replyTo == replyTo &&
     other.cc == cc &&
     other.bcc == bcc &&
     other.attachments == attachments &&
     other.subject == subject &&
     other.bodyMD5Hash == bodyMD5Hash &&
     other.body == body &&
     other.toContacts == toContacts &&
     other.toGroup == toGroup &&
     other.charset == charset &&
     other.isHTML == isHTML &&
     other.sentAt == sentAt &&
     other.pixelIds == pixelIds &&
     other.messageId == messageId &&
     other.messageIds == messageIds &&
     other.virtualSend == virtualSend &&
     other.templateId == templateId &&
     other.templateVariables == templateVariables &&
     other.html == html;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (domainId == null ? 0 : domainId.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (replyTo == null ? 0 : replyTo.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (bcc == null ? 0 : bcc.hashCode) +
    (attachments == null ? 0 : attachments.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (bodyMD5Hash == null ? 0 : bodyMD5Hash.hashCode) +
    (body == null ? 0 : body.hashCode) +
    (toContacts == null ? 0 : toContacts.hashCode) +
    (toGroup == null ? 0 : toGroup.hashCode) +
    (charset == null ? 0 : charset.hashCode) +
    (isHTML == null ? 0 : isHTML.hashCode) +
    (sentAt == null ? 0 : sentAt.hashCode) +
    (pixelIds == null ? 0 : pixelIds.hashCode) +
    (messageId == null ? 0 : messageId.hashCode) +
    (messageIds == null ? 0 : messageIds.hashCode) +
    (virtualSend == null ? 0 : virtualSend.hashCode) +
    (templateId == null ? 0 : templateId.hashCode) +
    (templateVariables == null ? 0 : templateVariables.hashCode) +
    (html == null ? 0 : html.hashCode);

  @override
  String toString() => 'SentEmailDto[id=$id, userId=$userId, inboxId=$inboxId, domainId=$domainId, to=$to, from=$from, replyTo=$replyTo, cc=$cc, bcc=$bcc, attachments=$attachments, subject=$subject, bodyMD5Hash=$bodyMD5Hash, body=$body, toContacts=$toContacts, toGroup=$toGroup, charset=$charset, isHTML=$isHTML, sentAt=$sentAt, pixelIds=$pixelIds, messageId=$messageId, messageIds=$messageIds, virtualSend=$virtualSend, templateId=$templateId, templateVariables=$templateVariables, html=$html]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'userId'] = userId;
      json[r'inboxId'] = inboxId;
    if (domainId != null) {
      json[r'domainId'] = domainId;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (from != null) {
      json[r'from'] = from;
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
    if (attachments != null) {
      json[r'attachments'] = attachments;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
    if (bodyMD5Hash != null) {
      json[r'bodyMD5Hash'] = bodyMD5Hash;
    }
    if (body != null) {
      json[r'body'] = body;
    }
    if (toContacts != null) {
      json[r'toContacts'] = toContacts;
    }
    if (toGroup != null) {
      json[r'toGroup'] = toGroup;
    }
    if (charset != null) {
      json[r'charset'] = charset;
    }
    if (isHTML != null) {
      json[r'isHTML'] = isHTML;
    }
      json[r'sentAt'] = sentAt.toUtc().toIso8601String();
    if (pixelIds != null) {
      json[r'pixelIds'] = pixelIds;
    }
    if (messageId != null) {
      json[r'messageId'] = messageId;
    }
    if (messageIds != null) {
      json[r'messageIds'] = messageIds;
    }
    if (virtualSend != null) {
      json[r'virtualSend'] = virtualSend;
    }
    if (templateId != null) {
      json[r'templateId'] = templateId;
    }
    if (templateVariables != null) {
      json[r'templateVariables'] = templateVariables;
    }
    if (html != null) {
      json[r'html'] = html;
    }
    return json;
  }

  /// Returns a new [SentEmailDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SentEmailDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SentEmailDto(
        id: json[r'id'],
        userId: json[r'userId'],
        inboxId: json[r'inboxId'],
        domainId: json[r'domainId'],
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
        from: json[r'from'],
        replyTo: json[r'replyTo'],
        cc: json[r'cc'] == null
          ? null
          : (json[r'cc'] as List).cast<String>(),
        bcc: json[r'bcc'] == null
          ? null
          : (json[r'bcc'] as List).cast<String>(),
        attachments: json[r'attachments'] == null
          ? null
          : (json[r'attachments'] as List).cast<String>(),
        subject: json[r'subject'],
        bodyMD5Hash: json[r'bodyMD5Hash'],
        body: json[r'body'],
        toContacts: json[r'toContacts'] == null
          ? null
          : (json[r'toContacts'] as List).cast<String>(),
        toGroup: json[r'toGroup'],
        charset: json[r'charset'],
        isHTML: json[r'isHTML'],
        sentAt: json[r'sentAt'] == null
          ? null
          : DateTime.parse(json[r'sentAt']),
        pixelIds: json[r'pixelIds'] == null
          ? null
          : (json[r'pixelIds'] as List).cast<String>(),
        messageId: json[r'messageId'],
        messageIds: json[r'messageIds'] == null
          ? null
          : (json[r'messageIds'] as List).cast<String>(),
        virtualSend: json[r'virtualSend'],
        templateId: json[r'templateId'],
        templateVariables: json[r'templateVariables'] == null
          ? null
          : Object.mapFromJson(json[r'templateVariables']),
        html: json[r'html'],
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

