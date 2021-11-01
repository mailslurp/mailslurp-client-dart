//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookNewAttachmentPayload {
  /// Returns a new [WebhookNewAttachmentPayload] instance.
  WebhookNewAttachmentPayload({
    this.attachmentId,
    this.contentLength,
    this.contentType,
    this.eventName,
    this.messageId,
    this.name,
    this.webhookId,
    this.webhookName,
  });

  /// ID of attachment. Use the `AttachmentController` to
  String attachmentId;

  /// Size of attachment in bytes
  int contentLength;

  /// Content type of attachment such as 'image/png' or 'application/pdf
  String contentType;

  /// Name of the event type webhook is being triggered for.
  WebhookNewAttachmentPayloadEventNameEnum eventName;

  /// Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
  String messageId;

  /// Filename of the attachment if present
  String name;

  /// ID of webhook entity being triggered
  String webhookId;

  /// Name of the webhook being triggered
  String webhookName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookNewAttachmentPayload &&
     other.attachmentId == attachmentId &&
     other.contentLength == contentLength &&
     other.contentType == contentType &&
     other.eventName == eventName &&
     other.messageId == messageId &&
     other.name == name &&
     other.webhookId == webhookId &&
     other.webhookName == webhookName;

  @override
  int get hashCode =>
    (attachmentId == null ? 0 : attachmentId.hashCode) +
    (contentLength == null ? 0 : contentLength.hashCode) +
    (contentType == null ? 0 : contentType.hashCode) +
    (eventName == null ? 0 : eventName.hashCode) +
    (messageId == null ? 0 : messageId.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (webhookId == null ? 0 : webhookId.hashCode) +
    (webhookName == null ? 0 : webhookName.hashCode);

  @override
  String toString() => 'WebhookNewAttachmentPayload[attachmentId=$attachmentId, contentLength=$contentLength, contentType=$contentType, eventName=$eventName, messageId=$messageId, name=$name, webhookId=$webhookId, webhookName=$webhookName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (attachmentId != null) {
      json[r'attachmentId'] = attachmentId;
    }
    if (contentLength != null) {
      json[r'contentLength'] = contentLength;
    }
    if (contentType != null) {
      json[r'contentType'] = contentType;
    }
    if (eventName != null) {
      json[r'eventName'] = eventName;
    }
    if (messageId != null) {
      json[r'messageId'] = messageId;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (webhookId != null) {
      json[r'webhookId'] = webhookId;
    }
    if (webhookName != null) {
      json[r'webhookName'] = webhookName;
    }
    return json;
  }

  /// Returns a new [WebhookNewAttachmentPayload] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookNewAttachmentPayload fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookNewAttachmentPayload(
        attachmentId: json[r'attachmentId'],
        contentLength: json[r'contentLength'],
        contentType: json[r'contentType'],
        eventName: WebhookNewAttachmentPayloadEventNameEnum.fromJson(json[r'eventName']),
        messageId: json[r'messageId'],
        name: json[r'name'],
        webhookId: json[r'webhookId'],
        webhookName: json[r'webhookName'],
    );

  static List<WebhookNewAttachmentPayload> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookNewAttachmentPayload>[]
      : json.map((v) => WebhookNewAttachmentPayload.fromJson(v)).toList(growable: true == growable);

  static Map<String, WebhookNewAttachmentPayload> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WebhookNewAttachmentPayload>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WebhookNewAttachmentPayload.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WebhookNewAttachmentPayload-objects as value to a dart map
  static Map<String, List<WebhookNewAttachmentPayload>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WebhookNewAttachmentPayload>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WebhookNewAttachmentPayload.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
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

  /// List of all possible values in this [enum][WebhookNewAttachmentPayloadEventNameEnum].
  static const values = <WebhookNewAttachmentPayloadEventNameEnum>[
    EMAIL_RECEIVED,
    NEW_EMAIL,
    NEW_CONTACT,
    NEW_ATTACHMENT,
    EMAIL_OPENED,
    EMAIL_READ,
  ];

  static WebhookNewAttachmentPayloadEventNameEnum fromJson(dynamic value) =>
    WebhookNewAttachmentPayloadEventNameEnumTypeTransformer().decode(value);

  static List<WebhookNewAttachmentPayloadEventNameEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookNewAttachmentPayloadEventNameEnum>[]
      : json
          .map((value) => WebhookNewAttachmentPayloadEventNameEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WebhookNewAttachmentPayloadEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookNewAttachmentPayloadEventNameEnum].
class WebhookNewAttachmentPayloadEventNameEnumTypeTransformer {
  const WebhookNewAttachmentPayloadEventNameEnumTypeTransformer._();

  factory WebhookNewAttachmentPayloadEventNameEnumTypeTransformer() => _instance ??= WebhookNewAttachmentPayloadEventNameEnumTypeTransformer._();

  String encode(WebhookNewAttachmentPayloadEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookNewAttachmentPayloadEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookNewAttachmentPayloadEventNameEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'EMAIL_RECEIVED': return WebhookNewAttachmentPayloadEventNameEnum.EMAIL_RECEIVED;
      case r'NEW_EMAIL': return WebhookNewAttachmentPayloadEventNameEnum.NEW_EMAIL;
      case r'NEW_CONTACT': return WebhookNewAttachmentPayloadEventNameEnum.NEW_CONTACT;
      case r'NEW_ATTACHMENT': return WebhookNewAttachmentPayloadEventNameEnum.NEW_ATTACHMENT;
      case r'EMAIL_OPENED': return WebhookNewAttachmentPayloadEventNameEnum.EMAIL_OPENED;
      case r'EMAIL_READ': return WebhookNewAttachmentPayloadEventNameEnum.EMAIL_READ;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WebhookNewAttachmentPayloadEventNameEnumTypeTransformer] instance.
  static WebhookNewAttachmentPayloadEventNameEnumTypeTransformer _instance;
}

