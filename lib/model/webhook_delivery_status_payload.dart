//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookDeliveryStatusPayload {
  /// Returns a new [WebhookDeliveryStatusPayload] instance.
  WebhookDeliveryStatusPayload({
    required this.messageId,
    required this.webhookId,
    required this.eventName,
    this.webhookName,
    required this.id,
    required this.userId,
    this.sentId,
    this.remoteMtaIp,
    this.inboxId,
    this.reportingMta,
    this.recipients = const [],
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
  String? webhookName;

  /// ID of delivery status
  String id;

  /// User ID of event
  String userId;

  /// ID of sent email
  String? sentId;

  /// IP address of the remote Mail Transfer Agent
  String? remoteMtaIp;

  /// Id of the inbox
  String? inboxId;

  /// Mail Transfer Agent reporting delivery status
  String? reportingMta;

  /// Recipients for delivery
  List<String>? recipients;

  /// SMTP server response message
  String? smtpResponse;

  /// SMTP server status
  int? smtpStatusCode;

  /// Time in milliseconds for delivery processing
  int? processingTimeMillis;

  /// Time event was received
  DateTime? received;

  /// Email subject
  String? subject;

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
    // ignore: unnecessary_parenthesis
    (messageId.hashCode) +
    (webhookId.hashCode) +
    (eventName.hashCode) +
    (webhookName == null ? 0 : webhookName!.hashCode) +
    (id.hashCode) +
    (userId.hashCode) +
    (sentId == null ? 0 : sentId!.hashCode) +
    (remoteMtaIp == null ? 0 : remoteMtaIp!.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (reportingMta == null ? 0 : reportingMta!.hashCode) +
    (recipients == null ? 0 : recipients!.hashCode) +
    (smtpResponse == null ? 0 : smtpResponse!.hashCode) +
    (smtpStatusCode == null ? 0 : smtpStatusCode!.hashCode) +
    (processingTimeMillis == null ? 0 : processingTimeMillis!.hashCode) +
    (received == null ? 0 : received!.hashCode) +
    (subject == null ? 0 : subject!.hashCode);

  @override
  String toString() => 'WebhookDeliveryStatusPayload[messageId=$messageId, webhookId=$webhookId, eventName=$eventName, webhookName=$webhookName, id=$id, userId=$userId, sentId=$sentId, remoteMtaIp=$remoteMtaIp, inboxId=$inboxId, reportingMta=$reportingMta, recipients=$recipients, smtpResponse=$smtpResponse, smtpStatusCode=$smtpStatusCode, processingTimeMillis=$processingTimeMillis, received=$received, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'messageId'] = this.messageId;
      json[r'webhookId'] = this.webhookId;
      json[r'eventName'] = this.eventName;
    if (this.webhookName != null) {
      json[r'webhookName'] = this.webhookName;
    } else {
      json[r'webhookName'] = null;
    }
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
    if (this.sentId != null) {
      json[r'sentId'] = this.sentId;
    } else {
      json[r'sentId'] = null;
    }
    if (this.remoteMtaIp != null) {
      json[r'remoteMtaIp'] = this.remoteMtaIp;
    } else {
      json[r'remoteMtaIp'] = null;
    }
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
    if (this.reportingMta != null) {
      json[r'reportingMta'] = this.reportingMta;
    } else {
      json[r'reportingMta'] = null;
    }
    if (this.recipients != null) {
      json[r'recipients'] = this.recipients;
    } else {
      json[r'recipients'] = null;
    }
    if (this.smtpResponse != null) {
      json[r'smtpResponse'] = this.smtpResponse;
    } else {
      json[r'smtpResponse'] = null;
    }
    if (this.smtpStatusCode != null) {
      json[r'smtpStatusCode'] = this.smtpStatusCode;
    } else {
      json[r'smtpStatusCode'] = null;
    }
    if (this.processingTimeMillis != null) {
      json[r'processingTimeMillis'] = this.processingTimeMillis;
    } else {
      json[r'processingTimeMillis'] = null;
    }
    if (this.received != null) {
      json[r'received'] = this.received!.toUtc().toIso8601String();
    } else {
      json[r'received'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    return json;
  }

  /// Returns a new [WebhookDeliveryStatusPayload] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookDeliveryStatusPayload? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookDeliveryStatusPayload[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookDeliveryStatusPayload[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookDeliveryStatusPayload(
        messageId: mapValueOfType<String>(json, r'messageId')!,
        webhookId: mapValueOfType<String>(json, r'webhookId')!,
        eventName: WebhookDeliveryStatusPayloadEventNameEnum.fromJson(json[r'eventName'])!,
        webhookName: mapValueOfType<String>(json, r'webhookName'),
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        sentId: mapValueOfType<String>(json, r'sentId'),
        remoteMtaIp: mapValueOfType<String>(json, r'remoteMtaIp'),
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        reportingMta: mapValueOfType<String>(json, r'reportingMta'),
        recipients: json[r'recipients'] is List
            ? (json[r'recipients'] as List).cast<String>()
            : const [],
        smtpResponse: mapValueOfType<String>(json, r'smtpResponse'),
        smtpStatusCode: mapValueOfType<int>(json, r'smtpStatusCode'),
        processingTimeMillis: mapValueOfType<int>(json, r'processingTimeMillis'),
        received: mapDateTime(json, r'received', ''),
        subject: mapValueOfType<String>(json, r'subject'),
      );
    }
    return null;
  }

  static List<WebhookDeliveryStatusPayload>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookDeliveryStatusPayload>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookDeliveryStatusPayload.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookDeliveryStatusPayload> mapFromJson(dynamic json) {
    final map = <String, WebhookDeliveryStatusPayload>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookDeliveryStatusPayload.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookDeliveryStatusPayload-objects as value to a dart map
  static Map<String, List<WebhookDeliveryStatusPayload>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookDeliveryStatusPayload>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookDeliveryStatusPayload.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'messageId',
    'webhookId',
    'eventName',
    'id',
    'userId',
  };
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

  static WebhookDeliveryStatusPayloadEventNameEnum? fromJson(dynamic value) => WebhookDeliveryStatusPayloadEventNameEnumTypeTransformer().decode(value);

  static List<WebhookDeliveryStatusPayloadEventNameEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookDeliveryStatusPayloadEventNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookDeliveryStatusPayloadEventNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookDeliveryStatusPayloadEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookDeliveryStatusPayloadEventNameEnum].
class WebhookDeliveryStatusPayloadEventNameEnumTypeTransformer {
  factory WebhookDeliveryStatusPayloadEventNameEnumTypeTransformer() => _instance ??= const WebhookDeliveryStatusPayloadEventNameEnumTypeTransformer._();

  const WebhookDeliveryStatusPayloadEventNameEnumTypeTransformer._();

  String encode(WebhookDeliveryStatusPayloadEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookDeliveryStatusPayloadEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookDeliveryStatusPayloadEventNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
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
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookDeliveryStatusPayloadEventNameEnumTypeTransformer] instance.
  static WebhookDeliveryStatusPayloadEventNameEnumTypeTransformer? _instance;
}


