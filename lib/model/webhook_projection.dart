//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookProjection {
  /// Returns a new [WebhookProjection] instance.
  WebhookProjection({
    this.name,
    @required this.id,
    @required this.url,
    this.inboxId,
    this.eventName,
    @required this.createdAt,
    @required this.updatedAt,
  });

  String name;

  String id;

  String url;

  String inboxId;

  WebhookProjectionEventNameEnum eventName;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookProjection &&
     other.name == name &&
     other.id == id &&
     other.url == url &&
     other.inboxId == inboxId &&
     other.eventName == eventName &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (url == null ? 0 : url.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (eventName == null ? 0 : eventName.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'WebhookProjection[name=$name, id=$id, url=$url, inboxId=$inboxId, eventName=$eventName, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'id'] = id;
      json[r'url'] = url;
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
    if (eventName != null) {
      json[r'eventName'] = eventName;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [WebhookProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookProjection(
        name: json[r'name'],
        id: json[r'id'],
        url: json[r'url'],
        inboxId: json[r'inboxId'],
        eventName: WebhookProjectionEventNameEnum.fromJson(json[r'eventName']),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
    );

  static List<WebhookProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookProjection>[]
      : json.map((v) => WebhookProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, WebhookProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WebhookProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WebhookProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WebhookProjection-objects as value to a dart map
  static Map<String, List<WebhookProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WebhookProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WebhookProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class WebhookProjectionEventNameEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookProjectionEventNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_RECEIVED = WebhookProjectionEventNameEnum._(r'EMAIL_RECEIVED');
  static const NEW_EMAIL = WebhookProjectionEventNameEnum._(r'NEW_EMAIL');
  static const NEW_CONTACT = WebhookProjectionEventNameEnum._(r'NEW_CONTACT');
  static const NEW_ATTACHMENT = WebhookProjectionEventNameEnum._(r'NEW_ATTACHMENT');
  static const EMAIL_OPENED = WebhookProjectionEventNameEnum._(r'EMAIL_OPENED');
  static const EMAIL_READ = WebhookProjectionEventNameEnum._(r'EMAIL_READ');
  static const BOUNCE = WebhookProjectionEventNameEnum._(r'BOUNCE');
  static const BOUNCE_RECIPIENT = WebhookProjectionEventNameEnum._(r'BOUNCE_RECIPIENT');

  /// List of all possible values in this [enum][WebhookProjectionEventNameEnum].
  static const values = <WebhookProjectionEventNameEnum>[
    EMAIL_RECEIVED,
    NEW_EMAIL,
    NEW_CONTACT,
    NEW_ATTACHMENT,
    EMAIL_OPENED,
    EMAIL_READ,
    BOUNCE,
    BOUNCE_RECIPIENT,
  ];

  static WebhookProjectionEventNameEnum fromJson(dynamic value) =>
    WebhookProjectionEventNameEnumTypeTransformer().decode(value);

  static List<WebhookProjectionEventNameEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookProjectionEventNameEnum>[]
      : json
          .map((value) => WebhookProjectionEventNameEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WebhookProjectionEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookProjectionEventNameEnum].
class WebhookProjectionEventNameEnumTypeTransformer {
  const WebhookProjectionEventNameEnumTypeTransformer._();

  factory WebhookProjectionEventNameEnumTypeTransformer() => _instance ??= WebhookProjectionEventNameEnumTypeTransformer._();

  String encode(WebhookProjectionEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookProjectionEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookProjectionEventNameEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'EMAIL_RECEIVED': return WebhookProjectionEventNameEnum.EMAIL_RECEIVED;
      case r'NEW_EMAIL': return WebhookProjectionEventNameEnum.NEW_EMAIL;
      case r'NEW_CONTACT': return WebhookProjectionEventNameEnum.NEW_CONTACT;
      case r'NEW_ATTACHMENT': return WebhookProjectionEventNameEnum.NEW_ATTACHMENT;
      case r'EMAIL_OPENED': return WebhookProjectionEventNameEnum.EMAIL_OPENED;
      case r'EMAIL_READ': return WebhookProjectionEventNameEnum.EMAIL_READ;
      case r'BOUNCE': return WebhookProjectionEventNameEnum.BOUNCE;
      case r'BOUNCE_RECIPIENT': return WebhookProjectionEventNameEnum.BOUNCE_RECIPIENT;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WebhookProjectionEventNameEnumTypeTransformer] instance.
  static WebhookProjectionEventNameEnumTypeTransformer _instance;
}

