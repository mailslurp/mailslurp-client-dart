//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookEmailOpenedPayload {
  /// Returns a new [WebhookEmailOpenedPayload] instance.
  WebhookEmailOpenedPayload({
    required this.messageId,
    required this.webhookId,
    required this.eventName,
    this.webhookName,
    required this.inboxId,
    required this.pixelId,
    required this.sentEmailId,
    required this.recipient,
    required this.createdAt,
  });

  /// Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
  String messageId;

  /// ID of webhook entity being triggered
  String webhookId;

  /// Name of the event type webhook is being triggered for.
  WebhookEmailOpenedPayloadEventNameEnum eventName;

  /// Name of the webhook being triggered
  String? webhookName;

  /// Id of the inbox
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
    // ignore: unnecessary_parenthesis
    (messageId.hashCode) +
    (webhookId.hashCode) +
    (eventName.hashCode) +
    (webhookName == null ? 0 : webhookName!.hashCode) +
    (inboxId.hashCode) +
    (pixelId.hashCode) +
    (sentEmailId.hashCode) +
    (recipient.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'WebhookEmailOpenedPayload[messageId=$messageId, webhookId=$webhookId, eventName=$eventName, webhookName=$webhookName, inboxId=$inboxId, pixelId=$pixelId, sentEmailId=$sentEmailId, recipient=$recipient, createdAt=$createdAt]';

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
      json[r'inboxId'] = this.inboxId;
      json[r'pixelId'] = this.pixelId;
      json[r'sentEmailId'] = this.sentEmailId;
      json[r'recipient'] = this.recipient;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [WebhookEmailOpenedPayload] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookEmailOpenedPayload? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookEmailOpenedPayload[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookEmailOpenedPayload[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookEmailOpenedPayload(
        messageId: mapValueOfType<String>(json, r'messageId')!,
        webhookId: mapValueOfType<String>(json, r'webhookId')!,
        eventName: WebhookEmailOpenedPayloadEventNameEnum.fromJson(json[r'eventName'])!,
        webhookName: mapValueOfType<String>(json, r'webhookName'),
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        pixelId: mapValueOfType<String>(json, r'pixelId')!,
        sentEmailId: mapValueOfType<String>(json, r'sentEmailId')!,
        recipient: mapValueOfType<String>(json, r'recipient')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<WebhookEmailOpenedPayload>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookEmailOpenedPayload>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookEmailOpenedPayload.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookEmailOpenedPayload> mapFromJson(dynamic json) {
    final map = <String, WebhookEmailOpenedPayload>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookEmailOpenedPayload.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookEmailOpenedPayload-objects as value to a dart map
  static Map<String, List<WebhookEmailOpenedPayload>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookEmailOpenedPayload>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookEmailOpenedPayload.listFromJson(entry.value, growable: growable,);
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
    'inboxId',
    'pixelId',
    'sentEmailId',
    'recipient',
    'createdAt',
  };
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
  static const DELIVERY_STATUS = WebhookEmailOpenedPayloadEventNameEnum._(r'DELIVERY_STATUS');
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
    DELIVERY_STATUS,
    BOUNCE,
    BOUNCE_RECIPIENT,
    NEW_SMS,
  ];

  static WebhookEmailOpenedPayloadEventNameEnum? fromJson(dynamic value) => WebhookEmailOpenedPayloadEventNameEnumTypeTransformer().decode(value);

  static List<WebhookEmailOpenedPayloadEventNameEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookEmailOpenedPayloadEventNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookEmailOpenedPayloadEventNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookEmailOpenedPayloadEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookEmailOpenedPayloadEventNameEnum].
class WebhookEmailOpenedPayloadEventNameEnumTypeTransformer {
  factory WebhookEmailOpenedPayloadEventNameEnumTypeTransformer() => _instance ??= const WebhookEmailOpenedPayloadEventNameEnumTypeTransformer._();

  const WebhookEmailOpenedPayloadEventNameEnumTypeTransformer._();

  String encode(WebhookEmailOpenedPayloadEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookEmailOpenedPayloadEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookEmailOpenedPayloadEventNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EMAIL_RECEIVED': return WebhookEmailOpenedPayloadEventNameEnum.EMAIL_RECEIVED;
        case r'NEW_EMAIL': return WebhookEmailOpenedPayloadEventNameEnum.NEW_EMAIL;
        case r'NEW_CONTACT': return WebhookEmailOpenedPayloadEventNameEnum.NEW_CONTACT;
        case r'NEW_ATTACHMENT': return WebhookEmailOpenedPayloadEventNameEnum.NEW_ATTACHMENT;
        case r'EMAIL_OPENED': return WebhookEmailOpenedPayloadEventNameEnum.EMAIL_OPENED;
        case r'EMAIL_READ': return WebhookEmailOpenedPayloadEventNameEnum.EMAIL_READ;
        case r'DELIVERY_STATUS': return WebhookEmailOpenedPayloadEventNameEnum.DELIVERY_STATUS;
        case r'BOUNCE': return WebhookEmailOpenedPayloadEventNameEnum.BOUNCE;
        case r'BOUNCE_RECIPIENT': return WebhookEmailOpenedPayloadEventNameEnum.BOUNCE_RECIPIENT;
        case r'NEW_SMS': return WebhookEmailOpenedPayloadEventNameEnum.NEW_SMS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookEmailOpenedPayloadEventNameEnumTypeTransformer] instance.
  static WebhookEmailOpenedPayloadEventNameEnumTypeTransformer? _instance;
}


