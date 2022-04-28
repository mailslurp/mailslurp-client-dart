//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookBouncePayload {
  /// Returns a new [WebhookBouncePayload] instance.
  WebhookBouncePayload({
    @required this.messageId,
    @required this.webhookId,
    @required this.eventName,
    this.webhookName,
    @required this.bounceId,
    this.sentToRecipients = const [],
    @required this.sender,
    this.bounceRecipients = const [],
  });

  /// Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
  String messageId;

  /// ID of webhook entity being triggered
  String webhookId;

  /// Name of the event type webhook is being triggered for.
  WebhookBouncePayloadEventNameEnum eventName;

  /// Name of the webhook being triggered
  String webhookName;

  /// ID of the bounce email record. Use the ID with the bounce controller to view more information
  String bounceId;

  List<String> sentToRecipients;

  String sender;

  /// Email addresses that resulted in a bounce or email being rejected. Please save these recipients and avoid emailing them in the future to maintain your reputation.
  List<String> bounceRecipients;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookBouncePayload &&
     other.messageId == messageId &&
     other.webhookId == webhookId &&
     other.eventName == eventName &&
     other.webhookName == webhookName &&
     other.bounceId == bounceId &&
     other.sentToRecipients == sentToRecipients &&
     other.sender == sender &&
     other.bounceRecipients == bounceRecipients;

  @override
  int get hashCode =>
    (messageId == null ? 0 : messageId.hashCode) +
    (webhookId == null ? 0 : webhookId.hashCode) +
    (eventName == null ? 0 : eventName.hashCode) +
    (webhookName == null ? 0 : webhookName.hashCode) +
    (bounceId == null ? 0 : bounceId.hashCode) +
    (sentToRecipients == null ? 0 : sentToRecipients.hashCode) +
    (sender == null ? 0 : sender.hashCode) +
    (bounceRecipients == null ? 0 : bounceRecipients.hashCode);

  @override
  String toString() => 'WebhookBouncePayload[messageId=$messageId, webhookId=$webhookId, eventName=$eventName, webhookName=$webhookName, bounceId=$bounceId, sentToRecipients=$sentToRecipients, sender=$sender, bounceRecipients=$bounceRecipients]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'messageId'] = messageId;
      json[r'webhookId'] = webhookId;
      json[r'eventName'] = eventName;
    if (webhookName != null) {
      json[r'webhookName'] = webhookName;
    }
      json[r'bounceId'] = bounceId;
    if (sentToRecipients != null) {
      json[r'sentToRecipients'] = sentToRecipients;
    }
      json[r'sender'] = sender;
    if (bounceRecipients != null) {
      json[r'bounceRecipients'] = bounceRecipients;
    }
    return json;
  }

  /// Returns a new [WebhookBouncePayload] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookBouncePayload fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookBouncePayload(
        messageId: json[r'messageId'],
        webhookId: json[r'webhookId'],
        eventName: WebhookBouncePayloadEventNameEnum.fromJson(json[r'eventName']),
        webhookName: json[r'webhookName'],
        bounceId: json[r'bounceId'],
        sentToRecipients: json[r'sentToRecipients'] == null
          ? null
          : (json[r'sentToRecipients'] as List).cast<String>(),
        sender: json[r'sender'],
        bounceRecipients: json[r'bounceRecipients'] == null
          ? null
          : (json[r'bounceRecipients'] as List).cast<String>(),
    );

  static List<WebhookBouncePayload> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookBouncePayload>[]
      : json.map((v) => WebhookBouncePayload.fromJson(v)).toList(growable: true == growable);

  static Map<String, WebhookBouncePayload> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WebhookBouncePayload>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WebhookBouncePayload.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WebhookBouncePayload-objects as value to a dart map
  static Map<String, List<WebhookBouncePayload>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WebhookBouncePayload>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WebhookBouncePayload.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Name of the event type webhook is being triggered for.
class WebhookBouncePayloadEventNameEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookBouncePayloadEventNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_RECEIVED = WebhookBouncePayloadEventNameEnum._(r'EMAIL_RECEIVED');
  static const NEW_EMAIL = WebhookBouncePayloadEventNameEnum._(r'NEW_EMAIL');
  static const NEW_CONTACT = WebhookBouncePayloadEventNameEnum._(r'NEW_CONTACT');
  static const NEW_ATTACHMENT = WebhookBouncePayloadEventNameEnum._(r'NEW_ATTACHMENT');
  static const EMAIL_OPENED = WebhookBouncePayloadEventNameEnum._(r'EMAIL_OPENED');
  static const EMAIL_READ = WebhookBouncePayloadEventNameEnum._(r'EMAIL_READ');
  static const BOUNCE = WebhookBouncePayloadEventNameEnum._(r'BOUNCE');
  static const BOUNCE_RECIPIENT = WebhookBouncePayloadEventNameEnum._(r'BOUNCE_RECIPIENT');

  /// List of all possible values in this [enum][WebhookBouncePayloadEventNameEnum].
  static const values = <WebhookBouncePayloadEventNameEnum>[
    EMAIL_RECEIVED,
    NEW_EMAIL,
    NEW_CONTACT,
    NEW_ATTACHMENT,
    EMAIL_OPENED,
    EMAIL_READ,
    BOUNCE,
    BOUNCE_RECIPIENT,
  ];

  static WebhookBouncePayloadEventNameEnum fromJson(dynamic value) =>
    WebhookBouncePayloadEventNameEnumTypeTransformer().decode(value);

  static List<WebhookBouncePayloadEventNameEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookBouncePayloadEventNameEnum>[]
      : json
          .map((value) => WebhookBouncePayloadEventNameEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WebhookBouncePayloadEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookBouncePayloadEventNameEnum].
class WebhookBouncePayloadEventNameEnumTypeTransformer {
  const WebhookBouncePayloadEventNameEnumTypeTransformer._();

  factory WebhookBouncePayloadEventNameEnumTypeTransformer() => _instance ??= WebhookBouncePayloadEventNameEnumTypeTransformer._();

  String encode(WebhookBouncePayloadEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookBouncePayloadEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookBouncePayloadEventNameEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'EMAIL_RECEIVED': return WebhookBouncePayloadEventNameEnum.EMAIL_RECEIVED;
      case r'NEW_EMAIL': return WebhookBouncePayloadEventNameEnum.NEW_EMAIL;
      case r'NEW_CONTACT': return WebhookBouncePayloadEventNameEnum.NEW_CONTACT;
      case r'NEW_ATTACHMENT': return WebhookBouncePayloadEventNameEnum.NEW_ATTACHMENT;
      case r'EMAIL_OPENED': return WebhookBouncePayloadEventNameEnum.EMAIL_OPENED;
      case r'EMAIL_READ': return WebhookBouncePayloadEventNameEnum.EMAIL_READ;
      case r'BOUNCE': return WebhookBouncePayloadEventNameEnum.BOUNCE;
      case r'BOUNCE_RECIPIENT': return WebhookBouncePayloadEventNameEnum.BOUNCE_RECIPIENT;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WebhookBouncePayloadEventNameEnumTypeTransformer] instance.
  static WebhookBouncePayloadEventNameEnumTypeTransformer _instance;
}

