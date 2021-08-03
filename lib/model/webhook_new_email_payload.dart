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
    this.attachmentMetaDatas = const [],
    this.bcc = const [],
    this.cc = const [],
    this.createdAt,
    this.emailId,
    this.eventName,
    this.from,
    this.inboxId,
    this.messageId,
    this.subject,
    this.to = const [],
    this.webhookId,
    this.webhookName,
  });

  /// List of attachment meta data objects if attachments present
  List<AttachmentMetaData> attachmentMetaDatas;

  /// List of `BCC` recipients email was addressed to
  List<String> bcc;

  /// List of `CC` recipients email was addressed to
  List<String> cc;

  /// Date time of event creation
  DateTime createdAt;

  /// ID of the email that was received. Use this ID for fetching the email with the `EmailController`.
  String emailId;

  /// Name of the event type webhook is being triggered for.
  WebhookNewEmailPayloadEventNameEnum eventName;

  /// Who the email was sent from
  String from;

  /// Id of the inbox that received an email
  String inboxId;

  /// Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
  String messageId;

  /// The subject line of the email message
  String subject;

  /// List of `To` recipients that email was addressed to
  List<String> to;

  /// ID of webhook entity being triggered
  String webhookId;

  /// Name of the webhook being triggered
  String webhookName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookNewEmailPayload &&
     other.attachmentMetaDatas == attachmentMetaDatas &&
     other.bcc == bcc &&
     other.cc == cc &&
     other.createdAt == createdAt &&
     other.emailId == emailId &&
     other.eventName == eventName &&
     other.from == from &&
     other.inboxId == inboxId &&
     other.messageId == messageId &&
     other.subject == subject &&
     other.to == to &&
     other.webhookId == webhookId &&
     other.webhookName == webhookName;

  @override
  int get hashCode =>
    (attachmentMetaDatas == null ? 0 : attachmentMetaDatas.hashCode) +
    (bcc == null ? 0 : bcc.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (emailId == null ? 0 : emailId.hashCode) +
    (eventName == null ? 0 : eventName.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (messageId == null ? 0 : messageId.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (webhookId == null ? 0 : webhookId.hashCode) +
    (webhookName == null ? 0 : webhookName.hashCode);

  @override
  String toString() => 'WebhookNewEmailPayload[attachmentMetaDatas=$attachmentMetaDatas, bcc=$bcc, cc=$cc, createdAt=$createdAt, emailId=$emailId, eventName=$eventName, from=$from, inboxId=$inboxId, messageId=$messageId, subject=$subject, to=$to, webhookId=$webhookId, webhookName=$webhookName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (attachmentMetaDatas != null) {
      json[r'attachmentMetaDatas'] = attachmentMetaDatas;
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
    if (emailId != null) {
      json[r'emailId'] = emailId;
    }
    if (eventName != null) {
      json[r'eventName'] = eventName;
    }
    if (from != null) {
      json[r'from'] = from;
    }
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
    if (messageId != null) {
      json[r'messageId'] = messageId;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (webhookId != null) {
      json[r'webhookId'] = webhookId;
    }
    if (webhookName != null) {
      json[r'webhookName'] = webhookName;
    }
    return json;
  }

  /// Returns a new [WebhookNewEmailPayload] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookNewEmailPayload fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookNewEmailPayload(
        attachmentMetaDatas: AttachmentMetaData.listFromJson(json[r'attachmentMetaDatas']),
        bcc: json[r'bcc'] == null
          ? null
          : (json[r'bcc'] as List).cast<String>(),
        cc: json[r'cc'] == null
          ? null
          : (json[r'cc'] as List).cast<String>(),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        emailId: json[r'emailId'],
        eventName: WebhookNewEmailPayloadEventNameEnum.fromJson(json[r'eventName']),
        from: json[r'from'],
        inboxId: json[r'inboxId'],
        messageId: json[r'messageId'],
        subject: json[r'subject'],
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
        webhookId: json[r'webhookId'],
        webhookName: json[r'webhookName'],
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

  /// List of all possible values in this [enum][WebhookNewEmailPayloadEventNameEnum].
  static const values = <WebhookNewEmailPayloadEventNameEnum>[
    EMAIL_RECEIVED,
    NEW_EMAIL,
    NEW_CONTACT,
    NEW_ATTACHMENT,
    EMAIL_OPENED,
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

