//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookNewEmailPayload {
  /// Returns a new [WebhookNewEmailPayload] instance.
  WebhookNewEmailPayload({
    required this.messageId,
    required this.webhookId,
    required this.eventName,
    this.webhookName,
    required this.inboxId,
    this.domainId,
    required this.emailId,
    required this.createdAt,
    this.to = const [],
    required this.from,
    this.cc = const [],
    this.bcc = const [],
    this.subject,
    this.attachmentMetaDatas = const [],
  });

  /// Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
  String messageId;

  /// ID of webhook entity being triggered
  String webhookId;

  /// Name of the event type webhook is being triggered for.
  WebhookNewEmailPayloadEventNameEnum eventName;

  /// Name of the webhook being triggered
  String? webhookName;

  /// Id of the inbox
  String inboxId;

  /// Id of the domain that received an email
  String? domainId;

  /// ID of the email that was received. Use this ID for fetching the email with the `EmailController`.
  String emailId;

  /// Date time of event creation
  DateTime createdAt;

  /// List of `To` recipient email addresses that the email was addressed to. See recipients object for names.
  List<String> to;

  /// Who the email was sent from. An email address - see fromName for the sender name.
  String from;

  /// List of `CC` recipients email addresses that the email was addressed to. See recipients object for names.
  List<String> cc;

  /// List of `BCC` recipients email addresses that the email was addressed to. See recipients object for names.
  List<String> bcc;

  /// The subject line of the email message as specified by SMTP subject header
  String? subject;

  /// List of attachment meta data objects if attachments present
  List<AttachmentMetaData> attachmentMetaDatas;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookNewEmailPayload &&
     other.messageId == messageId &&
     other.webhookId == webhookId &&
     other.eventName == eventName &&
     other.webhookName == webhookName &&
     other.inboxId == inboxId &&
     other.domainId == domainId &&
     other.emailId == emailId &&
     other.createdAt == createdAt &&
     other.to == to &&
     other.from == from &&
     other.cc == cc &&
     other.bcc == bcc &&
     other.subject == subject &&
     other.attachmentMetaDatas == attachmentMetaDatas;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (messageId.hashCode) +
    (webhookId.hashCode) +
    (eventName.hashCode) +
    (webhookName == null ? 0 : webhookName!.hashCode) +
    (inboxId.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode) +
    (emailId.hashCode) +
    (createdAt.hashCode) +
    (to.hashCode) +
    (from.hashCode) +
    (cc.hashCode) +
    (bcc.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (attachmentMetaDatas.hashCode);

  @override
  String toString() => 'WebhookNewEmailPayload[messageId=$messageId, webhookId=$webhookId, eventName=$eventName, webhookName=$webhookName, inboxId=$inboxId, domainId=$domainId, emailId=$emailId, createdAt=$createdAt, to=$to, from=$from, cc=$cc, bcc=$bcc, subject=$subject, attachmentMetaDatas=$attachmentMetaDatas]';

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
      json[r'inboxId'] = this.inboxId;
    if (this.domainId != null) {
      json[r'domainId'] = this.domainId;
    } else {
      json[r'domainId'] = null;
    }
      json[r'emailId'] = this.emailId;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'to'] = this.to;
      json[r'from'] = this.from;
      json[r'cc'] = this.cc;
      json[r'bcc'] = this.bcc;
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
      json[r'attachmentMetaDatas'] = this.attachmentMetaDatas;
    return json;
  }

  /// Returns a new [WebhookNewEmailPayload] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookNewEmailPayload? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookNewEmailPayload[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookNewEmailPayload[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookNewEmailPayload(
        messageId: mapValueOfType<String>(json, r'messageId')!,
        webhookId: mapValueOfType<String>(json, r'webhookId')!,
        eventName: WebhookNewEmailPayloadEventNameEnum.fromJson(json[r'eventName'])!,
        webhookName: mapValueOfType<String>(json, r'webhookName'),
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        domainId: mapValueOfType<String>(json, r'domainId'),
        emailId: mapValueOfType<String>(json, r'emailId')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        to: json[r'to'] is List
            ? (json[r'to'] as List).cast<String>()
            : const [],
        from: mapValueOfType<String>(json, r'from')!,
        cc: json[r'cc'] is List
            ? (json[r'cc'] as List).cast<String>()
            : const [],
        bcc: json[r'bcc'] is List
            ? (json[r'bcc'] as List).cast<String>()
            : const [],
        subject: mapValueOfType<String>(json, r'subject'),
        attachmentMetaDatas: AttachmentMetaData.listFromJson(json[r'attachmentMetaDatas']),
      );
    }
    return null;
  }

  static List<WebhookNewEmailPayload> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookNewEmailPayload>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookNewEmailPayload.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookNewEmailPayload> mapFromJson(dynamic json) {
    final map = <String, WebhookNewEmailPayload>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookNewEmailPayload.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookNewEmailPayload-objects as value to a dart map
  static Map<String, List<WebhookNewEmailPayload>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookNewEmailPayload>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookNewEmailPayload.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'messageId',
    'webhookId',
    'eventName',
    'inboxId',
    'emailId',
    'createdAt',
    'to',
    'from',
    'cc',
    'bcc',
    'attachmentMetaDatas',
  };
}

/// Name of the event type webhook is being triggered for.
class WebhookNewEmailPayloadEventNameEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookNewEmailPayloadEventNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_RECEIVED = WebhookNewEmailPayloadEventNameEnum._(r'EMAIL_RECEIVED');
  static const NEW_AI_TRANSFORM_RESULT = WebhookNewEmailPayloadEventNameEnum._(r'NEW_AI_TRANSFORM_RESULT');
  static const NEW_EMAIL = WebhookNewEmailPayloadEventNameEnum._(r'NEW_EMAIL');
  static const NEW_CONTACT = WebhookNewEmailPayloadEventNameEnum._(r'NEW_CONTACT');
  static const NEW_ATTACHMENT = WebhookNewEmailPayloadEventNameEnum._(r'NEW_ATTACHMENT');
  static const EMAIL_OPENED = WebhookNewEmailPayloadEventNameEnum._(r'EMAIL_OPENED');
  static const EMAIL_READ = WebhookNewEmailPayloadEventNameEnum._(r'EMAIL_READ');
  static const DELIVERY_STATUS = WebhookNewEmailPayloadEventNameEnum._(r'DELIVERY_STATUS');
  static const BOUNCE = WebhookNewEmailPayloadEventNameEnum._(r'BOUNCE');
  static const BOUNCE_RECIPIENT = WebhookNewEmailPayloadEventNameEnum._(r'BOUNCE_RECIPIENT');
  static const NEW_SMS = WebhookNewEmailPayloadEventNameEnum._(r'NEW_SMS');
  static const NEW_GUEST_USER = WebhookNewEmailPayloadEventNameEnum._(r'NEW_GUEST_USER');

  /// List of all possible values in this [enum][WebhookNewEmailPayloadEventNameEnum].
  static const values = <WebhookNewEmailPayloadEventNameEnum>[
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

  static WebhookNewEmailPayloadEventNameEnum? fromJson(dynamic value) => WebhookNewEmailPayloadEventNameEnumTypeTransformer().decode(value);

  static List<WebhookNewEmailPayloadEventNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookNewEmailPayloadEventNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookNewEmailPayloadEventNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookNewEmailPayloadEventNameEnum] to String,
/// and [decode] dynamic data back to [WebhookNewEmailPayloadEventNameEnum].
class WebhookNewEmailPayloadEventNameEnumTypeTransformer {
  factory WebhookNewEmailPayloadEventNameEnumTypeTransformer() => _instance ??= const WebhookNewEmailPayloadEventNameEnumTypeTransformer._();

  const WebhookNewEmailPayloadEventNameEnumTypeTransformer._();

  String encode(WebhookNewEmailPayloadEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookNewEmailPayloadEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookNewEmailPayloadEventNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EMAIL_RECEIVED': return WebhookNewEmailPayloadEventNameEnum.EMAIL_RECEIVED;
        case r'NEW_AI_TRANSFORM_RESULT': return WebhookNewEmailPayloadEventNameEnum.NEW_AI_TRANSFORM_RESULT;
        case r'NEW_EMAIL': return WebhookNewEmailPayloadEventNameEnum.NEW_EMAIL;
        case r'NEW_CONTACT': return WebhookNewEmailPayloadEventNameEnum.NEW_CONTACT;
        case r'NEW_ATTACHMENT': return WebhookNewEmailPayloadEventNameEnum.NEW_ATTACHMENT;
        case r'EMAIL_OPENED': return WebhookNewEmailPayloadEventNameEnum.EMAIL_OPENED;
        case r'EMAIL_READ': return WebhookNewEmailPayloadEventNameEnum.EMAIL_READ;
        case r'DELIVERY_STATUS': return WebhookNewEmailPayloadEventNameEnum.DELIVERY_STATUS;
        case r'BOUNCE': return WebhookNewEmailPayloadEventNameEnum.BOUNCE;
        case r'BOUNCE_RECIPIENT': return WebhookNewEmailPayloadEventNameEnum.BOUNCE_RECIPIENT;
        case r'NEW_SMS': return WebhookNewEmailPayloadEventNameEnum.NEW_SMS;
        case r'NEW_GUEST_USER': return WebhookNewEmailPayloadEventNameEnum.NEW_GUEST_USER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookNewEmailPayloadEventNameEnumTypeTransformer] instance.
  static WebhookNewEmailPayloadEventNameEnumTypeTransformer? _instance;
}


