//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AbstractWebhookPayload {
  /// Returns a new [AbstractWebhookPayload] instance.
  AbstractWebhookPayload({
    @required this.eventName,
    @required this.messageId,
    @required this.webhookId,
    this.webhookName,
  });

  AbstractWebhookPayloadEventNameEnum eventName;

  String messageId;

  String webhookId;

  String webhookName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AbstractWebhookPayload &&
     other.eventName == eventName &&
     other.messageId == messageId &&
     other.webhookId == webhookId &&
     other.webhookName == webhookName;

  @override
  int get hashCode =>
    (eventName == null ? 0 : eventName.hashCode) +
    (messageId == null ? 0 : messageId.hashCode) +
    (webhookId == null ? 0 : webhookId.hashCode) +
    (webhookName == null ? 0 : webhookName.hashCode);

  @override
  String toString() => 'AbstractWebhookPayload[eventName=$eventName, messageId=$messageId, webhookId=$webhookId, webhookName=$webhookName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'eventName'] = eventName;
      json[r'messageId'] = messageId;
      json[r'webhookId'] = webhookId;
    if (webhookName != null) {
      json[r'webhookName'] = webhookName;
    }
    return json;
  }

  /// Returns a new [AbstractWebhookPayload] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AbstractWebhookPayload fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AbstractWebhookPayload(
        eventName: AbstractWebhookPayloadEventNameEnum.fromJson(json[r'eventName']),
        messageId: json[r'messageId'],
        webhookId: json[r'webhookId'],
        webhookName: json[r'webhookName'],
    );

  static List<AbstractWebhookPayload> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AbstractWebhookPayload>[]
      : json.map((v) => AbstractWebhookPayload.fromJson(v)).toList(growable: true == growable);

  static Map<String, AbstractWebhookPayload> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AbstractWebhookPayload>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = AbstractWebhookPayload.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of AbstractWebhookPayload-objects as value to a dart map
  static Map<String, List<AbstractWebhookPayload>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AbstractWebhookPayload>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = AbstractWebhookPayload.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class AbstractWebhookPayloadEventNameEnum {
  /// Instantiate a new enum with the provided [value].
  const AbstractWebhookPayloadEventNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_RECEIVED = AbstractWebhookPayloadEventNameEnum._(r'EMAIL_RECEIVED');
  static const NEW_EMAIL = AbstractWebhookPayloadEventNameEnum._(r'NEW_EMAIL');
  static const NEW_CONTACT = AbstractWebhookPayloadEventNameEnum._(r'NEW_CONTACT');
  static const NEW_ATTACHMENT = AbstractWebhookPayloadEventNameEnum._(r'NEW_ATTACHMENT');
  static const EMAIL_OPENED = AbstractWebhookPayloadEventNameEnum._(r'EMAIL_OPENED');
  static const EMAIL_READ = AbstractWebhookPayloadEventNameEnum._(r'EMAIL_READ');
  static const BOUNCE = AbstractWebhookPayloadEventNameEnum._(r'BOUNCE');
  static const BOUNCE_RECIPIENT = AbstractWebhookPayloadEventNameEnum._(r'BOUNCE_RECIPIENT');

  /// List of all possible values in this [enum][AbstractWebhookPayloadEventNameEnum].
  static const values = <AbstractWebhookPayloadEventNameEnum>[
    EMAIL_RECEIVED,
    NEW_EMAIL,
    NEW_CONTACT,
    NEW_ATTACHMENT,
    EMAIL_OPENED,
    EMAIL_READ,
    BOUNCE,
    BOUNCE_RECIPIENT,
  ];

  static AbstractWebhookPayloadEventNameEnum fromJson(dynamic value) =>
    AbstractWebhookPayloadEventNameEnumTypeTransformer().decode(value);

  static List<AbstractWebhookPayloadEventNameEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AbstractWebhookPayloadEventNameEnum>[]
      : json
          .map((value) => AbstractWebhookPayloadEventNameEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [AbstractWebhookPayloadEventNameEnum] to String,
/// and [decode] dynamic data back to [AbstractWebhookPayloadEventNameEnum].
class AbstractWebhookPayloadEventNameEnumTypeTransformer {
  const AbstractWebhookPayloadEventNameEnumTypeTransformer._();

  factory AbstractWebhookPayloadEventNameEnumTypeTransformer() => _instance ??= AbstractWebhookPayloadEventNameEnumTypeTransformer._();

  String encode(AbstractWebhookPayloadEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AbstractWebhookPayloadEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AbstractWebhookPayloadEventNameEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'EMAIL_RECEIVED': return AbstractWebhookPayloadEventNameEnum.EMAIL_RECEIVED;
      case r'NEW_EMAIL': return AbstractWebhookPayloadEventNameEnum.NEW_EMAIL;
      case r'NEW_CONTACT': return AbstractWebhookPayloadEventNameEnum.NEW_CONTACT;
      case r'NEW_ATTACHMENT': return AbstractWebhookPayloadEventNameEnum.NEW_ATTACHMENT;
      case r'EMAIL_OPENED': return AbstractWebhookPayloadEventNameEnum.EMAIL_OPENED;
      case r'EMAIL_READ': return AbstractWebhookPayloadEventNameEnum.EMAIL_READ;
      case r'BOUNCE': return AbstractWebhookPayloadEventNameEnum.BOUNCE;
      case r'BOUNCE_RECIPIENT': return AbstractWebhookPayloadEventNameEnum.BOUNCE_RECIPIENT;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [AbstractWebhookPayloadEventNameEnumTypeTransformer] instance.
  static AbstractWebhookPayloadEventNameEnumTypeTransformer _instance;
}

