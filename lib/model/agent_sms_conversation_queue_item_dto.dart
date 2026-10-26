//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgentSmsConversationQueueItemDto {
  /// Returns a new [AgentSmsConversationQueueItemDto] instance.
  AgentSmsConversationQueueItemDto({
    required this.conversationId,
    required this.phoneNumberId,
    this.phoneNumber,
    required this.otherPhoneNumber,
    this.lastBody,
    required this.latestMessageDirection,
    this.latestMessageId,
    this.latestReceivedSmsId,
    this.latestSentSmsId,
    required this.messageCount,
    required this.unreadCount,
    required this.hasMedia,
    required this.createdAt,
    required this.lastMessageAt,
    required this.projectedAt,
    required this.version,
    required this.workflowState,
    this.outcome,
    required this.reviewStatus,
    required this.requiresHumanReview,
    required this.needsOperationalAttention,
    this.claim,
  });

  String conversationId;

  String phoneNumberId;

  String? phoneNumber;

  String otherPhoneNumber;

  String? lastBody;

  AgentSmsConversationQueueItemDtoLatestMessageDirectionEnum latestMessageDirection;

  String? latestMessageId;

  String? latestReceivedSmsId;

  String? latestSentSmsId;

  int messageCount;

  int unreadCount;

  bool hasMedia;

  DateTime createdAt;

  DateTime lastMessageAt;

  DateTime projectedAt;

  int version;

  AgentSmsConversationQueueItemDtoWorkflowStateEnum workflowState;

  AgentSmsConversationQueueItemDtoOutcomeEnum? outcome;

  AgentSmsConversationQueueItemDtoReviewStatusEnum reviewStatus;

  bool requiresHumanReview;

  bool needsOperationalAttention;

  AgentConversationClaimDto? claim;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentSmsConversationQueueItemDto &&
     other.conversationId == conversationId &&
     other.phoneNumberId == phoneNumberId &&
     other.phoneNumber == phoneNumber &&
     other.otherPhoneNumber == otherPhoneNumber &&
     other.lastBody == lastBody &&
     other.latestMessageDirection == latestMessageDirection &&
     other.latestMessageId == latestMessageId &&
     other.latestReceivedSmsId == latestReceivedSmsId &&
     other.latestSentSmsId == latestSentSmsId &&
     other.messageCount == messageCount &&
     other.unreadCount == unreadCount &&
     other.hasMedia == hasMedia &&
     other.createdAt == createdAt &&
     other.lastMessageAt == lastMessageAt &&
     other.projectedAt == projectedAt &&
     other.version == version &&
     other.workflowState == workflowState &&
     other.outcome == outcome &&
     other.reviewStatus == reviewStatus &&
     other.requiresHumanReview == requiresHumanReview &&
     other.needsOperationalAttention == needsOperationalAttention &&
     other.claim == claim;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (conversationId.hashCode) +
    (phoneNumberId.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber!.hashCode) +
    (otherPhoneNumber.hashCode) +
    (lastBody == null ? 0 : lastBody!.hashCode) +
    (latestMessageDirection.hashCode) +
    (latestMessageId == null ? 0 : latestMessageId!.hashCode) +
    (latestReceivedSmsId == null ? 0 : latestReceivedSmsId!.hashCode) +
    (latestSentSmsId == null ? 0 : latestSentSmsId!.hashCode) +
    (messageCount.hashCode) +
    (unreadCount.hashCode) +
    (hasMedia.hashCode) +
    (createdAt.hashCode) +
    (lastMessageAt.hashCode) +
    (projectedAt.hashCode) +
    (version.hashCode) +
    (workflowState.hashCode) +
    (outcome == null ? 0 : outcome!.hashCode) +
    (reviewStatus.hashCode) +
    (requiresHumanReview.hashCode) +
    (needsOperationalAttention.hashCode) +
    (claim == null ? 0 : claim!.hashCode);

  @override
  String toString() => 'AgentSmsConversationQueueItemDto[conversationId=$conversationId, phoneNumberId=$phoneNumberId, phoneNumber=$phoneNumber, otherPhoneNumber=$otherPhoneNumber, lastBody=$lastBody, latestMessageDirection=$latestMessageDirection, latestMessageId=$latestMessageId, latestReceivedSmsId=$latestReceivedSmsId, latestSentSmsId=$latestSentSmsId, messageCount=$messageCount, unreadCount=$unreadCount, hasMedia=$hasMedia, createdAt=$createdAt, lastMessageAt=$lastMessageAt, projectedAt=$projectedAt, version=$version, workflowState=$workflowState, outcome=$outcome, reviewStatus=$reviewStatus, requiresHumanReview=$requiresHumanReview, needsOperationalAttention=$needsOperationalAttention, claim=$claim]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'conversationId'] = this.conversationId;
      json[r'phoneNumberId'] = this.phoneNumberId;
    if (this.phoneNumber != null) {
      json[r'phoneNumber'] = this.phoneNumber;
    } else {
      json[r'phoneNumber'] = null;
    }
      json[r'otherPhoneNumber'] = this.otherPhoneNumber;
    if (this.lastBody != null) {
      json[r'lastBody'] = this.lastBody;
    } else {
      json[r'lastBody'] = null;
    }
      json[r'latestMessageDirection'] = this.latestMessageDirection;
    if (this.latestMessageId != null) {
      json[r'latestMessageId'] = this.latestMessageId;
    } else {
      json[r'latestMessageId'] = null;
    }
    if (this.latestReceivedSmsId != null) {
      json[r'latestReceivedSmsId'] = this.latestReceivedSmsId;
    } else {
      json[r'latestReceivedSmsId'] = null;
    }
    if (this.latestSentSmsId != null) {
      json[r'latestSentSmsId'] = this.latestSentSmsId;
    } else {
      json[r'latestSentSmsId'] = null;
    }
      json[r'messageCount'] = this.messageCount;
      json[r'unreadCount'] = this.unreadCount;
      json[r'hasMedia'] = this.hasMedia;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'lastMessageAt'] = this.lastMessageAt.toUtc().toIso8601String();
      json[r'projectedAt'] = this.projectedAt.toUtc().toIso8601String();
      json[r'version'] = this.version;
      json[r'workflowState'] = this.workflowState;
    if (this.outcome != null) {
      json[r'outcome'] = this.outcome;
    } else {
      json[r'outcome'] = null;
    }
      json[r'reviewStatus'] = this.reviewStatus;
      json[r'requiresHumanReview'] = this.requiresHumanReview;
      json[r'needsOperationalAttention'] = this.needsOperationalAttention;
    if (this.claim != null) {
      json[r'claim'] = this.claim;
    } else {
      json[r'claim'] = null;
    }
    return json;
  }

  /// Returns a new [AgentSmsConversationQueueItemDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentSmsConversationQueueItemDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentSmsConversationQueueItemDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentSmsConversationQueueItemDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentSmsConversationQueueItemDto(
        conversationId: mapValueOfType<String>(json, r'conversationId')!,
        phoneNumberId: mapValueOfType<String>(json, r'phoneNumberId')!,
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber'),
        otherPhoneNumber: mapValueOfType<String>(json, r'otherPhoneNumber')!,
        lastBody: mapValueOfType<String>(json, r'lastBody'),
        latestMessageDirection: AgentSmsConversationQueueItemDtoLatestMessageDirectionEnum.fromJson(json[r'latestMessageDirection'])!,
        latestMessageId: mapValueOfType<String>(json, r'latestMessageId'),
        latestReceivedSmsId: mapValueOfType<String>(json, r'latestReceivedSmsId'),
        latestSentSmsId: mapValueOfType<String>(json, r'latestSentSmsId'),
        messageCount: mapValueOfType<int>(json, r'messageCount')!,
        unreadCount: mapValueOfType<int>(json, r'unreadCount')!,
        hasMedia: mapValueOfType<bool>(json, r'hasMedia')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        lastMessageAt: mapDateTime(json, r'lastMessageAt', '')!,
        projectedAt: mapDateTime(json, r'projectedAt', '')!,
        version: mapValueOfType<int>(json, r'version')!,
        workflowState: AgentSmsConversationQueueItemDtoWorkflowStateEnum.fromJson(json[r'workflowState'])!,
        outcome: AgentSmsConversationQueueItemDtoOutcomeEnum.fromJson(json[r'outcome']),
        reviewStatus: AgentSmsConversationQueueItemDtoReviewStatusEnum.fromJson(json[r'reviewStatus'])!,
        requiresHumanReview: mapValueOfType<bool>(json, r'requiresHumanReview')!,
        needsOperationalAttention: mapValueOfType<bool>(json, r'needsOperationalAttention')!,
        claim: AgentConversationClaimDto.fromJson(json[r'claim']),
      );
    }
    return null;
  }

  static List<AgentSmsConversationQueueItemDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentSmsConversationQueueItemDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentSmsConversationQueueItemDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentSmsConversationQueueItemDto> mapFromJson(dynamic json) {
    final map = <String, AgentSmsConversationQueueItemDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentSmsConversationQueueItemDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentSmsConversationQueueItemDto-objects as value to a dart map
  static Map<String, List<AgentSmsConversationQueueItemDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentSmsConversationQueueItemDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentSmsConversationQueueItemDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'conversationId',
    'phoneNumberId',
    'otherPhoneNumber',
    'latestMessageDirection',
    'messageCount',
    'unreadCount',
    'hasMedia',
    'createdAt',
    'lastMessageAt',
    'projectedAt',
    'version',
    'workflowState',
    'reviewStatus',
    'requiresHumanReview',
    'needsOperationalAttention',
  };
}


class AgentSmsConversationQueueItemDtoLatestMessageDirectionEnum {
  /// Instantiate a new enum with the provided [value].
  const AgentSmsConversationQueueItemDtoLatestMessageDirectionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INBOUND = AgentSmsConversationQueueItemDtoLatestMessageDirectionEnum._(r'INBOUND');
  static const OUTBOUND = AgentSmsConversationQueueItemDtoLatestMessageDirectionEnum._(r'OUTBOUND');

  /// List of all possible values in this [enum][AgentSmsConversationQueueItemDtoLatestMessageDirectionEnum].
  static const values = <AgentSmsConversationQueueItemDtoLatestMessageDirectionEnum>[
    INBOUND,
    OUTBOUND,
  ];

  static AgentSmsConversationQueueItemDtoLatestMessageDirectionEnum? fromJson(dynamic value) => AgentSmsConversationQueueItemDtoLatestMessageDirectionEnumTypeTransformer().decode(value);

  static List<AgentSmsConversationQueueItemDtoLatestMessageDirectionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentSmsConversationQueueItemDtoLatestMessageDirectionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentSmsConversationQueueItemDtoLatestMessageDirectionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AgentSmsConversationQueueItemDtoLatestMessageDirectionEnum] to String,
/// and [decode] dynamic data back to [AgentSmsConversationQueueItemDtoLatestMessageDirectionEnum].
class AgentSmsConversationQueueItemDtoLatestMessageDirectionEnumTypeTransformer {
  factory AgentSmsConversationQueueItemDtoLatestMessageDirectionEnumTypeTransformer() => _instance ??= const AgentSmsConversationQueueItemDtoLatestMessageDirectionEnumTypeTransformer._();

  const AgentSmsConversationQueueItemDtoLatestMessageDirectionEnumTypeTransformer._();

  String encode(AgentSmsConversationQueueItemDtoLatestMessageDirectionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AgentSmsConversationQueueItemDtoLatestMessageDirectionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AgentSmsConversationQueueItemDtoLatestMessageDirectionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INBOUND': return AgentSmsConversationQueueItemDtoLatestMessageDirectionEnum.INBOUND;
        case r'OUTBOUND': return AgentSmsConversationQueueItemDtoLatestMessageDirectionEnum.OUTBOUND;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AgentSmsConversationQueueItemDtoLatestMessageDirectionEnumTypeTransformer] instance.
  static AgentSmsConversationQueueItemDtoLatestMessageDirectionEnumTypeTransformer? _instance;
}



class AgentSmsConversationQueueItemDtoWorkflowStateEnum {
  /// Instantiate a new enum with the provided [value].
  const AgentSmsConversationQueueItemDtoWorkflowStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AVAILABLE = AgentSmsConversationQueueItemDtoWorkflowStateEnum._(r'AVAILABLE');
  static const CLAIMED = AgentSmsConversationQueueItemDtoWorkflowStateEnum._(r'CLAIMED');
  static const WAITING_ON_AGENT = AgentSmsConversationQueueItemDtoWorkflowStateEnum._(r'WAITING_ON_AGENT');
  static const WAITING_ON_CUSTOMER = AgentSmsConversationQueueItemDtoWorkflowStateEnum._(r'WAITING_ON_CUSTOMER');
  static const REVIEW = AgentSmsConversationQueueItemDtoWorkflowStateEnum._(r'REVIEW');
  static const RESOLVED = AgentSmsConversationQueueItemDtoWorkflowStateEnum._(r'RESOLVED');

  /// List of all possible values in this [enum][AgentSmsConversationQueueItemDtoWorkflowStateEnum].
  static const values = <AgentSmsConversationQueueItemDtoWorkflowStateEnum>[
    AVAILABLE,
    CLAIMED,
    WAITING_ON_AGENT,
    WAITING_ON_CUSTOMER,
    REVIEW,
    RESOLVED,
  ];

  static AgentSmsConversationQueueItemDtoWorkflowStateEnum? fromJson(dynamic value) => AgentSmsConversationQueueItemDtoWorkflowStateEnumTypeTransformer().decode(value);

  static List<AgentSmsConversationQueueItemDtoWorkflowStateEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentSmsConversationQueueItemDtoWorkflowStateEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentSmsConversationQueueItemDtoWorkflowStateEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AgentSmsConversationQueueItemDtoWorkflowStateEnum] to String,
/// and [decode] dynamic data back to [AgentSmsConversationQueueItemDtoWorkflowStateEnum].
class AgentSmsConversationQueueItemDtoWorkflowStateEnumTypeTransformer {
  factory AgentSmsConversationQueueItemDtoWorkflowStateEnumTypeTransformer() => _instance ??= const AgentSmsConversationQueueItemDtoWorkflowStateEnumTypeTransformer._();

  const AgentSmsConversationQueueItemDtoWorkflowStateEnumTypeTransformer._();

  String encode(AgentSmsConversationQueueItemDtoWorkflowStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AgentSmsConversationQueueItemDtoWorkflowStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AgentSmsConversationQueueItemDtoWorkflowStateEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AVAILABLE': return AgentSmsConversationQueueItemDtoWorkflowStateEnum.AVAILABLE;
        case r'CLAIMED': return AgentSmsConversationQueueItemDtoWorkflowStateEnum.CLAIMED;
        case r'WAITING_ON_AGENT': return AgentSmsConversationQueueItemDtoWorkflowStateEnum.WAITING_ON_AGENT;
        case r'WAITING_ON_CUSTOMER': return AgentSmsConversationQueueItemDtoWorkflowStateEnum.WAITING_ON_CUSTOMER;
        case r'REVIEW': return AgentSmsConversationQueueItemDtoWorkflowStateEnum.REVIEW;
        case r'RESOLVED': return AgentSmsConversationQueueItemDtoWorkflowStateEnum.RESOLVED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AgentSmsConversationQueueItemDtoWorkflowStateEnumTypeTransformer] instance.
  static AgentSmsConversationQueueItemDtoWorkflowStateEnumTypeTransformer? _instance;
}



class AgentSmsConversationQueueItemDtoOutcomeEnum {
  /// Instantiate a new enum with the provided [value].
  const AgentSmsConversationQueueItemDtoOutcomeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const READ = AgentSmsConversationQueueItemDtoOutcomeEnum._(r'READ');
  static const DRAFTED = AgentSmsConversationQueueItemDtoOutcomeEnum._(r'DRAFTED');
  static const REPLIED = AgentSmsConversationQueueItemDtoOutcomeEnum._(r'REPLIED');
  static const REVIEW_REQUESTED = AgentSmsConversationQueueItemDtoOutcomeEnum._(r'REVIEW_REQUESTED');
  static const FAILED = AgentSmsConversationQueueItemDtoOutcomeEnum._(r'FAILED');
  static const RESOLVED = AgentSmsConversationQueueItemDtoOutcomeEnum._(r'RESOLVED');

  /// List of all possible values in this [enum][AgentSmsConversationQueueItemDtoOutcomeEnum].
  static const values = <AgentSmsConversationQueueItemDtoOutcomeEnum>[
    READ,
    DRAFTED,
    REPLIED,
    REVIEW_REQUESTED,
    FAILED,
    RESOLVED,
  ];

  static AgentSmsConversationQueueItemDtoOutcomeEnum? fromJson(dynamic value) => AgentSmsConversationQueueItemDtoOutcomeEnumTypeTransformer().decode(value);

  static List<AgentSmsConversationQueueItemDtoOutcomeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentSmsConversationQueueItemDtoOutcomeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentSmsConversationQueueItemDtoOutcomeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AgentSmsConversationQueueItemDtoOutcomeEnum] to String,
/// and [decode] dynamic data back to [AgentSmsConversationQueueItemDtoOutcomeEnum].
class AgentSmsConversationQueueItemDtoOutcomeEnumTypeTransformer {
  factory AgentSmsConversationQueueItemDtoOutcomeEnumTypeTransformer() => _instance ??= const AgentSmsConversationQueueItemDtoOutcomeEnumTypeTransformer._();

  const AgentSmsConversationQueueItemDtoOutcomeEnumTypeTransformer._();

  String encode(AgentSmsConversationQueueItemDtoOutcomeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AgentSmsConversationQueueItemDtoOutcomeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AgentSmsConversationQueueItemDtoOutcomeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'READ': return AgentSmsConversationQueueItemDtoOutcomeEnum.READ;
        case r'DRAFTED': return AgentSmsConversationQueueItemDtoOutcomeEnum.DRAFTED;
        case r'REPLIED': return AgentSmsConversationQueueItemDtoOutcomeEnum.REPLIED;
        case r'REVIEW_REQUESTED': return AgentSmsConversationQueueItemDtoOutcomeEnum.REVIEW_REQUESTED;
        case r'FAILED': return AgentSmsConversationQueueItemDtoOutcomeEnum.FAILED;
        case r'RESOLVED': return AgentSmsConversationQueueItemDtoOutcomeEnum.RESOLVED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AgentSmsConversationQueueItemDtoOutcomeEnumTypeTransformer] instance.
  static AgentSmsConversationQueueItemDtoOutcomeEnumTypeTransformer? _instance;
}



class AgentSmsConversationQueueItemDtoReviewStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AgentSmsConversationQueueItemDtoReviewStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NONE = AgentSmsConversationQueueItemDtoReviewStatusEnum._(r'NONE');
  static const REQUESTED = AgentSmsConversationQueueItemDtoReviewStatusEnum._(r'REQUESTED');
  static const ASSIGNED = AgentSmsConversationQueueItemDtoReviewStatusEnum._(r'ASSIGNED');
  static const APPROVED = AgentSmsConversationQueueItemDtoReviewStatusEnum._(r'APPROVED');
  static const REJECTED = AgentSmsConversationQueueItemDtoReviewStatusEnum._(r'REJECTED');
  static const RESOLVED = AgentSmsConversationQueueItemDtoReviewStatusEnum._(r'RESOLVED');

  /// List of all possible values in this [enum][AgentSmsConversationQueueItemDtoReviewStatusEnum].
  static const values = <AgentSmsConversationQueueItemDtoReviewStatusEnum>[
    NONE,
    REQUESTED,
    ASSIGNED,
    APPROVED,
    REJECTED,
    RESOLVED,
  ];

  static AgentSmsConversationQueueItemDtoReviewStatusEnum? fromJson(dynamic value) => AgentSmsConversationQueueItemDtoReviewStatusEnumTypeTransformer().decode(value);

  static List<AgentSmsConversationQueueItemDtoReviewStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentSmsConversationQueueItemDtoReviewStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentSmsConversationQueueItemDtoReviewStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AgentSmsConversationQueueItemDtoReviewStatusEnum] to String,
/// and [decode] dynamic data back to [AgentSmsConversationQueueItemDtoReviewStatusEnum].
class AgentSmsConversationQueueItemDtoReviewStatusEnumTypeTransformer {
  factory AgentSmsConversationQueueItemDtoReviewStatusEnumTypeTransformer() => _instance ??= const AgentSmsConversationQueueItemDtoReviewStatusEnumTypeTransformer._();

  const AgentSmsConversationQueueItemDtoReviewStatusEnumTypeTransformer._();

  String encode(AgentSmsConversationQueueItemDtoReviewStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AgentSmsConversationQueueItemDtoReviewStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AgentSmsConversationQueueItemDtoReviewStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NONE': return AgentSmsConversationQueueItemDtoReviewStatusEnum.NONE;
        case r'REQUESTED': return AgentSmsConversationQueueItemDtoReviewStatusEnum.REQUESTED;
        case r'ASSIGNED': return AgentSmsConversationQueueItemDtoReviewStatusEnum.ASSIGNED;
        case r'APPROVED': return AgentSmsConversationQueueItemDtoReviewStatusEnum.APPROVED;
        case r'REJECTED': return AgentSmsConversationQueueItemDtoReviewStatusEnum.REJECTED;
        case r'RESOLVED': return AgentSmsConversationQueueItemDtoReviewStatusEnum.RESOLVED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AgentSmsConversationQueueItemDtoReviewStatusEnumTypeTransformer] instance.
  static AgentSmsConversationQueueItemDtoReviewStatusEnumTypeTransformer? _instance;
}


