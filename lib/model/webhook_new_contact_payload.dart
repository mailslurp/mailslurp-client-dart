//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookNewContactPayload {
  /// Returns a new [WebhookNewContactPayload] instance.
  WebhookNewContactPayload({
    this.company,
    @required this.contactId,
    @required this.createdAt,
    this.emailAddresses = const [],
    this.eventName,
    this.firstName,
    this.groupId,
    this.lastName,
    this.messageId,
    this.metaData,
    this.optOut,
    this.primaryEmailAddress,
    this.tags = const [],
    this.webhookId,
    this.webhookName,
  });

  String company;

  String contactId;

  DateTime createdAt;

  List<String> emailAddresses;

  /// Name of the event type webhook is being triggered for.
  WebhookNewContactPayloadEventNameEnum eventName;

  String firstName;

  String groupId;

  String lastName;

  /// Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
  String messageId;

  Object metaData;

  bool optOut;

  String primaryEmailAddress;

  List<String> tags;

  /// ID of webhook entity being triggered
  String webhookId;

  /// Name of the webhook being triggered
  String webhookName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookNewContactPayload &&
     other.company == company &&
     other.contactId == contactId &&
     other.createdAt == createdAt &&
     other.emailAddresses == emailAddresses &&
     other.eventName == eventName &&
     other.firstName == firstName &&
     other.groupId == groupId &&
     other.lastName == lastName &&
     other.messageId == messageId &&
     other.metaData == metaData &&
     other.optOut == optOut &&
     other.primaryEmailAddress == primaryEmailAddress &&
     other.tags == tags &&
     other.webhookId == webhookId &&
     other.webhookName == webhookName;

  @override
  int get hashCode =>
    (company == null ? 0 : company.hashCode) +
    (contactId == null ? 0 : contactId.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (emailAddresses == null ? 0 : emailAddresses.hashCode) +
    (eventName == null ? 0 : eventName.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (groupId == null ? 0 : groupId.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (messageId == null ? 0 : messageId.hashCode) +
    (metaData == null ? 0 : metaData.hashCode) +
    (optOut == null ? 0 : optOut.hashCode) +
    (primaryEmailAddress == null ? 0 : primaryEmailAddress.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (webhookId == null ? 0 : webhookId.hashCode) +
    (webhookName == null ? 0 : webhookName.hashCode);

  @override
  String toString() => 'WebhookNewContactPayload[company=$company, contactId=$contactId, createdAt=$createdAt, emailAddresses=$emailAddresses, eventName=$eventName, firstName=$firstName, groupId=$groupId, lastName=$lastName, messageId=$messageId, metaData=$metaData, optOut=$optOut, primaryEmailAddress=$primaryEmailAddress, tags=$tags, webhookId=$webhookId, webhookName=$webhookName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (company != null) {
      json[r'company'] = company;
    }
      json[r'contactId'] = contactId;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'emailAddresses'] = emailAddresses;
    if (eventName != null) {
      json[r'eventName'] = eventName;
    }
    if (firstName != null) {
      json[r'firstName'] = firstName;
    }
    if (groupId != null) {
      json[r'groupId'] = groupId;
    }
    if (lastName != null) {
      json[r'lastName'] = lastName;
    }
    if (messageId != null) {
      json[r'messageId'] = messageId;
    }
    if (metaData != null) {
      json[r'metaData'] = metaData;
    }
    if (optOut != null) {
      json[r'optOut'] = optOut;
    }
    if (primaryEmailAddress != null) {
      json[r'primaryEmailAddress'] = primaryEmailAddress;
    }
      json[r'tags'] = tags;
    if (webhookId != null) {
      json[r'webhookId'] = webhookId;
    }
    if (webhookName != null) {
      json[r'webhookName'] = webhookName;
    }
    return json;
  }

  /// Returns a new [WebhookNewContactPayload] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookNewContactPayload fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookNewContactPayload(
        company: json[r'company'],
        contactId: json[r'contactId'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        emailAddresses: json[r'emailAddresses'] == null
          ? null
          : (json[r'emailAddresses'] as List).cast<String>(),
        eventName: WebhookNewContactPayloadEventNameEnum.fromJson(json[r'eventName']),
        firstName: json[r'firstName'],
        groupId: json[r'groupId'],
        lastName: json[r'lastName'],
        messageId: json[r'messageId'],
        metaData: json[r'metaData'],
        optOut: json[r'optOut'],
        primaryEmailAddress: json[r'primaryEmailAddress'],
        tags: json[r'tags'] == null
          ? null
          : (json[r'tags'] as List).cast<String>(),
        webhookId: json[r'webhookId'],
        webhookName: json[r'webhookName'],
    );

  static List<WebhookNewContactPayload> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookNewContactPayload>[]
      : json.map((v) => WebhookNewContactPayload.fromJson(v)).toList(growable: true == growable);

  static Map<String, WebhookNewContactPayload> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WebhookNewContactPayload>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WebhookNewContactPayload.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WebhookNewContactPayload-objects as value to a dart map
  static Map<String, List<WebhookNewContactPayload>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WebhookNewContactPayload>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WebhookNewContactPayload.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Name of the event type webhook is being triggered for.
class WebhookNewContactPayloadEventNameEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookNewContactPayloadEventNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_RECEIVED = WebhookNewContactPayloadEventNameEnum._(r'EMAIL_RECEIVED');
  static const NEW_EMAIL = WebhookNewContactPayloadEventNameEnum._(r'NEW_EMAIL');
  static const NEW_CONTACT = WebhookNewContactPayloadEventNameEnum._(r'NEW_CONTACT');
  static const NEW_ATTACHMENT = WebhookNewContactPayloadEventNameEnum._(r'NEW_ATTACHMENT');

  /// List of all possible values in this [enum][WebhookNewContactPayloadEventNameEnum].
  static const values = <WebhookNewContactPayloadEventNameEnum>[
    EMAIL_RECEIVED,
    NEW_EMAIL,
    NEW_CONTACT,
    NEW_ATTACHMENT,
  ];

  static WebhookNewContactPayloadEventNameEnum fromJson(dynamic value) =>
    WebhookNewContactPayloadEventNameEnumTypeTransformer().decode(value);

  static List<WebhookNewContactPayloadEventNameEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookNewContactPayloadEventNameEnum>[]
      : json
          .map((value) => WebhookNewContactPayloadEventNameEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WebhookNewContactPayloadEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookNewContactPayloadEventNameEnum].
class WebhookNewContactPayloadEventNameEnumTypeTransformer {
  const WebhookNewContactPayloadEventNameEnumTypeTransformer._();

  factory WebhookNewContactPayloadEventNameEnumTypeTransformer() => _instance ??= WebhookNewContactPayloadEventNameEnumTypeTransformer._();

  String encode(WebhookNewContactPayloadEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookNewContactPayloadEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookNewContactPayloadEventNameEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'EMAIL_RECEIVED': return WebhookNewContactPayloadEventNameEnum.EMAIL_RECEIVED;
      case r'NEW_EMAIL': return WebhookNewContactPayloadEventNameEnum.NEW_EMAIL;
      case r'NEW_CONTACT': return WebhookNewContactPayloadEventNameEnum.NEW_CONTACT;
      case r'NEW_ATTACHMENT': return WebhookNewContactPayloadEventNameEnum.NEW_ATTACHMENT;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WebhookNewContactPayloadEventNameEnumTypeTransformer] instance.
  static WebhookNewContactPayloadEventNameEnumTypeTransformer _instance;
}

