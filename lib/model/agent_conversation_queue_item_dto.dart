//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgentConversationQueueItemDto {
  /// Returns a new [AgentConversationQueueItemDto] instance.
  AgentConversationQueueItemDto({
    required this.conversationId,
    required this.threadId,
    required this.inboxId,
    this.subject,
    this.customer,
    this.lastSender,
    this.lastExcerpt,
    required this.latestMessageDirection,
    this.latestEmailId,
    this.latestReceivedEmailId,
    this.latestSentEmailId,
    required this.messageCount,
    required this.unreadCount,
    required this.hasAttachments,
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

  String threadId;

  String inboxId;

  String? subject;

  String? customer;

  String? lastSender;

  String? lastExcerpt;

  AgentConversationQueueItemDtoLatestMessageDirectionEnum latestMessageDirection;

  String? latestEmailId;

  String? latestReceivedEmailId;

  String? latestSentEmailId;

  int messageCount;

  int unreadCount;

  bool hasAttachments;

  DateTime createdAt;

  DateTime lastMessageAt;

  DateTime projectedAt;

  int version;

  AgentConversationQueueItemDtoWorkflowStateEnum workflowState;

  AgentConversationQueueItemDtoOutcomeEnum? outcome;

  AgentConversationQueueItemDtoReviewStatusEnum reviewStatus;

  bool requiresHumanReview;

  bool needsOperationalAttention;

  AgentConversationClaimDto? claim;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentConversationQueueItemDto &&
     other.conversationId == conversationId &&
     other.threadId == threadId &&
     other.inboxId == inboxId &&
     other.subject == subject &&
     other.customer == customer &&
     other.lastSender == lastSender &&
     other.lastExcerpt == lastExcerpt &&
     other.latestMessageDirection == latestMessageDirection &&
     other.latestEmailId == latestEmailId &&
     other.latestReceivedEmailId == latestReceivedEmailId &&
     other.latestSentEmailId == latestSentEmailId &&
     other.messageCount == messageCount &&
     other.unreadCount == unreadCount &&
     other.hasAttachments == hasAttachments &&
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
    (threadId.hashCode) +
    (inboxId.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (customer == null ? 0 : customer!.hashCode) +
    (lastSender == null ? 0 : lastSender!.hashCode) +
    (lastExcerpt == null ? 0 : lastExcerpt!.hashCode) +
    (latestMessageDirection.hashCode) +
    (latestEmailId == null ? 0 : latestEmailId!.hashCode) +
    (latestReceivedEmailId == null ? 0 : latestReceivedEmailId!.hashCode) +
    (latestSentEmailId == null ? 0 : latestSentEmailId!.hashCode) +
    (messageCount.hashCode) +
    (unreadCount.hashCode) +
    (hasAttachments.hashCode) +
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
  String toString() => 'AgentConversationQueueItemDto[conversationId=$conversationId, threadId=$threadId, inboxId=$inboxId, subject=$subject, customer=$customer, lastSender=$lastSender, lastExcerpt=$lastExcerpt, latestMessageDirection=$latestMessageDirection, latestEmailId=$latestEmailId, latestReceivedEmailId=$latestReceivedEmailId, latestSentEmailId=$latestSentEmailId, messageCount=$messageCount, unreadCount=$unreadCount, hasAttachments=$hasAttachments, createdAt=$createdAt, lastMessageAt=$lastMessageAt, projectedAt=$projectedAt, version=$version, workflowState=$workflowState, outcome=$outcome, reviewStatus=$reviewStatus, requiresHumanReview=$requiresHumanReview, needsOperationalAttention=$needsOperationalAttention, claim=$claim]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'conversationId'] = this.conversationId;
      json[r'threadId'] = this.threadId;
      json[r'inboxId'] = this.inboxId;
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.customer != null) {
      json[r'customer'] = this.customer;
    } else {
      json[r'customer'] = null;
    }
    if (this.lastSender != null) {
      json[r'lastSender'] = this.lastSender;
    } else {
      json[r'lastSender'] = null;
    }
    if (this.lastExcerpt != null) {
      json[r'lastExcerpt'] = this.lastExcerpt;
    } else {
      json[r'lastExcerpt'] = null;
    }
      json[r'latestMessageDirection'] = this.latestMessageDirection;
    if (this.latestEmailId != null) {
      json[r'latestEmailId'] = this.latestEmailId;
    } else {
      json[r'latestEmailId'] = null;
    }
    if (this.latestReceivedEmailId != null) {
      json[r'latestReceivedEmailId'] = this.latestReceivedEmailId;
    } else {
      json[r'latestReceivedEmailId'] = null;
    }
    if (this.latestSentEmailId != null) {
      json[r'latestSentEmailId'] = this.latestSentEmailId;
    } else {
      json[r'latestSentEmailId'] = null;
    }
      json[r'messageCount'] = this.messageCount;
      json[r'unreadCount'] = this.unreadCount;
      json[r'hasAttachments'] = this.hasAttachments;
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

  /// Returns a new [AgentConversationQueueItemDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentConversationQueueItemDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentConversationQueueItemDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentConversationQueueItemDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentConversationQueueItemDto(
        conversationId: mapValueOfType<String>(json, r'conversationId')!,
        threadId: mapValueOfType<String>(json, r'threadId')!,
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        subject: mapValueOfType<String>(json, r'subject'),
        customer: mapValueOfType<String>(json, r'customer'),
        lastSender: mapValueOfType<String>(json, r'lastSender'),
        lastExcerpt: mapValueOfType<String>(json, r'lastExcerpt'),
        latestMessageDirection: AgentConversationQueueItemDtoLatestMessageDirectionEnum.fromJson(json[r'latestMessageDirection'])!,
        latestEmailId: mapValueOfType<String>(json, r'latestEmailId'),
        latestReceivedEmailId: mapValueOfType<String>(json, r'latestReceivedEmailId'),
        latestSentEmailId: mapValueOfType<String>(json, r'latestSentEmailId'),
        messageCount: mapValueOfType<int>(json, r'messageCount')!,
        unreadCount: mapValueOfType<int>(json, r'unreadCount')!,
        hasAttachments: mapValueOfType<bool>(json, r'hasAttachments')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        lastMessageAt: mapDateTime(json, r'lastMessageAt', '')!,
        projectedAt: mapDateTime(json, r'projectedAt', '')!,
        version: mapValueOfType<int>(json, r'version')!,
        workflowState: AgentConversationQueueItemDtoWorkflowStateEnum.fromJson(json[r'workflowState'])!,
        outcome: AgentConversationQueueItemDtoOutcomeEnum.fromJson(json[r'outcome']),
        reviewStatus: AgentConversationQueueItemDtoReviewStatusEnum.fromJson(json[r'reviewStatus'])!,
        requiresHumanReview: mapValueOfType<bool>(json, r'requiresHumanReview')!,
        needsOperationalAttention: mapValueOfType<bool>(json, r'needsOperationalAttention')!,
        claim: AgentConversationClaimDto.fromJson(json[r'claim']),
      );
    }
    return null;
  }

  static List<AgentConversationQueueItemDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentConversationQueueItemDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentConversationQueueItemDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentConversationQueueItemDto> mapFromJson(dynamic json) {
    final map = <String, AgentConversationQueueItemDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentConversationQueueItemDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentConversationQueueItemDto-objects as value to a dart map
  static Map<String, List<AgentConversationQueueItemDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentConversationQueueItemDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentConversationQueueItemDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'conversationId',
    'threadId',
    'inboxId',
    'latestMessageDirection',
    'messageCount',
    'unreadCount',
    'hasAttachments',
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


class AgentConversationQueueItemDtoLatestMessageDirectionEnum {
  /// Instantiate a new enum with the provided [value].
  const AgentConversationQueueItemDtoLatestMessageDirectionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INBOUND = AgentConversationQueueItemDtoLatestMessageDirectionEnum._(r'INBOUND');
  static const OUTBOUND = AgentConversationQueueItemDtoLatestMessageDirectionEnum._(r'OUTBOUND');

  /// List of all possible values in this [enum][AgentConversationQueueItemDtoLatestMessageDirectionEnum].
  static const values = <AgentConversationQueueItemDtoLatestMessageDirectionEnum>[
    INBOUND,
    OUTBOUND,
  ];

  static AgentConversationQueueItemDtoLatestMessageDirectionEnum? fromJson(dynamic value) => AgentConversationQueueItemDtoLatestMessageDirectionEnumTypeTransformer().decode(value);

  static List<AgentConversationQueueItemDtoLatestMessageDirectionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentConversationQueueItemDtoLatestMessageDirectionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentConversationQueueItemDtoLatestMessageDirectionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AgentConversationQueueItemDtoLatestMessageDirectionEnum] to String,
/// and [decode] dynamic data back to [AgentConversationQueueItemDtoLatestMessageDirectionEnum].
class AgentConversationQueueItemDtoLatestMessageDirectionEnumTypeTransformer {
  factory AgentConversationQueueItemDtoLatestMessageDirectionEnumTypeTransformer() => _instance ??= const AgentConversationQueueItemDtoLatestMessageDirectionEnumTypeTransformer._();

  const AgentConversationQueueItemDtoLatestMessageDirectionEnumTypeTransformer._();

  String encode(AgentConversationQueueItemDtoLatestMessageDirectionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AgentConversationQueueItemDtoLatestMessageDirectionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AgentConversationQueueItemDtoLatestMessageDirectionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INBOUND': return AgentConversationQueueItemDtoLatestMessageDirectionEnum.INBOUND;
        case r'OUTBOUND': return AgentConversationQueueItemDtoLatestMessageDirectionEnum.OUTBOUND;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AgentConversationQueueItemDtoLatestMessageDirectionEnumTypeTransformer] instance.
  static AgentConversationQueueItemDtoLatestMessageDirectionEnumTypeTransformer? _instance;
}



class AgentConversationQueueItemDtoWorkflowStateEnum {
  /// Instantiate a new enum with the provided [value].
  const AgentConversationQueueItemDtoWorkflowStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AVAILABLE = AgentConversationQueueItemDtoWorkflowStateEnum._(r'AVAILABLE');
  static const CLAIMED = AgentConversationQueueItemDtoWorkflowStateEnum._(r'CLAIMED');
  static const WAITING_ON_AGENT = AgentConversationQueueItemDtoWorkflowStateEnum._(r'WAITING_ON_AGENT');
  static const WAITING_ON_CUSTOMER = AgentConversationQueueItemDtoWorkflowStateEnum._(r'WAITING_ON_CUSTOMER');
  static const REVIEW = AgentConversationQueueItemDtoWorkflowStateEnum._(r'REVIEW');
  static const RESOLVED = AgentConversationQueueItemDtoWorkflowStateEnum._(r'RESOLVED');

  /// List of all possible values in this [enum][AgentConversationQueueItemDtoWorkflowStateEnum].
  static const values = <AgentConversationQueueItemDtoWorkflowStateEnum>[
    AVAILABLE,
    CLAIMED,
    WAITING_ON_AGENT,
    WAITING_ON_CUSTOMER,
    REVIEW,
    RESOLVED,
  ];

  static AgentConversationQueueItemDtoWorkflowStateEnum? fromJson(dynamic value) => AgentConversationQueueItemDtoWorkflowStateEnumTypeTransformer().decode(value);

  static List<AgentConversationQueueItemDtoWorkflowStateEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentConversationQueueItemDtoWorkflowStateEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentConversationQueueItemDtoWorkflowStateEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AgentConversationQueueItemDtoWorkflowStateEnum] to String,
/// and [decode] dynamic data back to [AgentConversationQueueItemDtoWorkflowStateEnum].
class AgentConversationQueueItemDtoWorkflowStateEnumTypeTransformer {
  factory AgentConversationQueueItemDtoWorkflowStateEnumTypeTransformer() => _instance ??= const AgentConversationQueueItemDtoWorkflowStateEnumTypeTransformer._();

  const AgentConversationQueueItemDtoWorkflowStateEnumTypeTransformer._();

  String encode(AgentConversationQueueItemDtoWorkflowStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AgentConversationQueueItemDtoWorkflowStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AgentConversationQueueItemDtoWorkflowStateEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AVAILABLE': return AgentConversationQueueItemDtoWorkflowStateEnum.AVAILABLE;
        case r'CLAIMED': return AgentConversationQueueItemDtoWorkflowStateEnum.CLAIMED;
        case r'WAITING_ON_AGENT': return AgentConversationQueueItemDtoWorkflowStateEnum.WAITING_ON_AGENT;
        case r'WAITING_ON_CUSTOMER': return AgentConversationQueueItemDtoWorkflowStateEnum.WAITING_ON_CUSTOMER;
        case r'REVIEW': return AgentConversationQueueItemDtoWorkflowStateEnum.REVIEW;
        case r'RESOLVED': return AgentConversationQueueItemDtoWorkflowStateEnum.RESOLVED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AgentConversationQueueItemDtoWorkflowStateEnumTypeTransformer] instance.
  static AgentConversationQueueItemDtoWorkflowStateEnumTypeTransformer? _instance;
}



class AgentConversationQueueItemDtoOutcomeEnum {
  /// Instantiate a new enum with the provided [value].
  const AgentConversationQueueItemDtoOutcomeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const READ = AgentConversationQueueItemDtoOutcomeEnum._(r'READ');
  static const DRAFTED = AgentConversationQueueItemDtoOutcomeEnum._(r'DRAFTED');
  static const REPLIED = AgentConversationQueueItemDtoOutcomeEnum._(r'REPLIED');
  static const REVIEW_REQUESTED = AgentConversationQueueItemDtoOutcomeEnum._(r'REVIEW_REQUESTED');
  static const FAILED = AgentConversationQueueItemDtoOutcomeEnum._(r'FAILED');
  static const RESOLVED = AgentConversationQueueItemDtoOutcomeEnum._(r'RESOLVED');

  /// List of all possible values in this [enum][AgentConversationQueueItemDtoOutcomeEnum].
  static const values = <AgentConversationQueueItemDtoOutcomeEnum>[
    READ,
    DRAFTED,
    REPLIED,
    REVIEW_REQUESTED,
    FAILED,
    RESOLVED,
  ];

  static AgentConversationQueueItemDtoOutcomeEnum? fromJson(dynamic value) => AgentConversationQueueItemDtoOutcomeEnumTypeTransformer().decode(value);

  static List<AgentConversationQueueItemDtoOutcomeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentConversationQueueItemDtoOutcomeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentConversationQueueItemDtoOutcomeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AgentConversationQueueItemDtoOutcomeEnum] to String,
/// and [decode] dynamic data back to [AgentConversationQueueItemDtoOutcomeEnum].
class AgentConversationQueueItemDtoOutcomeEnumTypeTransformer {
  factory AgentConversationQueueItemDtoOutcomeEnumTypeTransformer() => _instance ??= const AgentConversationQueueItemDtoOutcomeEnumTypeTransformer._();

  const AgentConversationQueueItemDtoOutcomeEnumTypeTransformer._();

  String encode(AgentConversationQueueItemDtoOutcomeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AgentConversationQueueItemDtoOutcomeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AgentConversationQueueItemDtoOutcomeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'READ': return AgentConversationQueueItemDtoOutcomeEnum.READ;
        case r'DRAFTED': return AgentConversationQueueItemDtoOutcomeEnum.DRAFTED;
        case r'REPLIED': return AgentConversationQueueItemDtoOutcomeEnum.REPLIED;
        case r'REVIEW_REQUESTED': return AgentConversationQueueItemDtoOutcomeEnum.REVIEW_REQUESTED;
        case r'FAILED': return AgentConversationQueueItemDtoOutcomeEnum.FAILED;
        case r'RESOLVED': return AgentConversationQueueItemDtoOutcomeEnum.RESOLVED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AgentConversationQueueItemDtoOutcomeEnumTypeTransformer] instance.
  static AgentConversationQueueItemDtoOutcomeEnumTypeTransformer? _instance;
}



class AgentConversationQueueItemDtoReviewStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AgentConversationQueueItemDtoReviewStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NONE = AgentConversationQueueItemDtoReviewStatusEnum._(r'NONE');
  static const REQUESTED = AgentConversationQueueItemDtoReviewStatusEnum._(r'REQUESTED');
  static const ASSIGNED = AgentConversationQueueItemDtoReviewStatusEnum._(r'ASSIGNED');
  static const APPROVED = AgentConversationQueueItemDtoReviewStatusEnum._(r'APPROVED');
  static const REJECTED = AgentConversationQueueItemDtoReviewStatusEnum._(r'REJECTED');
  static const RESOLVED = AgentConversationQueueItemDtoReviewStatusEnum._(r'RESOLVED');

  /// List of all possible values in this [enum][AgentConversationQueueItemDtoReviewStatusEnum].
  static const values = <AgentConversationQueueItemDtoReviewStatusEnum>[
    NONE,
    REQUESTED,
    ASSIGNED,
    APPROVED,
    REJECTED,
    RESOLVED,
  ];

  static AgentConversationQueueItemDtoReviewStatusEnum? fromJson(dynamic value) => AgentConversationQueueItemDtoReviewStatusEnumTypeTransformer().decode(value);

  static List<AgentConversationQueueItemDtoReviewStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentConversationQueueItemDtoReviewStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentConversationQueueItemDtoReviewStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AgentConversationQueueItemDtoReviewStatusEnum] to String,
/// and [decode] dynamic data back to [AgentConversationQueueItemDtoReviewStatusEnum].
class AgentConversationQueueItemDtoReviewStatusEnumTypeTransformer {
  factory AgentConversationQueueItemDtoReviewStatusEnumTypeTransformer() => _instance ??= const AgentConversationQueueItemDtoReviewStatusEnumTypeTransformer._();

  const AgentConversationQueueItemDtoReviewStatusEnumTypeTransformer._();

  String encode(AgentConversationQueueItemDtoReviewStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AgentConversationQueueItemDtoReviewStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AgentConversationQueueItemDtoReviewStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NONE': return AgentConversationQueueItemDtoReviewStatusEnum.NONE;
        case r'REQUESTED': return AgentConversationQueueItemDtoReviewStatusEnum.REQUESTED;
        case r'ASSIGNED': return AgentConversationQueueItemDtoReviewStatusEnum.ASSIGNED;
        case r'APPROVED': return AgentConversationQueueItemDtoReviewStatusEnum.APPROVED;
        case r'REJECTED': return AgentConversationQueueItemDtoReviewStatusEnum.REJECTED;
        case r'RESOLVED': return AgentConversationQueueItemDtoReviewStatusEnum.RESOLVED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AgentConversationQueueItemDtoReviewStatusEnumTypeTransformer] instance.
  static AgentConversationQueueItemDtoReviewStatusEnumTypeTransformer? _instance;
}


