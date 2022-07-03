//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookEmailReadPayload {
  /// Returns a new [WebhookEmailReadPayload] instance.
  WebhookEmailReadPayload({
    @required this.messageId,
    @required this.webhookId,
    @required this.eventName,
    this.webhookName,
    @required this.emailId,
    @required this.inboxId,
    @required this.emailIsRead,
    @required this.createdAt,
  });

  /// Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
  String messageId;

  /// ID of webhook entity being triggered
  String webhookId;

  /// Name of the event type webhook is being triggered for.
  WebhookEmailReadPayloadEventNameEnum eventName;

  /// Name of the webhook being triggered
  String webhookName;

  /// ID of the email that was received. Use this ID for fetching the email with the `EmailController`.
  String emailId;

  /// Id of the inbox that received an email
  String inboxId;

  /// Is the email read
  bool emailIsRead;

  /// Date time of event creation
  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookEmailReadPayload &&
     other.messageId == messageId &&
     other.webhookId == webhookId &&
     other.eventName == eventName &&
     other.webhookName == webhookName &&
     other.emailId == emailId &&
     other.inboxId == inboxId &&
     other.emailIsRead == emailIsRead &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    (messageId == null ? 0 : messageId.hashCode) +
    (webhookId == null ? 0 : webhookId.hashCode) +
    (eventName == null ? 0 : eventName.hashCode) +
    (webhookName == null ? 0 : webhookName.hashCode) +
    (emailId == null ? 0 : emailId.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (emailIsRead == null ? 0 : emailIsRead.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() => 'WebhookEmailReadPayload[messageId=$messageId, webhookId=$webhookId, eventName=$eventName, webhookName=$webhookName, emailId=$emailId, inboxId=$inboxId, emailIsRead=$emailIsRead, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'messageId'] = messageId;
      json[r'webhookId'] = webhookId;
      json[r'eventName'] = eventName;
    if (webhookName != null) {
      json[r'webhookName'] = webhookName;
    }
      json[r'emailId'] = emailId;
      json[r'inboxId'] = inboxId;
      json[r'emailIsRead'] = emailIsRead;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [WebhookEmailReadPayload] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookEmailReadPayload fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookEmailReadPayload(
        messageId: json[r'messageId'],
        webhookId: json[r'webhookId'],
        eventName: WebhookEmailReadPayloadEventNameEnum.fromJson(json[r'eventName']),
        webhookName: json[r'webhookName'],
        emailId: json[r'emailId'],
        inboxId: json[r'inboxId'],
        emailIsRead: json[r'emailIsRead'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
    );

  static List<WebhookEmailReadPayload> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookEmailReadPayload>[]
      : json.map((v) => WebhookEmailReadPayload.fromJson(v)).toList(growable: true == growable);

  static Map<String, WebhookEmailReadPayload> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WebhookEmailReadPayload>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WebhookEmailReadPayload.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WebhookEmailReadPayload-objects as value to a dart map
  static Map<String, List<WebhookEmailReadPayload>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WebhookEmailReadPayload>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WebhookEmailReadPayload.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Name of the event type webhook is being triggered for.
class WebhookEmailReadPayloadEventNameEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookEmailReadPayloadEventNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_RECEIVED = WebhookEmailReadPayloadEventNameEnum._(r'EMAIL_RECEIVED');
  static const NEW_EMAIL = WebhookEmailReadPayloadEventNameEnum._(r'NEW_EMAIL');
  static const NEW_CONTACT = WebhookEmailReadPayloadEventNameEnum._(r'NEW_CONTACT');
  static const NEW_ATTACHMENT = WebhookEmailReadPayloadEventNameEnum._(r'NEW_ATTACHMENT');
  static const EMAIL_OPENED = WebhookEmailReadPayloadEventNameEnum._(r'EMAIL_OPENED');
  static const EMAIL_READ = WebhookEmailReadPayloadEventNameEnum._(r'EMAIL_READ');
  static const BOUNCE = WebhookEmailReadPayloadEventNameEnum._(r'BOUNCE');
  static const BOUNCE_RECIPIENT = WebhookEmailReadPayloadEventNameEnum._(r'BOUNCE_RECIPIENT');
  static const NEW_SMS = WebhookEmailReadPayloadEventNameEnum._(r'NEW_SMS');

  /// List of all possible values in this [enum][WebhookEmailReadPayloadEventNameEnum].
  static const values = <WebhookEmailReadPayloadEventNameEnum>[
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

  static WebhookEmailReadPayloadEventNameEnum fromJson(dynamic value) =>
    WebhookEmailReadPayloadEventNameEnumTypeTransformer().decode(value);

  static List<WebhookEmailReadPayloadEventNameEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookEmailReadPayloadEventNameEnum>[]
      : json
          .map((value) => WebhookEmailReadPayloadEventNameEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WebhookEmailReadPayloadEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookEmailReadPayloadEventNameEnum].
class WebhookEmailReadPayloadEventNameEnumTypeTransformer {
  const WebhookEmailReadPayloadEventNameEnumTypeTransformer._();

  factory WebhookEmailReadPayloadEventNameEnumTypeTransformer() => _instance ??= WebhookEmailReadPayloadEventNameEnumTypeTransformer._();

  String encode(WebhookEmailReadPayloadEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookEmailReadPayloadEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookEmailReadPayloadEventNameEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'EMAIL_RECEIVED': return WebhookEmailReadPayloadEventNameEnum.EMAIL_RECEIVED;
      case r'NEW_EMAIL': return WebhookEmailReadPayloadEventNameEnum.NEW_EMAIL;
      case r'NEW_CONTACT': return WebhookEmailReadPayloadEventNameEnum.NEW_CONTACT;
      case r'NEW_ATTACHMENT': return WebhookEmailReadPayloadEventNameEnum.NEW_ATTACHMENT;
      case r'EMAIL_OPENED': return WebhookEmailReadPayloadEventNameEnum.EMAIL_OPENED;
      case r'EMAIL_READ': return WebhookEmailReadPayloadEventNameEnum.EMAIL_READ;
      case r'BOUNCE': return WebhookEmailReadPayloadEventNameEnum.BOUNCE;
      case r'BOUNCE_RECIPIENT': return WebhookEmailReadPayloadEventNameEnum.BOUNCE_RECIPIENT;
      case r'NEW_SMS': return WebhookEmailReadPayloadEventNameEnum.NEW_SMS;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WebhookEmailReadPayloadEventNameEnumTypeTransformer] instance.
  static WebhookEmailReadPayloadEventNameEnumTypeTransformer _instance;
}

