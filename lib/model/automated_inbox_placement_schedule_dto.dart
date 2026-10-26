//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AutomatedInboxPlacementScheduleDto {
  /// Returns a new [AutomatedInboxPlacementScheduleDto] instance.
  AutomatedInboxPlacementScheduleDto({
    required this.id,
    required this.connectionId,
    required this.name,
    required this.enabled,
    required this.intervalMinutes,
    required this.requestedSegment,
    this.seedlistProfile,
    required this.subjectTemplate,
    this.textBodyTemplate,
    this.htmlBodyTemplate,
    this.sourceRunId,
    this.lastStatus,
    required this.consecutiveFailures,
    this.lastRunAt,
    this.nextRunAt,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String connectionId;

  String name;

  bool enabled;

  int intervalMinutes;

  AutomatedInboxPlacementScheduleDtoRequestedSegmentEnum requestedSegment;

  String? seedlistProfile;

  String subjectTemplate;

  String? textBodyTemplate;

  String? htmlBodyTemplate;

  String? sourceRunId;

  AutomatedInboxPlacementScheduleDtoLastStatusEnum? lastStatus;

  int consecutiveFailures;

  DateTime? lastRunAt;

  DateTime? nextRunAt;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AutomatedInboxPlacementScheduleDto &&
     other.id == id &&
     other.connectionId == connectionId &&
     other.name == name &&
     other.enabled == enabled &&
     other.intervalMinutes == intervalMinutes &&
     other.requestedSegment == requestedSegment &&
     other.seedlistProfile == seedlistProfile &&
     other.subjectTemplate == subjectTemplate &&
     other.textBodyTemplate == textBodyTemplate &&
     other.htmlBodyTemplate == htmlBodyTemplate &&
     other.sourceRunId == sourceRunId &&
     other.lastStatus == lastStatus &&
     other.consecutiveFailures == consecutiveFailures &&
     other.lastRunAt == lastRunAt &&
     other.nextRunAt == nextRunAt &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (connectionId.hashCode) +
    (name.hashCode) +
    (enabled.hashCode) +
    (intervalMinutes.hashCode) +
    (requestedSegment.hashCode) +
    (seedlistProfile == null ? 0 : seedlistProfile!.hashCode) +
    (subjectTemplate.hashCode) +
    (textBodyTemplate == null ? 0 : textBodyTemplate!.hashCode) +
    (htmlBodyTemplate == null ? 0 : htmlBodyTemplate!.hashCode) +
    (sourceRunId == null ? 0 : sourceRunId!.hashCode) +
    (lastStatus == null ? 0 : lastStatus!.hashCode) +
    (consecutiveFailures.hashCode) +
    (lastRunAt == null ? 0 : lastRunAt!.hashCode) +
    (nextRunAt == null ? 0 : nextRunAt!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'AutomatedInboxPlacementScheduleDto[id=$id, connectionId=$connectionId, name=$name, enabled=$enabled, intervalMinutes=$intervalMinutes, requestedSegment=$requestedSegment, seedlistProfile=$seedlistProfile, subjectTemplate=$subjectTemplate, textBodyTemplate=$textBodyTemplate, htmlBodyTemplate=$htmlBodyTemplate, sourceRunId=$sourceRunId, lastStatus=$lastStatus, consecutiveFailures=$consecutiveFailures, lastRunAt=$lastRunAt, nextRunAt=$nextRunAt, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'connectionId'] = this.connectionId;
      json[r'name'] = this.name;
      json[r'enabled'] = this.enabled;
      json[r'intervalMinutes'] = this.intervalMinutes;
      json[r'requestedSegment'] = this.requestedSegment;
    if (this.seedlistProfile != null) {
      json[r'seedlistProfile'] = this.seedlistProfile;
    } else {
      json[r'seedlistProfile'] = null;
    }
      json[r'subjectTemplate'] = this.subjectTemplate;
    if (this.textBodyTemplate != null) {
      json[r'textBodyTemplate'] = this.textBodyTemplate;
    } else {
      json[r'textBodyTemplate'] = null;
    }
    if (this.htmlBodyTemplate != null) {
      json[r'htmlBodyTemplate'] = this.htmlBodyTemplate;
    } else {
      json[r'htmlBodyTemplate'] = null;
    }
    if (this.sourceRunId != null) {
      json[r'sourceRunId'] = this.sourceRunId;
    } else {
      json[r'sourceRunId'] = null;
    }
    if (this.lastStatus != null) {
      json[r'lastStatus'] = this.lastStatus;
    } else {
      json[r'lastStatus'] = null;
    }
      json[r'consecutiveFailures'] = this.consecutiveFailures;
    if (this.lastRunAt != null) {
      json[r'lastRunAt'] = this.lastRunAt!.toUtc().toIso8601String();
    } else {
      json[r'lastRunAt'] = null;
    }
    if (this.nextRunAt != null) {
      json[r'nextRunAt'] = this.nextRunAt!.toUtc().toIso8601String();
    } else {
      json[r'nextRunAt'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [AutomatedInboxPlacementScheduleDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AutomatedInboxPlacementScheduleDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AutomatedInboxPlacementScheduleDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AutomatedInboxPlacementScheduleDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AutomatedInboxPlacementScheduleDto(
        id: mapValueOfType<String>(json, r'id')!,
        connectionId: mapValueOfType<String>(json, r'connectionId')!,
        name: mapValueOfType<String>(json, r'name')!,
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        intervalMinutes: mapValueOfType<int>(json, r'intervalMinutes')!,
        requestedSegment: AutomatedInboxPlacementScheduleDtoRequestedSegmentEnum.fromJson(json[r'requestedSegment'])!,
        seedlistProfile: mapValueOfType<String>(json, r'seedlistProfile'),
        subjectTemplate: mapValueOfType<String>(json, r'subjectTemplate')!,
        textBodyTemplate: mapValueOfType<String>(json, r'textBodyTemplate'),
        htmlBodyTemplate: mapValueOfType<String>(json, r'htmlBodyTemplate'),
        sourceRunId: mapValueOfType<String>(json, r'sourceRunId'),
        lastStatus: AutomatedInboxPlacementScheduleDtoLastStatusEnum.fromJson(json[r'lastStatus']),
        consecutiveFailures: mapValueOfType<int>(json, r'consecutiveFailures')!,
        lastRunAt: mapDateTime(json, r'lastRunAt', ''),
        nextRunAt: mapDateTime(json, r'nextRunAt', ''),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<AutomatedInboxPlacementScheduleDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutomatedInboxPlacementScheduleDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutomatedInboxPlacementScheduleDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AutomatedInboxPlacementScheduleDto> mapFromJson(dynamic json) {
    final map = <String, AutomatedInboxPlacementScheduleDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AutomatedInboxPlacementScheduleDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AutomatedInboxPlacementScheduleDto-objects as value to a dart map
  static Map<String, List<AutomatedInboxPlacementScheduleDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AutomatedInboxPlacementScheduleDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AutomatedInboxPlacementScheduleDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'connectionId',
    'name',
    'enabled',
    'intervalMinutes',
    'requestedSegment',
    'subjectTemplate',
    'consecutiveFailures',
    'createdAt',
    'updatedAt',
  };
}


class AutomatedInboxPlacementScheduleDtoRequestedSegmentEnum {
  /// Instantiate a new enum with the provided [value].
  const AutomatedInboxPlacementScheduleDtoRequestedSegmentEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ALL_INBOXES = AutomatedInboxPlacementScheduleDtoRequestedSegmentEnum._(r'ALL_INBOXES');
  static const PERSONAL_INBOXES = AutomatedInboxPlacementScheduleDtoRequestedSegmentEnum._(r'PERSONAL_INBOXES');
  static const PROFESSIONAL_INBOXES = AutomatedInboxPlacementScheduleDtoRequestedSegmentEnum._(r'PROFESSIONAL_INBOXES');

  /// List of all possible values in this [enum][AutomatedInboxPlacementScheduleDtoRequestedSegmentEnum].
  static const values = <AutomatedInboxPlacementScheduleDtoRequestedSegmentEnum>[
    ALL_INBOXES,
    PERSONAL_INBOXES,
    PROFESSIONAL_INBOXES,
  ];

  static AutomatedInboxPlacementScheduleDtoRequestedSegmentEnum? fromJson(dynamic value) => AutomatedInboxPlacementScheduleDtoRequestedSegmentEnumTypeTransformer().decode(value);

  static List<AutomatedInboxPlacementScheduleDtoRequestedSegmentEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutomatedInboxPlacementScheduleDtoRequestedSegmentEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutomatedInboxPlacementScheduleDtoRequestedSegmentEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AutomatedInboxPlacementScheduleDtoRequestedSegmentEnum] to String,
/// and [decode] dynamic data back to [AutomatedInboxPlacementScheduleDtoRequestedSegmentEnum].
class AutomatedInboxPlacementScheduleDtoRequestedSegmentEnumTypeTransformer {
  factory AutomatedInboxPlacementScheduleDtoRequestedSegmentEnumTypeTransformer() => _instance ??= const AutomatedInboxPlacementScheduleDtoRequestedSegmentEnumTypeTransformer._();

  const AutomatedInboxPlacementScheduleDtoRequestedSegmentEnumTypeTransformer._();

  String encode(AutomatedInboxPlacementScheduleDtoRequestedSegmentEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AutomatedInboxPlacementScheduleDtoRequestedSegmentEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AutomatedInboxPlacementScheduleDtoRequestedSegmentEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ALL_INBOXES': return AutomatedInboxPlacementScheduleDtoRequestedSegmentEnum.ALL_INBOXES;
        case r'PERSONAL_INBOXES': return AutomatedInboxPlacementScheduleDtoRequestedSegmentEnum.PERSONAL_INBOXES;
        case r'PROFESSIONAL_INBOXES': return AutomatedInboxPlacementScheduleDtoRequestedSegmentEnum.PROFESSIONAL_INBOXES;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AutomatedInboxPlacementScheduleDtoRequestedSegmentEnumTypeTransformer] instance.
  static AutomatedInboxPlacementScheduleDtoRequestedSegmentEnumTypeTransformer? _instance;
}



class AutomatedInboxPlacementScheduleDtoLastStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AutomatedInboxPlacementScheduleDtoLastStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PREPARING = AutomatedInboxPlacementScheduleDtoLastStatusEnum._(r'PREPARING');
  static const SENDING = AutomatedInboxPlacementScheduleDtoLastStatusEnum._(r'SENDING');
  static const SENT_PENDING_CONFIRMATION = AutomatedInboxPlacementScheduleDtoLastStatusEnum._(r'SENT_PENDING_CONFIRMATION');
  static const COMPLETE = AutomatedInboxPlacementScheduleDtoLastStatusEnum._(r'COMPLETE');
  static const PARTIAL = AutomatedInboxPlacementScheduleDtoLastStatusEnum._(r'PARTIAL');
  static const FAILED = AutomatedInboxPlacementScheduleDtoLastStatusEnum._(r'FAILED');
  static const UNCERTAIN = AutomatedInboxPlacementScheduleDtoLastStatusEnum._(r'UNCERTAIN');

  /// List of all possible values in this [enum][AutomatedInboxPlacementScheduleDtoLastStatusEnum].
  static const values = <AutomatedInboxPlacementScheduleDtoLastStatusEnum>[
    PREPARING,
    SENDING,
    SENT_PENDING_CONFIRMATION,
    COMPLETE,
    PARTIAL,
    FAILED,
    UNCERTAIN,
  ];

  static AutomatedInboxPlacementScheduleDtoLastStatusEnum? fromJson(dynamic value) => AutomatedInboxPlacementScheduleDtoLastStatusEnumTypeTransformer().decode(value);

  static List<AutomatedInboxPlacementScheduleDtoLastStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutomatedInboxPlacementScheduleDtoLastStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutomatedInboxPlacementScheduleDtoLastStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AutomatedInboxPlacementScheduleDtoLastStatusEnum] to String,
/// and [decode] dynamic data back to [AutomatedInboxPlacementScheduleDtoLastStatusEnum].
class AutomatedInboxPlacementScheduleDtoLastStatusEnumTypeTransformer {
  factory AutomatedInboxPlacementScheduleDtoLastStatusEnumTypeTransformer() => _instance ??= const AutomatedInboxPlacementScheduleDtoLastStatusEnumTypeTransformer._();

  const AutomatedInboxPlacementScheduleDtoLastStatusEnumTypeTransformer._();

  String encode(AutomatedInboxPlacementScheduleDtoLastStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AutomatedInboxPlacementScheduleDtoLastStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AutomatedInboxPlacementScheduleDtoLastStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PREPARING': return AutomatedInboxPlacementScheduleDtoLastStatusEnum.PREPARING;
        case r'SENDING': return AutomatedInboxPlacementScheduleDtoLastStatusEnum.SENDING;
        case r'SENT_PENDING_CONFIRMATION': return AutomatedInboxPlacementScheduleDtoLastStatusEnum.SENT_PENDING_CONFIRMATION;
        case r'COMPLETE': return AutomatedInboxPlacementScheduleDtoLastStatusEnum.COMPLETE;
        case r'PARTIAL': return AutomatedInboxPlacementScheduleDtoLastStatusEnum.PARTIAL;
        case r'FAILED': return AutomatedInboxPlacementScheduleDtoLastStatusEnum.FAILED;
        case r'UNCERTAIN': return AutomatedInboxPlacementScheduleDtoLastStatusEnum.UNCERTAIN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AutomatedInboxPlacementScheduleDtoLastStatusEnumTypeTransformer] instance.
  static AutomatedInboxPlacementScheduleDtoLastStatusEnumTypeTransformer? _instance;
}


