//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookProjection {
  /// Returns a new [WebhookProjection] instance.
  WebhookProjection({
    required this.createdAt,
    required this.updatedAt,
    required this.url,
    required this.userId,
    this.inboxId,
    this.eventName,
    this.healthStatus,
    this.phoneNumberId,
    this.name,
    required this.id,
    this.username,
    this.password,
  });

  DateTime createdAt;

  DateTime updatedAt;

  String url;

  String userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inboxId;

  WebhookProjectionEventNameEnum? eventName;

  WebhookProjectionHealthStatusEnum? healthStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phoneNumberId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookProjection &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.url == url &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.eventName == eventName &&
     other.healthStatus == healthStatus &&
     other.phoneNumberId == phoneNumberId &&
     other.name == name &&
     other.id == id &&
     other.username == username &&
     other.password == password;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (url.hashCode) +
    (userId.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (eventName == null ? 0 : eventName!.hashCode) +
    (healthStatus == null ? 0 : healthStatus!.hashCode) +
    (phoneNumberId == null ? 0 : phoneNumberId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (id.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (password == null ? 0 : password!.hashCode);

  @override
  String toString() => 'WebhookProjection[createdAt=$createdAt, updatedAt=$updatedAt, url=$url, userId=$userId, inboxId=$inboxId, eventName=$eventName, healthStatus=$healthStatus, phoneNumberId=$phoneNumberId, name=$name, id=$id, username=$username, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
      json[r'url'] = this.url;
      json[r'userId'] = this.userId;
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
    if (this.eventName != null) {
      json[r'eventName'] = this.eventName;
    } else {
      json[r'eventName'] = null;
    }
    if (this.healthStatus != null) {
      json[r'healthStatus'] = this.healthStatus;
    } else {
      json[r'healthStatus'] = null;
    }
    if (this.phoneNumberId != null) {
      json[r'phoneNumberId'] = this.phoneNumberId;
    } else {
      json[r'phoneNumberId'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'id'] = this.id;
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    return json;
  }

  /// Returns a new [WebhookProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookProjection(
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        url: mapValueOfType<String>(json, r'url')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        eventName: WebhookProjectionEventNameEnum.fromJson(json[r'eventName']),
        healthStatus: WebhookProjectionHealthStatusEnum.fromJson(json[r'healthStatus']),
        phoneNumberId: mapValueOfType<String>(json, r'phoneNumberId'),
        name: mapValueOfType<String>(json, r'name'),
        id: mapValueOfType<String>(json, r'id')!,
        username: mapValueOfType<String>(json, r'username'),
        password: mapValueOfType<String>(json, r'password'),
      );
    }
    return null;
  }

  static List<WebhookProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookProjection> mapFromJson(dynamic json) {
    final map = <String, WebhookProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookProjection-objects as value to a dart map
  static Map<String, List<WebhookProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'createdAt',
    'updatedAt',
    'url',
    'userId',
    'id',
  };
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
  static const DELIVERY_STATUS = WebhookProjectionEventNameEnum._(r'DELIVERY_STATUS');
  static const BOUNCE = WebhookProjectionEventNameEnum._(r'BOUNCE');
  static const BOUNCE_RECIPIENT = WebhookProjectionEventNameEnum._(r'BOUNCE_RECIPIENT');
  static const NEW_SMS = WebhookProjectionEventNameEnum._(r'NEW_SMS');
  static const NEW_GUEST_USER = WebhookProjectionEventNameEnum._(r'NEW_GUEST_USER');

  /// List of all possible values in this [enum][WebhookProjectionEventNameEnum].
  static const values = <WebhookProjectionEventNameEnum>[
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

  static WebhookProjectionEventNameEnum? fromJson(dynamic value) => WebhookProjectionEventNameEnumTypeTransformer().decode(value);

  static List<WebhookProjectionEventNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookProjectionEventNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookProjectionEventNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookProjectionEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookProjectionEventNameEnum].
class WebhookProjectionEventNameEnumTypeTransformer {
  factory WebhookProjectionEventNameEnumTypeTransformer() => _instance ??= const WebhookProjectionEventNameEnumTypeTransformer._();

  const WebhookProjectionEventNameEnumTypeTransformer._();

  String encode(WebhookProjectionEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookProjectionEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookProjectionEventNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EMAIL_RECEIVED': return WebhookProjectionEventNameEnum.EMAIL_RECEIVED;
        case r'NEW_EMAIL': return WebhookProjectionEventNameEnum.NEW_EMAIL;
        case r'NEW_CONTACT': return WebhookProjectionEventNameEnum.NEW_CONTACT;
        case r'NEW_ATTACHMENT': return WebhookProjectionEventNameEnum.NEW_ATTACHMENT;
        case r'EMAIL_OPENED': return WebhookProjectionEventNameEnum.EMAIL_OPENED;
        case r'EMAIL_READ': return WebhookProjectionEventNameEnum.EMAIL_READ;
        case r'DELIVERY_STATUS': return WebhookProjectionEventNameEnum.DELIVERY_STATUS;
        case r'BOUNCE': return WebhookProjectionEventNameEnum.BOUNCE;
        case r'BOUNCE_RECIPIENT': return WebhookProjectionEventNameEnum.BOUNCE_RECIPIENT;
        case r'NEW_SMS': return WebhookProjectionEventNameEnum.NEW_SMS;
        case r'NEW_GUEST_USER': return WebhookProjectionEventNameEnum.NEW_GUEST_USER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookProjectionEventNameEnumTypeTransformer] instance.
  static WebhookProjectionEventNameEnumTypeTransformer? _instance;
}



class WebhookProjectionHealthStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookProjectionHealthStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HEALTHY = WebhookProjectionHealthStatusEnum._(r'HEALTHY');
  static const UNHEALTHY = WebhookProjectionHealthStatusEnum._(r'UNHEALTHY');

  /// List of all possible values in this [enum][WebhookProjectionHealthStatusEnum].
  static const values = <WebhookProjectionHealthStatusEnum>[
    HEALTHY,
    UNHEALTHY,
  ];

  static WebhookProjectionHealthStatusEnum? fromJson(dynamic value) => WebhookProjectionHealthStatusEnumTypeTransformer().decode(value);

  static List<WebhookProjectionHealthStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookProjectionHealthStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookProjectionHealthStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookProjectionHealthStatusEnum] to String,
/// and [decode] dynamic data back to [WebhookProjectionHealthStatusEnum].
class WebhookProjectionHealthStatusEnumTypeTransformer {
  factory WebhookProjectionHealthStatusEnumTypeTransformer() => _instance ??= const WebhookProjectionHealthStatusEnumTypeTransformer._();

  const WebhookProjectionHealthStatusEnumTypeTransformer._();

  String encode(WebhookProjectionHealthStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookProjectionHealthStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookProjectionHealthStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HEALTHY': return WebhookProjectionHealthStatusEnum.HEALTHY;
        case r'UNHEALTHY': return WebhookProjectionHealthStatusEnum.UNHEALTHY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookProjectionHealthStatusEnumTypeTransformer] instance.
  static WebhookProjectionHealthStatusEnumTypeTransformer? _instance;
}


