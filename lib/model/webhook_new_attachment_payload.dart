//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookNewAttachmentPayload {
  /// Returns a new [WebhookNewAttachmentPayload] instance.
  WebhookNewAttachmentPayload({
    required this.messageId,
    required this.webhookId,
    this.webhookName,
    required this.eventName,
    required this.attachmentId,
    required this.name,
    required this.contentType,
    required this.contentLength,
  });

  /// Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
  String messageId;

  /// ID of webhook entity being triggered
  String webhookId;

  /// Name of the webhook being triggered
  String? webhookName;

  /// Name of the event type webhook is being triggered for.
  WebhookNewAttachmentPayloadEventNameEnum eventName;

  /// ID of attachment. Use the `AttachmentController` to
  String attachmentId;

  /// Filename of the attachment if present
  String name;

  /// Content type of attachment such as 'image/png' or 'application/pdf
  String contentType;

  /// Size of attachment in bytes
  int contentLength;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookNewAttachmentPayload &&
     other.messageId == messageId &&
     other.webhookId == webhookId &&
     other.webhookName == webhookName &&
     other.eventName == eventName &&
     other.attachmentId == attachmentId &&
     other.name == name &&
     other.contentType == contentType &&
     other.contentLength == contentLength;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (messageId.hashCode) +
    (webhookId.hashCode) +
    (webhookName == null ? 0 : webhookName!.hashCode) +
    (eventName.hashCode) +
    (attachmentId.hashCode) +
    (name.hashCode) +
    (contentType.hashCode) +
    (contentLength.hashCode);

  @override
  String toString() => 'WebhookNewAttachmentPayload[messageId=$messageId, webhookId=$webhookId, webhookName=$webhookName, eventName=$eventName, attachmentId=$attachmentId, name=$name, contentType=$contentType, contentLength=$contentLength]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'messageId'] = this.messageId;
      json[r'webhookId'] = this.webhookId;
    if (this.webhookName != null) {
      json[r'webhookName'] = this.webhookName;
    } else {
      json[r'webhookName'] = null;
    }
      json[r'eventName'] = this.eventName;
      json[r'attachmentId'] = this.attachmentId;
      json[r'name'] = this.name;
      json[r'contentType'] = this.contentType;
      json[r'contentLength'] = this.contentLength;
    return json;
  }

  /// Returns a new [WebhookNewAttachmentPayload] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookNewAttachmentPayload? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookNewAttachmentPayload[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookNewAttachmentPayload[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookNewAttachmentPayload(
        messageId: mapValueOfType<String>(json, r'messageId')!,
        webhookId: mapValueOfType<String>(json, r'webhookId')!,
        webhookName: mapValueOfType<String>(json, r'webhookName'),
        eventName: WebhookNewAttachmentPayloadEventNameEnum.fromJson(json[r'eventName'])!,
        attachmentId: mapValueOfType<String>(json, r'attachmentId')!,
        name: mapValueOfType<String>(json, r'name')!,
        contentType: mapValueOfType<String>(json, r'contentType')!,
        contentLength: mapValueOfType<int>(json, r'contentLength')!,
      );
    }
    return null;
  }

  static List<WebhookNewAttachmentPayload> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookNewAttachmentPayload>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookNewAttachmentPayload.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookNewAttachmentPayload> mapFromJson(dynamic json) {
    final map = <String, WebhookNewAttachmentPayload>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookNewAttachmentPayload.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookNewAttachmentPayload-objects as value to a dart map
  static Map<String, List<WebhookNewAttachmentPayload>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookNewAttachmentPayload>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookNewAttachmentPayload.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'messageId',
    'webhookId',
    'eventName',
    'attachmentId',
    'name',
    'contentType',
    'contentLength',
  };
}

/// Name of the event type webhook is being triggered for.
class WebhookNewAttachmentPayloadEventNameEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookNewAttachmentPayloadEventNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_RECEIVED = WebhookNewAttachmentPayloadEventNameEnum._(r'EMAIL_RECEIVED');
  static const NEW_EMAIL = WebhookNewAttachmentPayloadEventNameEnum._(r'NEW_EMAIL');
  static const NEW_CONTACT = WebhookNewAttachmentPayloadEventNameEnum._(r'NEW_CONTACT');
  static const NEW_ATTACHMENT = WebhookNewAttachmentPayloadEventNameEnum._(r'NEW_ATTACHMENT');
  static const EMAIL_OPENED = WebhookNewAttachmentPayloadEventNameEnum._(r'EMAIL_OPENED');
  static const EMAIL_READ = WebhookNewAttachmentPayloadEventNameEnum._(r'EMAIL_READ');
  static const DELIVERY_STATUS = WebhookNewAttachmentPayloadEventNameEnum._(r'DELIVERY_STATUS');
  static const BOUNCE = WebhookNewAttachmentPayloadEventNameEnum._(r'BOUNCE');
  static const BOUNCE_RECIPIENT = WebhookNewAttachmentPayloadEventNameEnum._(r'BOUNCE_RECIPIENT');
  static const NEW_SMS = WebhookNewAttachmentPayloadEventNameEnum._(r'NEW_SMS');

  /// List of all possible values in this [enum][WebhookNewAttachmentPayloadEventNameEnum].
  static const values = <WebhookNewAttachmentPayloadEventNameEnum>[
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

  static WebhookNewAttachmentPayloadEventNameEnum? fromJson(dynamic value) => WebhookNewAttachmentPayloadEventNameEnumTypeTransformer().decode(value);

  static List<WebhookNewAttachmentPayloadEventNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookNewAttachmentPayloadEventNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookNewAttachmentPayloadEventNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookNewAttachmentPayloadEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookNewAttachmentPayloadEventNameEnum].
class WebhookNewAttachmentPayloadEventNameEnumTypeTransformer {
  factory WebhookNewAttachmentPayloadEventNameEnumTypeTransformer() => _instance ??= const WebhookNewAttachmentPayloadEventNameEnumTypeTransformer._();

  const WebhookNewAttachmentPayloadEventNameEnumTypeTransformer._();

  String encode(WebhookNewAttachmentPayloadEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookNewAttachmentPayloadEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookNewAttachmentPayloadEventNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EMAIL_RECEIVED': return WebhookNewAttachmentPayloadEventNameEnum.EMAIL_RECEIVED;
        case r'NEW_EMAIL': return WebhookNewAttachmentPayloadEventNameEnum.NEW_EMAIL;
        case r'NEW_CONTACT': return WebhookNewAttachmentPayloadEventNameEnum.NEW_CONTACT;
        case r'NEW_ATTACHMENT': return WebhookNewAttachmentPayloadEventNameEnum.NEW_ATTACHMENT;
        case r'EMAIL_OPENED': return WebhookNewAttachmentPayloadEventNameEnum.EMAIL_OPENED;
        case r'EMAIL_READ': return WebhookNewAttachmentPayloadEventNameEnum.EMAIL_READ;
        case r'DELIVERY_STATUS': return WebhookNewAttachmentPayloadEventNameEnum.DELIVERY_STATUS;
        case r'BOUNCE': return WebhookNewAttachmentPayloadEventNameEnum.BOUNCE;
        case r'BOUNCE_RECIPIENT': return WebhookNewAttachmentPayloadEventNameEnum.BOUNCE_RECIPIENT;
        case r'NEW_SMS': return WebhookNewAttachmentPayloadEventNameEnum.NEW_SMS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookNewAttachmentPayloadEventNameEnumTypeTransformer] instance.
  static WebhookNewAttachmentPayloadEventNameEnumTypeTransformer? _instance;
}


