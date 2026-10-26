//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgentAutomationEventDto {
  /// Returns a new [AgentAutomationEventDto] instance.
  AgentAutomationEventDto({
    required this.eventId,
    required this.type,
    required this.schemaVersion,
    required this.occurredAt,
    required this.publishedAt,
    this.conversationId,
    this.inboxId,
    this.emailId,
    this.conversationVersion,
    this.phoneNumberId,
    this.smsId,
    this.sentSmsId,
    this.sourceType,
    this.sourceId,
  });

  String eventId;

  AgentAutomationEventDtoTypeEnum type;

  int schemaVersion;

  DateTime occurredAt;

  DateTime publishedAt;

  String? conversationId;

  String? inboxId;

  String? emailId;

  int? conversationVersion;

  String? phoneNumberId;

  String? smsId;

  String? sentSmsId;

  String? sourceType;

  String? sourceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentAutomationEventDto &&
     other.eventId == eventId &&
     other.type == type &&
     other.schemaVersion == schemaVersion &&
     other.occurredAt == occurredAt &&
     other.publishedAt == publishedAt &&
     other.conversationId == conversationId &&
     other.inboxId == inboxId &&
     other.emailId == emailId &&
     other.conversationVersion == conversationVersion &&
     other.phoneNumberId == phoneNumberId &&
     other.smsId == smsId &&
     other.sentSmsId == sentSmsId &&
     other.sourceType == sourceType &&
     other.sourceId == sourceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (eventId.hashCode) +
    (type.hashCode) +
    (schemaVersion.hashCode) +
    (occurredAt.hashCode) +
    (publishedAt.hashCode) +
    (conversationId == null ? 0 : conversationId!.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (emailId == null ? 0 : emailId!.hashCode) +
    (conversationVersion == null ? 0 : conversationVersion!.hashCode) +
    (phoneNumberId == null ? 0 : phoneNumberId!.hashCode) +
    (smsId == null ? 0 : smsId!.hashCode) +
    (sentSmsId == null ? 0 : sentSmsId!.hashCode) +
    (sourceType == null ? 0 : sourceType!.hashCode) +
    (sourceId == null ? 0 : sourceId!.hashCode);

  @override
  String toString() => 'AgentAutomationEventDto[eventId=$eventId, type=$type, schemaVersion=$schemaVersion, occurredAt=$occurredAt, publishedAt=$publishedAt, conversationId=$conversationId, inboxId=$inboxId, emailId=$emailId, conversationVersion=$conversationVersion, phoneNumberId=$phoneNumberId, smsId=$smsId, sentSmsId=$sentSmsId, sourceType=$sourceType, sourceId=$sourceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'eventId'] = this.eventId;
      json[r'type'] = this.type;
      json[r'schemaVersion'] = this.schemaVersion;
      json[r'occurredAt'] = this.occurredAt.toUtc().toIso8601String();
      json[r'publishedAt'] = this.publishedAt.toUtc().toIso8601String();
    if (this.conversationId != null) {
      json[r'conversationId'] = this.conversationId;
    } else {
      json[r'conversationId'] = null;
    }
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
    if (this.conversationVersion != null) {
      json[r'conversationVersion'] = this.conversationVersion;
    } else {
      json[r'conversationVersion'] = null;
    }
    if (this.phoneNumberId != null) {
      json[r'phoneNumberId'] = this.phoneNumberId;
    } else {
      json[r'phoneNumberId'] = null;
    }
    if (this.smsId != null) {
      json[r'smsId'] = this.smsId;
    } else {
      json[r'smsId'] = null;
    }
    if (this.sentSmsId != null) {
      json[r'sentSmsId'] = this.sentSmsId;
    } else {
      json[r'sentSmsId'] = null;
    }
    if (this.sourceType != null) {
      json[r'sourceType'] = this.sourceType;
    } else {
      json[r'sourceType'] = null;
    }
    if (this.sourceId != null) {
      json[r'sourceId'] = this.sourceId;
    } else {
      json[r'sourceId'] = null;
    }
    return json;
  }

  /// Returns a new [AgentAutomationEventDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentAutomationEventDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentAutomationEventDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentAutomationEventDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentAutomationEventDto(
        eventId: mapValueOfType<String>(json, r'eventId')!,
        type: AgentAutomationEventDtoTypeEnum.fromJson(json[r'type'])!,
        schemaVersion: mapValueOfType<int>(json, r'schemaVersion')!,
        occurredAt: mapDateTime(json, r'occurredAt', '')!,
        publishedAt: mapDateTime(json, r'publishedAt', '')!,
        conversationId: mapValueOfType<String>(json, r'conversationId'),
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        emailId: mapValueOfType<String>(json, r'emailId'),
        conversationVersion: mapValueOfType<int>(json, r'conversationVersion'),
        phoneNumberId: mapValueOfType<String>(json, r'phoneNumberId'),
        smsId: mapValueOfType<String>(json, r'smsId'),
        sentSmsId: mapValueOfType<String>(json, r'sentSmsId'),
        sourceType: mapValueOfType<String>(json, r'sourceType'),
        sourceId: mapValueOfType<String>(json, r'sourceId'),
      );
    }
    return null;
  }

  static List<AgentAutomationEventDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentAutomationEventDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentAutomationEventDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentAutomationEventDto> mapFromJson(dynamic json) {
    final map = <String, AgentAutomationEventDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentAutomationEventDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentAutomationEventDto-objects as value to a dart map
  static Map<String, List<AgentAutomationEventDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentAutomationEventDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentAutomationEventDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'eventId',
    'type',
    'schemaVersion',
    'occurredAt',
    'publishedAt',
  };
}


class AgentAutomationEventDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AgentAutomationEventDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_RECEIVED = AgentAutomationEventDtoTypeEnum._(r'EMAIL_RECEIVED');
  static const EMAIL_SENT = AgentAutomationEventDtoTypeEnum._(r'EMAIL_SENT');
  static const SMS_RECEIVED = AgentAutomationEventDtoTypeEnum._(r'SMS_RECEIVED');
  static const SMS_SENT = AgentAutomationEventDtoTypeEnum._(r'SMS_SENT');
  static const CONVERSATION_CLAIMED = AgentAutomationEventDtoTypeEnum._(r'CONVERSATION_CLAIMED');
  static const CONVERSATION_CLAIM_RELEASED = AgentAutomationEventDtoTypeEnum._(r'CONVERSATION_CLAIM_RELEASED');
  static const CONVERSATION_NOTE_ADDED = AgentAutomationEventDtoTypeEnum._(r'CONVERSATION_NOTE_ADDED');
  static const CONVERSATION_REVIEW_REQUESTED = AgentAutomationEventDtoTypeEnum._(r'CONVERSATION_REVIEW_REQUESTED');
  static const CONVERSATION_REVIEW_DECIDED = AgentAutomationEventDtoTypeEnum._(r'CONVERSATION_REVIEW_DECIDED');
  static const CONVERSATION_RESOLVED = AgentAutomationEventDtoTypeEnum._(r'CONVERSATION_RESOLVED');
  static const CONVERSATION_REOPENED = AgentAutomationEventDtoTypeEnum._(r'CONVERSATION_REOPENED');
  static const AGENT_REPLY_COMPLETED = AgentAutomationEventDtoTypeEnum._(r'AGENT_REPLY_COMPLETED');
  static const AGENT_SMS_SENT = AgentAutomationEventDtoTypeEnum._(r'AGENT_SMS_SENT');
  static const AGENT_SMS_REPLY_COMPLETED = AgentAutomationEventDtoTypeEnum._(r'AGENT_SMS_REPLY_COMPLETED');
  static const AGENT_DRAFT_CREATED = AgentAutomationEventDtoTypeEnum._(r'AGENT_DRAFT_CREATED');
  static const AGENT_DRAFT_SENT = AgentAutomationEventDtoTypeEnum._(r'AGENT_DRAFT_SENT');
  static const AGENT_ACTION_FAILED = AgentAutomationEventDtoTypeEnum._(r'AGENT_ACTION_FAILED');

  /// List of all possible values in this [enum][AgentAutomationEventDtoTypeEnum].
  static const values = <AgentAutomationEventDtoTypeEnum>[
    EMAIL_RECEIVED,
    EMAIL_SENT,
    SMS_RECEIVED,
    SMS_SENT,
    CONVERSATION_CLAIMED,
    CONVERSATION_CLAIM_RELEASED,
    CONVERSATION_NOTE_ADDED,
    CONVERSATION_REVIEW_REQUESTED,
    CONVERSATION_REVIEW_DECIDED,
    CONVERSATION_RESOLVED,
    CONVERSATION_REOPENED,
    AGENT_REPLY_COMPLETED,
    AGENT_SMS_SENT,
    AGENT_SMS_REPLY_COMPLETED,
    AGENT_DRAFT_CREATED,
    AGENT_DRAFT_SENT,
    AGENT_ACTION_FAILED,
  ];

  static AgentAutomationEventDtoTypeEnum? fromJson(dynamic value) => AgentAutomationEventDtoTypeEnumTypeTransformer().decode(value);

  static List<AgentAutomationEventDtoTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentAutomationEventDtoTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentAutomationEventDtoTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AgentAutomationEventDtoTypeEnum] to String,
/// and [decode] dynamic data back to [AgentAutomationEventDtoTypeEnum].
class AgentAutomationEventDtoTypeEnumTypeTransformer {
  factory AgentAutomationEventDtoTypeEnumTypeTransformer() => _instance ??= const AgentAutomationEventDtoTypeEnumTypeTransformer._();

  const AgentAutomationEventDtoTypeEnumTypeTransformer._();

  String encode(AgentAutomationEventDtoTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AgentAutomationEventDtoTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AgentAutomationEventDtoTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EMAIL_RECEIVED': return AgentAutomationEventDtoTypeEnum.EMAIL_RECEIVED;
        case r'EMAIL_SENT': return AgentAutomationEventDtoTypeEnum.EMAIL_SENT;
        case r'SMS_RECEIVED': return AgentAutomationEventDtoTypeEnum.SMS_RECEIVED;
        case r'SMS_SENT': return AgentAutomationEventDtoTypeEnum.SMS_SENT;
        case r'CONVERSATION_CLAIMED': return AgentAutomationEventDtoTypeEnum.CONVERSATION_CLAIMED;
        case r'CONVERSATION_CLAIM_RELEASED': return AgentAutomationEventDtoTypeEnum.CONVERSATION_CLAIM_RELEASED;
        case r'CONVERSATION_NOTE_ADDED': return AgentAutomationEventDtoTypeEnum.CONVERSATION_NOTE_ADDED;
        case r'CONVERSATION_REVIEW_REQUESTED': return AgentAutomationEventDtoTypeEnum.CONVERSATION_REVIEW_REQUESTED;
        case r'CONVERSATION_REVIEW_DECIDED': return AgentAutomationEventDtoTypeEnum.CONVERSATION_REVIEW_DECIDED;
        case r'CONVERSATION_RESOLVED': return AgentAutomationEventDtoTypeEnum.CONVERSATION_RESOLVED;
        case r'CONVERSATION_REOPENED': return AgentAutomationEventDtoTypeEnum.CONVERSATION_REOPENED;
        case r'AGENT_REPLY_COMPLETED': return AgentAutomationEventDtoTypeEnum.AGENT_REPLY_COMPLETED;
        case r'AGENT_SMS_SENT': return AgentAutomationEventDtoTypeEnum.AGENT_SMS_SENT;
        case r'AGENT_SMS_REPLY_COMPLETED': return AgentAutomationEventDtoTypeEnum.AGENT_SMS_REPLY_COMPLETED;
        case r'AGENT_DRAFT_CREATED': return AgentAutomationEventDtoTypeEnum.AGENT_DRAFT_CREATED;
        case r'AGENT_DRAFT_SENT': return AgentAutomationEventDtoTypeEnum.AGENT_DRAFT_SENT;
        case r'AGENT_ACTION_FAILED': return AgentAutomationEventDtoTypeEnum.AGENT_ACTION_FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AgentAutomationEventDtoTypeEnumTypeTransformer] instance.
  static AgentAutomationEventDtoTypeEnumTypeTransformer? _instance;
}


