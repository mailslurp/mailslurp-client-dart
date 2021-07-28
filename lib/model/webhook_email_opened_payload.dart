//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookEmailOpenedPayload {
  /// Returns a new [WebhookEmailOpenedPayload] instance.
  WebhookEmailOpenedPayload({
    this.createdAt,
    this.eventName,
    this.inboxId,
    this.messageId,
    this.pixelId,
    this.recipient,
    this.sentEmailId,
    this.webhookId,
    this.webhookName,
  });

  /// Date time of event creation
  DateTime createdAt;

  /// Name of the event type webhook is being triggered for.
  WebhookEmailOpenedPayloadEventNameEnum eventName;

  /// Id of the inbox that received an email
  String inboxId;

  /// Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
  String messageId;

  /// ID of the tracking pixel
  String pixelId;

  /// Email address for the recipient of the tracking pixel
  String recipient;

  /// ID of sent email
  String sentEmailId;

  /// ID of webhook entity being triggered
  String webhookId;

  /// Name of the webhook being triggered
  String webhookName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookEmailOpenedPayload &&
     other.createdAt == createdAt &&
     other.eventName == eventName &&
     other.inboxId == inboxId &&
     other.messageId == messageId &&
     other.pixelId == pixelId &&
     other.recipient == recipient &&
     other.sentEmailId == sentEmailId &&
     other.webhookId == webhookId &&
     other.webhookName == webhookName;

  @override
  int get hashCode =>
    (createdAt == null ? 0 : createdAt.hashCode) +
    (eventName == null ? 0 : eventName.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (messageId == null ? 0 : messageId.hashCode) +
    (pixelId == null ? 0 : pixelId.hashCode) +
    (recipient == null ? 0 : recipient.hashCode) +
    (sentEmailId == null ? 0 : sentEmailId.hashCode) +
    (webhookId == null ? 0 : webhookId.hashCode) +
    (webhookName == null ? 0 : webhookName.hashCode);

  @override
  String toString() => 'WebhookEmailOpenedPayload[createdAt=$createdAt, eventName=$eventName, inboxId=$inboxId, messageId=$messageId, pixelId=$pixelId, recipient=$recipient, sentEmailId=$sentEmailId, webhookId=$webhookId, webhookName=$webhookName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (eventName != null) {
      json[r'eventName'] = eventName;
    }
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
    if (messageId != null) {
      json[r'messageId'] = messageId;
    }
    if (pixelId != null) {
      json[r'pixelId'] = pixelId;
    }
    if (recipient != null) {
      json[r'recipient'] = recipient;
    }
    if (sentEmailId != null) {
      json[r'sentEmailId'] = sentEmailId;
    }
    if (webhookId != null) {
      json[r'webhookId'] = webhookId;
    }
    if (webhookName != null) {
      json[r'webhookName'] = webhookName;
    }
    return json;
  }

  /// Returns a new [WebhookEmailOpenedPayload] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookEmailOpenedPayload fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookEmailOpenedPayload(
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        eventName: WebhookEmailOpenedPayloadEventNameEnum.fromJson(json[r'eventName']),
        inboxId: json[r'inboxId'],
        messageId: json[r'messageId'],
        pixelId: json[r'pixelId'],
        recipient: json[r'recipient'],
        sentEmailId: json[r'sentEmailId'],
        webhookId: json[r'webhookId'],
        webhookName: json[r'webhookName'],
    );

  static List<WebhookEmailOpenedPayload> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookEmailOpenedPayload>[]
      : json.map((v) => WebhookEmailOpenedPayload.fromJson(v)).toList(growable: true == growable);

  static Map<String, WebhookEmailOpenedPayload> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WebhookEmailOpenedPayload>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WebhookEmailOpenedPayload.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WebhookEmailOpenedPayload-objects as value to a dart map
  static Map<String, List<WebhookEmailOpenedPayload>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WebhookEmailOpenedPayload>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WebhookEmailOpenedPayload.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Name of the event type webhook is being triggered for.
class WebhookEmailOpenedPayloadEventNameEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookEmailOpenedPayloadEventNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_RECEIVED = WebhookEmailOpenedPayloadEventNameEnum._(r'EMAIL_RECEIVED');
  static const NEW_EMAIL = WebhookEmailOpenedPayloadEventNameEnum._(r'NEW_EMAIL');
  static const NEW_CONTACT = WebhookEmailOpenedPayloadEventNameEnum._(r'NEW_CONTACT');
  static const NEW_ATTACHMENT = WebhookEmailOpenedPayloadEventNameEnum._(r'NEW_ATTACHMENT');
  static const EMAIL_OPENED = WebhookEmailOpenedPayloadEventNameEnum._(r'EMAIL_OPENED');

  /// List of all possible values in this [enum][WebhookEmailOpenedPayloadEventNameEnum].
  static const values = <WebhookEmailOpenedPayloadEventNameEnum>[
    EMAIL_RECEIVED,
    NEW_EMAIL,
    NEW_CONTACT,
    NEW_ATTACHMENT,
    EMAIL_OPENED,
  ];

  static WebhookEmailOpenedPayloadEventNameEnum fromJson(dynamic value) =>
    WebhookEmailOpenedPayloadEventNameEnumTypeTransformer().decode(value);

  static List<WebhookEmailOpenedPayloadEventNameEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookEmailOpenedPayloadEventNameEnum>[]
      : json
          .map((value) => WebhookEmailOpenedPayloadEventNameEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WebhookEmailOpenedPayloadEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookEmailOpenedPayloadEventNameEnum].
class WebhookEmailOpenedPayloadEventNameEnumTypeTransformer {
  const WebhookEmailOpenedPayloadEventNameEnumTypeTransformer._();

  factory WebhookEmailOpenedPayloadEventNameEnumTypeTransformer() => _instance ??= WebhookEmailOpenedPayloadEventNameEnumTypeTransformer._();

  String encode(WebhookEmailOpenedPayloadEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookEmailOpenedPayloadEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookEmailOpenedPayloadEventNameEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'EMAIL_RECEIVED': return WebhookEmailOpenedPayloadEventNameEnum.EMAIL_RECEIVED;
      case r'NEW_EMAIL': return WebhookEmailOpenedPayloadEventNameEnum.NEW_EMAIL;
      case r'NEW_CONTACT': return WebhookEmailOpenedPayloadEventNameEnum.NEW_CONTACT;
      case r'NEW_ATTACHMENT': return WebhookEmailOpenedPayloadEventNameEnum.NEW_ATTACHMENT;
      case r'EMAIL_OPENED': return WebhookEmailOpenedPayloadEventNameEnum.EMAIL_OPENED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WebhookEmailOpenedPayloadEventNameEnumTypeTransformer] instance.
  static WebhookEmailOpenedPayloadEventNameEnumTypeTransformer _instance;
}

