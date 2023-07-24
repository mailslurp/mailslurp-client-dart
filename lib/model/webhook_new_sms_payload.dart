//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookNewSmsPayload {
  /// Returns a new [WebhookNewSmsPayload] instance.
  WebhookNewSmsPayload({
    required this.messageId,
    required this.webhookId,
    required this.eventName,
    this.webhookName,
    required this.smsId,
    required this.userId,
    required this.phoneNumber,
    required this.toNumber,
    required this.fromNumber,
    required this.body,
    required this.read,
  });

  /// Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
  String messageId;

  /// ID of webhook entity being triggered
  String webhookId;

  /// Name of the event type webhook is being triggered for.
  WebhookNewSmsPayloadEventNameEnum eventName;

  /// Name of the webhook being triggered
  String? webhookName;

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
    // ignore: unnecessary_parenthesis
    (messageId.hashCode) +
    (webhookId.hashCode) +
    (eventName.hashCode) +
    (webhookName == null ? 0 : webhookName!.hashCode) +
    (smsId.hashCode) +
    (userId.hashCode) +
    (phoneNumber.hashCode) +
    (toNumber.hashCode) +
    (fromNumber.hashCode) +
    (body.hashCode) +
    (read.hashCode);

  @override
  String toString() => 'WebhookNewSmsPayload[messageId=$messageId, webhookId=$webhookId, eventName=$eventName, webhookName=$webhookName, smsId=$smsId, userId=$userId, phoneNumber=$phoneNumber, toNumber=$toNumber, fromNumber=$fromNumber, body=$body, read=$read]';

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
      json[r'smsId'] = this.smsId;
      json[r'userId'] = this.userId;
      json[r'phoneNumber'] = this.phoneNumber;
      json[r'toNumber'] = this.toNumber;
      json[r'fromNumber'] = this.fromNumber;
      json[r'body'] = this.body;
      json[r'read'] = this.read;
    return json;
  }

  /// Returns a new [WebhookNewSmsPayload] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookNewSmsPayload? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookNewSmsPayload[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookNewSmsPayload[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookNewSmsPayload(
        messageId: mapValueOfType<String>(json, r'messageId')!,
        webhookId: mapValueOfType<String>(json, r'webhookId')!,
        eventName: WebhookNewSmsPayloadEventNameEnum.fromJson(json[r'eventName'])!,
        webhookName: mapValueOfType<String>(json, r'webhookName'),
        smsId: mapValueOfType<String>(json, r'smsId')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber')!,
        toNumber: mapValueOfType<String>(json, r'toNumber')!,
        fromNumber: mapValueOfType<String>(json, r'fromNumber')!,
        body: mapValueOfType<String>(json, r'body')!,
        read: mapValueOfType<bool>(json, r'read')!,
      );
    }
    return null;
  }

  static List<WebhookNewSmsPayload>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookNewSmsPayload>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookNewSmsPayload.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookNewSmsPayload> mapFromJson(dynamic json) {
    final map = <String, WebhookNewSmsPayload>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookNewSmsPayload.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookNewSmsPayload-objects as value to a dart map
  static Map<String, List<WebhookNewSmsPayload>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookNewSmsPayload>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookNewSmsPayload.listFromJson(entry.value, growable: growable,);
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
    'smsId',
    'userId',
    'phoneNumber',
    'toNumber',
    'fromNumber',
    'body',
    'read',
  };
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

  static WebhookNewSmsPayloadEventNameEnum? fromJson(dynamic value) => WebhookNewSmsPayloadEventNameEnumTypeTransformer().decode(value);

  static List<WebhookNewSmsPayloadEventNameEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookNewSmsPayloadEventNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookNewSmsPayloadEventNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookNewSmsPayloadEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookNewSmsPayloadEventNameEnum].
class WebhookNewSmsPayloadEventNameEnumTypeTransformer {
  factory WebhookNewSmsPayloadEventNameEnumTypeTransformer() => _instance ??= const WebhookNewSmsPayloadEventNameEnumTypeTransformer._();

  const WebhookNewSmsPayloadEventNameEnumTypeTransformer._();

  String encode(WebhookNewSmsPayloadEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookNewSmsPayloadEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookNewSmsPayloadEventNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
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
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookNewSmsPayloadEventNameEnumTypeTransformer] instance.
  static WebhookNewSmsPayloadEventNameEnumTypeTransformer? _instance;
}


