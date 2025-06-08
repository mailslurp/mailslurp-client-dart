//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookBounceRecipientPayload {
  /// Returns a new [WebhookBounceRecipientPayload] instance.
  WebhookBounceRecipientPayload({
    required this.messageId,
    required this.webhookId,
    required this.eventName,
    this.webhookName,
    required this.recipient,
  });

  /// Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
  String messageId;

  /// ID of webhook entity being triggered
  String webhookId;

  /// Name of the event type webhook is being triggered for.
  WebhookBounceRecipientPayloadEventNameEnum eventName;

  /// Name of the webhook being triggered
  String? webhookName;

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
    // ignore: unnecessary_parenthesis
    (messageId.hashCode) +
    (webhookId.hashCode) +
    (eventName.hashCode) +
    (webhookName == null ? 0 : webhookName!.hashCode) +
    (recipient.hashCode);

  @override
  String toString() => 'WebhookBounceRecipientPayload[messageId=$messageId, webhookId=$webhookId, eventName=$eventName, webhookName=$webhookName, recipient=$recipient]';

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
      json[r'recipient'] = this.recipient;
    return json;
  }

  /// Returns a new [WebhookBounceRecipientPayload] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookBounceRecipientPayload? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookBounceRecipientPayload[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookBounceRecipientPayload[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookBounceRecipientPayload(
        messageId: mapValueOfType<String>(json, r'messageId')!,
        webhookId: mapValueOfType<String>(json, r'webhookId')!,
        eventName: WebhookBounceRecipientPayloadEventNameEnum.fromJson(json[r'eventName'])!,
        webhookName: mapValueOfType<String>(json, r'webhookName'),
        recipient: mapValueOfType<String>(json, r'recipient')!,
      );
    }
    return null;
  }

  static List<WebhookBounceRecipientPayload> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookBounceRecipientPayload>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookBounceRecipientPayload.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookBounceRecipientPayload> mapFromJson(dynamic json) {
    final map = <String, WebhookBounceRecipientPayload>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookBounceRecipientPayload.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookBounceRecipientPayload-objects as value to a dart map
  static Map<String, List<WebhookBounceRecipientPayload>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookBounceRecipientPayload>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookBounceRecipientPayload.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'messageId',
    'webhookId',
    'eventName',
    'recipient',
  };
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
  static const DELIVERY_STATUS = WebhookBounceRecipientPayloadEventNameEnum._(r'DELIVERY_STATUS');
  static const BOUNCE = WebhookBounceRecipientPayloadEventNameEnum._(r'BOUNCE');
  static const BOUNCE_RECIPIENT = WebhookBounceRecipientPayloadEventNameEnum._(r'BOUNCE_RECIPIENT');
  static const NEW_SMS = WebhookBounceRecipientPayloadEventNameEnum._(r'NEW_SMS');
  static const NEW_GUEST_USER = WebhookBounceRecipientPayloadEventNameEnum._(r'NEW_GUEST_USER');

  /// List of all possible values in this [enum][WebhookBounceRecipientPayloadEventNameEnum].
  static const values = <WebhookBounceRecipientPayloadEventNameEnum>[
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

  static WebhookBounceRecipientPayloadEventNameEnum? fromJson(dynamic value) => WebhookBounceRecipientPayloadEventNameEnumTypeTransformer().decode(value);

  static List<WebhookBounceRecipientPayloadEventNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookBounceRecipientPayloadEventNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookBounceRecipientPayloadEventNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookBounceRecipientPayloadEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookBounceRecipientPayloadEventNameEnum].
class WebhookBounceRecipientPayloadEventNameEnumTypeTransformer {
  factory WebhookBounceRecipientPayloadEventNameEnumTypeTransformer() => _instance ??= const WebhookBounceRecipientPayloadEventNameEnumTypeTransformer._();

  const WebhookBounceRecipientPayloadEventNameEnumTypeTransformer._();

  String encode(WebhookBounceRecipientPayloadEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookBounceRecipientPayloadEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookBounceRecipientPayloadEventNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EMAIL_RECEIVED': return WebhookBounceRecipientPayloadEventNameEnum.EMAIL_RECEIVED;
        case r'NEW_EMAIL': return WebhookBounceRecipientPayloadEventNameEnum.NEW_EMAIL;
        case r'NEW_CONTACT': return WebhookBounceRecipientPayloadEventNameEnum.NEW_CONTACT;
        case r'NEW_ATTACHMENT': return WebhookBounceRecipientPayloadEventNameEnum.NEW_ATTACHMENT;
        case r'EMAIL_OPENED': return WebhookBounceRecipientPayloadEventNameEnum.EMAIL_OPENED;
        case r'EMAIL_READ': return WebhookBounceRecipientPayloadEventNameEnum.EMAIL_READ;
        case r'DELIVERY_STATUS': return WebhookBounceRecipientPayloadEventNameEnum.DELIVERY_STATUS;
        case r'BOUNCE': return WebhookBounceRecipientPayloadEventNameEnum.BOUNCE;
        case r'BOUNCE_RECIPIENT': return WebhookBounceRecipientPayloadEventNameEnum.BOUNCE_RECIPIENT;
        case r'NEW_SMS': return WebhookBounceRecipientPayloadEventNameEnum.NEW_SMS;
        case r'NEW_GUEST_USER': return WebhookBounceRecipientPayloadEventNameEnum.NEW_GUEST_USER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookBounceRecipientPayloadEventNameEnumTypeTransformer] instance.
  static WebhookBounceRecipientPayloadEventNameEnumTypeTransformer? _instance;
}


