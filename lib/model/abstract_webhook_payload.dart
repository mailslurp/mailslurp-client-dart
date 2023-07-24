//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AbstractWebhookPayload {
  /// Returns a new [AbstractWebhookPayload] instance.
  AbstractWebhookPayload({
    required this.eventName,
    required this.messageId,
    required this.webhookId,
    this.webhookName,
  });

  AbstractWebhookPayloadEventNameEnum eventName;

  String messageId;

  String webhookId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webhookName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AbstractWebhookPayload &&
     other.eventName == eventName &&
     other.messageId == messageId &&
     other.webhookId == webhookId &&
     other.webhookName == webhookName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (eventName.hashCode) +
    (messageId.hashCode) +
    (webhookId.hashCode) +
    (webhookName == null ? 0 : webhookName!.hashCode);

  @override
  String toString() => 'AbstractWebhookPayload[eventName=$eventName, messageId=$messageId, webhookId=$webhookId, webhookName=$webhookName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'eventName'] = this.eventName;
      json[r'messageId'] = this.messageId;
      json[r'webhookId'] = this.webhookId;
    if (this.webhookName != null) {
      json[r'webhookName'] = this.webhookName;
    } else {
      json[r'webhookName'] = null;
    }
    return json;
  }

  /// Returns a new [AbstractWebhookPayload] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AbstractWebhookPayload? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AbstractWebhookPayload[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AbstractWebhookPayload[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AbstractWebhookPayload(
        eventName: AbstractWebhookPayloadEventNameEnum.fromJson(json[r'eventName'])!,
        messageId: mapValueOfType<String>(json, r'messageId')!,
        webhookId: mapValueOfType<String>(json, r'webhookId')!,
        webhookName: mapValueOfType<String>(json, r'webhookName'),
      );
    }
    return null;
  }

  static List<AbstractWebhookPayload>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AbstractWebhookPayload>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AbstractWebhookPayload.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AbstractWebhookPayload> mapFromJson(dynamic json) {
    final map = <String, AbstractWebhookPayload>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AbstractWebhookPayload.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AbstractWebhookPayload-objects as value to a dart map
  static Map<String, List<AbstractWebhookPayload>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AbstractWebhookPayload>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AbstractWebhookPayload.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'eventName',
    'messageId',
    'webhookId',
  };
}


class AbstractWebhookPayloadEventNameEnum {
  /// Instantiate a new enum with the provided [value].
  const AbstractWebhookPayloadEventNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_RECEIVED = AbstractWebhookPayloadEventNameEnum._(r'EMAIL_RECEIVED');
  static const NEW_EMAIL = AbstractWebhookPayloadEventNameEnum._(r'NEW_EMAIL');
  static const NEW_CONTACT = AbstractWebhookPayloadEventNameEnum._(r'NEW_CONTACT');
  static const NEW_ATTACHMENT = AbstractWebhookPayloadEventNameEnum._(r'NEW_ATTACHMENT');
  static const EMAIL_OPENED = AbstractWebhookPayloadEventNameEnum._(r'EMAIL_OPENED');
  static const EMAIL_READ = AbstractWebhookPayloadEventNameEnum._(r'EMAIL_READ');
  static const DELIVERY_STATUS = AbstractWebhookPayloadEventNameEnum._(r'DELIVERY_STATUS');
  static const BOUNCE = AbstractWebhookPayloadEventNameEnum._(r'BOUNCE');
  static const BOUNCE_RECIPIENT = AbstractWebhookPayloadEventNameEnum._(r'BOUNCE_RECIPIENT');
  static const NEW_SMS = AbstractWebhookPayloadEventNameEnum._(r'NEW_SMS');

  /// List of all possible values in this [enum][AbstractWebhookPayloadEventNameEnum].
  static const values = <AbstractWebhookPayloadEventNameEnum>[
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

  static AbstractWebhookPayloadEventNameEnum? fromJson(dynamic value) => AbstractWebhookPayloadEventNameEnumTypeTransformer().decode(value);

  static List<AbstractWebhookPayloadEventNameEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AbstractWebhookPayloadEventNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AbstractWebhookPayloadEventNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AbstractWebhookPayloadEventNameEnum] to String,
/// and [decode] dynamic data back to [AbstractWebhookPayloadEventNameEnum].
class AbstractWebhookPayloadEventNameEnumTypeTransformer {
  factory AbstractWebhookPayloadEventNameEnumTypeTransformer() => _instance ??= const AbstractWebhookPayloadEventNameEnumTypeTransformer._();

  const AbstractWebhookPayloadEventNameEnumTypeTransformer._();

  String encode(AbstractWebhookPayloadEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AbstractWebhookPayloadEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AbstractWebhookPayloadEventNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EMAIL_RECEIVED': return AbstractWebhookPayloadEventNameEnum.EMAIL_RECEIVED;
        case r'NEW_EMAIL': return AbstractWebhookPayloadEventNameEnum.NEW_EMAIL;
        case r'NEW_CONTACT': return AbstractWebhookPayloadEventNameEnum.NEW_CONTACT;
        case r'NEW_ATTACHMENT': return AbstractWebhookPayloadEventNameEnum.NEW_ATTACHMENT;
        case r'EMAIL_OPENED': return AbstractWebhookPayloadEventNameEnum.EMAIL_OPENED;
        case r'EMAIL_READ': return AbstractWebhookPayloadEventNameEnum.EMAIL_READ;
        case r'DELIVERY_STATUS': return AbstractWebhookPayloadEventNameEnum.DELIVERY_STATUS;
        case r'BOUNCE': return AbstractWebhookPayloadEventNameEnum.BOUNCE;
        case r'BOUNCE_RECIPIENT': return AbstractWebhookPayloadEventNameEnum.BOUNCE_RECIPIENT;
        case r'NEW_SMS': return AbstractWebhookPayloadEventNameEnum.NEW_SMS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AbstractWebhookPayloadEventNameEnumTypeTransformer] instance.
  static AbstractWebhookPayloadEventNameEnumTypeTransformer? _instance;
}


