//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgentActivityDto {
  /// Returns a new [AgentActivityDto] instance.
  AgentActivityDto({
    required this.id,
    required this.userId,
    this.apiKeyEntityId,
    this.agentName,
    this.agentRole,
    required this.eventType,
    required this.status,
    this.toolName,
    this.inboxId,
    this.emailId,
    this.draftId,
    this.errorMessage,
    required this.createdAt,
    this.conversationId,
    this.threadId,
    this.actionName,
    this.actionRequestId,
    this.errorCode,
    this.phoneNumberId,
    this.smsId,
    this.sentSmsId,
    this.smsParticipant,
  });

  String id;

  String userId;

  String? apiKeyEntityId;

  String? agentName;

  AgentActivityDtoAgentRoleEnum? agentRole;

  AgentActivityDtoEventTypeEnum eventType;

  AgentActivityDtoStatusEnum status;

  String? toolName;

  String? inboxId;

  String? emailId;

  String? draftId;

  String? errorMessage;

  DateTime createdAt;

  String? conversationId;

  String? threadId;

  String? actionName;

  String? actionRequestId;

  String? errorCode;

  String? phoneNumberId;

  String? smsId;

  String? sentSmsId;

  String? smsParticipant;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentActivityDto &&
     other.id == id &&
     other.userId == userId &&
     other.apiKeyEntityId == apiKeyEntityId &&
     other.agentName == agentName &&
     other.agentRole == agentRole &&
     other.eventType == eventType &&
     other.status == status &&
     other.toolName == toolName &&
     other.inboxId == inboxId &&
     other.emailId == emailId &&
     other.draftId == draftId &&
     other.errorMessage == errorMessage &&
     other.createdAt == createdAt &&
     other.conversationId == conversationId &&
     other.threadId == threadId &&
     other.actionName == actionName &&
     other.actionRequestId == actionRequestId &&
     other.errorCode == errorCode &&
     other.phoneNumberId == phoneNumberId &&
     other.smsId == smsId &&
     other.sentSmsId == sentSmsId &&
     other.smsParticipant == smsParticipant;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (apiKeyEntityId == null ? 0 : apiKeyEntityId!.hashCode) +
    (agentName == null ? 0 : agentName!.hashCode) +
    (agentRole == null ? 0 : agentRole!.hashCode) +
    (eventType.hashCode) +
    (status.hashCode) +
    (toolName == null ? 0 : toolName!.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (emailId == null ? 0 : emailId!.hashCode) +
    (draftId == null ? 0 : draftId!.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode) +
    (createdAt.hashCode) +
    (conversationId == null ? 0 : conversationId!.hashCode) +
    (threadId == null ? 0 : threadId!.hashCode) +
    (actionName == null ? 0 : actionName!.hashCode) +
    (actionRequestId == null ? 0 : actionRequestId!.hashCode) +
    (errorCode == null ? 0 : errorCode!.hashCode) +
    (phoneNumberId == null ? 0 : phoneNumberId!.hashCode) +
    (smsId == null ? 0 : smsId!.hashCode) +
    (sentSmsId == null ? 0 : sentSmsId!.hashCode) +
    (smsParticipant == null ? 0 : smsParticipant!.hashCode);

  @override
  String toString() => 'AgentActivityDto[id=$id, userId=$userId, apiKeyEntityId=$apiKeyEntityId, agentName=$agentName, agentRole=$agentRole, eventType=$eventType, status=$status, toolName=$toolName, inboxId=$inboxId, emailId=$emailId, draftId=$draftId, errorMessage=$errorMessage, createdAt=$createdAt, conversationId=$conversationId, threadId=$threadId, actionName=$actionName, actionRequestId=$actionRequestId, errorCode=$errorCode, phoneNumberId=$phoneNumberId, smsId=$smsId, sentSmsId=$sentSmsId, smsParticipant=$smsParticipant]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
    if (this.apiKeyEntityId != null) {
      json[r'apiKeyEntityId'] = this.apiKeyEntityId;
    } else {
      json[r'apiKeyEntityId'] = null;
    }
    if (this.agentName != null) {
      json[r'agentName'] = this.agentName;
    } else {
      json[r'agentName'] = null;
    }
    if (this.agentRole != null) {
      json[r'agentRole'] = this.agentRole;
    } else {
      json[r'agentRole'] = null;
    }
      json[r'eventType'] = this.eventType;
      json[r'status'] = this.status;
    if (this.toolName != null) {
      json[r'toolName'] = this.toolName;
    } else {
      json[r'toolName'] = null;
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
    if (this.draftId != null) {
      json[r'draftId'] = this.draftId;
    } else {
      json[r'draftId'] = null;
    }
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.conversationId != null) {
      json[r'conversationId'] = this.conversationId;
    } else {
      json[r'conversationId'] = null;
    }
    if (this.threadId != null) {
      json[r'threadId'] = this.threadId;
    } else {
      json[r'threadId'] = null;
    }
    if (this.actionName != null) {
      json[r'actionName'] = this.actionName;
    } else {
      json[r'actionName'] = null;
    }
    if (this.actionRequestId != null) {
      json[r'actionRequestId'] = this.actionRequestId;
    } else {
      json[r'actionRequestId'] = null;
    }
    if (this.errorCode != null) {
      json[r'errorCode'] = this.errorCode;
    } else {
      json[r'errorCode'] = null;
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
    if (this.smsParticipant != null) {
      json[r'smsParticipant'] = this.smsParticipant;
    } else {
      json[r'smsParticipant'] = null;
    }
    return json;
  }

  /// Returns a new [AgentActivityDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentActivityDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentActivityDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentActivityDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentActivityDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        apiKeyEntityId: mapValueOfType<String>(json, r'apiKeyEntityId'),
        agentName: mapValueOfType<String>(json, r'agentName'),
        agentRole: AgentActivityDtoAgentRoleEnum.fromJson(json[r'agentRole']),
        eventType: AgentActivityDtoEventTypeEnum.fromJson(json[r'eventType'])!,
        status: AgentActivityDtoStatusEnum.fromJson(json[r'status'])!,
        toolName: mapValueOfType<String>(json, r'toolName'),
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        emailId: mapValueOfType<String>(json, r'emailId'),
        draftId: mapValueOfType<String>(json, r'draftId'),
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        conversationId: mapValueOfType<String>(json, r'conversationId'),
        threadId: mapValueOfType<String>(json, r'threadId'),
        actionName: mapValueOfType<String>(json, r'actionName'),
        actionRequestId: mapValueOfType<String>(json, r'actionRequestId'),
        errorCode: mapValueOfType<String>(json, r'errorCode'),
        phoneNumberId: mapValueOfType<String>(json, r'phoneNumberId'),
        smsId: mapValueOfType<String>(json, r'smsId'),
        sentSmsId: mapValueOfType<String>(json, r'sentSmsId'),
        smsParticipant: mapValueOfType<String>(json, r'smsParticipant'),
      );
    }
    return null;
  }

  static List<AgentActivityDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentActivityDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentActivityDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentActivityDto> mapFromJson(dynamic json) {
    final map = <String, AgentActivityDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentActivityDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentActivityDto-objects as value to a dart map
  static Map<String, List<AgentActivityDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentActivityDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentActivityDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'eventType',
    'status',
    'createdAt',
  };
}


class AgentActivityDtoAgentRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const AgentActivityDtoAgentRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const READ_ONLY = AgentActivityDtoAgentRoleEnum._(r'AGENT_READ_ONLY');
  static const DRAFT_ONLY = AgentActivityDtoAgentRoleEnum._(r'AGENT_DRAFT_ONLY');
  static const RESPONDER = AgentActivityDtoAgentRoleEnum._(r'AGENT_RESPONDER');
  static const INBOX_MANAGER = AgentActivityDtoAgentRoleEnum._(r'AGENT_INBOX_MANAGER');
  static const SUPPORT = AgentActivityDtoAgentRoleEnum._(r'AGENT_SUPPORT');
  static const TOTP_MANAGER = AgentActivityDtoAgentRoleEnum._(r'AGENT_TOTP_MANAGER');

  /// List of all possible values in this [enum][AgentActivityDtoAgentRoleEnum].
  static const values = <AgentActivityDtoAgentRoleEnum>[
    READ_ONLY,
    DRAFT_ONLY,
    RESPONDER,
    INBOX_MANAGER,
    SUPPORT,
    TOTP_MANAGER,
  ];

  static AgentActivityDtoAgentRoleEnum? fromJson(dynamic value) => AgentActivityDtoAgentRoleEnumTypeTransformer().decode(value);

  static List<AgentActivityDtoAgentRoleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentActivityDtoAgentRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentActivityDtoAgentRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AgentActivityDtoAgentRoleEnum] to String,
/// and [decode] dynamic data back to [AgentActivityDtoAgentRoleEnum].
class AgentActivityDtoAgentRoleEnumTypeTransformer {
  factory AgentActivityDtoAgentRoleEnumTypeTransformer() => _instance ??= const AgentActivityDtoAgentRoleEnumTypeTransformer._();

  const AgentActivityDtoAgentRoleEnumTypeTransformer._();

  String encode(AgentActivityDtoAgentRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AgentActivityDtoAgentRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AgentActivityDtoAgentRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AGENT_READ_ONLY': return AgentActivityDtoAgentRoleEnum.READ_ONLY;
        case r'AGENT_DRAFT_ONLY': return AgentActivityDtoAgentRoleEnum.DRAFT_ONLY;
        case r'AGENT_RESPONDER': return AgentActivityDtoAgentRoleEnum.RESPONDER;
        case r'AGENT_INBOX_MANAGER': return AgentActivityDtoAgentRoleEnum.INBOX_MANAGER;
        case r'AGENT_SUPPORT': return AgentActivityDtoAgentRoleEnum.SUPPORT;
        case r'AGENT_TOTP_MANAGER': return AgentActivityDtoAgentRoleEnum.TOTP_MANAGER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AgentActivityDtoAgentRoleEnumTypeTransformer] instance.
  static AgentActivityDtoAgentRoleEnumTypeTransformer? _instance;
}



class AgentActivityDtoEventTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AgentActivityDtoEventTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LIST_INBOX_EMAILS = AgentActivityDtoEventTypeEnum._(r'LIST_INBOX_EMAILS');
  static const GET_LATEST_INBOX_EMAIL = AgentActivityDtoEventTypeEnum._(r'GET_LATEST_INBOX_EMAIL');
  static const GET_EMAIL_SUMMARY = AgentActivityDtoEventTypeEnum._(r'GET_EMAIL_SUMMARY');
  static const GET_EMAIL = AgentActivityDtoEventTypeEnum._(r'GET_EMAIL');
  static const REPLY_TO_EMAIL = AgentActivityDtoEventTypeEnum._(r'REPLY_TO_EMAIL');
  static const CREATE_EMAIL_DRAFT = AgentActivityDtoEventTypeEnum._(r'CREATE_EMAIL_DRAFT');
  static const LIST_EMAIL_DRAFTS = AgentActivityDtoEventTypeEnum._(r'LIST_EMAIL_DRAFTS');
  static const GET_EMAIL_DRAFT = AgentActivityDtoEventTypeEnum._(r'GET_EMAIL_DRAFT');
  static const UPDATE_EMAIL_DRAFT = AgentActivityDtoEventTypeEnum._(r'UPDATE_EMAIL_DRAFT');
  static const SEND_EMAIL_DRAFT = AgentActivityDtoEventTypeEnum._(r'SEND_EMAIL_DRAFT');
  static const DELETE_EMAIL_DRAFT = AgentActivityDtoEventTypeEnum._(r'DELETE_EMAIL_DRAFT');
  static const CREATE_TOTP_DEVICE = AgentActivityDtoEventTypeEnum._(r'CREATE_TOTP_DEVICE');
  static const LIST_TOTP_DEVICES = AgentActivityDtoEventTypeEnum._(r'LIST_TOTP_DEVICES');
  static const GET_TOTP_DEVICE = AgentActivityDtoEventTypeEnum._(r'GET_TOTP_DEVICE');
  static const UPDATE_TOTP_DEVICE = AgentActivityDtoEventTypeEnum._(r'UPDATE_TOTP_DEVICE');
  static const DELETE_TOTP_DEVICE = AgentActivityDtoEventTypeEnum._(r'DELETE_TOTP_DEVICE');
  static const GENERATE_TOTP_CODE = AgentActivityDtoEventTypeEnum._(r'GENERATE_TOTP_CODE');
  static const LIST_PHONE_NUMBERS = AgentActivityDtoEventTypeEnum._(r'LIST_PHONE_NUMBERS');
  static const GET_PHONE_NUMBER = AgentActivityDtoEventTypeEnum._(r'GET_PHONE_NUMBER');
  static const LIST_RECEIVED_SMS = AgentActivityDtoEventTypeEnum._(r'LIST_RECEIVED_SMS');
  static const GET_RECEIVED_SMS = AgentActivityDtoEventTypeEnum._(r'GET_RECEIVED_SMS');
  static const LIST_SENT_SMS = AgentActivityDtoEventTypeEnum._(r'LIST_SENT_SMS');
  static const GET_SENT_SMS = AgentActivityDtoEventTypeEnum._(r'GET_SENT_SMS');
  static const LIST_PHONE_MESSAGE_THREADS = AgentActivityDtoEventTypeEnum._(r'LIST_PHONE_MESSAGE_THREADS');
  static const LIST_PHONE_MESSAGE_THREAD_ITEMS = AgentActivityDtoEventTypeEnum._(r'LIST_PHONE_MESSAGE_THREAD_ITEMS');
  static const LIST_SMS_CONVERSATIONS = AgentActivityDtoEventTypeEnum._(r'LIST_SMS_CONVERSATIONS');
  static const GET_SMS_CONVERSATION = AgentActivityDtoEventTypeEnum._(r'GET_SMS_CONVERSATION');
  static const CLAIM_SMS_CONVERSATION = AgentActivityDtoEventTypeEnum._(r'CLAIM_SMS_CONVERSATION');
  static const ADD_SMS_CONVERSATION_NOTE = AgentActivityDtoEventTypeEnum._(r'ADD_SMS_CONVERSATION_NOTE');
  static const REQUEST_SMS_CONVERSATION_HANDOFF = AgentActivityDtoEventTypeEnum._(r'REQUEST_SMS_CONVERSATION_HANDOFF');
  static const SEND_SMS = AgentActivityDtoEventTypeEnum._(r'SEND_SMS');
  static const REPLY_SMS = AgentActivityDtoEventTypeEnum._(r'REPLY_SMS');

  /// List of all possible values in this [enum][AgentActivityDtoEventTypeEnum].
  static const values = <AgentActivityDtoEventTypeEnum>[
    LIST_INBOX_EMAILS,
    GET_LATEST_INBOX_EMAIL,
    GET_EMAIL_SUMMARY,
    GET_EMAIL,
    REPLY_TO_EMAIL,
    CREATE_EMAIL_DRAFT,
    LIST_EMAIL_DRAFTS,
    GET_EMAIL_DRAFT,
    UPDATE_EMAIL_DRAFT,
    SEND_EMAIL_DRAFT,
    DELETE_EMAIL_DRAFT,
    CREATE_TOTP_DEVICE,
    LIST_TOTP_DEVICES,
    GET_TOTP_DEVICE,
    UPDATE_TOTP_DEVICE,
    DELETE_TOTP_DEVICE,
    GENERATE_TOTP_CODE,
    LIST_PHONE_NUMBERS,
    GET_PHONE_NUMBER,
    LIST_RECEIVED_SMS,
    GET_RECEIVED_SMS,
    LIST_SENT_SMS,
    GET_SENT_SMS,
    LIST_PHONE_MESSAGE_THREADS,
    LIST_PHONE_MESSAGE_THREAD_ITEMS,
    LIST_SMS_CONVERSATIONS,
    GET_SMS_CONVERSATION,
    CLAIM_SMS_CONVERSATION,
    ADD_SMS_CONVERSATION_NOTE,
    REQUEST_SMS_CONVERSATION_HANDOFF,
    SEND_SMS,
    REPLY_SMS,
  ];

  static AgentActivityDtoEventTypeEnum? fromJson(dynamic value) => AgentActivityDtoEventTypeEnumTypeTransformer().decode(value);

  static List<AgentActivityDtoEventTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentActivityDtoEventTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentActivityDtoEventTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AgentActivityDtoEventTypeEnum] to String,
/// and [decode] dynamic data back to [AgentActivityDtoEventTypeEnum].
class AgentActivityDtoEventTypeEnumTypeTransformer {
  factory AgentActivityDtoEventTypeEnumTypeTransformer() => _instance ??= const AgentActivityDtoEventTypeEnumTypeTransformer._();

  const AgentActivityDtoEventTypeEnumTypeTransformer._();

  String encode(AgentActivityDtoEventTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AgentActivityDtoEventTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AgentActivityDtoEventTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LIST_INBOX_EMAILS': return AgentActivityDtoEventTypeEnum.LIST_INBOX_EMAILS;
        case r'GET_LATEST_INBOX_EMAIL': return AgentActivityDtoEventTypeEnum.GET_LATEST_INBOX_EMAIL;
        case r'GET_EMAIL_SUMMARY': return AgentActivityDtoEventTypeEnum.GET_EMAIL_SUMMARY;
        case r'GET_EMAIL': return AgentActivityDtoEventTypeEnum.GET_EMAIL;
        case r'REPLY_TO_EMAIL': return AgentActivityDtoEventTypeEnum.REPLY_TO_EMAIL;
        case r'CREATE_EMAIL_DRAFT': return AgentActivityDtoEventTypeEnum.CREATE_EMAIL_DRAFT;
        case r'LIST_EMAIL_DRAFTS': return AgentActivityDtoEventTypeEnum.LIST_EMAIL_DRAFTS;
        case r'GET_EMAIL_DRAFT': return AgentActivityDtoEventTypeEnum.GET_EMAIL_DRAFT;
        case r'UPDATE_EMAIL_DRAFT': return AgentActivityDtoEventTypeEnum.UPDATE_EMAIL_DRAFT;
        case r'SEND_EMAIL_DRAFT': return AgentActivityDtoEventTypeEnum.SEND_EMAIL_DRAFT;
        case r'DELETE_EMAIL_DRAFT': return AgentActivityDtoEventTypeEnum.DELETE_EMAIL_DRAFT;
        case r'CREATE_TOTP_DEVICE': return AgentActivityDtoEventTypeEnum.CREATE_TOTP_DEVICE;
        case r'LIST_TOTP_DEVICES': return AgentActivityDtoEventTypeEnum.LIST_TOTP_DEVICES;
        case r'GET_TOTP_DEVICE': return AgentActivityDtoEventTypeEnum.GET_TOTP_DEVICE;
        case r'UPDATE_TOTP_DEVICE': return AgentActivityDtoEventTypeEnum.UPDATE_TOTP_DEVICE;
        case r'DELETE_TOTP_DEVICE': return AgentActivityDtoEventTypeEnum.DELETE_TOTP_DEVICE;
        case r'GENERATE_TOTP_CODE': return AgentActivityDtoEventTypeEnum.GENERATE_TOTP_CODE;
        case r'LIST_PHONE_NUMBERS': return AgentActivityDtoEventTypeEnum.LIST_PHONE_NUMBERS;
        case r'GET_PHONE_NUMBER': return AgentActivityDtoEventTypeEnum.GET_PHONE_NUMBER;
        case r'LIST_RECEIVED_SMS': return AgentActivityDtoEventTypeEnum.LIST_RECEIVED_SMS;
        case r'GET_RECEIVED_SMS': return AgentActivityDtoEventTypeEnum.GET_RECEIVED_SMS;
        case r'LIST_SENT_SMS': return AgentActivityDtoEventTypeEnum.LIST_SENT_SMS;
        case r'GET_SENT_SMS': return AgentActivityDtoEventTypeEnum.GET_SENT_SMS;
        case r'LIST_PHONE_MESSAGE_THREADS': return AgentActivityDtoEventTypeEnum.LIST_PHONE_MESSAGE_THREADS;
        case r'LIST_PHONE_MESSAGE_THREAD_ITEMS': return AgentActivityDtoEventTypeEnum.LIST_PHONE_MESSAGE_THREAD_ITEMS;
        case r'LIST_SMS_CONVERSATIONS': return AgentActivityDtoEventTypeEnum.LIST_SMS_CONVERSATIONS;
        case r'GET_SMS_CONVERSATION': return AgentActivityDtoEventTypeEnum.GET_SMS_CONVERSATION;
        case r'CLAIM_SMS_CONVERSATION': return AgentActivityDtoEventTypeEnum.CLAIM_SMS_CONVERSATION;
        case r'ADD_SMS_CONVERSATION_NOTE': return AgentActivityDtoEventTypeEnum.ADD_SMS_CONVERSATION_NOTE;
        case r'REQUEST_SMS_CONVERSATION_HANDOFF': return AgentActivityDtoEventTypeEnum.REQUEST_SMS_CONVERSATION_HANDOFF;
        case r'SEND_SMS': return AgentActivityDtoEventTypeEnum.SEND_SMS;
        case r'REPLY_SMS': return AgentActivityDtoEventTypeEnum.REPLY_SMS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AgentActivityDtoEventTypeEnumTypeTransformer] instance.
  static AgentActivityDtoEventTypeEnumTypeTransformer? _instance;
}



class AgentActivityDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AgentActivityDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUCCESS = AgentActivityDtoStatusEnum._(r'SUCCESS');
  static const FAILURE = AgentActivityDtoStatusEnum._(r'FAILURE');

  /// List of all possible values in this [enum][AgentActivityDtoStatusEnum].
  static const values = <AgentActivityDtoStatusEnum>[
    SUCCESS,
    FAILURE,
  ];

  static AgentActivityDtoStatusEnum? fromJson(dynamic value) => AgentActivityDtoStatusEnumTypeTransformer().decode(value);

  static List<AgentActivityDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentActivityDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentActivityDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AgentActivityDtoStatusEnum] to String,
/// and [decode] dynamic data back to [AgentActivityDtoStatusEnum].
class AgentActivityDtoStatusEnumTypeTransformer {
  factory AgentActivityDtoStatusEnumTypeTransformer() => _instance ??= const AgentActivityDtoStatusEnumTypeTransformer._();

  const AgentActivityDtoStatusEnumTypeTransformer._();

  String encode(AgentActivityDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AgentActivityDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AgentActivityDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUCCESS': return AgentActivityDtoStatusEnum.SUCCESS;
        case r'FAILURE': return AgentActivityDtoStatusEnum.FAILURE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AgentActivityDtoStatusEnumTypeTransformer] instance.
  static AgentActivityDtoStatusEnumTypeTransformer? _instance;
}


