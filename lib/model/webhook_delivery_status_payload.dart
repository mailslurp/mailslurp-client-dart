//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookDeliveryStatusPayload {
  /// Returns a new [WebhookDeliveryStatusPayload] instance.
  WebhookDeliveryStatusPayload({
    @required this.messageId,
    @required this.webhookId,
    @required this.eventName,
    this.webhookName,
    @required this.id,
    @required this.userId,
    this.sentId,
    this.remoteMtaIp,
    this.inboxId,
    this.reportingMta,
    this.recipients,
    this.smtpResponse,
    this.smtpStatusCode,
    this.processingTimeMillis,
    this.received,
    this.subject,
  });

  /// Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
  String messageId;

  /// ID of webhook entity being triggered
  String webhookId;

  /// Name of the event type webhook is being triggered for.
  WebhookDeliveryStatusPayloadEventNameEnum eventName;

  /// Name of the webhook being triggered
  String webhookName;

  /// ID of delivery status
  String id;

  /// User ID of event
  String userId;

  /// ID of sent email
  String sentId;

  /// IP address of the remote Mail Transfer Agent
  String remoteMtaIp;

  /// Id of the inbox
  String inboxId;

  /// Mail Transfer Agent reporting delivery status
  String reportingMta;

  /// Recipients for delivery
  List<String> recipients;

  /// SMTP server response message
  String smtpResponse;

  /// SMTP server status
  int smtpStatusCode;

  /// Time in milliseconds for delivery processing
  int processingTimeMillis;

  /// Time event was received
  DateTime received;

  /// Email subject
  String subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookDeliveryStatusPayload &&
     other.messageId == messageId &&
     other.webhookId == webhookId &&
     other.eventName == eventName &&
     other.webhookName == webhookName &&
     other.id == id &&
     other.userId == userId &&
     other.sentId == sentId &&
     other.remoteMtaIp == remoteMtaIp &&
     other.inboxId == inboxId &&
     other.reportingMta == reportingMta &&
     other.recipients == recipients &&
     other.smtpResponse == smtpResponse &&
     other.smtpStatusCode == smtpStatusCode &&
     other.processingTimeMillis == processingTimeMillis &&
     other.received == received &&
     other.subject == subject;

  @override
  int get hashCode =>
    (messageId == null ? 0 : messageId.hashCode) +
    (webhookId == null ? 0 : webhookId.hashCode) +
    (eventName == null ? 0 : eventName.hashCode) +
    (webhookName == null ? 0 : webhookName.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (sentId == null ? 0 : sentId.hashCode) +
    (remoteMtaIp == null ? 0 : remoteMtaIp.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (reportingMta == null ? 0 : reportingMta.hashCode) +
    (recipients == null ? 0 : recipients.hashCode) +
    (smtpResponse == null ? 0 : smtpResponse.hashCode) +
    (smtpStatusCode == null ? 0 : smtpStatusCode.hashCode) +
    (processingTimeMillis == null ? 0 : processingTimeMillis.hashCode) +
    (received == null ? 0 : received.hashCode) +
    (subject == null ? 0 : subject.hashCode);

  @override
  String toString() => 'WebhookDeliveryStatusPayload[messageId=$messageId, webhookId=$webhookId, eventName=$eventName, webhookName=$webhookName, id=$id, userId=$userId, sentId=$sentId, remoteMtaIp=$remoteMtaIp, inboxId=$inboxId, reportingMta=$reportingMta, recipients=$recipients, smtpResponse=$smtpResponse, smtpStatusCode=$smtpStatusCode, processingTimeMillis=$processingTimeMillis, received=$received, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'messageId'] = messageId;
      json[r'webhookId'] = webhookId;
      json[r'eventName'] = eventName;
    if (webhookName != null) {
      json[r'webhookName'] = webhookName;
    }
      json[r'id'] = id;
      json[r'userId'] = userId;
    if (sentId != null) {
      json[r'sentId'] = sentId;
    }
    if (remoteMtaIp != null) {
      json[r'remoteMtaIp'] = remoteMtaIp;
    }
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
    if (reportingMta != null) {
      json[r'reportingMta'] = reportingMta;
    }
    if (recipients != null) {
      json[r'recipients'] = recipients;
    }
    if (smtpResponse != null) {
      json[r'smtpResponse'] = smtpResponse;
    }
    if (smtpStatusCode != null) {
      json[r'smtpStatusCode'] = smtpStatusCode;
    }
    if (processingTimeMillis != null) {
      json[r'processingTimeMillis'] = processingTimeMillis;
    }
    if (received != null) {
      json[r'received'] = received.toUtc().toIso8601String();
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
    return json;
  }

  /// Returns a new [WebhookDeliveryStatusPayload] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookDeliveryStatusPayload fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookDeliveryStatusPayload(
        messageId: json[r'messageId'],
        webhookId: json[r'webhookId'],
        eventName: WebhookDeliveryStatusPayloadEventNameEnum.fromJson(json[r'eventName']),
        webhookName: json[r'webhookName'],
        id: json[r'id'],
        userId: json[r'userId'],
        sentId: json[r'sentId'],
        remoteMtaIp: json[r'remoteMtaIp'],
        inboxId: json[r'inboxId'],
        reportingMta: json[r'reportingMta'],
        recipients: json[r'recipients'] == null
          ? null
          : (json[r'recipients'] as List).cast<String>(),
        smtpResponse: json[r'smtpResponse'],
        smtpStatusCode: json[r'smtpStatusCode'],
        processingTimeMillis: json[r'processingTimeMillis'],
        received: json[r'received'] == null
          ? null
          : DateTime.parse(json[r'received']),
        subject: json[r'subject'],
    );

  static List<WebhookDeliveryStatusPayload> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookDeliveryStatusPayload>[]
      : json.map((v) => WebhookDeliveryStatusPayload.fromJson(v)).toList(growable: true == growable);

  static Map<String, WebhookDeliveryStatusPayload> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WebhookDeliveryStatusPayload>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WebhookDeliveryStatusPayload.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WebhookDeliveryStatusPayload-objects as value to a dart map
  static Map<String, List<WebhookDeliveryStatusPayload>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WebhookDeliveryStatusPayload>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WebhookDeliveryStatusPayload.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Name of the event type webhook is being triggered for.
class WebhookDeliveryStatusPayloadEventNameEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookDeliveryStatusPayloadEventNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_RECEIVED = WebhookDeliveryStatusPayloadEventNameEnum._(r'EMAIL_RECEIVED');
  static const NEW_EMAIL = WebhookDeliveryStatusPayloadEventNameEnum._(r'NEW_EMAIL');
  static const NEW_CONTACT = WebhookDeliveryStatusPayloadEventNameEnum._(r'NEW_CONTACT');
  static const NEW_ATTACHMENT = WebhookDeliveryStatusPayloadEventNameEnum._(r'NEW_ATTACHMENT');
  static const EMAIL_OPENED = WebhookDeliveryStatusPayloadEventNameEnum._(r'EMAIL_OPENED');
  static const EMAIL_READ = WebhookDeliveryStatusPayloadEventNameEnum._(r'EMAIL_READ');
  static const DELIVERY_STATUS = WebhookDeliveryStatusPayloadEventNameEnum._(r'DELIVERY_STATUS');
  static const BOUNCE = WebhookDeliveryStatusPayloadEventNameEnum._(r'BOUNCE');
  static const BOUNCE_RECIPIENT = WebhookDeliveryStatusPayloadEventNameEnum._(r'BOUNCE_RECIPIENT');
  static const NEW_SMS = WebhookDeliveryStatusPayloadEventNameEnum._(r'NEW_SMS');

  /// List of all possible values in this [enum][WebhookDeliveryStatusPayloadEventNameEnum].
  static const values = <WebhookDeliveryStatusPayloadEventNameEnum>[
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

  static WebhookDeliveryStatusPayloadEventNameEnum fromJson(dynamic value) =>
    WebhookDeliveryStatusPayloadEventNameEnumTypeTransformer().decode(value);

  static List<WebhookDeliveryStatusPayloadEventNameEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookDeliveryStatusPayloadEventNameEnum>[]
      : json
          .map((value) => WebhookDeliveryStatusPayloadEventNameEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WebhookDeliveryStatusPayloadEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookDeliveryStatusPayloadEventNameEnum].
class WebhookDeliveryStatusPayloadEventNameEnumTypeTransformer {
  const WebhookDeliveryStatusPayloadEventNameEnumTypeTransformer._();

  factory WebhookDeliveryStatusPayloadEventNameEnumTypeTransformer() => _instance ??= WebhookDeliveryStatusPayloadEventNameEnumTypeTransformer._();

  String encode(WebhookDeliveryStatusPayloadEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookDeliveryStatusPayloadEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookDeliveryStatusPayloadEventNameEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'EMAIL_RECEIVED': return WebhookDeliveryStatusPayloadEventNameEnum.EMAIL_RECEIVED;
      case r'NEW_EMAIL': return WebhookDeliveryStatusPayloadEventNameEnum.NEW_EMAIL;
      case r'NEW_CONTACT': return WebhookDeliveryStatusPayloadEventNameEnum.NEW_CONTACT;
      case r'NEW_ATTACHMENT': return WebhookDeliveryStatusPayloadEventNameEnum.NEW_ATTACHMENT;
      case r'EMAIL_OPENED': return WebhookDeliveryStatusPayloadEventNameEnum.EMAIL_OPENED;
      case r'EMAIL_READ': return WebhookDeliveryStatusPayloadEventNameEnum.EMAIL_READ;
      case r'DELIVERY_STATUS': return WebhookDeliveryStatusPayloadEventNameEnum.DELIVERY_STATUS;
      case r'BOUNCE': return WebhookDeliveryStatusPayloadEventNameEnum.BOUNCE;
      case r'BOUNCE_RECIPIENT': return WebhookDeliveryStatusPayloadEventNameEnum.BOUNCE_RECIPIENT;
      case r'NEW_SMS': return WebhookDeliveryStatusPayloadEventNameEnum.NEW_SMS;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WebhookDeliveryStatusPayloadEventNameEnumTypeTransformer] instance.
  static WebhookDeliveryStatusPayloadEventNameEnumTypeTransformer _instance;
}

