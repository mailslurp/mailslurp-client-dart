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
    @required this.id,
    @required this.userId,
    @required this.basicAuth,
    this.name,
    this.phoneId,
    this.inboxId,
    this.requestBodyTemplate,
    @required this.url,
    @required this.method,
    @required this.payloadJsonSchema,
    this.createdAt,
    @required this.updatedAt,
    this.eventName,
    this.requestHeaders,
    this.ignoreInsecureSslCertificates,
    this.useStaticIpRange,
  });

  /// ID of the Webhook
  String id;

  /// User ID of the Webhook
  String userId;

  /// Does webhook expect basic authentication? If true it means you created this webhook with a username and password. MailSlurp will use these in the URL to authenticate itself.
  bool basicAuth;

  /// Name of the webhook
  String name;

  /// The phoneNumberId that the Webhook will be triggered by. If null then webhook triggered at account level or inbox level if inboxId set
  String phoneId;

  /// The inbox that the Webhook will be triggered by. If null then webhook triggered at account level or phone level if phoneId set
  String inboxId;

  /// Request body template for HTTP request that will be sent for the webhook. Use Moustache style template variables to insert values from the original event payload.
  String requestBodyTemplate;

  /// URL of your server that the webhook will be sent to. The schema of the JSON that is sent is described by the payloadJsonSchema.
  String url;

  /// HTTP method that your server endpoint must listen for
  WebhookDtoMethodEnum method;

  /// Deprecated. Fetch JSON Schema for webhook using the getJsonSchemaForWebhookPayload method
  String payloadJsonSchema;

  /// When the webhook was created
  DateTime createdAt;

  DateTime updatedAt;

  /// Webhook trigger event name
  WebhookDtoEventNameEnum eventName;

  WebhookHeaders requestHeaders;

  /// Should notifier ignore insecure SSL certificates
  bool ignoreInsecureSslCertificates;

  /// Should notifier use static IP range when sending webhook payload
  bool useStaticIpRange;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookDto &&
     other.id == id &&
     other.userId == userId &&
     other.basicAuth == basicAuth &&
     other.name == name &&
     other.phoneId == phoneId &&
     other.inboxId == inboxId &&
     other.requestBodyTemplate == requestBodyTemplate &&
     other.url == url &&
     other.method == method &&
     other.payloadJsonSchema == payloadJsonSchema &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.eventName == eventName &&
     other.requestHeaders == requestHeaders &&
     other.ignoreInsecureSslCertificates == ignoreInsecureSslCertificates &&
     other.useStaticIpRange == useStaticIpRange;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (basicAuth == null ? 0 : basicAuth.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (phoneId == null ? 0 : phoneId.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (requestBodyTemplate == null ? 0 : requestBodyTemplate.hashCode) +
    (url == null ? 0 : url.hashCode) +
    (method == null ? 0 : method.hashCode) +
    (payloadJsonSchema == null ? 0 : payloadJsonSchema.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (eventName == null ? 0 : eventName.hashCode) +
    (requestHeaders == null ? 0 : requestHeaders.hashCode) +
    (ignoreInsecureSslCertificates == null ? 0 : ignoreInsecureSslCertificates.hashCode) +
    (useStaticIpRange == null ? 0 : useStaticIpRange.hashCode);

  @override
  String toString() => 'WebhookDto[id=$id, userId=$userId, basicAuth=$basicAuth, name=$name, phoneId=$phoneId, inboxId=$inboxId, requestBodyTemplate=$requestBodyTemplate, url=$url, method=$method, payloadJsonSchema=$payloadJsonSchema, createdAt=$createdAt, updatedAt=$updatedAt, eventName=$eventName, requestHeaders=$requestHeaders, ignoreInsecureSslCertificates=$ignoreInsecureSslCertificates, useStaticIpRange=$useStaticIpRange]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'userId'] = userId;
      json[r'basicAuth'] = basicAuth;
    if (name != null) {
      json[r'name'] = name;
    }
    if (phoneId != null) {
      json[r'phoneId'] = phoneId;
    }
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
    if (requestBodyTemplate != null) {
      json[r'requestBodyTemplate'] = requestBodyTemplate;
    }
      json[r'url'] = url;
      json[r'method'] = method;
      json[r'payloadJsonSchema'] = payloadJsonSchema;
      json[r'createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    if (eventName != null) {
      json[r'eventName'] = eventName;
    }
    if (requestHeaders != null) {
      json[r'requestHeaders'] = requestHeaders;
    }
    if (ignoreInsecureSslCertificates != null) {
      json[r'ignoreInsecureSslCertificates'] = ignoreInsecureSslCertificates;
    }
    if (useStaticIpRange != null) {
      json[r'useStaticIpRange'] = useStaticIpRange;
    }
    return json;
  }

  /// Returns a new [WebhookDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WebhookDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WebhookDto(
        id: json[r'id'],
        userId: json[r'userId'],
        basicAuth: json[r'basicAuth'],
        name: json[r'name'],
        phoneId: json[r'phoneId'],
        inboxId: json[r'inboxId'],
        requestBodyTemplate: json[r'requestBodyTemplate'],
        url: json[r'url'],
        method: WebhookDtoMethodEnum.fromJson(json[r'method']),
        payloadJsonSchema: json[r'payloadJsonSchema'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        eventName: WebhookDtoEventNameEnum.fromJson(json[r'eventName']),
        requestHeaders: WebhookHeaders.fromJson(json[r'requestHeaders']),
        ignoreInsecureSslCertificates: json[r'ignoreInsecureSslCertificates'],
        useStaticIpRange: json[r'useStaticIpRange'],
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

/// Webhook trigger event name
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
  static const EMAIL_READ = WebhookDtoEventNameEnum._(r'EMAIL_READ');
  static const DELIVERY_STATUS = WebhookDtoEventNameEnum._(r'DELIVERY_STATUS');
  static const BOUNCE = WebhookDtoEventNameEnum._(r'BOUNCE');
  static const BOUNCE_RECIPIENT = WebhookDtoEventNameEnum._(r'BOUNCE_RECIPIENT');
  static const NEW_SMS = WebhookDtoEventNameEnum._(r'NEW_SMS');

  /// List of all possible values in this [enum][WebhookDtoEventNameEnum].
  static const values = <WebhookDtoEventNameEnum>[
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
      case r'EMAIL_READ': return WebhookDtoEventNameEnum.EMAIL_READ;
      case r'DELIVERY_STATUS': return WebhookDtoEventNameEnum.DELIVERY_STATUS;
      case r'BOUNCE': return WebhookDtoEventNameEnum.BOUNCE;
      case r'BOUNCE_RECIPIENT': return WebhookDtoEventNameEnum.BOUNCE_RECIPIENT;
      case r'NEW_SMS': return WebhookDtoEventNameEnum.NEW_SMS;
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

