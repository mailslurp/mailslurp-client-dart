//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookResultDto {
  /// Returns a new [WebhookResultDto] instance.
  WebhookResultDto({
    this.id,
    required this.userId,
    required this.webhookId,
    required this.webhookUrl,
    required this.messageId,
    this.redriveId,
    required this.httpMethod,
    required this.webhookEvent,
    this.responseStatus,
    required this.responseTimeMillis,
    this.responseBodyExtract,
    this.resultType,
    required this.createdAt,
    required this.updatedAt,
    required this.seen,
    this.inboxId,
    this.emailId,
    this.attachmentId,
    this.phoneId,
    this.smsId,
  });

  String? id;

  String userId;

  String webhookId;

  String webhookUrl;

  String messageId;

  String? redriveId;

  WebhookResultDtoHttpMethodEnum httpMethod;

  WebhookResultDtoWebhookEventEnum webhookEvent;

  int? responseStatus;

  int responseTimeMillis;

  String? responseBodyExtract;

  WebhookResultDtoResultTypeEnum? resultType;

  DateTime createdAt;

  DateTime updatedAt;

  bool seen;

  String? inboxId;

  String? emailId;

  String? attachmentId;

  String? phoneId;

  String? smsId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookResultDto &&
     other.id == id &&
     other.userId == userId &&
     other.webhookId == webhookId &&
     other.webhookUrl == webhookUrl &&
     other.messageId == messageId &&
     other.redriveId == redriveId &&
     other.httpMethod == httpMethod &&
     other.webhookEvent == webhookEvent &&
     other.responseStatus == responseStatus &&
     other.responseTimeMillis == responseTimeMillis &&
     other.responseBodyExtract == responseBodyExtract &&
     other.resultType == resultType &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.seen == seen &&
     other.inboxId == inboxId &&
     other.emailId == emailId &&
     other.attachmentId == attachmentId &&
     other.phoneId == phoneId &&
     other.smsId == smsId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (userId.hashCode) +
    (webhookId.hashCode) +
    (webhookUrl.hashCode) +
    (messageId.hashCode) +
    (redriveId == null ? 0 : redriveId!.hashCode) +
    (httpMethod.hashCode) +
    (webhookEvent.hashCode) +
    (responseStatus == null ? 0 : responseStatus!.hashCode) +
    (responseTimeMillis.hashCode) +
    (responseBodyExtract == null ? 0 : responseBodyExtract!.hashCode) +
    (resultType == null ? 0 : resultType!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (seen.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (emailId == null ? 0 : emailId!.hashCode) +
    (attachmentId == null ? 0 : attachmentId!.hashCode) +
    (phoneId == null ? 0 : phoneId!.hashCode) +
    (smsId == null ? 0 : smsId!.hashCode);

  @override
  String toString() => 'WebhookResultDto[id=$id, userId=$userId, webhookId=$webhookId, webhookUrl=$webhookUrl, messageId=$messageId, redriveId=$redriveId, httpMethod=$httpMethod, webhookEvent=$webhookEvent, responseStatus=$responseStatus, responseTimeMillis=$responseTimeMillis, responseBodyExtract=$responseBodyExtract, resultType=$resultType, createdAt=$createdAt, updatedAt=$updatedAt, seen=$seen, inboxId=$inboxId, emailId=$emailId, attachmentId=$attachmentId, phoneId=$phoneId, smsId=$smsId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'userId'] = this.userId;
      json[r'webhookId'] = this.webhookId;
      json[r'webhookUrl'] = this.webhookUrl;
      json[r'messageId'] = this.messageId;
    if (this.redriveId != null) {
      json[r'redriveId'] = this.redriveId;
    } else {
      json[r'redriveId'] = null;
    }
      json[r'httpMethod'] = this.httpMethod;
      json[r'webhookEvent'] = this.webhookEvent;
    if (this.responseStatus != null) {
      json[r'responseStatus'] = this.responseStatus;
    } else {
      json[r'responseStatus'] = null;
    }
      json[r'responseTimeMillis'] = this.responseTimeMillis;
    if (this.responseBodyExtract != null) {
      json[r'responseBodyExtract'] = this.responseBodyExtract;
    } else {
      json[r'responseBodyExtract'] = null;
    }
    if (this.resultType != null) {
      json[r'resultType'] = this.resultType;
    } else {
      json[r'resultType'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
      json[r'seen'] = this.seen;
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
    if (this.emailId != null) {
      json[r'emailId'] = this.emailId;
    } else {
      json[r'emailId'] = null;
    }
    if (this.attachmentId != null) {
      json[r'attachmentId'] = this.attachmentId;
    } else {
      json[r'attachmentId'] = null;
    }
    if (this.phoneId != null) {
      json[r'phoneId'] = this.phoneId;
    } else {
      json[r'phoneId'] = null;
    }
    if (this.smsId != null) {
      json[r'smsId'] = this.smsId;
    } else {
      json[r'smsId'] = null;
    }
    return json;
  }

  /// Returns a new [WebhookResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookResultDto(
        id: mapValueOfType<String>(json, r'id'),
        userId: mapValueOfType<String>(json, r'userId')!,
        webhookId: mapValueOfType<String>(json, r'webhookId')!,
        webhookUrl: mapValueOfType<String>(json, r'webhookUrl')!,
        messageId: mapValueOfType<String>(json, r'messageId')!,
        redriveId: mapValueOfType<String>(json, r'redriveId'),
        httpMethod: WebhookResultDtoHttpMethodEnum.fromJson(json[r'httpMethod'])!,
        webhookEvent: WebhookResultDtoWebhookEventEnum.fromJson(json[r'webhookEvent'])!,
        responseStatus: mapValueOfType<int>(json, r'responseStatus'),
        responseTimeMillis: mapValueOfType<int>(json, r'responseTimeMillis')!,
        responseBodyExtract: mapValueOfType<String>(json, r'responseBodyExtract'),
        resultType: WebhookResultDtoResultTypeEnum.fromJson(json[r'resultType']),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        seen: mapValueOfType<bool>(json, r'seen')!,
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        emailId: mapValueOfType<String>(json, r'emailId'),
        attachmentId: mapValueOfType<String>(json, r'attachmentId'),
        phoneId: mapValueOfType<String>(json, r'phoneId'),
        smsId: mapValueOfType<String>(json, r'smsId'),
      );
    }
    return null;
  }

  static List<WebhookResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookResultDto> mapFromJson(dynamic json) {
    final map = <String, WebhookResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookResultDto-objects as value to a dart map
  static Map<String, List<WebhookResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'userId',
    'webhookId',
    'webhookUrl',
    'messageId',
    'httpMethod',
    'webhookEvent',
    'responseTimeMillis',
    'createdAt',
    'updatedAt',
    'seen',
  };
}


class WebhookResultDtoHttpMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookResultDtoHttpMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const POST = WebhookResultDtoHttpMethodEnum._(r'POST');
  static const DELETE = WebhookResultDtoHttpMethodEnum._(r'DELETE');
  static const GET = WebhookResultDtoHttpMethodEnum._(r'GET');
  static const PUT = WebhookResultDtoHttpMethodEnum._(r'PUT');
  static const PATCH = WebhookResultDtoHttpMethodEnum._(r'PATCH');
  static const HEAD = WebhookResultDtoHttpMethodEnum._(r'HEAD');
  static const OPTIONS = WebhookResultDtoHttpMethodEnum._(r'OPTIONS');
  static const TRACE = WebhookResultDtoHttpMethodEnum._(r'TRACE');

  /// List of all possible values in this [enum][WebhookResultDtoHttpMethodEnum].
  static const values = <WebhookResultDtoHttpMethodEnum>[
    POST,
    DELETE,
    GET,
    PUT,
    PATCH,
    HEAD,
    OPTIONS,
    TRACE,
  ];

  static WebhookResultDtoHttpMethodEnum? fromJson(dynamic value) => WebhookResultDtoHttpMethodEnumTypeTransformer().decode(value);

  static List<WebhookResultDtoHttpMethodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookResultDtoHttpMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookResultDtoHttpMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookResultDtoHttpMethodEnum] to String,
/// and [decode] dynamic data back to [WebhookResultDtoHttpMethodEnum].
class WebhookResultDtoHttpMethodEnumTypeTransformer {
  factory WebhookResultDtoHttpMethodEnumTypeTransformer() => _instance ??= const WebhookResultDtoHttpMethodEnumTypeTransformer._();

  const WebhookResultDtoHttpMethodEnumTypeTransformer._();

  String encode(WebhookResultDtoHttpMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookResultDtoHttpMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookResultDtoHttpMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'POST': return WebhookResultDtoHttpMethodEnum.POST;
        case r'DELETE': return WebhookResultDtoHttpMethodEnum.DELETE;
        case r'GET': return WebhookResultDtoHttpMethodEnum.GET;
        case r'PUT': return WebhookResultDtoHttpMethodEnum.PUT;
        case r'PATCH': return WebhookResultDtoHttpMethodEnum.PATCH;
        case r'HEAD': return WebhookResultDtoHttpMethodEnum.HEAD;
        case r'OPTIONS': return WebhookResultDtoHttpMethodEnum.OPTIONS;
        case r'TRACE': return WebhookResultDtoHttpMethodEnum.TRACE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookResultDtoHttpMethodEnumTypeTransformer] instance.
  static WebhookResultDtoHttpMethodEnumTypeTransformer? _instance;
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
  static const DELIVERY_STATUS = WebhookResultDtoWebhookEventEnum._(r'DELIVERY_STATUS');
  static const BOUNCE = WebhookResultDtoWebhookEventEnum._(r'BOUNCE');
  static const BOUNCE_RECIPIENT = WebhookResultDtoWebhookEventEnum._(r'BOUNCE_RECIPIENT');
  static const NEW_SMS = WebhookResultDtoWebhookEventEnum._(r'NEW_SMS');

  /// List of all possible values in this [enum][WebhookResultDtoWebhookEventEnum].
  static const values = <WebhookResultDtoWebhookEventEnum>[
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

  static WebhookResultDtoWebhookEventEnum? fromJson(dynamic value) => WebhookResultDtoWebhookEventEnumTypeTransformer().decode(value);

  static List<WebhookResultDtoWebhookEventEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookResultDtoWebhookEventEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookResultDtoWebhookEventEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookResultDtoWebhookEventEnum] to String,
/// and [decode] dynamic data back to [WebhookResultDtoWebhookEventEnum].
class WebhookResultDtoWebhookEventEnumTypeTransformer {
  factory WebhookResultDtoWebhookEventEnumTypeTransformer() => _instance ??= const WebhookResultDtoWebhookEventEnumTypeTransformer._();

  const WebhookResultDtoWebhookEventEnumTypeTransformer._();

  String encode(WebhookResultDtoWebhookEventEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookResultDtoWebhookEventEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookResultDtoWebhookEventEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EMAIL_RECEIVED': return WebhookResultDtoWebhookEventEnum.EMAIL_RECEIVED;
        case r'NEW_EMAIL': return WebhookResultDtoWebhookEventEnum.NEW_EMAIL;
        case r'NEW_CONTACT': return WebhookResultDtoWebhookEventEnum.NEW_CONTACT;
        case r'NEW_ATTACHMENT': return WebhookResultDtoWebhookEventEnum.NEW_ATTACHMENT;
        case r'EMAIL_OPENED': return WebhookResultDtoWebhookEventEnum.EMAIL_OPENED;
        case r'EMAIL_READ': return WebhookResultDtoWebhookEventEnum.EMAIL_READ;
        case r'DELIVERY_STATUS': return WebhookResultDtoWebhookEventEnum.DELIVERY_STATUS;
        case r'BOUNCE': return WebhookResultDtoWebhookEventEnum.BOUNCE;
        case r'BOUNCE_RECIPIENT': return WebhookResultDtoWebhookEventEnum.BOUNCE_RECIPIENT;
        case r'NEW_SMS': return WebhookResultDtoWebhookEventEnum.NEW_SMS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookResultDtoWebhookEventEnumTypeTransformer] instance.
  static WebhookResultDtoWebhookEventEnumTypeTransformer? _instance;
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
  static const REDRIVEN = WebhookResultDtoResultTypeEnum._(r'REDRIVEN');

  /// List of all possible values in this [enum][WebhookResultDtoResultTypeEnum].
  static const values = <WebhookResultDtoResultTypeEnum>[
    BAD_RESPONSE,
    EXCEPTION,
    SUCCESS,
    REDRIVEN,
  ];

  static WebhookResultDtoResultTypeEnum? fromJson(dynamic value) => WebhookResultDtoResultTypeEnumTypeTransformer().decode(value);

  static List<WebhookResultDtoResultTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookResultDtoResultTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookResultDtoResultTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookResultDtoResultTypeEnum] to String,
/// and [decode] dynamic data back to [WebhookResultDtoResultTypeEnum].
class WebhookResultDtoResultTypeEnumTypeTransformer {
  factory WebhookResultDtoResultTypeEnumTypeTransformer() => _instance ??= const WebhookResultDtoResultTypeEnumTypeTransformer._();

  const WebhookResultDtoResultTypeEnumTypeTransformer._();

  String encode(WebhookResultDtoResultTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookResultDtoResultTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookResultDtoResultTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'BAD_RESPONSE': return WebhookResultDtoResultTypeEnum.BAD_RESPONSE;
        case r'EXCEPTION': return WebhookResultDtoResultTypeEnum.EXCEPTION;
        case r'SUCCESS': return WebhookResultDtoResultTypeEnum.SUCCESS;
        case r'REDRIVEN': return WebhookResultDtoResultTypeEnum.REDRIVEN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookResultDtoResultTypeEnumTypeTransformer] instance.
  static WebhookResultDtoResultTypeEnumTypeTransformer? _instance;
}


