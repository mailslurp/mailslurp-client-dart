//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookResultDto {
  /// Returns a new [WebhookResultDto] instance.
  WebhookResultDto({
    @required this.createdAt,
    @required this.httpMethod,
    this.id,
    @required this.inboxId,
    @required this.messageId,
    this.redriveId,
    this.responseBodyExtract,
    this.responseStatus,
    @required this.responseTimeMillis,
    this.resultType,
    @required this.updatedAt,
    @required this.userId,
    @required this.webhookEvent,
    @required this.webhookId,
    @required this.webhookUrl,
  });

  DateTime createdAt;

  WebhookResultDtoHttpMethodEnum httpMethod;

  String id;

  String inboxId;

  String messageId;

  String redriveId;

  String responseBodyExtract;

  int responseStatus;

  int responseTimeMillis;

  WebhookResultDtoResultTypeEnum resultType;

  DateTime updatedAt;

  String userId;

  WebhookResultDtoWebhookEventEnum webhookEvent;

  String webhookId;

  String webhookUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookResultDto &&
     other.createdAt == createdAt &&
     other.httpMethod == httpMethod &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.messageId == messageId &&
     other.redriveId == redriveId &&
     other.responseBodyExtract == responseBodyExtract &&
     other.responseStatus == responseStatus &&
     other.responseTimeMillis == responseTimeMillis &&
     other.resultType == resultType &&
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
    (redriveId == null ? 0 : redriveId.hashCode) +
    (responseBodyExtract == null ? 0 : responseBodyExtract.hashCode) +
    (responseStatus == null ? 0 : responseStatus.hashCode) +
    (responseTimeMillis == null ? 0 : responseTimeMillis.hashCode) +
    (resultType == null ? 0 : resultType.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (webhookEvent == null ? 0 : webhookEvent.hashCode) +
    (webhookId == null ? 0 : webhookId.hashCode) +
    (webhookUrl == null ? 0 : webhookUrl.hashCode);

  @override
  String toString() => 'WebhookResultDto[createdAt=$createdAt, httpMethod=$httpMethod, id=$id, inboxId=$inboxId, messageId=$messageId, redriveId=$redriveId, responseBodyExtract=$responseBodyExtract, responseStatus=$responseStatus, responseTimeMillis=$responseTimeMillis, resultType=$resultType, updatedAt=$updatedAt, userId=$userId, webhookEvent=$webhookEvent, webhookId=$webhookId, webhookUrl=$webhookUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'httpMethod'] = httpMethod;
    if (id != null) {
      json[r'id'] = id;
    }
      json[r'inboxId'] = inboxId;
      json[r'messageId'] = messageId;
    if (redriveId != null) {
      json[r'redriveId'] = redriveId;
    }
    if (responseBodyExtract != null) {
      json[r'responseBodyExtract'] = responseBodyExtract;
    }
    if (responseStatus != null) {
      json[r'responseStatus'] = responseStatus;
    }
      json[r'responseTimeMillis'] = responseTimeMillis;
    if (resultType != null) {
      json[r'resultType'] = resultType;
    }
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
      json[r'userId'] = userId;
      json[r'webhookEvent'] = webhookEvent;
      json[r'webhookId'] = webhookId;
      json[r'webhookUrl'] = webhookUrl;
    return json;
  }

  /// Returns a new [WebhookResultDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookResultDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookResultDto(
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        httpMethod: WebhookResultDtoHttpMethodEnum.fromJson(json[r'httpMethod']),
        id: json[r'id'],
        inboxId: json[r'inboxId'],
        messageId: json[r'messageId'],
        redriveId: json[r'redriveId'],
        responseBodyExtract: json[r'responseBodyExtract'],
        responseStatus: json[r'responseStatus'],
        responseTimeMillis: json[r'responseTimeMillis'],
        resultType: WebhookResultDtoResultTypeEnum.fromJson(json[r'resultType']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        userId: json[r'userId'],
        webhookEvent: WebhookResultDtoWebhookEventEnum.fromJson(json[r'webhookEvent']),
        webhookId: json[r'webhookId'],
        webhookUrl: json[r'webhookUrl'],
    );

  static List<WebhookResultDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookResultDto>[]
      : json.map((v) => WebhookResultDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, WebhookResultDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WebhookResultDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WebhookResultDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WebhookResultDto-objects as value to a dart map
  static Map<String, List<WebhookResultDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WebhookResultDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WebhookResultDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class WebhookResultDtoHttpMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookResultDtoHttpMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GET = WebhookResultDtoHttpMethodEnum._(r'GET');
  static const HEAD = WebhookResultDtoHttpMethodEnum._(r'HEAD');
  static const POST = WebhookResultDtoHttpMethodEnum._(r'POST');
  static const PUT = WebhookResultDtoHttpMethodEnum._(r'PUT');
  static const PATCH = WebhookResultDtoHttpMethodEnum._(r'PATCH');
  static const DELETE = WebhookResultDtoHttpMethodEnum._(r'DELETE');
  static const OPTIONS = WebhookResultDtoHttpMethodEnum._(r'OPTIONS');
  static const TRACE = WebhookResultDtoHttpMethodEnum._(r'TRACE');

  /// List of all possible values in this [enum][WebhookResultDtoHttpMethodEnum].
  static const values = <WebhookResultDtoHttpMethodEnum>[
    GET,
    HEAD,
    POST,
    PUT,
    PATCH,
    DELETE,
    OPTIONS,
    TRACE,
  ];

  static WebhookResultDtoHttpMethodEnum fromJson(dynamic value) =>
    WebhookResultDtoHttpMethodEnumTypeTransformer().decode(value);

  static List<WebhookResultDtoHttpMethodEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookResultDtoHttpMethodEnum>[]
      : json
          .map((value) => WebhookResultDtoHttpMethodEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WebhookResultDtoHttpMethodEnum] to String,
/// and [decode] dynamic data back to [WebhookResultDtoHttpMethodEnum].
class WebhookResultDtoHttpMethodEnumTypeTransformer {
  const WebhookResultDtoHttpMethodEnumTypeTransformer._();

  factory WebhookResultDtoHttpMethodEnumTypeTransformer() => _instance ??= WebhookResultDtoHttpMethodEnumTypeTransformer._();

  String encode(WebhookResultDtoHttpMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookResultDtoHttpMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookResultDtoHttpMethodEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'GET': return WebhookResultDtoHttpMethodEnum.GET;
      case r'HEAD': return WebhookResultDtoHttpMethodEnum.HEAD;
      case r'POST': return WebhookResultDtoHttpMethodEnum.POST;
      case r'PUT': return WebhookResultDtoHttpMethodEnum.PUT;
      case r'PATCH': return WebhookResultDtoHttpMethodEnum.PATCH;
      case r'DELETE': return WebhookResultDtoHttpMethodEnum.DELETE;
      case r'OPTIONS': return WebhookResultDtoHttpMethodEnum.OPTIONS;
      case r'TRACE': return WebhookResultDtoHttpMethodEnum.TRACE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WebhookResultDtoHttpMethodEnumTypeTransformer] instance.
  static WebhookResultDtoHttpMethodEnumTypeTransformer _instance;
}


class WebhookResultDtoResultTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookResultDtoResultTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const BAD_RESPONSE = WebhookResultDtoResultTypeEnum._(r'BAD_RESPONSE');
  static const EXCEPTION = WebhookResultDtoResultTypeEnum._(r'EXCEPTION');
  static const SUCCESS = WebhookResultDtoResultTypeEnum._(r'SUCCESS');

  /// List of all possible values in this [enum][WebhookResultDtoResultTypeEnum].
  static const values = <WebhookResultDtoResultTypeEnum>[
    BAD_RESPONSE,
    EXCEPTION,
    SUCCESS,
  ];

  static WebhookResultDtoResultTypeEnum fromJson(dynamic value) =>
    WebhookResultDtoResultTypeEnumTypeTransformer().decode(value);

  static List<WebhookResultDtoResultTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookResultDtoResultTypeEnum>[]
      : json
          .map((value) => WebhookResultDtoResultTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WebhookResultDtoResultTypeEnum] to String,
/// and [decode] dynamic data back to [WebhookResultDtoResultTypeEnum].
class WebhookResultDtoResultTypeEnumTypeTransformer {
  const WebhookResultDtoResultTypeEnumTypeTransformer._();

  factory WebhookResultDtoResultTypeEnumTypeTransformer() => _instance ??= WebhookResultDtoResultTypeEnumTypeTransformer._();

  String encode(WebhookResultDtoResultTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookResultDtoResultTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookResultDtoResultTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'BAD_RESPONSE': return WebhookResultDtoResultTypeEnum.BAD_RESPONSE;
      case r'EXCEPTION': return WebhookResultDtoResultTypeEnum.EXCEPTION;
      case r'SUCCESS': return WebhookResultDtoResultTypeEnum.SUCCESS;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WebhookResultDtoResultTypeEnumTypeTransformer] instance.
  static WebhookResultDtoResultTypeEnumTypeTransformer _instance;
}


class WebhookResultDtoWebhookEventEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookResultDtoWebhookEventEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_RECEIVED = WebhookResultDtoWebhookEventEnum._(r'EMAIL_RECEIVED');
  static const NEW_EMAIL = WebhookResultDtoWebhookEventEnum._(r'NEW_EMAIL');
  static const NEW_CONTACT = WebhookResultDtoWebhookEventEnum._(r'NEW_CONTACT');
  static const NEW_ATTACHMENT = WebhookResultDtoWebhookEventEnum._(r'NEW_ATTACHMENT');
  static const EMAIL_OPENED = WebhookResultDtoWebhookEventEnum._(r'EMAIL_OPENED');
  static const EMAIL_READ = WebhookResultDtoWebhookEventEnum._(r'EMAIL_READ');

  /// List of all possible values in this [enum][WebhookResultDtoWebhookEventEnum].
  static const values = <WebhookResultDtoWebhookEventEnum>[
    EMAIL_RECEIVED,
    NEW_EMAIL,
    NEW_CONTACT,
    NEW_ATTACHMENT,
    EMAIL_OPENED,
    EMAIL_READ,
  ];

  static WebhookResultDtoWebhookEventEnum fromJson(dynamic value) =>
    WebhookResultDtoWebhookEventEnumTypeTransformer().decode(value);

  static List<WebhookResultDtoWebhookEventEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WebhookResultDtoWebhookEventEnum>[]
      : json
          .map((value) => WebhookResultDtoWebhookEventEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WebhookResultDtoWebhookEventEnum] to String,
/// and [decode] dynamic data back to [WebhookResultDtoWebhookEventEnum].
class WebhookResultDtoWebhookEventEnumTypeTransformer {
  const WebhookResultDtoWebhookEventEnumTypeTransformer._();

  factory WebhookResultDtoWebhookEventEnumTypeTransformer() => _instance ??= WebhookResultDtoWebhookEventEnumTypeTransformer._();

  String encode(WebhookResultDtoWebhookEventEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookResultDtoWebhookEventEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookResultDtoWebhookEventEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'EMAIL_RECEIVED': return WebhookResultDtoWebhookEventEnum.EMAIL_RECEIVED;
      case r'NEW_EMAIL': return WebhookResultDtoWebhookEventEnum.NEW_EMAIL;
      case r'NEW_CONTACT': return WebhookResultDtoWebhookEventEnum.NEW_CONTACT;
      case r'NEW_ATTACHMENT': return WebhookResultDtoWebhookEventEnum.NEW_ATTACHMENT;
      case r'EMAIL_OPENED': return WebhookResultDtoWebhookEventEnum.EMAIL_OPENED;
      case r'EMAIL_READ': return WebhookResultDtoWebhookEventEnum.EMAIL_READ;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WebhookResultDtoWebhookEventEnumTypeTransformer] instance.
  static WebhookResultDtoWebhookEventEnumTypeTransformer _instance;
}

