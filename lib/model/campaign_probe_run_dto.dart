//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CampaignProbeRunDto {
  /// Returns a new [CampaignProbeRunDto] instance.
  CampaignProbeRunDto({
    required this.id,
    required this.probeId,
    required this.userId,
    required this.status,
    required this.source_,
    required this.healthScore,
    required this.totalChecks,
    required this.passingChecks,
    required this.failingChecks,
    required this.checkedLinks,
    required this.checkedImages,
    required this.linkIssueCount,
    required this.imageIssueCount,
    required this.compatibilityWarningCount,
    required this.compatibilityNotSupportedCount,
    required this.compatibilityUnknownCount,
    required this.htmlErrorCount,
    required this.htmlWarningCount,
    required this.htmlInfoCount,
    required this.reputationFailureCount,
    required this.attachmentMentionIssueCount,
    this.insights = const [],
    this.errorMessage,
    this.fromAddress,
    this.recipient,
    this.subject,
    this.messageId,
    this.sourceMessageId,
    this.processingMs,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String probeId;

  String userId;

  CampaignProbeRunDtoStatusEnum status;

  CampaignProbeRunDtoSource_Enum source_;

  int healthScore;

  int totalChecks;

  int passingChecks;

  int failingChecks;

  int checkedLinks;

  int checkedImages;

  int linkIssueCount;

  int imageIssueCount;

  int compatibilityWarningCount;

  int compatibilityNotSupportedCount;

  int compatibilityUnknownCount;

  int htmlErrorCount;

  int htmlWarningCount;

  int htmlInfoCount;

  int reputationFailureCount;

  int attachmentMentionIssueCount;

  List<String> insights;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorMessage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fromAddress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recipient;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? messageId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceMessageId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? processingMs;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CampaignProbeRunDto &&
     other.id == id &&
     other.probeId == probeId &&
     other.userId == userId &&
     other.status == status &&
     other.source_ == source_ &&
     other.healthScore == healthScore &&
     other.totalChecks == totalChecks &&
     other.passingChecks == passingChecks &&
     other.failingChecks == failingChecks &&
     other.checkedLinks == checkedLinks &&
     other.checkedImages == checkedImages &&
     other.linkIssueCount == linkIssueCount &&
     other.imageIssueCount == imageIssueCount &&
     other.compatibilityWarningCount == compatibilityWarningCount &&
     other.compatibilityNotSupportedCount == compatibilityNotSupportedCount &&
     other.compatibilityUnknownCount == compatibilityUnknownCount &&
     other.htmlErrorCount == htmlErrorCount &&
     other.htmlWarningCount == htmlWarningCount &&
     other.htmlInfoCount == htmlInfoCount &&
     other.reputationFailureCount == reputationFailureCount &&
     other.attachmentMentionIssueCount == attachmentMentionIssueCount &&
     other.insights == insights &&
     other.errorMessage == errorMessage &&
     other.fromAddress == fromAddress &&
     other.recipient == recipient &&
     other.subject == subject &&
     other.messageId == messageId &&
     other.sourceMessageId == sourceMessageId &&
     other.processingMs == processingMs &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (probeId.hashCode) +
    (userId.hashCode) +
    (status.hashCode) +
    (source_.hashCode) +
    (healthScore.hashCode) +
    (totalChecks.hashCode) +
    (passingChecks.hashCode) +
    (failingChecks.hashCode) +
    (checkedLinks.hashCode) +
    (checkedImages.hashCode) +
    (linkIssueCount.hashCode) +
    (imageIssueCount.hashCode) +
    (compatibilityWarningCount.hashCode) +
    (compatibilityNotSupportedCount.hashCode) +
    (compatibilityUnknownCount.hashCode) +
    (htmlErrorCount.hashCode) +
    (htmlWarningCount.hashCode) +
    (htmlInfoCount.hashCode) +
    (reputationFailureCount.hashCode) +
    (attachmentMentionIssueCount.hashCode) +
    (insights.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode) +
    (fromAddress == null ? 0 : fromAddress!.hashCode) +
    (recipient == null ? 0 : recipient!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (messageId == null ? 0 : messageId!.hashCode) +
    (sourceMessageId == null ? 0 : sourceMessageId!.hashCode) +
    (processingMs == null ? 0 : processingMs!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'CampaignProbeRunDto[id=$id, probeId=$probeId, userId=$userId, status=$status, source_=$source_, healthScore=$healthScore, totalChecks=$totalChecks, passingChecks=$passingChecks, failingChecks=$failingChecks, checkedLinks=$checkedLinks, checkedImages=$checkedImages, linkIssueCount=$linkIssueCount, imageIssueCount=$imageIssueCount, compatibilityWarningCount=$compatibilityWarningCount, compatibilityNotSupportedCount=$compatibilityNotSupportedCount, compatibilityUnknownCount=$compatibilityUnknownCount, htmlErrorCount=$htmlErrorCount, htmlWarningCount=$htmlWarningCount, htmlInfoCount=$htmlInfoCount, reputationFailureCount=$reputationFailureCount, attachmentMentionIssueCount=$attachmentMentionIssueCount, insights=$insights, errorMessage=$errorMessage, fromAddress=$fromAddress, recipient=$recipient, subject=$subject, messageId=$messageId, sourceMessageId=$sourceMessageId, processingMs=$processingMs, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'probeId'] = this.probeId;
      json[r'userId'] = this.userId;
      json[r'status'] = this.status;
      json[r'source'] = this.source_;
      json[r'healthScore'] = this.healthScore;
      json[r'totalChecks'] = this.totalChecks;
      json[r'passingChecks'] = this.passingChecks;
      json[r'failingChecks'] = this.failingChecks;
      json[r'checkedLinks'] = this.checkedLinks;
      json[r'checkedImages'] = this.checkedImages;
      json[r'linkIssueCount'] = this.linkIssueCount;
      json[r'imageIssueCount'] = this.imageIssueCount;
      json[r'compatibilityWarningCount'] = this.compatibilityWarningCount;
      json[r'compatibilityNotSupportedCount'] = this.compatibilityNotSupportedCount;
      json[r'compatibilityUnknownCount'] = this.compatibilityUnknownCount;
      json[r'htmlErrorCount'] = this.htmlErrorCount;
      json[r'htmlWarningCount'] = this.htmlWarningCount;
      json[r'htmlInfoCount'] = this.htmlInfoCount;
      json[r'reputationFailureCount'] = this.reputationFailureCount;
      json[r'attachmentMentionIssueCount'] = this.attachmentMentionIssueCount;
      json[r'insights'] = this.insights;
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
    if (this.fromAddress != null) {
      json[r'fromAddress'] = this.fromAddress;
    } else {
      json[r'fromAddress'] = null;
    }
    if (this.recipient != null) {
      json[r'recipient'] = this.recipient;
    } else {
      json[r'recipient'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.messageId != null) {
      json[r'messageId'] = this.messageId;
    } else {
      json[r'messageId'] = null;
    }
    if (this.sourceMessageId != null) {
      json[r'sourceMessageId'] = this.sourceMessageId;
    } else {
      json[r'sourceMessageId'] = null;
    }
    if (this.processingMs != null) {
      json[r'processingMs'] = this.processingMs;
    } else {
      json[r'processingMs'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [CampaignProbeRunDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CampaignProbeRunDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CampaignProbeRunDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CampaignProbeRunDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CampaignProbeRunDto(
        id: mapValueOfType<String>(json, r'id')!,
        probeId: mapValueOfType<String>(json, r'probeId')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        status: CampaignProbeRunDtoStatusEnum.fromJson(json[r'status'])!,
        source_: CampaignProbeRunDtoSource_Enum.fromJson(json[r'source'])!,
        healthScore: mapValueOfType<int>(json, r'healthScore')!,
        totalChecks: mapValueOfType<int>(json, r'totalChecks')!,
        passingChecks: mapValueOfType<int>(json, r'passingChecks')!,
        failingChecks: mapValueOfType<int>(json, r'failingChecks')!,
        checkedLinks: mapValueOfType<int>(json, r'checkedLinks')!,
        checkedImages: mapValueOfType<int>(json, r'checkedImages')!,
        linkIssueCount: mapValueOfType<int>(json, r'linkIssueCount')!,
        imageIssueCount: mapValueOfType<int>(json, r'imageIssueCount')!,
        compatibilityWarningCount: mapValueOfType<int>(json, r'compatibilityWarningCount')!,
        compatibilityNotSupportedCount: mapValueOfType<int>(json, r'compatibilityNotSupportedCount')!,
        compatibilityUnknownCount: mapValueOfType<int>(json, r'compatibilityUnknownCount')!,
        htmlErrorCount: mapValueOfType<int>(json, r'htmlErrorCount')!,
        htmlWarningCount: mapValueOfType<int>(json, r'htmlWarningCount')!,
        htmlInfoCount: mapValueOfType<int>(json, r'htmlInfoCount')!,
        reputationFailureCount: mapValueOfType<int>(json, r'reputationFailureCount')!,
        attachmentMentionIssueCount: mapValueOfType<int>(json, r'attachmentMentionIssueCount')!,
        insights: json[r'insights'] is List
            ? (json[r'insights'] as List).cast<String>()
            : const [],
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
        fromAddress: mapValueOfType<String>(json, r'fromAddress'),
        recipient: mapValueOfType<String>(json, r'recipient'),
        subject: mapValueOfType<String>(json, r'subject'),
        messageId: mapValueOfType<String>(json, r'messageId'),
        sourceMessageId: mapValueOfType<String>(json, r'sourceMessageId'),
        processingMs: mapValueOfType<int>(json, r'processingMs'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<CampaignProbeRunDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignProbeRunDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignProbeRunDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CampaignProbeRunDto> mapFromJson(dynamic json) {
    final map = <String, CampaignProbeRunDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CampaignProbeRunDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CampaignProbeRunDto-objects as value to a dart map
  static Map<String, List<CampaignProbeRunDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CampaignProbeRunDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CampaignProbeRunDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'probeId',
    'userId',
    'status',
    'source',
    'healthScore',
    'totalChecks',
    'passingChecks',
    'failingChecks',
    'checkedLinks',
    'checkedImages',
    'linkIssueCount',
    'imageIssueCount',
    'compatibilityWarningCount',
    'compatibilityNotSupportedCount',
    'compatibilityUnknownCount',
    'htmlErrorCount',
    'htmlWarningCount',
    'htmlInfoCount',
    'reputationFailureCount',
    'attachmentMentionIssueCount',
    'insights',
    'createdAt',
    'updatedAt',
  };
}


class CampaignProbeRunDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const CampaignProbeRunDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HEALTHY = CampaignProbeRunDtoStatusEnum._(r'HEALTHY');
  static const WARNING = CampaignProbeRunDtoStatusEnum._(r'WARNING');
  static const FAILED = CampaignProbeRunDtoStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][CampaignProbeRunDtoStatusEnum].
  static const values = <CampaignProbeRunDtoStatusEnum>[
    HEALTHY,
    WARNING,
    FAILED,
  ];

  static CampaignProbeRunDtoStatusEnum? fromJson(dynamic value) => CampaignProbeRunDtoStatusEnumTypeTransformer().decode(value);

  static List<CampaignProbeRunDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignProbeRunDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignProbeRunDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CampaignProbeRunDtoStatusEnum] to String,
/// and [decode] dynamic data back to [CampaignProbeRunDtoStatusEnum].
class CampaignProbeRunDtoStatusEnumTypeTransformer {
  factory CampaignProbeRunDtoStatusEnumTypeTransformer() => _instance ??= const CampaignProbeRunDtoStatusEnumTypeTransformer._();

  const CampaignProbeRunDtoStatusEnumTypeTransformer._();

  String encode(CampaignProbeRunDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CampaignProbeRunDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CampaignProbeRunDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HEALTHY': return CampaignProbeRunDtoStatusEnum.HEALTHY;
        case r'WARNING': return CampaignProbeRunDtoStatusEnum.WARNING;
        case r'FAILED': return CampaignProbeRunDtoStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CampaignProbeRunDtoStatusEnumTypeTransformer] instance.
  static CampaignProbeRunDtoStatusEnumTypeTransformer? _instance;
}



class CampaignProbeRunDtoSource_Enum {
  /// Instantiate a new enum with the provided [value].
  const CampaignProbeRunDtoSource_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DIRECT_API = CampaignProbeRunDtoSource_Enum._(r'DIRECT_API');
  static const SES_MONITOR = CampaignProbeRunDtoSource_Enum._(r'SES_MONITOR');
  static const USER_SCHEDULE = CampaignProbeRunDtoSource_Enum._(r'USER_SCHEDULE');
  static const CRON = CampaignProbeRunDtoSource_Enum._(r'CRON');
  static const SCHEDULER = CampaignProbeRunDtoSource_Enum._(r'SCHEDULER');

  /// List of all possible values in this [enum][CampaignProbeRunDtoSource_Enum].
  static const values = <CampaignProbeRunDtoSource_Enum>[
    DIRECT_API,
    SES_MONITOR,
    USER_SCHEDULE,
    CRON,
    SCHEDULER,
  ];

  static CampaignProbeRunDtoSource_Enum? fromJson(dynamic value) => CampaignProbeRunDtoSource_EnumTypeTransformer().decode(value);

  static List<CampaignProbeRunDtoSource_Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignProbeRunDtoSource_Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignProbeRunDtoSource_Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CampaignProbeRunDtoSource_Enum] to String,
/// and [decode] dynamic data back to [CampaignProbeRunDtoSource_Enum].
class CampaignProbeRunDtoSource_EnumTypeTransformer {
  factory CampaignProbeRunDtoSource_EnumTypeTransformer() => _instance ??= const CampaignProbeRunDtoSource_EnumTypeTransformer._();

  const CampaignProbeRunDtoSource_EnumTypeTransformer._();

  String encode(CampaignProbeRunDtoSource_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a CampaignProbeRunDtoSource_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CampaignProbeRunDtoSource_Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DIRECT_API': return CampaignProbeRunDtoSource_Enum.DIRECT_API;
        case r'SES_MONITOR': return CampaignProbeRunDtoSource_Enum.SES_MONITOR;
        case r'USER_SCHEDULE': return CampaignProbeRunDtoSource_Enum.USER_SCHEDULE;
        case r'CRON': return CampaignProbeRunDtoSource_Enum.CRON;
        case r'SCHEDULER': return CampaignProbeRunDtoSource_Enum.SCHEDULER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CampaignProbeRunDtoSource_EnumTypeTransformer] instance.
  static CampaignProbeRunDtoSource_EnumTypeTransformer? _instance;
}


