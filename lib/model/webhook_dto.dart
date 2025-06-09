//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookDto {
  /// Returns a new [WebhookDto] instance.
  WebhookDto({
    required this.id,
    required this.userId,
    required this.basicAuth,
    this.name,
    this.phoneId,
    this.inboxId,
    this.requestBodyTemplate,
    required this.url,
    required this.method,
    required this.payloadJsonSchema,
    required this.createdAt,
    required this.updatedAt,
    this.eventName,
    this.requestHeaders,
    this.aiTransformId,
    this.ignoreInsecureSslCertificates,
    this.useStaticIpRange,
    this.healthStatus,
  });

  /// ID of the Webhook
  String id;

  /// User ID of the Webhook
  String userId;

  /// Does webhook expect basic authentication? If true it means you created this webhook with a username and password. MailSlurp will use these in the URL to authenticate itself.
  bool basicAuth;

  /// Name of the webhook
  String? name;

  /// The phoneNumberId that the Webhook will be triggered by. If null then webhook triggered at account level or inbox level if inboxId set
  String? phoneId;

  /// The inbox that the Webhook will be triggered by. If null then webhook triggered at account level or phone level if phoneId set
  String? inboxId;

  /// Request body template for HTTP request that will be sent for the webhook. Use Moustache style template variables to insert values from the original event payload.
  String? requestBodyTemplate;

  /// URL of your server that the webhook will be sent to. The schema of the JSON that is sent is described by the payloadJsonSchema.
  String url;

  /// HTTP method that your server endpoint must listen for
  WebhookDtoMethodEnum method;

  /// Deprecated. Fetch JSON Schema for webhook using the getJsonSchemaForWebhookPayload method
  String payloadJsonSchema;

  /// When the webhook was created
  DateTime? createdAt;

  DateTime updatedAt;

  /// Webhook trigger event name
  WebhookDtoEventNameEnum? eventName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WebhookHeaders? requestHeaders;

  /// ID of AI transformer for payload
  String? aiTransformId;

  /// Should notifier ignore insecure SSL certificates
  bool? ignoreInsecureSslCertificates;

  /// Should notifier use static IP range when sending webhook payload
  bool? useStaticIpRange;

  /// Webhook health
  WebhookDtoHealthStatusEnum? healthStatus;

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
     other.aiTransformId == aiTransformId &&
     other.ignoreInsecureSslCertificates == ignoreInsecureSslCertificates &&
     other.useStaticIpRange == useStaticIpRange &&
     other.healthStatus == healthStatus;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (basicAuth.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (phoneId == null ? 0 : phoneId!.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (requestBodyTemplate == null ? 0 : requestBodyTemplate!.hashCode) +
    (url.hashCode) +
    (method.hashCode) +
    (payloadJsonSchema.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt.hashCode) +
    (eventName == null ? 0 : eventName!.hashCode) +
    (requestHeaders == null ? 0 : requestHeaders!.hashCode) +
    (aiTransformId == null ? 0 : aiTransformId!.hashCode) +
    (ignoreInsecureSslCertificates == null ? 0 : ignoreInsecureSslCertificates!.hashCode) +
    (useStaticIpRange == null ? 0 : useStaticIpRange!.hashCode) +
    (healthStatus == null ? 0 : healthStatus!.hashCode);

  @override
  String toString() => 'WebhookDto[id=$id, userId=$userId, basicAuth=$basicAuth, name=$name, phoneId=$phoneId, inboxId=$inboxId, requestBodyTemplate=$requestBodyTemplate, url=$url, method=$method, payloadJsonSchema=$payloadJsonSchema, createdAt=$createdAt, updatedAt=$updatedAt, eventName=$eventName, requestHeaders=$requestHeaders, aiTransformId=$aiTransformId, ignoreInsecureSslCertificates=$ignoreInsecureSslCertificates, useStaticIpRange=$useStaticIpRange, healthStatus=$healthStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'basicAuth'] = this.basicAuth;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.phoneId != null) {
      json[r'phoneId'] = this.phoneId;
    } else {
      json[r'phoneId'] = null;
    }
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
    if (this.requestBodyTemplate != null) {
      json[r'requestBodyTemplate'] = this.requestBodyTemplate;
    } else {
      json[r'requestBodyTemplate'] = null;
    }
      json[r'url'] = this.url;
      json[r'method'] = this.method;
      json[r'payloadJsonSchema'] = this.payloadJsonSchema;
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    if (this.eventName != null) {
      json[r'eventName'] = this.eventName;
    } else {
      json[r'eventName'] = null;
    }
    if (this.requestHeaders != null) {
      json[r'requestHeaders'] = this.requestHeaders;
    } else {
      json[r'requestHeaders'] = null;
    }
    if (this.aiTransformId != null) {
      json[r'aiTransformId'] = this.aiTransformId;
    } else {
      json[r'aiTransformId'] = null;
    }
    if (this.ignoreInsecureSslCertificates != null) {
      json[r'ignoreInsecureSslCertificates'] = this.ignoreInsecureSslCertificates;
    } else {
      json[r'ignoreInsecureSslCertificates'] = null;
    }
    if (this.useStaticIpRange != null) {
      json[r'useStaticIpRange'] = this.useStaticIpRange;
    } else {
      json[r'useStaticIpRange'] = null;
    }
    if (this.healthStatus != null) {
      json[r'healthStatus'] = this.healthStatus;
    } else {
      json[r'healthStatus'] = null;
    }
    return json;
  }

  /// Returns a new [WebhookDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        basicAuth: mapValueOfType<bool>(json, r'basicAuth')!,
        name: mapValueOfType<String>(json, r'name'),
        phoneId: mapValueOfType<String>(json, r'phoneId'),
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        requestBodyTemplate: mapValueOfType<String>(json, r'requestBodyTemplate'),
        url: mapValueOfType<String>(json, r'url')!,
        method: WebhookDtoMethodEnum.fromJson(json[r'method'])!,
        payloadJsonSchema: mapValueOfType<String>(json, r'payloadJsonSchema')!,
        createdAt: mapDateTime(json, r'createdAt', ''),
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        eventName: WebhookDtoEventNameEnum.fromJson(json[r'eventName']),
        requestHeaders: WebhookHeaders.fromJson(json[r'requestHeaders']),
        aiTransformId: mapValueOfType<String>(json, r'aiTransformId'),
        ignoreInsecureSslCertificates: mapValueOfType<bool>(json, r'ignoreInsecureSslCertificates'),
        useStaticIpRange: mapValueOfType<bool>(json, r'useStaticIpRange'),
        healthStatus: WebhookDtoHealthStatusEnum.fromJson(json[r'healthStatus']),
      );
    }
    return null;
  }

  static List<WebhookDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookDto> mapFromJson(dynamic json) {
    final map = <String, WebhookDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookDto-objects as value to a dart map
  static Map<String, List<WebhookDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'basicAuth',
    'url',
    'method',
    'payloadJsonSchema',
    'createdAt',
    'updatedAt',
  };
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

  static const POST = WebhookDtoMethodEnum._(r'POST');
  static const DELETE = WebhookDtoMethodEnum._(r'DELETE');
  static const GET = WebhookDtoMethodEnum._(r'GET');
  static const PUT = WebhookDtoMethodEnum._(r'PUT');
  static const PATCH = WebhookDtoMethodEnum._(r'PATCH');
  static const HEAD = WebhookDtoMethodEnum._(r'HEAD');
  static const OPTIONS = WebhookDtoMethodEnum._(r'OPTIONS');
  static const TRACE = WebhookDtoMethodEnum._(r'TRACE');

  /// List of all possible values in this [enum][WebhookDtoMethodEnum].
  static const values = <WebhookDtoMethodEnum>[
    POST,
    DELETE,
    GET,
    PUT,
    PATCH,
    HEAD,
    OPTIONS,
    TRACE,
  ];

  static WebhookDtoMethodEnum? fromJson(dynamic value) => WebhookDtoMethodEnumTypeTransformer().decode(value);

  static List<WebhookDtoMethodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookDtoMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookDtoMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookDtoMethodEnum] to String,
/// and [decode] dynamic data back to [WebhookDtoMethodEnum].
class WebhookDtoMethodEnumTypeTransformer {
  factory WebhookDtoMethodEnumTypeTransformer() => _instance ??= const WebhookDtoMethodEnumTypeTransformer._();

  const WebhookDtoMethodEnumTypeTransformer._();

  String encode(WebhookDtoMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookDtoMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookDtoMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'POST': return WebhookDtoMethodEnum.POST;
        case r'DELETE': return WebhookDtoMethodEnum.DELETE;
        case r'GET': return WebhookDtoMethodEnum.GET;
        case r'PUT': return WebhookDtoMethodEnum.PUT;
        case r'PATCH': return WebhookDtoMethodEnum.PATCH;
        case r'HEAD': return WebhookDtoMethodEnum.HEAD;
        case r'OPTIONS': return WebhookDtoMethodEnum.OPTIONS;
        case r'TRACE': return WebhookDtoMethodEnum.TRACE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookDtoMethodEnumTypeTransformer] instance.
  static WebhookDtoMethodEnumTypeTransformer? _instance;
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
  static const NEW_GUEST_USER = WebhookDtoEventNameEnum._(r'NEW_GUEST_USER');

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
    NEW_GUEST_USER,
  ];

  static WebhookDtoEventNameEnum? fromJson(dynamic value) => WebhookDtoEventNameEnumTypeTransformer().decode(value);

  static List<WebhookDtoEventNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookDtoEventNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookDtoEventNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookDtoEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookDtoEventNameEnum].
class WebhookDtoEventNameEnumTypeTransformer {
  factory WebhookDtoEventNameEnumTypeTransformer() => _instance ??= const WebhookDtoEventNameEnumTypeTransformer._();

  const WebhookDtoEventNameEnumTypeTransformer._();

  String encode(WebhookDtoEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookDtoEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookDtoEventNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
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
        case r'NEW_GUEST_USER': return WebhookDtoEventNameEnum.NEW_GUEST_USER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookDtoEventNameEnumTypeTransformer] instance.
  static WebhookDtoEventNameEnumTypeTransformer? _instance;
}


/// Webhook health
class WebhookDtoHealthStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookDtoHealthStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HEALTHY = WebhookDtoHealthStatusEnum._(r'HEALTHY');
  static const UNHEALTHY = WebhookDtoHealthStatusEnum._(r'UNHEALTHY');

  /// List of all possible values in this [enum][WebhookDtoHealthStatusEnum].
  static const values = <WebhookDtoHealthStatusEnum>[
    HEALTHY,
    UNHEALTHY,
  ];

  static WebhookDtoHealthStatusEnum? fromJson(dynamic value) => WebhookDtoHealthStatusEnumTypeTransformer().decode(value);

  static List<WebhookDtoHealthStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookDtoHealthStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookDtoHealthStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookDtoHealthStatusEnum] to String,
/// and [decode] dynamic data back to [WebhookDtoHealthStatusEnum].
class WebhookDtoHealthStatusEnumTypeTransformer {
  factory WebhookDtoHealthStatusEnumTypeTransformer() => _instance ??= const WebhookDtoHealthStatusEnumTypeTransformer._();

  const WebhookDtoHealthStatusEnumTypeTransformer._();

  String encode(WebhookDtoHealthStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookDtoHealthStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookDtoHealthStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HEALTHY': return WebhookDtoHealthStatusEnum.HEALTHY;
        case r'UNHEALTHY': return WebhookDtoHealthStatusEnum.UNHEALTHY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookDtoHealthStatusEnumTypeTransformer] instance.
  static WebhookDtoHealthStatusEnumTypeTransformer? _instance;
}


