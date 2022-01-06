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
    this.messageId,
    this.webhookId,
    this.webhookName,
    this.eventName,
    this.contactId,
    this.groupId,
    this.firstName,
    this.lastName,
    this.company,
    this.primaryEmailAddress,
    this.emailAddresses = const {},
    this.tags = const {},
    this.metaData,
    this.optOut,
    this.createdAt,
  });

  /// Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
  String messageId;

  /// ID of webhook entity being triggered
  String webhookId;

  /// Name of the webhook being triggered
  String webhookName;

  /// Name of the event type webhook is being triggered for.
  WebhookNewContactPayloadEventNameEnum eventName;

  String contactId;

  String groupId;

  String firstName;

  String lastName;

  String company;

  String primaryEmailAddress;

  Set<String> emailAddresses;

  Set<String> tags;

  Object metaData;

  bool optOut;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookNewContactPayload &&
     other.messageId == messageId &&
     other.webhookId == webhookId &&
     other.webhookName == webhookName &&
     other.eventName == eventName &&
     other.contactId == contactId &&
     other.groupId == groupId &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.company == company &&
     other.primaryEmailAddress == primaryEmailAddress &&
     other.emailAddresses == emailAddresses &&
     other.tags == tags &&
     other.metaData == metaData &&
     other.optOut == optOut &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    (messageId == null ? 0 : messageId.hashCode) +
    (webhookId == null ? 0 : webhookId.hashCode) +
    (webhookName == null ? 0 : webhookName.hashCode) +
    (eventName == null ? 0 : eventName.hashCode) +
    (contactId == null ? 0 : contactId.hashCode) +
    (groupId == null ? 0 : groupId.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (company == null ? 0 : company.hashCode) +
    (primaryEmailAddress == null ? 0 : primaryEmailAddress.hashCode) +
    (emailAddresses == null ? 0 : emailAddresses.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (metaData == null ? 0 : metaData.hashCode) +
    (optOut == null ? 0 : optOut.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() => 'WebhookNewContactPayload[messageId=$messageId, webhookId=$webhookId, webhookName=$webhookName, eventName=$eventName, contactId=$contactId, groupId=$groupId, firstName=$firstName, lastName=$lastName, company=$company, primaryEmailAddress=$primaryEmailAddress, emailAddresses=$emailAddresses, tags=$tags, metaData=$metaData, optOut=$optOut, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (messageId != null) {
      json[r'messageId'] = messageId;
    }
    if (webhookId != null) {
      json[r'webhookId'] = webhookId;
    }
    if (webhookName != null) {
      json[r'webhookName'] = webhookName;
    }
    if (eventName != null) {
      json[r'eventName'] = eventName;
    }
    if (contactId != null) {
      json[r'contactId'] = contactId;
    }
    if (groupId != null) {
      json[r'groupId'] = groupId;
    }
    if (firstName != null) {
      json[r'firstName'] = firstName;
    }
    if (lastName != null) {
      json[r'lastName'] = lastName;
    }
    if (company != null) {
      json[r'company'] = company;
    }
    if (primaryEmailAddress != null) {
      json[r'primaryEmailAddress'] = primaryEmailAddress;
    }
    if (emailAddresses != null) {
      json[r'emailAddresses'] = emailAddresses;
    }
    if (tags != null) {
      json[r'tags'] = tags;
    }
    if (metaData != null) {
      json[r'metaData'] = metaData;
    }
    if (optOut != null) {
      json[r'optOut'] = optOut;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    return json;
  }

  /// Returns a new [WebhookNewContactPayload] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookNewContactPayload fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookNewContactPayload(
        messageId: json[r'messageId'],
        webhookId: json[r'webhookId'],
        webhookName: json[r'webhookName'],
        eventName: WebhookNewContactPayloadEventNameEnum.fromJson(json[r'eventName']),
        contactId: json[r'contactId'],
        groupId: json[r'groupId'],
        firstName: json[r'firstName'],
        lastName: json[r'lastName'],
        company: json[r'company'],
        primaryEmailAddress: json[r'primaryEmailAddress'],
        emailAddresses: json[r'emailAddresses'] == null
          ? null
          : (json[r'emailAddresses'] as Set).cast<String>(),
        tags: json[r'tags'] == null
          ? null
          : (json[r'tags'] as Set).cast<String>(),
        metaData: json[r'metaData'],
        optOut: json[r'optOut'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
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
  static const EMAIL_OPENED = WebhookNewContactPayloadEventNameEnum._(r'EMAIL_OPENED');
  static const EMAIL_READ = WebhookNewContactPayloadEventNameEnum._(r'EMAIL_READ');

  /// List of all possible values in this [enum][WebhookNewContactPayloadEventNameEnum].
  static const values = <WebhookNewContactPayloadEventNameEnum>[
    EMAIL_RECEIVED,
    NEW_EMAIL,
    NEW_CONTACT,
    NEW_ATTACHMENT,
    EMAIL_OPENED,
    EMAIL_READ,
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
      case r'EMAIL_OPENED': return WebhookNewContactPayloadEventNameEnum.EMAIL_OPENED;
      case r'EMAIL_READ': return WebhookNewContactPayloadEventNameEnum.EMAIL_READ;
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

