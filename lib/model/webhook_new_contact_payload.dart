//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookNewContactPayload {
  /// Returns a new [WebhookNewContactPayload] instance.
  WebhookNewContactPayload({
    required this.messageId,
    required this.webhookId,
    this.webhookName,
    required this.eventName,
    required this.contactId,
    this.groupId,
    this.firstName,
    this.lastName,
    this.company,
    this.primaryEmailAddress,
    this.emailAddresses = const [],
    this.tags = const [],
    this.metaData,
    required this.optOut,
    required this.createdAt,
  });

  /// Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
  String messageId;

  /// ID of webhook entity being triggered
  String webhookId;

  /// Name of the webhook being triggered
  String? webhookName;

  /// Name of the event type webhook is being triggered for.
  WebhookNewContactPayloadEventNameEnum eventName;

  /// Contact ID
  String contactId;

  /// Contact group ID
  String? groupId;

  /// Contact first name
  String? firstName;

  /// Contact last name
  String? lastName;

  /// Contact company name
  String? company;

  /// Primary email address for contact
  String? primaryEmailAddress;

  /// Email addresses for contact
  List<String> emailAddresses;

  /// Tags for contact
  List<String> tags;

  Object? metaData;

  /// Has contact opted out of emails
  bool optOut;

  /// Date time of event creation
  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookNewContactPayload &&
     other.messageId == messageId &&
     other.webhookId == webhookId &&
     other.webhookName == webhookName &&
     other.eventName == eventName &&
     other.contactId == contactId &&
     other.groupId == groupId &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.company == company &&
     other.primaryEmailAddress == primaryEmailAddress &&
     other.emailAddresses == emailAddresses &&
     other.tags == tags &&
     other.metaData == metaData &&
     other.optOut == optOut &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (messageId.hashCode) +
    (webhookId.hashCode) +
    (webhookName == null ? 0 : webhookName!.hashCode) +
    (eventName.hashCode) +
    (contactId.hashCode) +
    (groupId == null ? 0 : groupId!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (company == null ? 0 : company!.hashCode) +
    (primaryEmailAddress == null ? 0 : primaryEmailAddress!.hashCode) +
    (emailAddresses.hashCode) +
    (tags.hashCode) +
    (metaData == null ? 0 : metaData!.hashCode) +
    (optOut.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'WebhookNewContactPayload[messageId=$messageId, webhookId=$webhookId, webhookName=$webhookName, eventName=$eventName, contactId=$contactId, groupId=$groupId, firstName=$firstName, lastName=$lastName, company=$company, primaryEmailAddress=$primaryEmailAddress, emailAddresses=$emailAddresses, tags=$tags, metaData=$metaData, optOut=$optOut, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'messageId'] = this.messageId;
      json[r'webhookId'] = this.webhookId;
    if (this.webhookName != null) {
      json[r'webhookName'] = this.webhookName;
    } else {
      json[r'webhookName'] = null;
    }
      json[r'eventName'] = this.eventName;
      json[r'contactId'] = this.contactId;
    if (this.groupId != null) {
      json[r'groupId'] = this.groupId;
    } else {
      json[r'groupId'] = null;
    }
    if (this.firstName != null) {
      json[r'firstName'] = this.firstName;
    } else {
      json[r'firstName'] = null;
    }
    if (this.lastName != null) {
      json[r'lastName'] = this.lastName;
    } else {
      json[r'lastName'] = null;
    }
    if (this.company != null) {
      json[r'company'] = this.company;
    } else {
      json[r'company'] = null;
    }
    if (this.primaryEmailAddress != null) {
      json[r'primaryEmailAddress'] = this.primaryEmailAddress;
    } else {
      json[r'primaryEmailAddress'] = null;
    }
      json[r'emailAddresses'] = this.emailAddresses;
      json[r'tags'] = this.tags;
    if (this.metaData != null) {
      json[r'metaData'] = this.metaData;
    } else {
      json[r'metaData'] = null;
    }
      json[r'optOut'] = this.optOut;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [WebhookNewContactPayload] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookNewContactPayload? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookNewContactPayload[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookNewContactPayload[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookNewContactPayload(
        messageId: mapValueOfType<String>(json, r'messageId')!,
        webhookId: mapValueOfType<String>(json, r'webhookId')!,
        webhookName: mapValueOfType<String>(json, r'webhookName'),
        eventName: WebhookNewContactPayloadEventNameEnum.fromJson(json[r'eventName'])!,
        contactId: mapValueOfType<String>(json, r'contactId')!,
        groupId: mapValueOfType<String>(json, r'groupId'),
        firstName: mapValueOfType<String>(json, r'firstName'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        company: mapValueOfType<String>(json, r'company'),
        primaryEmailAddress: mapValueOfType<String>(json, r'primaryEmailAddress'),
        emailAddresses: json[r'emailAddresses'] is List
            ? (json[r'emailAddresses'] as List).cast<String>()
            : const [],
        tags: json[r'tags'] is List
            ? (json[r'tags'] as List).cast<String>()
            : const [],
        metaData: mapValueOfType<Object>(json, r'metaData'),
        optOut: mapValueOfType<bool>(json, r'optOut')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<WebhookNewContactPayload>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookNewContactPayload>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookNewContactPayload.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookNewContactPayload> mapFromJson(dynamic json) {
    final map = <String, WebhookNewContactPayload>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookNewContactPayload.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookNewContactPayload-objects as value to a dart map
  static Map<String, List<WebhookNewContactPayload>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookNewContactPayload>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookNewContactPayload.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'messageId',
    'webhookId',
    'eventName',
    'contactId',
    'emailAddresses',
    'tags',
    'optOut',
    'createdAt',
  };
}

/// Name of the event type webhook is being triggered for.
class WebhookNewContactPayloadEventNameEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookNewContactPayloadEventNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_RECEIVED = WebhookNewContactPayloadEventNameEnum._(r'EMAIL_RECEIVED');
  static const NEW_EMAIL = WebhookNewContactPayloadEventNameEnum._(r'NEW_EMAIL');
  static const NEW_CONTACT = WebhookNewContactPayloadEventNameEnum._(r'NEW_CONTACT');
  static const NEW_ATTACHMENT = WebhookNewContactPayloadEventNameEnum._(r'NEW_ATTACHMENT');
  static const EMAIL_OPENED = WebhookNewContactPayloadEventNameEnum._(r'EMAIL_OPENED');
  static const EMAIL_READ = WebhookNewContactPayloadEventNameEnum._(r'EMAIL_READ');
  static const DELIVERY_STATUS = WebhookNewContactPayloadEventNameEnum._(r'DELIVERY_STATUS');
  static const BOUNCE = WebhookNewContactPayloadEventNameEnum._(r'BOUNCE');
  static const BOUNCE_RECIPIENT = WebhookNewContactPayloadEventNameEnum._(r'BOUNCE_RECIPIENT');
  static const NEW_SMS = WebhookNewContactPayloadEventNameEnum._(r'NEW_SMS');

  /// List of all possible values in this [enum][WebhookNewContactPayloadEventNameEnum].
  static const values = <WebhookNewContactPayloadEventNameEnum>[
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

  static WebhookNewContactPayloadEventNameEnum? fromJson(dynamic value) => WebhookNewContactPayloadEventNameEnumTypeTransformer().decode(value);

  static List<WebhookNewContactPayloadEventNameEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookNewContactPayloadEventNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookNewContactPayloadEventNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookNewContactPayloadEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookNewContactPayloadEventNameEnum].
class WebhookNewContactPayloadEventNameEnumTypeTransformer {
  factory WebhookNewContactPayloadEventNameEnumTypeTransformer() => _instance ??= const WebhookNewContactPayloadEventNameEnumTypeTransformer._();

  const WebhookNewContactPayloadEventNameEnumTypeTransformer._();

  String encode(WebhookNewContactPayloadEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookNewContactPayloadEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookNewContactPayloadEventNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EMAIL_RECEIVED': return WebhookNewContactPayloadEventNameEnum.EMAIL_RECEIVED;
        case r'NEW_EMAIL': return WebhookNewContactPayloadEventNameEnum.NEW_EMAIL;
        case r'NEW_CONTACT': return WebhookNewContactPayloadEventNameEnum.NEW_CONTACT;
        case r'NEW_ATTACHMENT': return WebhookNewContactPayloadEventNameEnum.NEW_ATTACHMENT;
        case r'EMAIL_OPENED': return WebhookNewContactPayloadEventNameEnum.EMAIL_OPENED;
        case r'EMAIL_READ': return WebhookNewContactPayloadEventNameEnum.EMAIL_READ;
        case r'DELIVERY_STATUS': return WebhookNewContactPayloadEventNameEnum.DELIVERY_STATUS;
        case r'BOUNCE': return WebhookNewContactPayloadEventNameEnum.BOUNCE;
        case r'BOUNCE_RECIPIENT': return WebhookNewContactPayloadEventNameEnum.BOUNCE_RECIPIENT;
        case r'NEW_SMS': return WebhookNewContactPayloadEventNameEnum.NEW_SMS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookNewContactPayloadEventNameEnumTypeTransformer] instance.
  static WebhookNewContactPayloadEventNameEnumTypeTransformer? _instance;
}


