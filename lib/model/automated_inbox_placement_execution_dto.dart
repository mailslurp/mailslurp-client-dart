//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AutomatedInboxPlacementExecutionDto {
  /// Returns a new [AutomatedInboxPlacementExecutionDto] instance.
  AutomatedInboxPlacementExecutionDto({
    required this.id,
    required this.scheduleId,
    required this.connectionId,
    required this.scheduledFor,
    required this.triggerSource,
    required this.status,
    this.inboxPlacementRunId,
    required this.targetCount,
    required this.sentCount,
    required this.attemptCount,
    this.failureCode,
    this.failureMessage,
    this.startedAt,
    this.finishedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String scheduleId;

  String connectionId;

  DateTime scheduledFor;

  AutomatedInboxPlacementExecutionDtoTriggerSourceEnum triggerSource;

  AutomatedInboxPlacementExecutionDtoStatusEnum status;

  String? inboxPlacementRunId;

  int targetCount;

  int sentCount;

  int attemptCount;

  String? failureCode;

  String? failureMessage;

  DateTime? startedAt;

  DateTime? finishedAt;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AutomatedInboxPlacementExecutionDto &&
     other.id == id &&
     other.scheduleId == scheduleId &&
     other.connectionId == connectionId &&
     other.scheduledFor == scheduledFor &&
     other.triggerSource == triggerSource &&
     other.status == status &&
     other.inboxPlacementRunId == inboxPlacementRunId &&
     other.targetCount == targetCount &&
     other.sentCount == sentCount &&
     other.attemptCount == attemptCount &&
     other.failureCode == failureCode &&
     other.failureMessage == failureMessage &&
     other.startedAt == startedAt &&
     other.finishedAt == finishedAt &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (scheduleId.hashCode) +
    (connectionId.hashCode) +
    (scheduledFor.hashCode) +
    (triggerSource.hashCode) +
    (status.hashCode) +
    (inboxPlacementRunId == null ? 0 : inboxPlacementRunId!.hashCode) +
    (targetCount.hashCode) +
    (sentCount.hashCode) +
    (attemptCount.hashCode) +
    (failureCode == null ? 0 : failureCode!.hashCode) +
    (failureMessage == null ? 0 : failureMessage!.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (finishedAt == null ? 0 : finishedAt!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'AutomatedInboxPlacementExecutionDto[id=$id, scheduleId=$scheduleId, connectionId=$connectionId, scheduledFor=$scheduledFor, triggerSource=$triggerSource, status=$status, inboxPlacementRunId=$inboxPlacementRunId, targetCount=$targetCount, sentCount=$sentCount, attemptCount=$attemptCount, failureCode=$failureCode, failureMessage=$failureMessage, startedAt=$startedAt, finishedAt=$finishedAt, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'scheduleId'] = this.scheduleId;
      json[r'connectionId'] = this.connectionId;
      json[r'scheduledFor'] = this.scheduledFor.toUtc().toIso8601String();
      json[r'triggerSource'] = this.triggerSource;
      json[r'status'] = this.status;
    if (this.inboxPlacementRunId != null) {
      json[r'inboxPlacementRunId'] = this.inboxPlacementRunId;
    } else {
      json[r'inboxPlacementRunId'] = null;
    }
      json[r'targetCount'] = this.targetCount;
      json[r'sentCount'] = this.sentCount;
      json[r'attemptCount'] = this.attemptCount;
    if (this.failureCode != null) {
      json[r'failureCode'] = this.failureCode;
    } else {
      json[r'failureCode'] = null;
    }
    if (this.failureMessage != null) {
      json[r'failureMessage'] = this.failureMessage;
    } else {
      json[r'failureMessage'] = null;
    }
    if (this.startedAt != null) {
      json[r'startedAt'] = this.startedAt!.toUtc().toIso8601String();
    } else {
      json[r'startedAt'] = null;
    }
    if (this.finishedAt != null) {
      json[r'finishedAt'] = this.finishedAt!.toUtc().toIso8601String();
    } else {
      json[r'finishedAt'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [AutomatedInboxPlacementExecutionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AutomatedInboxPlacementExecutionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AutomatedInboxPlacementExecutionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AutomatedInboxPlacementExecutionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AutomatedInboxPlacementExecutionDto(
        id: mapValueOfType<String>(json, r'id')!,
        scheduleId: mapValueOfType<String>(json, r'scheduleId')!,
        connectionId: mapValueOfType<String>(json, r'connectionId')!,
        scheduledFor: mapDateTime(json, r'scheduledFor', '')!,
        triggerSource: AutomatedInboxPlacementExecutionDtoTriggerSourceEnum.fromJson(json[r'triggerSource'])!,
        status: AutomatedInboxPlacementExecutionDtoStatusEnum.fromJson(json[r'status'])!,
        inboxPlacementRunId: mapValueOfType<String>(json, r'inboxPlacementRunId'),
        targetCount: mapValueOfType<int>(json, r'targetCount')!,
        sentCount: mapValueOfType<int>(json, r'sentCount')!,
        attemptCount: mapValueOfType<int>(json, r'attemptCount')!,
        failureCode: mapValueOfType<String>(json, r'failureCode'),
        failureMessage: mapValueOfType<String>(json, r'failureMessage'),
        startedAt: mapDateTime(json, r'startedAt', ''),
        finishedAt: mapDateTime(json, r'finishedAt', ''),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<AutomatedInboxPlacementExecutionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutomatedInboxPlacementExecutionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutomatedInboxPlacementExecutionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AutomatedInboxPlacementExecutionDto> mapFromJson(dynamic json) {
    final map = <String, AutomatedInboxPlacementExecutionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AutomatedInboxPlacementExecutionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AutomatedInboxPlacementExecutionDto-objects as value to a dart map
  static Map<String, List<AutomatedInboxPlacementExecutionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AutomatedInboxPlacementExecutionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AutomatedInboxPlacementExecutionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'scheduleId',
    'connectionId',
    'scheduledFor',
    'triggerSource',
    'status',
    'targetCount',
    'sentCount',
    'attemptCount',
    'createdAt',
    'updatedAt',
  };
}


class AutomatedInboxPlacementExecutionDtoTriggerSourceEnum {
  /// Instantiate a new enum with the provided [value].
  const AutomatedInboxPlacementExecutionDtoTriggerSourceEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SCHEDULE = AutomatedInboxPlacementExecutionDtoTriggerSourceEnum._(r'SCHEDULE');
  static const API = AutomatedInboxPlacementExecutionDtoTriggerSourceEnum._(r'API');

  /// List of all possible values in this [enum][AutomatedInboxPlacementExecutionDtoTriggerSourceEnum].
  static const values = <AutomatedInboxPlacementExecutionDtoTriggerSourceEnum>[
    SCHEDULE,
    API,
  ];

  static AutomatedInboxPlacementExecutionDtoTriggerSourceEnum? fromJson(dynamic value) => AutomatedInboxPlacementExecutionDtoTriggerSourceEnumTypeTransformer().decode(value);

  static List<AutomatedInboxPlacementExecutionDtoTriggerSourceEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutomatedInboxPlacementExecutionDtoTriggerSourceEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutomatedInboxPlacementExecutionDtoTriggerSourceEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AutomatedInboxPlacementExecutionDtoTriggerSourceEnum] to String,
/// and [decode] dynamic data back to [AutomatedInboxPlacementExecutionDtoTriggerSourceEnum].
class AutomatedInboxPlacementExecutionDtoTriggerSourceEnumTypeTransformer {
  factory AutomatedInboxPlacementExecutionDtoTriggerSourceEnumTypeTransformer() => _instance ??= const AutomatedInboxPlacementExecutionDtoTriggerSourceEnumTypeTransformer._();

  const AutomatedInboxPlacementExecutionDtoTriggerSourceEnumTypeTransformer._();

  String encode(AutomatedInboxPlacementExecutionDtoTriggerSourceEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AutomatedInboxPlacementExecutionDtoTriggerSourceEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AutomatedInboxPlacementExecutionDtoTriggerSourceEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SCHEDULE': return AutomatedInboxPlacementExecutionDtoTriggerSourceEnum.SCHEDULE;
        case r'API': return AutomatedInboxPlacementExecutionDtoTriggerSourceEnum.API;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AutomatedInboxPlacementExecutionDtoTriggerSourceEnumTypeTransformer] instance.
  static AutomatedInboxPlacementExecutionDtoTriggerSourceEnumTypeTransformer? _instance;
}



class AutomatedInboxPlacementExecutionDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AutomatedInboxPlacementExecutionDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PREPARING = AutomatedInboxPlacementExecutionDtoStatusEnum._(r'PREPARING');
  static const SENDING = AutomatedInboxPlacementExecutionDtoStatusEnum._(r'SENDING');
  static const SENT_PENDING_CONFIRMATION = AutomatedInboxPlacementExecutionDtoStatusEnum._(r'SENT_PENDING_CONFIRMATION');
  static const COMPLETE = AutomatedInboxPlacementExecutionDtoStatusEnum._(r'COMPLETE');
  static const PARTIAL = AutomatedInboxPlacementExecutionDtoStatusEnum._(r'PARTIAL');
  static const FAILED = AutomatedInboxPlacementExecutionDtoStatusEnum._(r'FAILED');
  static const UNCERTAIN = AutomatedInboxPlacementExecutionDtoStatusEnum._(r'UNCERTAIN');

  /// List of all possible values in this [enum][AutomatedInboxPlacementExecutionDtoStatusEnum].
  static const values = <AutomatedInboxPlacementExecutionDtoStatusEnum>[
    PREPARING,
    SENDING,
    SENT_PENDING_CONFIRMATION,
    COMPLETE,
    PARTIAL,
    FAILED,
    UNCERTAIN,
  ];

  static AutomatedInboxPlacementExecutionDtoStatusEnum? fromJson(dynamic value) => AutomatedInboxPlacementExecutionDtoStatusEnumTypeTransformer().decode(value);

  static List<AutomatedInboxPlacementExecutionDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutomatedInboxPlacementExecutionDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutomatedInboxPlacementExecutionDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AutomatedInboxPlacementExecutionDtoStatusEnum] to String,
/// and [decode] dynamic data back to [AutomatedInboxPlacementExecutionDtoStatusEnum].
class AutomatedInboxPlacementExecutionDtoStatusEnumTypeTransformer {
  factory AutomatedInboxPlacementExecutionDtoStatusEnumTypeTransformer() => _instance ??= const AutomatedInboxPlacementExecutionDtoStatusEnumTypeTransformer._();

  const AutomatedInboxPlacementExecutionDtoStatusEnumTypeTransformer._();

  String encode(AutomatedInboxPlacementExecutionDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AutomatedInboxPlacementExecutionDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AutomatedInboxPlacementExecutionDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PREPARING': return AutomatedInboxPlacementExecutionDtoStatusEnum.PREPARING;
        case r'SENDING': return AutomatedInboxPlacementExecutionDtoStatusEnum.SENDING;
        case r'SENT_PENDING_CONFIRMATION': return AutomatedInboxPlacementExecutionDtoStatusEnum.SENT_PENDING_CONFIRMATION;
        case r'COMPLETE': return AutomatedInboxPlacementExecutionDtoStatusEnum.COMPLETE;
        case r'PARTIAL': return AutomatedInboxPlacementExecutionDtoStatusEnum.PARTIAL;
        case r'FAILED': return AutomatedInboxPlacementExecutionDtoStatusEnum.FAILED;
        case r'UNCERTAIN': return AutomatedInboxPlacementExecutionDtoStatusEnum.UNCERTAIN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AutomatedInboxPlacementExecutionDtoStatusEnumTypeTransformer] instance.
  static AutomatedInboxPlacementExecutionDtoStatusEnumTypeTransformer? _instance;
}


