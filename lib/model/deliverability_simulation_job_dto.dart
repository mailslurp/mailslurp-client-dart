//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverabilitySimulationJobDto {
  /// Returns a new [DeliverabilitySimulationJobDto] instance.
  DeliverabilitySimulationJobDto({
    required this.id,
    required this.testId,
    required this.scope,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    this.startedAt,
    this.completedAt,
    required this.totalTargets,
    required this.totalPlannedSends,
    required this.nextSendIndex,
    required this.sentCount,
    required this.successCount,
    required this.failureCount,
    required this.progressPercent,
    this.activeTargetLabel,
    this.estimatedRemainingMs,
    required this.configSnapshot,
    required this.errorSummary,
  });

  String id;

  String testId;

  DeliverabilitySimulationJobDtoScopeEnum scope;

  DeliverabilitySimulationJobDtoStatusEnum status;

  DateTime createdAt;

  DateTime updatedAt;

  DateTime? startedAt;

  DateTime? completedAt;

  int totalTargets;

  int totalPlannedSends;

  int nextSendIndex;

  int sentCount;

  int successCount;

  int failureCount;

  double progressPercent;

  String? activeTargetLabel;

  int? estimatedRemainingMs;

  DeliverabilitySimulationJobConfigDto configSnapshot;

  DeliverabilitySimulationJobErrorSummaryDto errorSummary;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverabilitySimulationJobDto &&
     other.id == id &&
     other.testId == testId &&
     other.scope == scope &&
     other.status == status &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.startedAt == startedAt &&
     other.completedAt == completedAt &&
     other.totalTargets == totalTargets &&
     other.totalPlannedSends == totalPlannedSends &&
     other.nextSendIndex == nextSendIndex &&
     other.sentCount == sentCount &&
     other.successCount == successCount &&
     other.failureCount == failureCount &&
     other.progressPercent == progressPercent &&
     other.activeTargetLabel == activeTargetLabel &&
     other.estimatedRemainingMs == estimatedRemainingMs &&
     other.configSnapshot == configSnapshot &&
     other.errorSummary == errorSummary;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (testId.hashCode) +
    (scope.hashCode) +
    (status.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (completedAt == null ? 0 : completedAt!.hashCode) +
    (totalTargets.hashCode) +
    (totalPlannedSends.hashCode) +
    (nextSendIndex.hashCode) +
    (sentCount.hashCode) +
    (successCount.hashCode) +
    (failureCount.hashCode) +
    (progressPercent.hashCode) +
    (activeTargetLabel == null ? 0 : activeTargetLabel!.hashCode) +
    (estimatedRemainingMs == null ? 0 : estimatedRemainingMs!.hashCode) +
    (configSnapshot.hashCode) +
    (errorSummary.hashCode);

  @override
  String toString() => 'DeliverabilitySimulationJobDto[id=$id, testId=$testId, scope=$scope, status=$status, createdAt=$createdAt, updatedAt=$updatedAt, startedAt=$startedAt, completedAt=$completedAt, totalTargets=$totalTargets, totalPlannedSends=$totalPlannedSends, nextSendIndex=$nextSendIndex, sentCount=$sentCount, successCount=$successCount, failureCount=$failureCount, progressPercent=$progressPercent, activeTargetLabel=$activeTargetLabel, estimatedRemainingMs=$estimatedRemainingMs, configSnapshot=$configSnapshot, errorSummary=$errorSummary]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'testId'] = this.testId;
      json[r'scope'] = this.scope;
      json[r'status'] = this.status;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    if (this.startedAt != null) {
      json[r'startedAt'] = this.startedAt!.toUtc().toIso8601String();
    } else {
      json[r'startedAt'] = null;
    }
    if (this.completedAt != null) {
      json[r'completedAt'] = this.completedAt!.toUtc().toIso8601String();
    } else {
      json[r'completedAt'] = null;
    }
      json[r'totalTargets'] = this.totalTargets;
      json[r'totalPlannedSends'] = this.totalPlannedSends;
      json[r'nextSendIndex'] = this.nextSendIndex;
      json[r'sentCount'] = this.sentCount;
      json[r'successCount'] = this.successCount;
      json[r'failureCount'] = this.failureCount;
      json[r'progressPercent'] = this.progressPercent;
    if (this.activeTargetLabel != null) {
      json[r'activeTargetLabel'] = this.activeTargetLabel;
    } else {
      json[r'activeTargetLabel'] = null;
    }
    if (this.estimatedRemainingMs != null) {
      json[r'estimatedRemainingMs'] = this.estimatedRemainingMs;
    } else {
      json[r'estimatedRemainingMs'] = null;
    }
      json[r'configSnapshot'] = this.configSnapshot;
      json[r'errorSummary'] = this.errorSummary;
    return json;
  }

  /// Returns a new [DeliverabilitySimulationJobDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverabilitySimulationJobDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverabilitySimulationJobDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverabilitySimulationJobDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverabilitySimulationJobDto(
        id: mapValueOfType<String>(json, r'id')!,
        testId: mapValueOfType<String>(json, r'testId')!,
        scope: DeliverabilitySimulationJobDtoScopeEnum.fromJson(json[r'scope'])!,
        status: DeliverabilitySimulationJobDtoStatusEnum.fromJson(json[r'status'])!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        startedAt: mapDateTime(json, r'startedAt', ''),
        completedAt: mapDateTime(json, r'completedAt', ''),
        totalTargets: mapValueOfType<int>(json, r'totalTargets')!,
        totalPlannedSends: mapValueOfType<int>(json, r'totalPlannedSends')!,
        nextSendIndex: mapValueOfType<int>(json, r'nextSendIndex')!,
        sentCount: mapValueOfType<int>(json, r'sentCount')!,
        successCount: mapValueOfType<int>(json, r'successCount')!,
        failureCount: mapValueOfType<int>(json, r'failureCount')!,
        progressPercent: mapValueOfType<double>(json, r'progressPercent')!,
        activeTargetLabel: mapValueOfType<String>(json, r'activeTargetLabel'),
        estimatedRemainingMs: mapValueOfType<int>(json, r'estimatedRemainingMs'),
        configSnapshot: DeliverabilitySimulationJobConfigDto.fromJson(json[r'configSnapshot'])!,
        errorSummary: DeliverabilitySimulationJobErrorSummaryDto.fromJson(json[r'errorSummary'])!,
      );
    }
    return null;
  }

  static List<DeliverabilitySimulationJobDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilitySimulationJobDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilitySimulationJobDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverabilitySimulationJobDto> mapFromJson(dynamic json) {
    final map = <String, DeliverabilitySimulationJobDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverabilitySimulationJobDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverabilitySimulationJobDto-objects as value to a dart map
  static Map<String, List<DeliverabilitySimulationJobDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverabilitySimulationJobDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverabilitySimulationJobDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'testId',
    'scope',
    'status',
    'createdAt',
    'updatedAt',
    'totalTargets',
    'totalPlannedSends',
    'nextSendIndex',
    'sentCount',
    'successCount',
    'failureCount',
    'progressPercent',
    'configSnapshot',
    'errorSummary',
  };
}


class DeliverabilitySimulationJobDtoScopeEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverabilitySimulationJobDtoScopeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INBOX = DeliverabilitySimulationJobDtoScopeEnum._(r'INBOX');
  static const PHONE = DeliverabilitySimulationJobDtoScopeEnum._(r'PHONE');

  /// List of all possible values in this [enum][DeliverabilitySimulationJobDtoScopeEnum].
  static const values = <DeliverabilitySimulationJobDtoScopeEnum>[
    INBOX,
    PHONE,
  ];

  static DeliverabilitySimulationJobDtoScopeEnum? fromJson(dynamic value) => DeliverabilitySimulationJobDtoScopeEnumTypeTransformer().decode(value);

  static List<DeliverabilitySimulationJobDtoScopeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilitySimulationJobDtoScopeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilitySimulationJobDtoScopeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverabilitySimulationJobDtoScopeEnum] to String,
/// and [decode] dynamic data back to [DeliverabilitySimulationJobDtoScopeEnum].
class DeliverabilitySimulationJobDtoScopeEnumTypeTransformer {
  factory DeliverabilitySimulationJobDtoScopeEnumTypeTransformer() => _instance ??= const DeliverabilitySimulationJobDtoScopeEnumTypeTransformer._();

  const DeliverabilitySimulationJobDtoScopeEnumTypeTransformer._();

  String encode(DeliverabilitySimulationJobDtoScopeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverabilitySimulationJobDtoScopeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverabilitySimulationJobDtoScopeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INBOX': return DeliverabilitySimulationJobDtoScopeEnum.INBOX;
        case r'PHONE': return DeliverabilitySimulationJobDtoScopeEnum.PHONE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverabilitySimulationJobDtoScopeEnumTypeTransformer] instance.
  static DeliverabilitySimulationJobDtoScopeEnumTypeTransformer? _instance;
}



class DeliverabilitySimulationJobDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverabilitySimulationJobDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RUNNING = DeliverabilitySimulationJobDtoStatusEnum._(r'RUNNING');
  static const PAUSED = DeliverabilitySimulationJobDtoStatusEnum._(r'PAUSED');
  static const CANCELLED = DeliverabilitySimulationJobDtoStatusEnum._(r'CANCELLED');
  static const COMPLETED = DeliverabilitySimulationJobDtoStatusEnum._(r'COMPLETED');
  static const FAILED = DeliverabilitySimulationJobDtoStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][DeliverabilitySimulationJobDtoStatusEnum].
  static const values = <DeliverabilitySimulationJobDtoStatusEnum>[
    RUNNING,
    PAUSED,
    CANCELLED,
    COMPLETED,
    FAILED,
  ];

  static DeliverabilitySimulationJobDtoStatusEnum? fromJson(dynamic value) => DeliverabilitySimulationJobDtoStatusEnumTypeTransformer().decode(value);

  static List<DeliverabilitySimulationJobDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilitySimulationJobDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilitySimulationJobDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverabilitySimulationJobDtoStatusEnum] to String,
/// and [decode] dynamic data back to [DeliverabilitySimulationJobDtoStatusEnum].
class DeliverabilitySimulationJobDtoStatusEnumTypeTransformer {
  factory DeliverabilitySimulationJobDtoStatusEnumTypeTransformer() => _instance ??= const DeliverabilitySimulationJobDtoStatusEnumTypeTransformer._();

  const DeliverabilitySimulationJobDtoStatusEnumTypeTransformer._();

  String encode(DeliverabilitySimulationJobDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverabilitySimulationJobDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverabilitySimulationJobDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RUNNING': return DeliverabilitySimulationJobDtoStatusEnum.RUNNING;
        case r'PAUSED': return DeliverabilitySimulationJobDtoStatusEnum.PAUSED;
        case r'CANCELLED': return DeliverabilitySimulationJobDtoStatusEnum.CANCELLED;
        case r'COMPLETED': return DeliverabilitySimulationJobDtoStatusEnum.COMPLETED;
        case r'FAILED': return DeliverabilitySimulationJobDtoStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverabilitySimulationJobDtoStatusEnumTypeTransformer] instance.
  static DeliverabilitySimulationJobDtoStatusEnumTypeTransformer? _instance;
}


