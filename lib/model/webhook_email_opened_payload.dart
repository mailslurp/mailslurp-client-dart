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
    @required this.messageId,
    @required this.webhookId,
    @required this.eventName,
    this.webhookName,
    @required this.inboxId,
    @required this.pixelId,
    @required this.sentEmailId,
    @required this.recipient,
    @required this.createdAt,
  });

  /// Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
  String messageId;

  /// ID of webhook entity being triggered
  String webhookId;

  /// Name of the event type webhook is being triggered for.
  WebhookEmailOpenedPayloadEventNameEnum eventName;

  /// Name of the webhook being triggered
  String webhookName;

  /// Id of the inbox that received an email
  String inboxId;

  /// ID of the tracking pixel
  String pixelId;

  /// ID of sent email
  String sentEmailId;

  /// Email address for the recipient of the tracking pixel
  String recipient;

  /// Date time of event creation
  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookEmailOpenedPayload &&
     other.messageId == messageId &&
     other.webhookId == webhookId &&
     other.eventName == eventName &&
     other.webhookName == webhookName &&
     other.inboxId == inboxId &&
     other.pixelId == pixelId &&
     other.sentEmailId == sentEmailId &&
     other.recipient == recipient &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    (messageId == null ? 0 : messageId.hashCode) +
    (webhookId == null ? 0 : webhookId.hashCode) +
    (eventName == null ? 0 : eventName.hashCode) +
    (webhookName == null ? 0 : webhookName.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (pixelId == null ? 0 : pixelId.hashCode) +
    (sentEmailId == null ? 0 : sentEmailId.hashCode) +
    (recipient == null ? 0 : recipient.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() => 'WebhookEmailOpenedPayload[messageId=$messageId, webhookId=$webhookId, eventName=$eventName, webhookName=$webhookName, inboxId=$inboxId, pixelId=$pixelId, sentEmailId=$sentEmailId, recipient=$recipient, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'messageId'] = messageId;
      json[r'webhookId'] = webhookId;
      json[r'eventName'] = eventName;
    if (webhookName != null) {
      json[r'webhookName'] = webhookName;
    }
      json[r'inboxId'] = inboxId;
      json[r'pixelId'] = pixelId;
      json[r'sentEmailId'] = sentEmailId;
      json[r'recipient'] = recipient;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [WebhookEmailOpenedPayload] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookEmailOpenedPayload fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookEmailOpenedPayload(
        messageId: json[r'messageId'],
        webhookId: json[r'webhookId'],
        eventName: WebhookEmailOpenedPayloadEventNameEnum.fromJson(json[r'eventName']),
        webhookName: json[r'webhookName'],
        inboxId: json[r'inboxId'],
        pixelId: json[r'pixelId'],
        sentEmailId: json[r'sentEmailId'],
        recipient: json[r'recipient'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
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
  static const EMAIL_READ = WebhookEmailOpenedPayloadEventNameEnum._(r'EMAIL_READ');
  static const BOUNCE = WebhookEmailOpenedPayloadEventNameEnum._(r'BOUNCE');
  static const BOUNCE_RECIPIENT = WebhookEmailOpenedPayloadEventNameEnum._(r'BOUNCE_RECIPIENT');
  static const NEW_SMS = WebhookEmailOpenedPayloadEventNameEnum._(r'NEW_SMS');

  /// List of all possible values in this [enum][WebhookEmailOpenedPayloadEventNameEnum].
  static const values = <WebhookEmailOpenedPayloadEventNameEnum>[
    EMAIL_RECEIVED,
    NEW_EMAIL,
    NEW_CONTACT,
    NEW_ATTACHMENT,
    EMAIL_OPENED,
    EMAIL_READ,
    BOUNCE,
    BOUNCE_RECIPIENT,
    NEW_SMS,
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
      case r'EMAIL_READ': return WebhookEmailOpenedPayloadEventNameEnum.EMAIL_READ;
      case r'BOUNCE': return WebhookEmailOpenedPayloadEventNameEnum.BOUNCE;
      case r'BOUNCE_RECIPIENT': return WebhookEmailOpenedPayloadEventNameEnum.BOUNCE_RECIPIENT;
      case r'NEW_SMS': return WebhookEmailOpenedPayloadEventNameEnum.NEW_SMS;
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

