//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookEmailReadPayload {
  /// Returns a new [WebhookEmailReadPayload] instance.
  WebhookEmailReadPayload({
    required this.messageId,
    required this.webhookId,
    required this.eventName,
    this.webhookName,
    required this.emailId,
    required this.inboxId,
    required this.emailIsRead,
    required this.createdAt,
  });

  /// Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
  String messageId;

  /// ID of webhook entity being triggered
  String webhookId;

  /// Name of the event type webhook is being triggered for.
  WebhookEmailReadPayloadEventNameEnum eventName;

  /// Name of the webhook being triggered
  String? webhookName;

  /// ID of the email that was received. Use this ID for fetching the email with the `EmailController`.
  String emailId;

  /// Id of the inbox
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
    // ignore: unnecessary_parenthesis
    (messageId.hashCode) +
    (webhookId.hashCode) +
    (eventName.hashCode) +
    (webhookName == null ? 0 : webhookName!.hashCode) +
    (emailId.hashCode) +
    (inboxId.hashCode) +
    (emailIsRead.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'WebhookEmailReadPayload[messageId=$messageId, webhookId=$webhookId, eventName=$eventName, webhookName=$webhookName, emailId=$emailId, inboxId=$inboxId, emailIsRead=$emailIsRead, createdAt=$createdAt]';

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
      json[r'emailId'] = this.emailId;
      json[r'inboxId'] = this.inboxId;
      json[r'emailIsRead'] = this.emailIsRead;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [WebhookEmailReadPayload] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookEmailReadPayload? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookEmailReadPayload[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookEmailReadPayload[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookEmailReadPayload(
        messageId: mapValueOfType<String>(json, r'messageId')!,
        webhookId: mapValueOfType<String>(json, r'webhookId')!,
        eventName: WebhookEmailReadPayloadEventNameEnum.fromJson(json[r'eventName'])!,
        webhookName: mapValueOfType<String>(json, r'webhookName'),
        emailId: mapValueOfType<String>(json, r'emailId')!,
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        emailIsRead: mapValueOfType<bool>(json, r'emailIsRead')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<WebhookEmailReadPayload> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookEmailReadPayload>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookEmailReadPayload.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookEmailReadPayload> mapFromJson(dynamic json) {
    final map = <String, WebhookEmailReadPayload>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookEmailReadPayload.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookEmailReadPayload-objects as value to a dart map
  static Map<String, List<WebhookEmailReadPayload>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookEmailReadPayload>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookEmailReadPayload.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'messageId',
    'webhookId',
    'eventName',
    'emailId',
    'inboxId',
    'emailIsRead',
    'createdAt',
  };
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
  static const DELIVERY_STATUS = WebhookEmailReadPayloadEventNameEnum._(r'DELIVERY_STATUS');
  static const BOUNCE = WebhookEmailReadPayloadEventNameEnum._(r'BOUNCE');
  static const BOUNCE_RECIPIENT = WebhookEmailReadPayloadEventNameEnum._(r'BOUNCE_RECIPIENT');
  static const NEW_SMS = WebhookEmailReadPayloadEventNameEnum._(r'NEW_SMS');
  static const NEW_GUEST_USER = WebhookEmailReadPayloadEventNameEnum._(r'NEW_GUEST_USER');

  /// List of all possible values in this [enum][WebhookEmailReadPayloadEventNameEnum].
  static const values = <WebhookEmailReadPayloadEventNameEnum>[
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
    NEW_GUEST_USER,
  ];

  static WebhookEmailReadPayloadEventNameEnum? fromJson(dynamic value) => WebhookEmailReadPayloadEventNameEnumTypeTransformer().decode(value);

  static List<WebhookEmailReadPayloadEventNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookEmailReadPayloadEventNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookEmailReadPayloadEventNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookEmailReadPayloadEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookEmailReadPayloadEventNameEnum].
class WebhookEmailReadPayloadEventNameEnumTypeTransformer {
  factory WebhookEmailReadPayloadEventNameEnumTypeTransformer() => _instance ??= const WebhookEmailReadPayloadEventNameEnumTypeTransformer._();

  const WebhookEmailReadPayloadEventNameEnumTypeTransformer._();

  String encode(WebhookEmailReadPayloadEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookEmailReadPayloadEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookEmailReadPayloadEventNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EMAIL_RECEIVED': return WebhookEmailReadPayloadEventNameEnum.EMAIL_RECEIVED;
        case r'NEW_EMAIL': return WebhookEmailReadPayloadEventNameEnum.NEW_EMAIL;
        case r'NEW_CONTACT': return WebhookEmailReadPayloadEventNameEnum.NEW_CONTACT;
        case r'NEW_ATTACHMENT': return WebhookEmailReadPayloadEventNameEnum.NEW_ATTACHMENT;
        case r'EMAIL_OPENED': return WebhookEmailReadPayloadEventNameEnum.EMAIL_OPENED;
        case r'EMAIL_READ': return WebhookEmailReadPayloadEventNameEnum.EMAIL_READ;
        case r'DELIVERY_STATUS': return WebhookEmailReadPayloadEventNameEnum.DELIVERY_STATUS;
        case r'BOUNCE': return WebhookEmailReadPayloadEventNameEnum.BOUNCE;
        case r'BOUNCE_RECIPIENT': return WebhookEmailReadPayloadEventNameEnum.BOUNCE_RECIPIENT;
        case r'NEW_SMS': return WebhookEmailReadPayloadEventNameEnum.NEW_SMS;
        case r'NEW_GUEST_USER': return WebhookEmailReadPayloadEventNameEnum.NEW_GUEST_USER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookEmailReadPayloadEventNameEnumTypeTransformer] instance.
  static WebhookEmailReadPayloadEventNameEnumTypeTransformer? _instance;
}


