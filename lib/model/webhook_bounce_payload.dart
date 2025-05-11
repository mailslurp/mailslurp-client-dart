//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookBouncePayload {
  /// Returns a new [WebhookBouncePayload] instance.
  WebhookBouncePayload({
    required this.messageId,
    required this.webhookId,
    required this.eventName,
    this.webhookName,
    required this.bounceId,
    this.sentToRecipients = const [],
    required this.sender,
    this.bounceRecipients = const [],
  });

  /// Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
  String messageId;

  /// ID of webhook entity being triggered
  String webhookId;

  /// Name of the event type webhook is being triggered for.
  WebhookBouncePayloadEventNameEnum eventName;

  /// Name of the webhook being triggered
  String? webhookName;

  /// ID of the bounce email record. Use the ID with the bounce controller to view more information
  String bounceId;

  /// Email sent to recipients
  List<String>? sentToRecipients;

  /// Sender causing bounce
  String sender;

  /// Email addresses that resulted in a bounce or email being rejected. Please save these recipients and avoid emailing them in the future to maintain your reputation.
  List<String>? bounceRecipients;

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
    // ignore: unnecessary_parenthesis
    (messageId.hashCode) +
    (webhookId.hashCode) +
    (eventName.hashCode) +
    (webhookName == null ? 0 : webhookName!.hashCode) +
    (bounceId.hashCode) +
    (sentToRecipients == null ? 0 : sentToRecipients!.hashCode) +
    (sender.hashCode) +
    (bounceRecipients == null ? 0 : bounceRecipients!.hashCode);

  @override
  String toString() => 'WebhookBouncePayload[messageId=$messageId, webhookId=$webhookId, eventName=$eventName, webhookName=$webhookName, bounceId=$bounceId, sentToRecipients=$sentToRecipients, sender=$sender, bounceRecipients=$bounceRecipients]';

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
      json[r'bounceId'] = this.bounceId;
    if (this.sentToRecipients != null) {
      json[r'sentToRecipients'] = this.sentToRecipients;
    } else {
      json[r'sentToRecipients'] = null;
    }
      json[r'sender'] = this.sender;
    if (this.bounceRecipients != null) {
      json[r'bounceRecipients'] = this.bounceRecipients;
    } else {
      json[r'bounceRecipients'] = null;
    }
    return json;
  }

  /// Returns a new [WebhookBouncePayload] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookBouncePayload? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookBouncePayload[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookBouncePayload[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookBouncePayload(
        messageId: mapValueOfType<String>(json, r'messageId')!,
        webhookId: mapValueOfType<String>(json, r'webhookId')!,
        eventName: WebhookBouncePayloadEventNameEnum.fromJson(json[r'eventName'])!,
        webhookName: mapValueOfType<String>(json, r'webhookName'),
        bounceId: mapValueOfType<String>(json, r'bounceId')!,
        sentToRecipients: json[r'sentToRecipients'] is List
            ? (json[r'sentToRecipients'] as List).cast<String>()
            : const [],
        sender: mapValueOfType<String>(json, r'sender')!,
        bounceRecipients: json[r'bounceRecipients'] is List
            ? (json[r'bounceRecipients'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<WebhookBouncePayload> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookBouncePayload>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookBouncePayload.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookBouncePayload> mapFromJson(dynamic json) {
    final map = <String, WebhookBouncePayload>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookBouncePayload.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookBouncePayload-objects as value to a dart map
  static Map<String, List<WebhookBouncePayload>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookBouncePayload>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookBouncePayload.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'messageId',
    'webhookId',
    'eventName',
    'bounceId',
    'sender',
  };
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
  static const DELIVERY_STATUS = WebhookBouncePayloadEventNameEnum._(r'DELIVERY_STATUS');
  static const BOUNCE = WebhookBouncePayloadEventNameEnum._(r'BOUNCE');
  static const BOUNCE_RECIPIENT = WebhookBouncePayloadEventNameEnum._(r'BOUNCE_RECIPIENT');
  static const NEW_SMS = WebhookBouncePayloadEventNameEnum._(r'NEW_SMS');
  static const NEW_GUEST_USER = WebhookBouncePayloadEventNameEnum._(r'NEW_GUEST_USER');

  /// List of all possible values in this [enum][WebhookBouncePayloadEventNameEnum].
  static const values = <WebhookBouncePayloadEventNameEnum>[
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

  static WebhookBouncePayloadEventNameEnum? fromJson(dynamic value) => WebhookBouncePayloadEventNameEnumTypeTransformer().decode(value);

  static List<WebhookBouncePayloadEventNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookBouncePayloadEventNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookBouncePayloadEventNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookBouncePayloadEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookBouncePayloadEventNameEnum].
class WebhookBouncePayloadEventNameEnumTypeTransformer {
  factory WebhookBouncePayloadEventNameEnumTypeTransformer() => _instance ??= const WebhookBouncePayloadEventNameEnumTypeTransformer._();

  const WebhookBouncePayloadEventNameEnumTypeTransformer._();

  String encode(WebhookBouncePayloadEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookBouncePayloadEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookBouncePayloadEventNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EMAIL_RECEIVED': return WebhookBouncePayloadEventNameEnum.EMAIL_RECEIVED;
        case r'NEW_EMAIL': return WebhookBouncePayloadEventNameEnum.NEW_EMAIL;
        case r'NEW_CONTACT': return WebhookBouncePayloadEventNameEnum.NEW_CONTACT;
        case r'NEW_ATTACHMENT': return WebhookBouncePayloadEventNameEnum.NEW_ATTACHMENT;
        case r'EMAIL_OPENED': return WebhookBouncePayloadEventNameEnum.EMAIL_OPENED;
        case r'EMAIL_READ': return WebhookBouncePayloadEventNameEnum.EMAIL_READ;
        case r'DELIVERY_STATUS': return WebhookBouncePayloadEventNameEnum.DELIVERY_STATUS;
        case r'BOUNCE': return WebhookBouncePayloadEventNameEnum.BOUNCE;
        case r'BOUNCE_RECIPIENT': return WebhookBouncePayloadEventNameEnum.BOUNCE_RECIPIENT;
        case r'NEW_SMS': return WebhookBouncePayloadEventNameEnum.NEW_SMS;
        case r'NEW_GUEST_USER': return WebhookBouncePayloadEventNameEnum.NEW_GUEST_USER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookBouncePayloadEventNameEnumTypeTransformer] instance.
  static WebhookBouncePayloadEventNameEnumTypeTransformer? _instance;
}


