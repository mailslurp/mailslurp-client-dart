//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailWarmupPlacementCheckDto {
  /// Returns a new [EmailWarmupPlacementCheckDto] instance.
  EmailWarmupPlacementCheckDto({
    required this.id,
    required this.programId,
    required this.checkpointDay,
    required this.type,
    required this.status,
    required this.scheduledFor,
    this.inboxPlacementRunId,
    required this.targetCount,
    required this.acceptedCount,
    required this.inboxCount,
    required this.spamCount,
    required this.notReceivedCount,
    required this.inboxPercent,
    this.providerResults = const [],
    this.failureCode,
    this.completedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String programId;

  int checkpointDay;

  EmailWarmupPlacementCheckDtoTypeEnum type;

  EmailWarmupPlacementCheckDtoStatusEnum status;

  DateTime scheduledFor;

  String? inboxPlacementRunId;

  int targetCount;

  int acceptedCount;

  int inboxCount;

  int spamCount;

  int notReceivedCount;

  int inboxPercent;

  List<EmailWarmupProviderPlacementDto> providerResults;

  String? failureCode;

  DateTime? completedAt;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailWarmupPlacementCheckDto &&
     other.id == id &&
     other.programId == programId &&
     other.checkpointDay == checkpointDay &&
     other.type == type &&
     other.status == status &&
     other.scheduledFor == scheduledFor &&
     other.inboxPlacementRunId == inboxPlacementRunId &&
     other.targetCount == targetCount &&
     other.acceptedCount == acceptedCount &&
     other.inboxCount == inboxCount &&
     other.spamCount == spamCount &&
     other.notReceivedCount == notReceivedCount &&
     other.inboxPercent == inboxPercent &&
     other.providerResults == providerResults &&
     other.failureCode == failureCode &&
     other.completedAt == completedAt &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (programId.hashCode) +
    (checkpointDay.hashCode) +
    (type.hashCode) +
    (status.hashCode) +
    (scheduledFor.hashCode) +
    (inboxPlacementRunId == null ? 0 : inboxPlacementRunId!.hashCode) +
    (targetCount.hashCode) +
    (acceptedCount.hashCode) +
    (inboxCount.hashCode) +
    (spamCount.hashCode) +
    (notReceivedCount.hashCode) +
    (inboxPercent.hashCode) +
    (providerResults.hashCode) +
    (failureCode == null ? 0 : failureCode!.hashCode) +
    (completedAt == null ? 0 : completedAt!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'EmailWarmupPlacementCheckDto[id=$id, programId=$programId, checkpointDay=$checkpointDay, type=$type, status=$status, scheduledFor=$scheduledFor, inboxPlacementRunId=$inboxPlacementRunId, targetCount=$targetCount, acceptedCount=$acceptedCount, inboxCount=$inboxCount, spamCount=$spamCount, notReceivedCount=$notReceivedCount, inboxPercent=$inboxPercent, providerResults=$providerResults, failureCode=$failureCode, completedAt=$completedAt, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'programId'] = this.programId;
      json[r'checkpointDay'] = this.checkpointDay;
      json[r'type'] = this.type;
      json[r'status'] = this.status;
      json[r'scheduledFor'] = this.scheduledFor.toUtc().toIso8601String();
    if (this.inboxPlacementRunId != null) {
      json[r'inboxPlacementRunId'] = this.inboxPlacementRunId;
    } else {
      json[r'inboxPlacementRunId'] = null;
    }
      json[r'targetCount'] = this.targetCount;
      json[r'acceptedCount'] = this.acceptedCount;
      json[r'inboxCount'] = this.inboxCount;
      json[r'spamCount'] = this.spamCount;
      json[r'notReceivedCount'] = this.notReceivedCount;
      json[r'inboxPercent'] = this.inboxPercent;
      json[r'providerResults'] = this.providerResults;
    if (this.failureCode != null) {
      json[r'failureCode'] = this.failureCode;
    } else {
      json[r'failureCode'] = null;
    }
    if (this.completedAt != null) {
      json[r'completedAt'] = this.completedAt!.toUtc().toIso8601String();
    } else {
      json[r'completedAt'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [EmailWarmupPlacementCheckDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailWarmupPlacementCheckDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailWarmupPlacementCheckDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailWarmupPlacementCheckDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailWarmupPlacementCheckDto(
        id: mapValueOfType<String>(json, r'id')!,
        programId: mapValueOfType<String>(json, r'programId')!,
        checkpointDay: mapValueOfType<int>(json, r'checkpointDay')!,
        type: EmailWarmupPlacementCheckDtoTypeEnum.fromJson(json[r'type'])!,
        status: EmailWarmupPlacementCheckDtoStatusEnum.fromJson(json[r'status'])!,
        scheduledFor: mapDateTime(json, r'scheduledFor', '')!,
        inboxPlacementRunId: mapValueOfType<String>(json, r'inboxPlacementRunId'),
        targetCount: mapValueOfType<int>(json, r'targetCount')!,
        acceptedCount: mapValueOfType<int>(json, r'acceptedCount')!,
        inboxCount: mapValueOfType<int>(json, r'inboxCount')!,
        spamCount: mapValueOfType<int>(json, r'spamCount')!,
        notReceivedCount: mapValueOfType<int>(json, r'notReceivedCount')!,
        inboxPercent: mapValueOfType<int>(json, r'inboxPercent')!,
        providerResults: EmailWarmupProviderPlacementDto.listFromJson(json[r'providerResults']),
        failureCode: mapValueOfType<String>(json, r'failureCode'),
        completedAt: mapDateTime(json, r'completedAt', ''),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<EmailWarmupPlacementCheckDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupPlacementCheckDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupPlacementCheckDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailWarmupPlacementCheckDto> mapFromJson(dynamic json) {
    final map = <String, EmailWarmupPlacementCheckDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailWarmupPlacementCheckDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailWarmupPlacementCheckDto-objects as value to a dart map
  static Map<String, List<EmailWarmupPlacementCheckDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailWarmupPlacementCheckDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailWarmupPlacementCheckDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'programId',
    'checkpointDay',
    'type',
    'status',
    'scheduledFor',
    'targetCount',
    'acceptedCount',
    'inboxCount',
    'spamCount',
    'notReceivedCount',
    'inboxPercent',
    'providerResults',
    'createdAt',
    'updatedAt',
  };
}


class EmailWarmupPlacementCheckDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailWarmupPlacementCheckDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const BASELINE = EmailWarmupPlacementCheckDtoTypeEnum._(r'BASELINE');
  static const WEEKLY = EmailWarmupPlacementCheckDtoTypeEnum._(r'WEEKLY');
  static const FINAL = EmailWarmupPlacementCheckDtoTypeEnum._(r'FINAL');

  /// List of all possible values in this [enum][EmailWarmupPlacementCheckDtoTypeEnum].
  static const values = <EmailWarmupPlacementCheckDtoTypeEnum>[
    BASELINE,
    WEEKLY,
    FINAL,
  ];

  static EmailWarmupPlacementCheckDtoTypeEnum? fromJson(dynamic value) => EmailWarmupPlacementCheckDtoTypeEnumTypeTransformer().decode(value);

  static List<EmailWarmupPlacementCheckDtoTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupPlacementCheckDtoTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupPlacementCheckDtoTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailWarmupPlacementCheckDtoTypeEnum] to String,
/// and [decode] dynamic data back to [EmailWarmupPlacementCheckDtoTypeEnum].
class EmailWarmupPlacementCheckDtoTypeEnumTypeTransformer {
  factory EmailWarmupPlacementCheckDtoTypeEnumTypeTransformer() => _instance ??= const EmailWarmupPlacementCheckDtoTypeEnumTypeTransformer._();

  const EmailWarmupPlacementCheckDtoTypeEnumTypeTransformer._();

  String encode(EmailWarmupPlacementCheckDtoTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailWarmupPlacementCheckDtoTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailWarmupPlacementCheckDtoTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'BASELINE': return EmailWarmupPlacementCheckDtoTypeEnum.BASELINE;
        case r'WEEKLY': return EmailWarmupPlacementCheckDtoTypeEnum.WEEKLY;
        case r'FINAL': return EmailWarmupPlacementCheckDtoTypeEnum.FINAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailWarmupPlacementCheckDtoTypeEnumTypeTransformer] instance.
  static EmailWarmupPlacementCheckDtoTypeEnumTypeTransformer? _instance;
}



class EmailWarmupPlacementCheckDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailWarmupPlacementCheckDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PLANNED = EmailWarmupPlacementCheckDtoStatusEnum._(r'PLANNED');
  static const SENDING = EmailWarmupPlacementCheckDtoStatusEnum._(r'SENDING');
  static const WAITING_RESULTS = EmailWarmupPlacementCheckDtoStatusEnum._(r'WAITING_RESULTS');
  static const COMPLETED = EmailWarmupPlacementCheckDtoStatusEnum._(r'COMPLETED');
  static const PARTIAL = EmailWarmupPlacementCheckDtoStatusEnum._(r'PARTIAL');
  static const FAILED = EmailWarmupPlacementCheckDtoStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][EmailWarmupPlacementCheckDtoStatusEnum].
  static const values = <EmailWarmupPlacementCheckDtoStatusEnum>[
    PLANNED,
    SENDING,
    WAITING_RESULTS,
    COMPLETED,
    PARTIAL,
    FAILED,
  ];

  static EmailWarmupPlacementCheckDtoStatusEnum? fromJson(dynamic value) => EmailWarmupPlacementCheckDtoStatusEnumTypeTransformer().decode(value);

  static List<EmailWarmupPlacementCheckDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupPlacementCheckDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupPlacementCheckDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailWarmupPlacementCheckDtoStatusEnum] to String,
/// and [decode] dynamic data back to [EmailWarmupPlacementCheckDtoStatusEnum].
class EmailWarmupPlacementCheckDtoStatusEnumTypeTransformer {
  factory EmailWarmupPlacementCheckDtoStatusEnumTypeTransformer() => _instance ??= const EmailWarmupPlacementCheckDtoStatusEnumTypeTransformer._();

  const EmailWarmupPlacementCheckDtoStatusEnumTypeTransformer._();

  String encode(EmailWarmupPlacementCheckDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailWarmupPlacementCheckDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailWarmupPlacementCheckDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PLANNED': return EmailWarmupPlacementCheckDtoStatusEnum.PLANNED;
        case r'SENDING': return EmailWarmupPlacementCheckDtoStatusEnum.SENDING;
        case r'WAITING_RESULTS': return EmailWarmupPlacementCheckDtoStatusEnum.WAITING_RESULTS;
        case r'COMPLETED': return EmailWarmupPlacementCheckDtoStatusEnum.COMPLETED;
        case r'PARTIAL': return EmailWarmupPlacementCheckDtoStatusEnum.PARTIAL;
        case r'FAILED': return EmailWarmupPlacementCheckDtoStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailWarmupPlacementCheckDtoStatusEnumTypeTransformer] instance.
  static EmailWarmupPlacementCheckDtoStatusEnumTypeTransformer? _instance;
}


