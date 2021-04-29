//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookPayload {
  /// Returns a new [WebhookPayload] instance.
  WebhookPayload({
    this.attachmentMetaDatas = const [],
    this.bcc = const [],
    this.cc = const [],
    this.createdAt,
    this.emailId,
    this.eventName,
    this.from,
    this.id,
    this.inboxId,
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

  /// ID of the email that was received. Use this ID for fetching the email
  String emailId;

  /// Name of the event type webhook is being triggered for
  WebhookPayloadEventNameEnum eventName;

  /// Who the email was sent from
  String from;

  /// Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
  String id;

  /// Id of the inbox that receive an email
  String inboxId;

  /// The subject line of the email message
  String subject;

  /// List of `To` recipients email was addressed to
  List<String> to;

  /// ID of webhook entity being triggered
  String webhookId;

  /// Name of the webhook being triggered
  String webhookName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookPayload &&
     other.attachmentMetaDatas == attachmentMetaDatas &&
     other.bcc == bcc &&
     other.cc == cc &&
     other.createdAt == createdAt &&
     other.emailId == emailId &&
     other.eventName == eventName &&
     other.from == from &&
     other.id == id &&
     other.inboxId == inboxId &&
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
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (webhookId == null ? 0 : webhookId.hashCode) +
    (webhookName == null ? 0 : webhookName.hashCode);

  @override
  String toString() => 'WebhookPayload[attachmentMetaDatas=$attachmentMetaDatas, bcc=$bcc, cc=$cc, createdAt=$createdAt, emailId=$emailId, eventName=$eventName, from=$from, id=$id, inboxId=$inboxId, subject=$subject, to=$to, webhookId=$webhookId, webhookName=$webhookName]';

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
    if (id != null) {
      json[r'id'] = id;
    }
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
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

  /// Returns a new [WebhookPayload] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookPayload fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookPayload(
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
        eventName: WebhookPayloadEventNameEnum.fromJson(json[r'eventName']),
        from: json[r'from'],
        id: json[r'id'],
        inboxId: json[r'inboxId'],
        subject: json[r'subject'],
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
        webhookId: json[r'webhookId'],
        webhookName: json[r'webhookName'],
    );

  static List<WebhookPayload> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookPayload>[]
      : json.map((v) => WebhookPayload.fromJson(v)).toList(growable: true == growable);

  static Map<String, WebhookPayload> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WebhookPayload>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WebhookPayload.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WebhookPayload-objects as value to a dart map
  static Map<String, List<WebhookPayload>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WebhookPayload>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WebhookPayload.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Name of the event type webhook is being triggered for
class WebhookPayloadEventNameEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookPayloadEventNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_RECEIVED = WebhookPayloadEventNameEnum._(r'EMAIL_RECEIVED');

  /// List of all possible values in this [enum][WebhookPayloadEventNameEnum].
  static const values = <WebhookPayloadEventNameEnum>[
    EMAIL_RECEIVED,
  ];

  static WebhookPayloadEventNameEnum fromJson(dynamic value) =>
    WebhookPayloadEventNameEnumTypeTransformer().decode(value);

  static List<WebhookPayloadEventNameEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookPayloadEventNameEnum>[]
      : json
          .map((value) => WebhookPayloadEventNameEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WebhookPayloadEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookPayloadEventNameEnum].
class WebhookPayloadEventNameEnumTypeTransformer {
  const WebhookPayloadEventNameEnumTypeTransformer._();

  factory WebhookPayloadEventNameEnumTypeTransformer() => _instance ??= WebhookPayloadEventNameEnumTypeTransformer._();

  String encode(WebhookPayloadEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookPayloadEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookPayloadEventNameEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'EMAIL_RECEIVED': return WebhookPayloadEventNameEnum.EMAIL_RECEIVED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WebhookPayloadEventNameEnumTypeTransformer] instance.
  static WebhookPayloadEventNameEnumTypeTransformer _instance;
}

