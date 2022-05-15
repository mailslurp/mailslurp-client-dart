//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookBounceRecipientPayload {
  /// Returns a new [WebhookBounceRecipientPayload] instance.
  WebhookBounceRecipientPayload({
    @required this.messageId,
    @required this.webhookId,
    @required this.eventName,
    this.webhookName,
    @required this.recipient,
  });

  /// Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
  String messageId;

  /// ID of webhook entity being triggered
  String webhookId;

  /// Name of the event type webhook is being triggered for.
  WebhookBounceRecipientPayloadEventNameEnum eventName;

  /// Name of the webhook being triggered
  String webhookName;

  /// Email address that caused a bounce. Make note of the address and try not to message it again to preserve your reputation.
  String recipient;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookBounceRecipientPayload &&
     other.messageId == messageId &&
     other.webhookId == webhookId &&
     other.eventName == eventName &&
     other.webhookName == webhookName &&
     other.recipient == recipient;

  @override
  int get hashCode =>
    (messageId == null ? 0 : messageId.hashCode) +
    (webhookId == null ? 0 : webhookId.hashCode) +
    (eventName == null ? 0 : eventName.hashCode) +
    (webhookName == null ? 0 : webhookName.hashCode) +
    (recipient == null ? 0 : recipient.hashCode);

  @override
  String toString() => 'WebhookBounceRecipientPayload[messageId=$messageId, webhookId=$webhookId, eventName=$eventName, webhookName=$webhookName, recipient=$recipient]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'messageId'] = messageId;
      json[r'webhookId'] = webhookId;
      json[r'eventName'] = eventName;
    if (webhookName != null) {
      json[r'webhookName'] = webhookName;
    }
      json[r'recipient'] = recipient;
    return json;
  }

  /// Returns a new [WebhookBounceRecipientPayload] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookBounceRecipientPayload fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookBounceRecipientPayload(
        messageId: json[r'messageId'],
        webhookId: json[r'webhookId'],
        eventName: WebhookBounceRecipientPayloadEventNameEnum.fromJson(json[r'eventName']),
        webhookName: json[r'webhookName'],
        recipient: json[r'recipient'],
    );

  static List<WebhookBounceRecipientPayload> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookBounceRecipientPayload>[]
      : json.map((v) => WebhookBounceRecipientPayload.fromJson(v)).toList(growable: true == growable);

  static Map<String, WebhookBounceRecipientPayload> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WebhookBounceRecipientPayload>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WebhookBounceRecipientPayload.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WebhookBounceRecipientPayload-objects as value to a dart map
  static Map<String, List<WebhookBounceRecipientPayload>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WebhookBounceRecipientPayload>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WebhookBounceRecipientPayload.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Name of the event type webhook is being triggered for.
class WebhookBounceRecipientPayloadEventNameEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookBounceRecipientPayloadEventNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_RECEIVED = WebhookBounceRecipientPayloadEventNameEnum._(r'EMAIL_RECEIVED');
  static const NEW_EMAIL = WebhookBounceRecipientPayloadEventNameEnum._(r'NEW_EMAIL');
  static const NEW_CONTACT = WebhookBounceRecipientPayloadEventNameEnum._(r'NEW_CONTACT');
  static const NEW_ATTACHMENT = WebhookBounceRecipientPayloadEventNameEnum._(r'NEW_ATTACHMENT');
  static const EMAIL_OPENED = WebhookBounceRecipientPayloadEventNameEnum._(r'EMAIL_OPENED');
  static const EMAIL_READ = WebhookBounceRecipientPayloadEventNameEnum._(r'EMAIL_READ');
  static const BOUNCE = WebhookBounceRecipientPayloadEventNameEnum._(r'BOUNCE');
  static const BOUNCE_RECIPIENT = WebhookBounceRecipientPayloadEventNameEnum._(r'BOUNCE_RECIPIENT');

  /// List of all possible values in this [enum][WebhookBounceRecipientPayloadEventNameEnum].
  static const values = <WebhookBounceRecipientPayloadEventNameEnum>[
    EMAIL_RECEIVED,
    NEW_EMAIL,
    NEW_CONTACT,
    NEW_ATTACHMENT,
    EMAIL_OPENED,
    EMAIL_READ,
    BOUNCE,
    BOUNCE_RECIPIENT,
  ];

  static WebhookBounceRecipientPayloadEventNameEnum fromJson(dynamic value) =>
    WebhookBounceRecipientPayloadEventNameEnumTypeTransformer().decode(value);

  static List<WebhookBounceRecipientPayloadEventNameEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookBounceRecipientPayloadEventNameEnum>[]
      : json
          .map((value) => WebhookBounceRecipientPayloadEventNameEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WebhookBounceRecipientPayloadEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookBounceRecipientPayloadEventNameEnum].
class WebhookBounceRecipientPayloadEventNameEnumTypeTransformer {
  const WebhookBounceRecipientPayloadEventNameEnumTypeTransformer._();

  factory WebhookBounceRecipientPayloadEventNameEnumTypeTransformer() => _instance ??= WebhookBounceRecipientPayloadEventNameEnumTypeTransformer._();

  String encode(WebhookBounceRecipientPayloadEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookBounceRecipientPayloadEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookBounceRecipientPayloadEventNameEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'EMAIL_RECEIVED': return WebhookBounceRecipientPayloadEventNameEnum.EMAIL_RECEIVED;
      case r'NEW_EMAIL': return WebhookBounceRecipientPayloadEventNameEnum.NEW_EMAIL;
      case r'NEW_CONTACT': return WebhookBounceRecipientPayloadEventNameEnum.NEW_CONTACT;
      case r'NEW_ATTACHMENT': return WebhookBounceRecipientPayloadEventNameEnum.NEW_ATTACHMENT;
      case r'EMAIL_OPENED': return WebhookBounceRecipientPayloadEventNameEnum.EMAIL_OPENED;
      case r'EMAIL_READ': return WebhookBounceRecipientPayloadEventNameEnum.EMAIL_READ;
      case r'BOUNCE': return WebhookBounceRecipientPayloadEventNameEnum.BOUNCE;
      case r'BOUNCE_RECIPIENT': return WebhookBounceRecipientPayloadEventNameEnum.BOUNCE_RECIPIENT;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WebhookBounceRecipientPayloadEventNameEnumTypeTransformer] instance.
  static WebhookBounceRecipientPayloadEventNameEnumTypeTransformer _instance;
}

