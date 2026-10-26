//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgentConversationHandoffDto {
  /// Returns a new [AgentConversationHandoffDto] instance.
  AgentConversationHandoffDto({
    required this.id,
    required this.conversationId,
    this.requestedByApiKeyEntityId,
    this.requestedByUserId,
    required this.reasonCode,
    this.reason,
    required this.priority,
    required this.status,
    this.assignedUserId,
    this.sourceEmailId,
    this.draftId,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
    this.completedAt,
    this.sourceSmsId,
    this.conversationVersion,
  });

  String id;

  String conversationId;

  String? requestedByApiKeyEntityId;

  String? requestedByUserId;

  String reasonCode;

  String? reason;

  AgentConversationHandoffDtoPriorityEnum priority;

  AgentConversationHandoffDtoStatusEnum status;

  String? assignedUserId;

  String? sourceEmailId;

  String? draftId;

  int version;

  DateTime createdAt;

  DateTime updatedAt;

  DateTime? completedAt;

  String? sourceSmsId;

  int? conversationVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentConversationHandoffDto &&
     other.id == id &&
     other.conversationId == conversationId &&
     other.requestedByApiKeyEntityId == requestedByApiKeyEntityId &&
     other.requestedByUserId == requestedByUserId &&
     other.reasonCode == reasonCode &&
     other.reason == reason &&
     other.priority == priority &&
     other.status == status &&
     other.assignedUserId == assignedUserId &&
     other.sourceEmailId == sourceEmailId &&
     other.draftId == draftId &&
     other.version == version &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.completedAt == completedAt &&
     other.sourceSmsId == sourceSmsId &&
     other.conversationVersion == conversationVersion;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (conversationId.hashCode) +
    (requestedByApiKeyEntityId == null ? 0 : requestedByApiKeyEntityId!.hashCode) +
    (requestedByUserId == null ? 0 : requestedByUserId!.hashCode) +
    (reasonCode.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (priority.hashCode) +
    (status.hashCode) +
    (assignedUserId == null ? 0 : assignedUserId!.hashCode) +
    (sourceEmailId == null ? 0 : sourceEmailId!.hashCode) +
    (draftId == null ? 0 : draftId!.hashCode) +
    (version.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (completedAt == null ? 0 : completedAt!.hashCode) +
    (sourceSmsId == null ? 0 : sourceSmsId!.hashCode) +
    (conversationVersion == null ? 0 : conversationVersion!.hashCode);

  @override
  String toString() => 'AgentConversationHandoffDto[id=$id, conversationId=$conversationId, requestedByApiKeyEntityId=$requestedByApiKeyEntityId, requestedByUserId=$requestedByUserId, reasonCode=$reasonCode, reason=$reason, priority=$priority, status=$status, assignedUserId=$assignedUserId, sourceEmailId=$sourceEmailId, draftId=$draftId, version=$version, createdAt=$createdAt, updatedAt=$updatedAt, completedAt=$completedAt, sourceSmsId=$sourceSmsId, conversationVersion=$conversationVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'conversationId'] = this.conversationId;
    if (this.requestedByApiKeyEntityId != null) {
      json[r'requestedByApiKeyEntityId'] = this.requestedByApiKeyEntityId;
    } else {
      json[r'requestedByApiKeyEntityId'] = null;
    }
    if (this.requestedByUserId != null) {
      json[r'requestedByUserId'] = this.requestedByUserId;
    } else {
      json[r'requestedByUserId'] = null;
    }
      json[r'reasonCode'] = this.reasonCode;
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
      json[r'priority'] = this.priority;
      json[r'status'] = this.status;
    if (this.assignedUserId != null) {
      json[r'assignedUserId'] = this.assignedUserId;
    } else {
      json[r'assignedUserId'] = null;
    }
    if (this.sourceEmailId != null) {
      json[r'sourceEmailId'] = this.sourceEmailId;
    } else {
      json[r'sourceEmailId'] = null;
    }
    if (this.draftId != null) {
      json[r'draftId'] = this.draftId;
    } else {
      json[r'draftId'] = null;
    }
      json[r'version'] = this.version;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    if (this.completedAt != null) {
      json[r'completedAt'] = this.completedAt!.toUtc().toIso8601String();
    } else {
      json[r'completedAt'] = null;
    }
    if (this.sourceSmsId != null) {
      json[r'sourceSmsId'] = this.sourceSmsId;
    } else {
      json[r'sourceSmsId'] = null;
    }
    if (this.conversationVersion != null) {
      json[r'conversationVersion'] = this.conversationVersion;
    } else {
      json[r'conversationVersion'] = null;
    }
    return json;
  }

  /// Returns a new [AgentConversationHandoffDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentConversationHandoffDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentConversationHandoffDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentConversationHandoffDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentConversationHandoffDto(
        id: mapValueOfType<String>(json, r'id')!,
        conversationId: mapValueOfType<String>(json, r'conversationId')!,
        requestedByApiKeyEntityId: mapValueOfType<String>(json, r'requestedByApiKeyEntityId'),
        requestedByUserId: mapValueOfType<String>(json, r'requestedByUserId'),
        reasonCode: mapValueOfType<String>(json, r'reasonCode')!,
        reason: mapValueOfType<String>(json, r'reason'),
        priority: AgentConversationHandoffDtoPriorityEnum.fromJson(json[r'priority'])!,
        status: AgentConversationHandoffDtoStatusEnum.fromJson(json[r'status'])!,
        assignedUserId: mapValueOfType<String>(json, r'assignedUserId'),
        sourceEmailId: mapValueOfType<String>(json, r'sourceEmailId'),
        draftId: mapValueOfType<String>(json, r'draftId'),
        version: mapValueOfType<int>(json, r'version')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        completedAt: mapDateTime(json, r'completedAt', ''),
        sourceSmsId: mapValueOfType<String>(json, r'sourceSmsId'),
        conversationVersion: mapValueOfType<int>(json, r'conversationVersion'),
      );
    }
    return null;
  }

  static List<AgentConversationHandoffDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentConversationHandoffDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentConversationHandoffDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentConversationHandoffDto> mapFromJson(dynamic json) {
    final map = <String, AgentConversationHandoffDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentConversationHandoffDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentConversationHandoffDto-objects as value to a dart map
  static Map<String, List<AgentConversationHandoffDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentConversationHandoffDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentConversationHandoffDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'conversationId',
    'reasonCode',
    'priority',
    'status',
    'version',
    'createdAt',
    'updatedAt',
  };
}


class AgentConversationHandoffDtoPriorityEnum {
  /// Instantiate a new enum with the provided [value].
  const AgentConversationHandoffDtoPriorityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LOW = AgentConversationHandoffDtoPriorityEnum._(r'LOW');
  static const NORMAL = AgentConversationHandoffDtoPriorityEnum._(r'NORMAL');
  static const HIGH = AgentConversationHandoffDtoPriorityEnum._(r'HIGH');
  static const URGENT = AgentConversationHandoffDtoPriorityEnum._(r'URGENT');

  /// List of all possible values in this [enum][AgentConversationHandoffDtoPriorityEnum].
  static const values = <AgentConversationHandoffDtoPriorityEnum>[
    LOW,
    NORMAL,
    HIGH,
    URGENT,
  ];

  static AgentConversationHandoffDtoPriorityEnum? fromJson(dynamic value) => AgentConversationHandoffDtoPriorityEnumTypeTransformer().decode(value);

  static List<AgentConversationHandoffDtoPriorityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentConversationHandoffDtoPriorityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentConversationHandoffDtoPriorityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AgentConversationHandoffDtoPriorityEnum] to String,
/// and [decode] dynamic data back to [AgentConversationHandoffDtoPriorityEnum].
class AgentConversationHandoffDtoPriorityEnumTypeTransformer {
  factory AgentConversationHandoffDtoPriorityEnumTypeTransformer() => _instance ??= const AgentConversationHandoffDtoPriorityEnumTypeTransformer._();

  const AgentConversationHandoffDtoPriorityEnumTypeTransformer._();

  String encode(AgentConversationHandoffDtoPriorityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AgentConversationHandoffDtoPriorityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AgentConversationHandoffDtoPriorityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LOW': return AgentConversationHandoffDtoPriorityEnum.LOW;
        case r'NORMAL': return AgentConversationHandoffDtoPriorityEnum.NORMAL;
        case r'HIGH': return AgentConversationHandoffDtoPriorityEnum.HIGH;
        case r'URGENT': return AgentConversationHandoffDtoPriorityEnum.URGENT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AgentConversationHandoffDtoPriorityEnumTypeTransformer] instance.
  static AgentConversationHandoffDtoPriorityEnumTypeTransformer? _instance;
}



class AgentConversationHandoffDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AgentConversationHandoffDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const REQUESTED = AgentConversationHandoffDtoStatusEnum._(r'REQUESTED');
  static const ASSIGNED = AgentConversationHandoffDtoStatusEnum._(r'ASSIGNED');
  static const APPROVED = AgentConversationHandoffDtoStatusEnum._(r'APPROVED');
  static const REJECTED = AgentConversationHandoffDtoStatusEnum._(r'REJECTED');
  static const RESOLVED = AgentConversationHandoffDtoStatusEnum._(r'RESOLVED');

  /// List of all possible values in this [enum][AgentConversationHandoffDtoStatusEnum].
  static const values = <AgentConversationHandoffDtoStatusEnum>[
    REQUESTED,
    ASSIGNED,
    APPROVED,
    REJECTED,
    RESOLVED,
  ];

  static AgentConversationHandoffDtoStatusEnum? fromJson(dynamic value) => AgentConversationHandoffDtoStatusEnumTypeTransformer().decode(value);

  static List<AgentConversationHandoffDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentConversationHandoffDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentConversationHandoffDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AgentConversationHandoffDtoStatusEnum] to String,
/// and [decode] dynamic data back to [AgentConversationHandoffDtoStatusEnum].
class AgentConversationHandoffDtoStatusEnumTypeTransformer {
  factory AgentConversationHandoffDtoStatusEnumTypeTransformer() => _instance ??= const AgentConversationHandoffDtoStatusEnumTypeTransformer._();

  const AgentConversationHandoffDtoStatusEnumTypeTransformer._();

  String encode(AgentConversationHandoffDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AgentConversationHandoffDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AgentConversationHandoffDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'REQUESTED': return AgentConversationHandoffDtoStatusEnum.REQUESTED;
        case r'ASSIGNED': return AgentConversationHandoffDtoStatusEnum.ASSIGNED;
        case r'APPROVED': return AgentConversationHandoffDtoStatusEnum.APPROVED;
        case r'REJECTED': return AgentConversationHandoffDtoStatusEnum.REJECTED;
        case r'RESOLVED': return AgentConversationHandoffDtoStatusEnum.RESOLVED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AgentConversationHandoffDtoStatusEnumTypeTransformer] instance.
  static AgentConversationHandoffDtoStatusEnumTypeTransformer? _instance;
}


