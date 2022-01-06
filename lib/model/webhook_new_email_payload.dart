//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookNewEmailPayload {
  /// Returns a new [WebhookNewEmailPayload] instance.
  WebhookNewEmailPayload({
    this.messageId,
    this.webhookId,
    this.eventName,
    this.webhookName,
    this.inboxId,
    this.emailId,
    this.createdAt,
    this.to = const [],
    this.from,
    this.cc = const [],
    this.bcc = const [],
    this.subject,
    this.attachmentMetaDatas = const [],
  });

  /// Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
  String messageId;

  /// ID of webhook entity being triggered
  String webhookId;

  /// Name of the event type webhook is being triggered for.
  WebhookNewEmailPayloadEventNameEnum eventName;

  /// Name of the webhook being triggered
  String webhookName;

  /// Id of the inbox that received an email
  String inboxId;

  /// ID of the email that was received. Use this ID for fetching the email with the `EmailController`.
  String emailId;

  /// Date time of event creation
  DateTime createdAt;

  /// List of `To` recipient email addresses that the email was addressed to. See recipients object for names.
  List<String> to;

  /// Who the email was sent from. An email address - see fromName for the sender name.
  String from;

  /// List of `CC` recipients email addresses that the email was addressed to. See recipients object for names.
  List<String> cc;

  /// List of `BCC` recipients email addresses that the email was addressed to. See recipients object for names.
  List<String> bcc;

  /// The subject line of the email message as specified by SMTP subject header
  String subject;

  /// List of attachment meta data objects if attachments present
  List<AttachmentMetaData> attachmentMetaDatas;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookNewEmailPayload &&
     other.messageId == messageId &&
     other.webhookId == webhookId &&
     other.eventName == eventName &&
     other.webhookName == webhookName &&
     other.inboxId == inboxId &&
     other.emailId == emailId &&
     other.createdAt == createdAt &&
     other.to == to &&
     other.from == from &&
     other.cc == cc &&
     other.bcc == bcc &&
     other.subject == subject &&
     other.attachmentMetaDatas == attachmentMetaDatas;

  @override
  int get hashCode =>
    (messageId == null ? 0 : messageId.hashCode) +
    (webhookId == null ? 0 : webhookId.hashCode) +
    (eventName == null ? 0 : eventName.hashCode) +
    (webhookName == null ? 0 : webhookName.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (emailId == null ? 0 : emailId.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (bcc == null ? 0 : bcc.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (attachmentMetaDatas == null ? 0 : attachmentMetaDatas.hashCode);

  @override
  String toString() => 'WebhookNewEmailPayload[messageId=$messageId, webhookId=$webhookId, eventName=$eventName, webhookName=$webhookName, inboxId=$inboxId, emailId=$emailId, createdAt=$createdAt, to=$to, from=$from, cc=$cc, bcc=$bcc, subject=$subject, attachmentMetaDatas=$attachmentMetaDatas]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (messageId != null) {
      json[r'messageId'] = messageId;
    }
    if (webhookId != null) {
      json[r'webhookId'] = webhookId;
    }
    if (eventName != null) {
      json[r'eventName'] = eventName;
    }
    if (webhookName != null) {
      json[r'webhookName'] = webhookName;
    }
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
    if (emailId != null) {
      json[r'emailId'] = emailId;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (from != null) {
      json[r'from'] = from;
    }
    if (cc != null) {
      json[r'cc'] = cc;
    }
    if (bcc != null) {
      json[r'bcc'] = bcc;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
    if (attachmentMetaDatas != null) {
      json[r'attachmentMetaDatas'] = attachmentMetaDatas;
    }
    return json;
  }

  /// Returns a new [WebhookNewEmailPayload] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookNewEmailPayload fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookNewEmailPayload(
        messageId: json[r'messageId'],
        webhookId: json[r'webhookId'],
        eventName: WebhookNewEmailPayloadEventNameEnum.fromJson(json[r'eventName']),
        webhookName: json[r'webhookName'],
        inboxId: json[r'inboxId'],
        emailId: json[r'emailId'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
        from: json[r'from'],
        cc: json[r'cc'] == null
          ? null
          : (json[r'cc'] as List).cast<String>(),
        bcc: json[r'bcc'] == null
          ? null
          : (json[r'bcc'] as List).cast<String>(),
        subject: json[r'subject'],
        attachmentMetaDatas: AttachmentMetaData.listFromJson(json[r'attachmentMetaDatas']),
    );

  static List<WebhookNewEmailPayload> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookNewEmailPayload>[]
      : json.map((v) => WebhookNewEmailPayload.fromJson(v)).toList(growable: true == growable);

  static Map<String, WebhookNewEmailPayload> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WebhookNewEmailPayload>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WebhookNewEmailPayload.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WebhookNewEmailPayload-objects as value to a dart map
  static Map<String, List<WebhookNewEmailPayload>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WebhookNewEmailPayload>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WebhookNewEmailPayload.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Name of the event type webhook is being triggered for.
class WebhookNewEmailPayloadEventNameEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookNewEmailPayloadEventNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_RECEIVED = WebhookNewEmailPayloadEventNameEnum._(r'EMAIL_RECEIVED');
  static const NEW_EMAIL = WebhookNewEmailPayloadEventNameEnum._(r'NEW_EMAIL');
  static const NEW_CONTACT = WebhookNewEmailPayloadEventNameEnum._(r'NEW_CONTACT');
  static const NEW_ATTACHMENT = WebhookNewEmailPayloadEventNameEnum._(r'NEW_ATTACHMENT');
  static const EMAIL_OPENED = WebhookNewEmailPayloadEventNameEnum._(r'EMAIL_OPENED');
  static const EMAIL_READ = WebhookNewEmailPayloadEventNameEnum._(r'EMAIL_READ');

  /// List of all possible values in this [enum][WebhookNewEmailPayloadEventNameEnum].
  static const values = <WebhookNewEmailPayloadEventNameEnum>[
    EMAIL_RECEIVED,
    NEW_EMAIL,
    NEW_CONTACT,
    NEW_ATTACHMENT,
    EMAIL_OPENED,
    EMAIL_READ,
  ];

  static WebhookNewEmailPayloadEventNameEnum fromJson(dynamic value) =>
    WebhookNewEmailPayloadEventNameEnumTypeTransformer().decode(value);

  static List<WebhookNewEmailPayloadEventNameEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookNewEmailPayloadEventNameEnum>[]
      : json
          .map((value) => WebhookNewEmailPayloadEventNameEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WebhookNewEmailPayloadEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookNewEmailPayloadEventNameEnum].
class WebhookNewEmailPayloadEventNameEnumTypeTransformer {
  const WebhookNewEmailPayloadEventNameEnumTypeTransformer._();

  factory WebhookNewEmailPayloadEventNameEnumTypeTransformer() => _instance ??= WebhookNewEmailPayloadEventNameEnumTypeTransformer._();

  String encode(WebhookNewEmailPayloadEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookNewEmailPayloadEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookNewEmailPayloadEventNameEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'EMAIL_RECEIVED': return WebhookNewEmailPayloadEventNameEnum.EMAIL_RECEIVED;
      case r'NEW_EMAIL': return WebhookNewEmailPayloadEventNameEnum.NEW_EMAIL;
      case r'NEW_CONTACT': return WebhookNewEmailPayloadEventNameEnum.NEW_CONTACT;
      case r'NEW_ATTACHMENT': return WebhookNewEmailPayloadEventNameEnum.NEW_ATTACHMENT;
      case r'EMAIL_OPENED': return WebhookNewEmailPayloadEventNameEnum.EMAIL_OPENED;
      case r'EMAIL_READ': return WebhookNewEmailPayloadEventNameEnum.EMAIL_READ;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WebhookNewEmailPayloadEventNameEnumTypeTransformer] instance.
  static WebhookNewEmailPayloadEventNameEnumTypeTransformer _instance;
}

