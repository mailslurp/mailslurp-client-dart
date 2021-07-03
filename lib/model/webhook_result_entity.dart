//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookResultEntity {
  /// Returns a new [WebhookResultEntity] instance.
  WebhookResultEntity({
    @required this.createdAt,
    @required this.httpMethod,
    this.id,
    @required this.inboxId,
    @required this.messageId,
    this.responseBodyExtract,
    this.responseStatus,
    @required this.responseTimeMillis,
    @required this.updatedAt,
    @required this.userId,
    @required this.webhookEvent,
    @required this.webhookId,
    @required this.webhookUrl,
  });

  DateTime createdAt;

  WebhookResultEntityHttpMethodEnum httpMethod;

  String id;

  String inboxId;

  String messageId;

  String responseBodyExtract;

  int responseStatus;

  int responseTimeMillis;

  DateTime updatedAt;

  String userId;

  WebhookResultEntityWebhookEventEnum webhookEvent;

  String webhookId;

  String webhookUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookResultEntity &&
     other.createdAt == createdAt &&
     other.httpMethod == httpMethod &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.messageId == messageId &&
     other.responseBodyExtract == responseBodyExtract &&
     other.responseStatus == responseStatus &&
     other.responseTimeMillis == responseTimeMillis &&
     other.updatedAt == updatedAt &&
     other.userId == userId &&
     other.webhookEvent == webhookEvent &&
     other.webhookId == webhookId &&
     other.webhookUrl == webhookUrl;

  @override
  int get hashCode =>
    (createdAt == null ? 0 : createdAt.hashCode) +
    (httpMethod == null ? 0 : httpMethod.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (messageId == null ? 0 : messageId.hashCode) +
    (responseBodyExtract == null ? 0 : responseBodyExtract.hashCode) +
    (responseStatus == null ? 0 : responseStatus.hashCode) +
    (responseTimeMillis == null ? 0 : responseTimeMillis.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (webhookEvent == null ? 0 : webhookEvent.hashCode) +
    (webhookId == null ? 0 : webhookId.hashCode) +
    (webhookUrl == null ? 0 : webhookUrl.hashCode);

  @override
  String toString() => 'WebhookResultEntity[createdAt=$createdAt, httpMethod=$httpMethod, id=$id, inboxId=$inboxId, messageId=$messageId, responseBodyExtract=$responseBodyExtract, responseStatus=$responseStatus, responseTimeMillis=$responseTimeMillis, updatedAt=$updatedAt, userId=$userId, webhookEvent=$webhookEvent, webhookId=$webhookId, webhookUrl=$webhookUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'httpMethod'] = httpMethod;
    if (id != null) {
      json[r'id'] = id;
    }
      json[r'inboxId'] = inboxId;
      json[r'messageId'] = messageId;
    if (responseBodyExtract != null) {
      json[r'responseBodyExtract'] = responseBodyExtract;
    }
    if (responseStatus != null) {
      json[r'responseStatus'] = responseStatus;
    }
      json[r'responseTimeMillis'] = responseTimeMillis;
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
      json[r'userId'] = userId;
      json[r'webhookEvent'] = webhookEvent;
      json[r'webhookId'] = webhookId;
      json[r'webhookUrl'] = webhookUrl;
    return json;
  }

  /// Returns a new [WebhookResultEntity] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookResultEntity fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookResultEntity(
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        httpMethod: WebhookResultEntityHttpMethodEnum.fromJson(json[r'httpMethod']),
        id: json[r'id'],
        inboxId: json[r'inboxId'],
        messageId: json[r'messageId'],
        responseBodyExtract: json[r'responseBodyExtract'],
        responseStatus: json[r'responseStatus'],
        responseTimeMillis: json[r'responseTimeMillis'],
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        userId: json[r'userId'],
        webhookEvent: WebhookResultEntityWebhookEventEnum.fromJson(json[r'webhookEvent']),
        webhookId: json[r'webhookId'],
        webhookUrl: json[r'webhookUrl'],
    );

  static List<WebhookResultEntity> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookResultEntity>[]
      : json.map((v) => WebhookResultEntity.fromJson(v)).toList(growable: true == growable);

  static Map<String, WebhookResultEntity> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WebhookResultEntity>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WebhookResultEntity.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WebhookResultEntity-objects as value to a dart map
  static Map<String, List<WebhookResultEntity>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WebhookResultEntity>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WebhookResultEntity.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class WebhookResultEntityHttpMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookResultEntityHttpMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GET = WebhookResultEntityHttpMethodEnum._(r'GET');
  static const HEAD = WebhookResultEntityHttpMethodEnum._(r'HEAD');
  static const POST = WebhookResultEntityHttpMethodEnum._(r'POST');
  static const PUT = WebhookResultEntityHttpMethodEnum._(r'PUT');
  static const PATCH = WebhookResultEntityHttpMethodEnum._(r'PATCH');
  static const DELETE = WebhookResultEntityHttpMethodEnum._(r'DELETE');
  static const OPTIONS = WebhookResultEntityHttpMethodEnum._(r'OPTIONS');
  static const TRACE = WebhookResultEntityHttpMethodEnum._(r'TRACE');

  /// List of all possible values in this [enum][WebhookResultEntityHttpMethodEnum].
  static const values = <WebhookResultEntityHttpMethodEnum>[
    GET,
    HEAD,
    POST,
    PUT,
    PATCH,
    DELETE,
    OPTIONS,
    TRACE,
  ];

  static WebhookResultEntityHttpMethodEnum fromJson(dynamic value) =>
    WebhookResultEntityHttpMethodEnumTypeTransformer().decode(value);

  static List<WebhookResultEntityHttpMethodEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookResultEntityHttpMethodEnum>[]
      : json
          .map((value) => WebhookResultEntityHttpMethodEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WebhookResultEntityHttpMethodEnum] to String,
/// and [decode] dynamic data back to [WebhookResultEntityHttpMethodEnum].
class WebhookResultEntityHttpMethodEnumTypeTransformer {
  const WebhookResultEntityHttpMethodEnumTypeTransformer._();

  factory WebhookResultEntityHttpMethodEnumTypeTransformer() => _instance ??= WebhookResultEntityHttpMethodEnumTypeTransformer._();

  String encode(WebhookResultEntityHttpMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookResultEntityHttpMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookResultEntityHttpMethodEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'GET': return WebhookResultEntityHttpMethodEnum.GET;
      case r'HEAD': return WebhookResultEntityHttpMethodEnum.HEAD;
      case r'POST': return WebhookResultEntityHttpMethodEnum.POST;
      case r'PUT': return WebhookResultEntityHttpMethodEnum.PUT;
      case r'PATCH': return WebhookResultEntityHttpMethodEnum.PATCH;
      case r'DELETE': return WebhookResultEntityHttpMethodEnum.DELETE;
      case r'OPTIONS': return WebhookResultEntityHttpMethodEnum.OPTIONS;
      case r'TRACE': return WebhookResultEntityHttpMethodEnum.TRACE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WebhookResultEntityHttpMethodEnumTypeTransformer] instance.
  static WebhookResultEntityHttpMethodEnumTypeTransformer _instance;
}


class WebhookResultEntityWebhookEventEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookResultEntityWebhookEventEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_RECEIVED = WebhookResultEntityWebhookEventEnum._(r'EMAIL_RECEIVED');
  static const NEW_EMAIL = WebhookResultEntityWebhookEventEnum._(r'NEW_EMAIL');
  static const NEW_CONTACT = WebhookResultEntityWebhookEventEnum._(r'NEW_CONTACT');
  static const NEW_ATTACHMENT = WebhookResultEntityWebhookEventEnum._(r'NEW_ATTACHMENT');
  static const EMAIL_OPENED = WebhookResultEntityWebhookEventEnum._(r'EMAIL_OPENED');

  /// List of all possible values in this [enum][WebhookResultEntityWebhookEventEnum].
  static const values = <WebhookResultEntityWebhookEventEnum>[
    EMAIL_RECEIVED,
    NEW_EMAIL,
    NEW_CONTACT,
    NEW_ATTACHMENT,
    EMAIL_OPENED,
  ];

  static WebhookResultEntityWebhookEventEnum fromJson(dynamic value) =>
    WebhookResultEntityWebhookEventEnumTypeTransformer().decode(value);

  static List<WebhookResultEntityWebhookEventEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookResultEntityWebhookEventEnum>[]
      : json
          .map((value) => WebhookResultEntityWebhookEventEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WebhookResultEntityWebhookEventEnum] to String,
/// and [decode] dynamic data back to [WebhookResultEntityWebhookEventEnum].
class WebhookResultEntityWebhookEventEnumTypeTransformer {
  const WebhookResultEntityWebhookEventEnumTypeTransformer._();

  factory WebhookResultEntityWebhookEventEnumTypeTransformer() => _instance ??= WebhookResultEntityWebhookEventEnumTypeTransformer._();

  String encode(WebhookResultEntityWebhookEventEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookResultEntityWebhookEventEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookResultEntityWebhookEventEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'EMAIL_RECEIVED': return WebhookResultEntityWebhookEventEnum.EMAIL_RECEIVED;
      case r'NEW_EMAIL': return WebhookResultEntityWebhookEventEnum.NEW_EMAIL;
      case r'NEW_CONTACT': return WebhookResultEntityWebhookEventEnum.NEW_CONTACT;
      case r'NEW_ATTACHMENT': return WebhookResultEntityWebhookEventEnum.NEW_ATTACHMENT;
      case r'EMAIL_OPENED': return WebhookResultEntityWebhookEventEnum.EMAIL_OPENED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WebhookResultEntityWebhookEventEnumTypeTransformer] instance.
  static WebhookResultEntityWebhookEventEnumTypeTransformer _instance;
}

