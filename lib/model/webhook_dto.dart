//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookDto {
  /// Returns a new [WebhookDto] instance.
  WebhookDto({
    this.basicAuth,
    this.createdAt,
    this.eventName,
    this.id,
    this.inboxId,
    this.method,
    this.name,
    this.payloadJsonSchema,
    @required this.updatedAt,
    this.url,
    this.userId,
  });

  /// Does webhook expect basic authentication? If true it means you created this webhook with a username and password. MailSlurp will use these in the URL to authenticate itself.
  bool basicAuth;

  /// When the webhook was created
  DateTime createdAt;

  WebhookDtoEventNameEnum eventName;

  /// ID of the Webhook
  String id;

  /// The inbox that the Webhook will be triggered by
  String inboxId;

  /// HTTP method that your server endpoint must listen for
  WebhookDtoMethodEnum method;

  /// Name of the webhook
  String name;

  /// JSON Schema for the payload that will be sent to your URL via the HTTP method described.
  String payloadJsonSchema;

  DateTime updatedAt;

  /// URL of your server that the webhook will be sent to. The schema of the JSON that is sent is described by the payloadJsonSchema.
  String url;

  /// User ID of the Webhook
  String userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookDto &&
     other.basicAuth == basicAuth &&
     other.createdAt == createdAt &&
     other.eventName == eventName &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.method == method &&
     other.name == name &&
     other.payloadJsonSchema == payloadJsonSchema &&
     other.updatedAt == updatedAt &&
     other.url == url &&
     other.userId == userId;

  @override
  int get hashCode =>
    (basicAuth == null ? 0 : basicAuth.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (eventName == null ? 0 : eventName.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (method == null ? 0 : method.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (payloadJsonSchema == null ? 0 : payloadJsonSchema.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (url == null ? 0 : url.hashCode) +
    (userId == null ? 0 : userId.hashCode);

  @override
  String toString() => 'WebhookDto[basicAuth=$basicAuth, createdAt=$createdAt, eventName=$eventName, id=$id, inboxId=$inboxId, method=$method, name=$name, payloadJsonSchema=$payloadJsonSchema, updatedAt=$updatedAt, url=$url, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (basicAuth != null) {
      json[r'basicAuth'] = basicAuth;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (eventName != null) {
      json[r'eventName'] = eventName;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
    if (method != null) {
      json[r'method'] = method;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (payloadJsonSchema != null) {
      json[r'payloadJsonSchema'] = payloadJsonSchema;
    }
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    if (url != null) {
      json[r'url'] = url;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    return json;
  }

  /// Returns a new [WebhookDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookDto(
        basicAuth: json[r'basicAuth'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        eventName: WebhookDtoEventNameEnum.fromJson(json[r'eventName']),
        id: json[r'id'],
        inboxId: json[r'inboxId'],
        method: WebhookDtoMethodEnum.fromJson(json[r'method']),
        name: json[r'name'],
        payloadJsonSchema: json[r'payloadJsonSchema'],
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        url: json[r'url'],
        userId: json[r'userId'],
    );

  static List<WebhookDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookDto>[]
      : json.map((v) => WebhookDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, WebhookDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WebhookDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WebhookDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WebhookDto-objects as value to a dart map
  static Map<String, List<WebhookDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WebhookDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WebhookDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class WebhookDtoEventNameEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookDtoEventNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_RECEIVED = WebhookDtoEventNameEnum._(r'EMAIL_RECEIVED');
  static const NEW_EMAIL = WebhookDtoEventNameEnum._(r'NEW_EMAIL');
  static const NEW_CONTACT = WebhookDtoEventNameEnum._(r'NEW_CONTACT');
  static const NEW_ATTACHMENT = WebhookDtoEventNameEnum._(r'NEW_ATTACHMENT');
  static const EMAIL_OPENED = WebhookDtoEventNameEnum._(r'EMAIL_OPENED');

  /// List of all possible values in this [enum][WebhookDtoEventNameEnum].
  static const values = <WebhookDtoEventNameEnum>[
    EMAIL_RECEIVED,
    NEW_EMAIL,
    NEW_CONTACT,
    NEW_ATTACHMENT,
    EMAIL_OPENED,
  ];

  static WebhookDtoEventNameEnum fromJson(dynamic value) =>
    WebhookDtoEventNameEnumTypeTransformer().decode(value);

  static List<WebhookDtoEventNameEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookDtoEventNameEnum>[]
      : json
          .map((value) => WebhookDtoEventNameEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WebhookDtoEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookDtoEventNameEnum].
class WebhookDtoEventNameEnumTypeTransformer {
  const WebhookDtoEventNameEnumTypeTransformer._();

  factory WebhookDtoEventNameEnumTypeTransformer() => _instance ??= WebhookDtoEventNameEnumTypeTransformer._();

  String encode(WebhookDtoEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookDtoEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookDtoEventNameEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'EMAIL_RECEIVED': return WebhookDtoEventNameEnum.EMAIL_RECEIVED;
      case r'NEW_EMAIL': return WebhookDtoEventNameEnum.NEW_EMAIL;
      case r'NEW_CONTACT': return WebhookDtoEventNameEnum.NEW_CONTACT;
      case r'NEW_ATTACHMENT': return WebhookDtoEventNameEnum.NEW_ATTACHMENT;
      case r'EMAIL_OPENED': return WebhookDtoEventNameEnum.EMAIL_OPENED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WebhookDtoEventNameEnumTypeTransformer] instance.
  static WebhookDtoEventNameEnumTypeTransformer _instance;
}

/// HTTP method that your server endpoint must listen for
class WebhookDtoMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookDtoMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GET = WebhookDtoMethodEnum._(r'GET');
  static const HEAD = WebhookDtoMethodEnum._(r'HEAD');
  static const POST = WebhookDtoMethodEnum._(r'POST');
  static const PUT = WebhookDtoMethodEnum._(r'PUT');
  static const PATCH = WebhookDtoMethodEnum._(r'PATCH');
  static const DELETE = WebhookDtoMethodEnum._(r'DELETE');
  static const OPTIONS = WebhookDtoMethodEnum._(r'OPTIONS');
  static const TRACE = WebhookDtoMethodEnum._(r'TRACE');

  /// List of all possible values in this [enum][WebhookDtoMethodEnum].
  static const values = <WebhookDtoMethodEnum>[
    GET,
    HEAD,
    POST,
    PUT,
    PATCH,
    DELETE,
    OPTIONS,
    TRACE,
  ];

  static WebhookDtoMethodEnum fromJson(dynamic value) =>
    WebhookDtoMethodEnumTypeTransformer().decode(value);

  static List<WebhookDtoMethodEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookDtoMethodEnum>[]
      : json
          .map((value) => WebhookDtoMethodEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WebhookDtoMethodEnum] to String,
/// and [decode] dynamic data back to [WebhookDtoMethodEnum].
class WebhookDtoMethodEnumTypeTransformer {
  const WebhookDtoMethodEnumTypeTransformer._();

  factory WebhookDtoMethodEnumTypeTransformer() => _instance ??= WebhookDtoMethodEnumTypeTransformer._();

  String encode(WebhookDtoMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookDtoMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookDtoMethodEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'GET': return WebhookDtoMethodEnum.GET;
      case r'HEAD': return WebhookDtoMethodEnum.HEAD;
      case r'POST': return WebhookDtoMethodEnum.POST;
      case r'PUT': return WebhookDtoMethodEnum.PUT;
      case r'PATCH': return WebhookDtoMethodEnum.PATCH;
      case r'DELETE': return WebhookDtoMethodEnum.DELETE;
      case r'OPTIONS': return WebhookDtoMethodEnum.OPTIONS;
      case r'TRACE': return WebhookDtoMethodEnum.TRACE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WebhookDtoMethodEnumTypeTransformer] instance.
  static WebhookDtoMethodEnumTypeTransformer _instance;
}

