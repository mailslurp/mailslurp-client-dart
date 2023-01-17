//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookNewSmsPayload {
  /// Returns a new [WebhookNewSmsPayload] instance.
  WebhookNewSmsPayload({
    @required this.messageId,
    @required this.webhookId,
    @required this.eventName,
    this.webhookName,
    @required this.smsId,
    @required this.userId,
    @required this.phoneNumber,
    @required this.toNumber,
    @required this.fromNumber,
    @required this.body,
    @required this.read,
  });

  /// Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
  String messageId;

  /// ID of webhook entity being triggered
  String webhookId;

  /// Name of the event type webhook is being triggered for.
  WebhookNewSmsPayloadEventNameEnum eventName;

  /// Name of the webhook being triggered
  String webhookName;

  /// ID of SMS message
  String smsId;

  /// User ID of event
  String userId;

  /// ID of phone number receiving SMS
  String phoneNumber;

  /// Recipient phone number
  String toNumber;

  /// Sender phone number
  String fromNumber;

  /// SMS message body
  String body;

  /// SMS has been read
  bool read;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookNewSmsPayload &&
     other.messageId == messageId &&
     other.webhookId == webhookId &&
     other.eventName == eventName &&
     other.webhookName == webhookName &&
     other.smsId == smsId &&
     other.userId == userId &&
     other.phoneNumber == phoneNumber &&
     other.toNumber == toNumber &&
     other.fromNumber == fromNumber &&
     other.body == body &&
     other.read == read;

  @override
  int get hashCode =>
    (messageId == null ? 0 : messageId.hashCode) +
    (webhookId == null ? 0 : webhookId.hashCode) +
    (eventName == null ? 0 : eventName.hashCode) +
    (webhookName == null ? 0 : webhookName.hashCode) +
    (smsId == null ? 0 : smsId.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber.hashCode) +
    (toNumber == null ? 0 : toNumber.hashCode) +
    (fromNumber == null ? 0 : fromNumber.hashCode) +
    (body == null ? 0 : body.hashCode) +
    (read == null ? 0 : read.hashCode);

  @override
  String toString() => 'WebhookNewSmsPayload[messageId=$messageId, webhookId=$webhookId, eventName=$eventName, webhookName=$webhookName, smsId=$smsId, userId=$userId, phoneNumber=$phoneNumber, toNumber=$toNumber, fromNumber=$fromNumber, body=$body, read=$read]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'messageId'] = messageId;
      json[r'webhookId'] = webhookId;
      json[r'eventName'] = eventName;
    if (webhookName != null) {
      json[r'webhookName'] = webhookName;
    }
      json[r'smsId'] = smsId;
      json[r'userId'] = userId;
      json[r'phoneNumber'] = phoneNumber;
      json[r'toNumber'] = toNumber;
      json[r'fromNumber'] = fromNumber;
      json[r'body'] = body;
      json[r'read'] = read;
    return json;
  }

  /// Returns a new [WebhookNewSmsPayload] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookNewSmsPayload fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookNewSmsPayload(
        messageId: json[r'messageId'],
        webhookId: json[r'webhookId'],
        eventName: WebhookNewSmsPayloadEventNameEnum.fromJson(json[r'eventName']),
        webhookName: json[r'webhookName'],
        smsId: json[r'smsId'],
        userId: json[r'userId'],
        phoneNumber: json[r'phoneNumber'],
        toNumber: json[r'toNumber'],
        fromNumber: json[r'fromNumber'],
        body: json[r'body'],
        read: json[r'read'],
    );

  static List<WebhookNewSmsPayload> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookNewSmsPayload>[]
      : json.map((v) => WebhookNewSmsPayload.fromJson(v)).toList(growable: true == growable);

  static Map<String, WebhookNewSmsPayload> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WebhookNewSmsPayload>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WebhookNewSmsPayload.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WebhookNewSmsPayload-objects as value to a dart map
  static Map<String, List<WebhookNewSmsPayload>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WebhookNewSmsPayload>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WebhookNewSmsPayload.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Name of the event type webhook is being triggered for.
class WebhookNewSmsPayloadEventNameEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookNewSmsPayloadEventNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_RECEIVED = WebhookNewSmsPayloadEventNameEnum._(r'EMAIL_RECEIVED');
  static const NEW_EMAIL = WebhookNewSmsPayloadEventNameEnum._(r'NEW_EMAIL');
  static const NEW_CONTACT = WebhookNewSmsPayloadEventNameEnum._(r'NEW_CONTACT');
  static const NEW_ATTACHMENT = WebhookNewSmsPayloadEventNameEnum._(r'NEW_ATTACHMENT');
  static const EMAIL_OPENED = WebhookNewSmsPayloadEventNameEnum._(r'EMAIL_OPENED');
  static const EMAIL_READ = WebhookNewSmsPayloadEventNameEnum._(r'EMAIL_READ');
  static const DELIVERY_STATUS = WebhookNewSmsPayloadEventNameEnum._(r'DELIVERY_STATUS');
  static const BOUNCE = WebhookNewSmsPayloadEventNameEnum._(r'BOUNCE');
  static const BOUNCE_RECIPIENT = WebhookNewSmsPayloadEventNameEnum._(r'BOUNCE_RECIPIENT');
  static const NEW_SMS = WebhookNewSmsPayloadEventNameEnum._(r'NEW_SMS');

  /// List of all possible values in this [enum][WebhookNewSmsPayloadEventNameEnum].
  static const values = <WebhookNewSmsPayloadEventNameEnum>[
    EMAIL_RECEIVED,
    NEW_EMAIL,
    NEW_CONTACT,
    NEW_ATTACHMENT,
    EMAIL_OPENED,
    EMAIL_READ,
    DELIVERY_STATUS,
    BOUNCE,
    BOUNCE_RECIPIENT,
    NEW_SMS,
  ];

  static WebhookNewSmsPayloadEventNameEnum fromJson(dynamic value) =>
    WebhookNewSmsPayloadEventNameEnumTypeTransformer().decode(value);

  static List<WebhookNewSmsPayloadEventNameEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookNewSmsPayloadEventNameEnum>[]
      : json
          .map((value) => WebhookNewSmsPayloadEventNameEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WebhookNewSmsPayloadEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookNewSmsPayloadEventNameEnum].
class WebhookNewSmsPayloadEventNameEnumTypeTransformer {
  const WebhookNewSmsPayloadEventNameEnumTypeTransformer._();

  factory WebhookNewSmsPayloadEventNameEnumTypeTransformer() => _instance ??= WebhookNewSmsPayloadEventNameEnumTypeTransformer._();

  String encode(WebhookNewSmsPayloadEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookNewSmsPayloadEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookNewSmsPayloadEventNameEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'EMAIL_RECEIVED': return WebhookNewSmsPayloadEventNameEnum.EMAIL_RECEIVED;
      case r'NEW_EMAIL': return WebhookNewSmsPayloadEventNameEnum.NEW_EMAIL;
      case r'NEW_CONTACT': return WebhookNewSmsPayloadEventNameEnum.NEW_CONTACT;
      case r'NEW_ATTACHMENT': return WebhookNewSmsPayloadEventNameEnum.NEW_ATTACHMENT;
      case r'EMAIL_OPENED': return WebhookNewSmsPayloadEventNameEnum.EMAIL_OPENED;
      case r'EMAIL_READ': return WebhookNewSmsPayloadEventNameEnum.EMAIL_READ;
      case r'DELIVERY_STATUS': return WebhookNewSmsPayloadEventNameEnum.DELIVERY_STATUS;
      case r'BOUNCE': return WebhookNewSmsPayloadEventNameEnum.BOUNCE;
      case r'BOUNCE_RECIPIENT': return WebhookNewSmsPayloadEventNameEnum.BOUNCE_RECIPIENT;
      case r'NEW_SMS': return WebhookNewSmsPayloadEventNameEnum.NEW_SMS;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WebhookNewSmsPayloadEventNameEnumTypeTransformer] instance.
  static WebhookNewSmsPayloadEventNameEnumTypeTransformer _instance;
}

