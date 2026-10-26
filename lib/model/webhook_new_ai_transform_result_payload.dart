//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookNewAITransformResultPayload {
  /// Returns a new [WebhookNewAITransformResultPayload] instance.
  WebhookNewAITransformResultPayload({
    required this.messageId,
    required this.webhookId,
    required this.eventName,
    this.webhookName,
    required this.aiTransformResultId,
    required this.userId,
    required this.aiTransformId,
    this.aiTransformMappingId,
    this.entityId,
    this.entityType,
    this.result,
  });

  /// Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
  String messageId;

  /// ID of webhook entity being triggered
  String webhookId;

  /// Name of the event type webhook is being triggered for.
  WebhookNewAITransformResultPayloadEventNameEnum eventName;

  /// Name of the webhook being triggered
  String? webhookName;

  /// AI Transform ID of event
  String aiTransformResultId;

  /// User ID of event
  String userId;

  /// ID of AI Transform
  String aiTransformId;

  /// ID of AI Transform mapping
  String? aiTransformMappingId;

  /// ID of entity that triggered the transformation
  String? entityId;

  /// Entity type that triggered the transformation
  WebhookNewAITransformResultPayloadEntityTypeEnum? entityType;

  /// JSON string result of the AI transformation
  String? result;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookNewAITransformResultPayload &&
     other.messageId == messageId &&
     other.webhookId == webhookId &&
     other.eventName == eventName &&
     other.webhookName == webhookName &&
     other.aiTransformResultId == aiTransformResultId &&
     other.userId == userId &&
     other.aiTransformId == aiTransformId &&
     other.aiTransformMappingId == aiTransformMappingId &&
     other.entityId == entityId &&
     other.entityType == entityType &&
     other.result == result;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (messageId.hashCode) +
    (webhookId.hashCode) +
    (eventName.hashCode) +
    (webhookName == null ? 0 : webhookName!.hashCode) +
    (aiTransformResultId.hashCode) +
    (userId.hashCode) +
    (aiTransformId.hashCode) +
    (aiTransformMappingId == null ? 0 : aiTransformMappingId!.hashCode) +
    (entityId == null ? 0 : entityId!.hashCode) +
    (entityType == null ? 0 : entityType!.hashCode) +
    (result == null ? 0 : result!.hashCode);

  @override
  String toString() => 'WebhookNewAITransformResultPayload[messageId=$messageId, webhookId=$webhookId, eventName=$eventName, webhookName=$webhookName, aiTransformResultId=$aiTransformResultId, userId=$userId, aiTransformId=$aiTransformId, aiTransformMappingId=$aiTransformMappingId, entityId=$entityId, entityType=$entityType, result=$result]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'messageId'] = this.messageId;
      json[r'webhookId'] = this.webhookId;
      json[r'eventName'] = this.eventName;
    if (this.webhookName != null) {
      json[r'webhookName'] = this.webhookName;
    } else {
      json[r'webhookName'] = null;
    }
      json[r'aiTransformResultId'] = this.aiTransformResultId;
      json[r'userId'] = this.userId;
      json[r'aiTransformId'] = this.aiTransformId;
    if (this.aiTransformMappingId != null) {
      json[r'aiTransformMappingId'] = this.aiTransformMappingId;
    } else {
      json[r'aiTransformMappingId'] = null;
    }
    if (this.entityId != null) {
      json[r'entityId'] = this.entityId;
    } else {
      json[r'entityId'] = null;
    }
    if (this.entityType != null) {
      json[r'entityType'] = this.entityType;
    } else {
      json[r'entityType'] = null;
    }
    if (this.result != null) {
      json[r'result'] = this.result;
    } else {
      json[r'result'] = null;
    }
    return json;
  }

  /// Returns a new [WebhookNewAITransformResultPayload] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookNewAITransformResultPayload? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookNewAITransformResultPayload[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookNewAITransformResultPayload[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookNewAITransformResultPayload(
        messageId: mapValueOfType<String>(json, r'messageId')!,
        webhookId: mapValueOfType<String>(json, r'webhookId')!,
        eventName: WebhookNewAITransformResultPayloadEventNameEnum.fromJson(json[r'eventName'])!,
        webhookName: mapValueOfType<String>(json, r'webhookName'),
        aiTransformResultId: mapValueOfType<String>(json, r'aiTransformResultId')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        aiTransformId: mapValueOfType<String>(json, r'aiTransformId')!,
        aiTransformMappingId: mapValueOfType<String>(json, r'aiTransformMappingId'),
        entityId: mapValueOfType<String>(json, r'entityId'),
        entityType: WebhookNewAITransformResultPayloadEntityTypeEnum.fromJson(json[r'entityType']),
        result: mapValueOfType<String>(json, r'result'),
      );
    }
    return null;
  }

  static List<WebhookNewAITransformResultPayload> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookNewAITransformResultPayload>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookNewAITransformResultPayload.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookNewAITransformResultPayload> mapFromJson(dynamic json) {
    final map = <String, WebhookNewAITransformResultPayload>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookNewAITransformResultPayload.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookNewAITransformResultPayload-objects as value to a dart map
  static Map<String, List<WebhookNewAITransformResultPayload>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookNewAITransformResultPayload>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookNewAITransformResultPayload.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'messageId',
    'webhookId',
    'eventName',
    'aiTransformResultId',
    'userId',
    'aiTransformId',
  };
}

/// Name of the event type webhook is being triggered for.
class WebhookNewAITransformResultPayloadEventNameEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookNewAITransformResultPayloadEventNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_RECEIVED = WebhookNewAITransformResultPayloadEventNameEnum._(r'EMAIL_RECEIVED');
  static const NEW_AI_TRANSFORM_RESULT = WebhookNewAITransformResultPayloadEventNameEnum._(r'NEW_AI_TRANSFORM_RESULT');
  static const NEW_EMAIL = WebhookNewAITransformResultPayloadEventNameEnum._(r'NEW_EMAIL');
  static const NEW_CONTACT = WebhookNewAITransformResultPayloadEventNameEnum._(r'NEW_CONTACT');
  static const NEW_ATTACHMENT = WebhookNewAITransformResultPayloadEventNameEnum._(r'NEW_ATTACHMENT');
  static const EMAIL_OPENED = WebhookNewAITransformResultPayloadEventNameEnum._(r'EMAIL_OPENED');
  static const EMAIL_READ = WebhookNewAITransformResultPayloadEventNameEnum._(r'EMAIL_READ');
  static const DELIVERY_STATUS = WebhookNewAITransformResultPayloadEventNameEnum._(r'DELIVERY_STATUS');
  static const BOUNCE = WebhookNewAITransformResultPayloadEventNameEnum._(r'BOUNCE');
  static const BOUNCE_RECIPIENT = WebhookNewAITransformResultPayloadEventNameEnum._(r'BOUNCE_RECIPIENT');
  static const NEW_SMS = WebhookNewAITransformResultPayloadEventNameEnum._(r'NEW_SMS');
  static const NEW_GUEST_USER = WebhookNewAITransformResultPayloadEventNameEnum._(r'NEW_GUEST_USER');

  /// List of all possible values in this [enum][WebhookNewAITransformResultPayloadEventNameEnum].
  static const values = <WebhookNewAITransformResultPayloadEventNameEnum>[
    EMAIL_RECEIVED,
    NEW_AI_TRANSFORM_RESULT,
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

  static WebhookNewAITransformResultPayloadEventNameEnum? fromJson(dynamic value) => WebhookNewAITransformResultPayloadEventNameEnumTypeTransformer().decode(value);

  static List<WebhookNewAITransformResultPayloadEventNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookNewAITransformResultPayloadEventNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookNewAITransformResultPayloadEventNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookNewAITransformResultPayloadEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookNewAITransformResultPayloadEventNameEnum].
class WebhookNewAITransformResultPayloadEventNameEnumTypeTransformer {
  factory WebhookNewAITransformResultPayloadEventNameEnumTypeTransformer() => _instance ??= const WebhookNewAITransformResultPayloadEventNameEnumTypeTransformer._();

  const WebhookNewAITransformResultPayloadEventNameEnumTypeTransformer._();

  String encode(WebhookNewAITransformResultPayloadEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookNewAITransformResultPayloadEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookNewAITransformResultPayloadEventNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EMAIL_RECEIVED': return WebhookNewAITransformResultPayloadEventNameEnum.EMAIL_RECEIVED;
        case r'NEW_AI_TRANSFORM_RESULT': return WebhookNewAITransformResultPayloadEventNameEnum.NEW_AI_TRANSFORM_RESULT;
        case r'NEW_EMAIL': return WebhookNewAITransformResultPayloadEventNameEnum.NEW_EMAIL;
        case r'NEW_CONTACT': return WebhookNewAITransformResultPayloadEventNameEnum.NEW_CONTACT;
        case r'NEW_ATTACHMENT': return WebhookNewAITransformResultPayloadEventNameEnum.NEW_ATTACHMENT;
        case r'EMAIL_OPENED': return WebhookNewAITransformResultPayloadEventNameEnum.EMAIL_OPENED;
        case r'EMAIL_READ': return WebhookNewAITransformResultPayloadEventNameEnum.EMAIL_READ;
        case r'DELIVERY_STATUS': return WebhookNewAITransformResultPayloadEventNameEnum.DELIVERY_STATUS;
        case r'BOUNCE': return WebhookNewAITransformResultPayloadEventNameEnum.BOUNCE;
        case r'BOUNCE_RECIPIENT': return WebhookNewAITransformResultPayloadEventNameEnum.BOUNCE_RECIPIENT;
        case r'NEW_SMS': return WebhookNewAITransformResultPayloadEventNameEnum.NEW_SMS;
        case r'NEW_GUEST_USER': return WebhookNewAITransformResultPayloadEventNameEnum.NEW_GUEST_USER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookNewAITransformResultPayloadEventNameEnumTypeTransformer] instance.
  static WebhookNewAITransformResultPayloadEventNameEnumTypeTransformer? _instance;
}


/// Entity type that triggered the transformation
class WebhookNewAITransformResultPayloadEntityTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookNewAITransformResultPayloadEntityTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INBOX = WebhookNewAITransformResultPayloadEntityTypeEnum._(r'INBOX');
  static const PHONE = WebhookNewAITransformResultPayloadEntityTypeEnum._(r'PHONE');

  /// List of all possible values in this [enum][WebhookNewAITransformResultPayloadEntityTypeEnum].
  static const values = <WebhookNewAITransformResultPayloadEntityTypeEnum>[
    INBOX,
    PHONE,
  ];

  static WebhookNewAITransformResultPayloadEntityTypeEnum? fromJson(dynamic value) => WebhookNewAITransformResultPayloadEntityTypeEnumTypeTransformer().decode(value);

  static List<WebhookNewAITransformResultPayloadEntityTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookNewAITransformResultPayloadEntityTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookNewAITransformResultPayloadEntityTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookNewAITransformResultPayloadEntityTypeEnum] to String,
/// and [decode] dynamic data back to [WebhookNewAITransformResultPayloadEntityTypeEnum].
class WebhookNewAITransformResultPayloadEntityTypeEnumTypeTransformer {
  factory WebhookNewAITransformResultPayloadEntityTypeEnumTypeTransformer() => _instance ??= const WebhookNewAITransformResultPayloadEntityTypeEnumTypeTransformer._();

  const WebhookNewAITransformResultPayloadEntityTypeEnumTypeTransformer._();

  String encode(WebhookNewAITransformResultPayloadEntityTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookNewAITransformResultPayloadEntityTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookNewAITransformResultPayloadEntityTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INBOX': return WebhookNewAITransformResultPayloadEntityTypeEnum.INBOX;
        case r'PHONE': return WebhookNewAITransformResultPayloadEntityTypeEnum.PHONE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookNewAITransformResultPayloadEntityTypeEnumTypeTransformer] instance.
  static WebhookNewAITransformResultPayloadEntityTypeEnumTypeTransformer? _instance;
}


