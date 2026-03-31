//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverabilityTestDto {
  /// Returns a new [DeliverabilityTestDto] instance.
  DeliverabilityTestDto({
    required this.id,
    this.name,
    this.description,
    required this.scope,
    required this.selector,
    required this.selectedEntityCount,
    this.expectations = const [],
    required this.status,
    required this.startAt,
    this.startedAt,
    this.completedAt,
    this.maxDurationSeconds,
    this.successThresholdPercent,
    required this.thresholdStatus,
    this.thresholdMet,
    this.lastEvaluatedAt,
    required this.totalEntities,
    required this.matchedEntities,
    required this.unmatchedEntities,
    required this.completionPercentage,
    required this.timedOut,
    this.failureReason,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String? name;

  String? description;

  DeliverabilityTestDtoScopeEnum scope;

  DeliverabilitySelectorOptions selector;

  int selectedEntityCount;

  List<DeliverabilityExpectation> expectations;

  DeliverabilityTestDtoStatusEnum status;

  DateTime startAt;

  DateTime? startedAt;

  DateTime? completedAt;

  int? maxDurationSeconds;

  double? successThresholdPercent;

  DeliverabilityTestDtoThresholdStatusEnum thresholdStatus;

  bool? thresholdMet;

  DateTime? lastEvaluatedAt;

  int totalEntities;

  int matchedEntities;

  int unmatchedEntities;

  double completionPercentage;

  bool timedOut;

  String? failureReason;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverabilityTestDto &&
     other.id == id &&
     other.name == name &&
     other.description == description &&
     other.scope == scope &&
     other.selector == selector &&
     other.selectedEntityCount == selectedEntityCount &&
     other.expectations == expectations &&
     other.status == status &&
     other.startAt == startAt &&
     other.startedAt == startedAt &&
     other.completedAt == completedAt &&
     other.maxDurationSeconds == maxDurationSeconds &&
     other.successThresholdPercent == successThresholdPercent &&
     other.thresholdStatus == thresholdStatus &&
     other.thresholdMet == thresholdMet &&
     other.lastEvaluatedAt == lastEvaluatedAt &&
     other.totalEntities == totalEntities &&
     other.matchedEntities == matchedEntities &&
     other.unmatchedEntities == unmatchedEntities &&
     other.completionPercentage == completionPercentage &&
     other.timedOut == timedOut &&
     other.failureReason == failureReason &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (scope.hashCode) +
    (selector.hashCode) +
    (selectedEntityCount.hashCode) +
    (expectations.hashCode) +
    (status.hashCode) +
    (startAt.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (completedAt == null ? 0 : completedAt!.hashCode) +
    (maxDurationSeconds == null ? 0 : maxDurationSeconds!.hashCode) +
    (successThresholdPercent == null ? 0 : successThresholdPercent!.hashCode) +
    (thresholdStatus.hashCode) +
    (thresholdMet == null ? 0 : thresholdMet!.hashCode) +
    (lastEvaluatedAt == null ? 0 : lastEvaluatedAt!.hashCode) +
    (totalEntities.hashCode) +
    (matchedEntities.hashCode) +
    (unmatchedEntities.hashCode) +
    (completionPercentage.hashCode) +
    (timedOut.hashCode) +
    (failureReason == null ? 0 : failureReason!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'DeliverabilityTestDto[id=$id, name=$name, description=$description, scope=$scope, selector=$selector, selectedEntityCount=$selectedEntityCount, expectations=$expectations, status=$status, startAt=$startAt, startedAt=$startedAt, completedAt=$completedAt, maxDurationSeconds=$maxDurationSeconds, successThresholdPercent=$successThresholdPercent, thresholdStatus=$thresholdStatus, thresholdMet=$thresholdMet, lastEvaluatedAt=$lastEvaluatedAt, totalEntities=$totalEntities, matchedEntities=$matchedEntities, unmatchedEntities=$unmatchedEntities, completionPercentage=$completionPercentage, timedOut=$timedOut, failureReason=$failureReason, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'scope'] = this.scope;
      json[r'selector'] = this.selector;
      json[r'selectedEntityCount'] = this.selectedEntityCount;
      json[r'expectations'] = this.expectations;
      json[r'status'] = this.status;
      json[r'startAt'] = this.startAt.toUtc().toIso8601String();
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
    if (this.maxDurationSeconds != null) {
      json[r'maxDurationSeconds'] = this.maxDurationSeconds;
    } else {
      json[r'maxDurationSeconds'] = null;
    }
    if (this.successThresholdPercent != null) {
      json[r'successThresholdPercent'] = this.successThresholdPercent;
    } else {
      json[r'successThresholdPercent'] = null;
    }
      json[r'thresholdStatus'] = this.thresholdStatus;
    if (this.thresholdMet != null) {
      json[r'thresholdMet'] = this.thresholdMet;
    } else {
      json[r'thresholdMet'] = null;
    }
    if (this.lastEvaluatedAt != null) {
      json[r'lastEvaluatedAt'] = this.lastEvaluatedAt!.toUtc().toIso8601String();
    } else {
      json[r'lastEvaluatedAt'] = null;
    }
      json[r'totalEntities'] = this.totalEntities;
      json[r'matchedEntities'] = this.matchedEntities;
      json[r'unmatchedEntities'] = this.unmatchedEntities;
      json[r'completionPercentage'] = this.completionPercentage;
      json[r'timedOut'] = this.timedOut;
    if (this.failureReason != null) {
      json[r'failureReason'] = this.failureReason;
    } else {
      json[r'failureReason'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DeliverabilityTestDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverabilityTestDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverabilityTestDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverabilityTestDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverabilityTestDto(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        scope: DeliverabilityTestDtoScopeEnum.fromJson(json[r'scope'])!,
        selector: DeliverabilitySelectorOptions.fromJson(json[r'selector'])!,
        selectedEntityCount: mapValueOfType<int>(json, r'selectedEntityCount')!,
        expectations: DeliverabilityExpectation.listFromJson(json[r'expectations']),
        status: DeliverabilityTestDtoStatusEnum.fromJson(json[r'status'])!,
        startAt: mapDateTime(json, r'startAt', '')!,
        startedAt: mapDateTime(json, r'startedAt', ''),
        completedAt: mapDateTime(json, r'completedAt', ''),
        maxDurationSeconds: mapValueOfType<int>(json, r'maxDurationSeconds'),
        successThresholdPercent: mapValueOfType<double>(json, r'successThresholdPercent'),
        thresholdStatus: DeliverabilityTestDtoThresholdStatusEnum.fromJson(json[r'thresholdStatus'])!,
        thresholdMet: mapValueOfType<bool>(json, r'thresholdMet'),
        lastEvaluatedAt: mapDateTime(json, r'lastEvaluatedAt', ''),
        totalEntities: mapValueOfType<int>(json, r'totalEntities')!,
        matchedEntities: mapValueOfType<int>(json, r'matchedEntities')!,
        unmatchedEntities: mapValueOfType<int>(json, r'unmatchedEntities')!,
        completionPercentage: mapValueOfType<double>(json, r'completionPercentage')!,
        timedOut: mapValueOfType<bool>(json, r'timedOut')!,
        failureReason: mapValueOfType<String>(json, r'failureReason'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<DeliverabilityTestDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityTestDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityTestDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverabilityTestDto> mapFromJson(dynamic json) {
    final map = <String, DeliverabilityTestDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverabilityTestDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverabilityTestDto-objects as value to a dart map
  static Map<String, List<DeliverabilityTestDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverabilityTestDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverabilityTestDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'scope',
    'selector',
    'selectedEntityCount',
    'expectations',
    'status',
    'startAt',
    'thresholdStatus',
    'totalEntities',
    'matchedEntities',
    'unmatchedEntities',
    'completionPercentage',
    'timedOut',
    'createdAt',
    'updatedAt',
  };
}


class DeliverabilityTestDtoScopeEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverabilityTestDtoScopeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INBOX = DeliverabilityTestDtoScopeEnum._(r'INBOX');
  static const PHONE = DeliverabilityTestDtoScopeEnum._(r'PHONE');

  /// List of all possible values in this [enum][DeliverabilityTestDtoScopeEnum].
  static const values = <DeliverabilityTestDtoScopeEnum>[
    INBOX,
    PHONE,
  ];

  static DeliverabilityTestDtoScopeEnum? fromJson(dynamic value) => DeliverabilityTestDtoScopeEnumTypeTransformer().decode(value);

  static List<DeliverabilityTestDtoScopeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityTestDtoScopeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityTestDtoScopeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverabilityTestDtoScopeEnum] to String,
/// and [decode] dynamic data back to [DeliverabilityTestDtoScopeEnum].
class DeliverabilityTestDtoScopeEnumTypeTransformer {
  factory DeliverabilityTestDtoScopeEnumTypeTransformer() => _instance ??= const DeliverabilityTestDtoScopeEnumTypeTransformer._();

  const DeliverabilityTestDtoScopeEnumTypeTransformer._();

  String encode(DeliverabilityTestDtoScopeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverabilityTestDtoScopeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverabilityTestDtoScopeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INBOX': return DeliverabilityTestDtoScopeEnum.INBOX;
        case r'PHONE': return DeliverabilityTestDtoScopeEnum.PHONE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverabilityTestDtoScopeEnumTypeTransformer] instance.
  static DeliverabilityTestDtoScopeEnumTypeTransformer? _instance;
}



class DeliverabilityTestDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverabilityTestDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CREATED = DeliverabilityTestDtoStatusEnum._(r'CREATED');
  static const SCHEDULED = DeliverabilityTestDtoStatusEnum._(r'SCHEDULED');
  static const RUNNING = DeliverabilityTestDtoStatusEnum._(r'RUNNING');
  static const PAUSED = DeliverabilityTestDtoStatusEnum._(r'PAUSED');
  static const STOPPED = DeliverabilityTestDtoStatusEnum._(r'STOPPED');
  static const COMPLETE = DeliverabilityTestDtoStatusEnum._(r'COMPLETE');
  static const FAILED = DeliverabilityTestDtoStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][DeliverabilityTestDtoStatusEnum].
  static const values = <DeliverabilityTestDtoStatusEnum>[
    CREATED,
    SCHEDULED,
    RUNNING,
    PAUSED,
    STOPPED,
    COMPLETE,
    FAILED,
  ];

  static DeliverabilityTestDtoStatusEnum? fromJson(dynamic value) => DeliverabilityTestDtoStatusEnumTypeTransformer().decode(value);

  static List<DeliverabilityTestDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityTestDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityTestDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverabilityTestDtoStatusEnum] to String,
/// and [decode] dynamic data back to [DeliverabilityTestDtoStatusEnum].
class DeliverabilityTestDtoStatusEnumTypeTransformer {
  factory DeliverabilityTestDtoStatusEnumTypeTransformer() => _instance ??= const DeliverabilityTestDtoStatusEnumTypeTransformer._();

  const DeliverabilityTestDtoStatusEnumTypeTransformer._();

  String encode(DeliverabilityTestDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverabilityTestDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverabilityTestDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CREATED': return DeliverabilityTestDtoStatusEnum.CREATED;
        case r'SCHEDULED': return DeliverabilityTestDtoStatusEnum.SCHEDULED;
        case r'RUNNING': return DeliverabilityTestDtoStatusEnum.RUNNING;
        case r'PAUSED': return DeliverabilityTestDtoStatusEnum.PAUSED;
        case r'STOPPED': return DeliverabilityTestDtoStatusEnum.STOPPED;
        case r'COMPLETE': return DeliverabilityTestDtoStatusEnum.COMPLETE;
        case r'FAILED': return DeliverabilityTestDtoStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverabilityTestDtoStatusEnumTypeTransformer] instance.
  static DeliverabilityTestDtoStatusEnumTypeTransformer? _instance;
}



class DeliverabilityTestDtoThresholdStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverabilityTestDtoThresholdStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NOT_CONFIGURED = DeliverabilityTestDtoThresholdStatusEnum._(r'NOT_CONFIGURED');
  static const PASSING = DeliverabilityTestDtoThresholdStatusEnum._(r'PASSING');
  static const FAILING = DeliverabilityTestDtoThresholdStatusEnum._(r'FAILING');

  /// List of all possible values in this [enum][DeliverabilityTestDtoThresholdStatusEnum].
  static const values = <DeliverabilityTestDtoThresholdStatusEnum>[
    NOT_CONFIGURED,
    PASSING,
    FAILING,
  ];

  static DeliverabilityTestDtoThresholdStatusEnum? fromJson(dynamic value) => DeliverabilityTestDtoThresholdStatusEnumTypeTransformer().decode(value);

  static List<DeliverabilityTestDtoThresholdStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityTestDtoThresholdStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityTestDtoThresholdStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverabilityTestDtoThresholdStatusEnum] to String,
/// and [decode] dynamic data back to [DeliverabilityTestDtoThresholdStatusEnum].
class DeliverabilityTestDtoThresholdStatusEnumTypeTransformer {
  factory DeliverabilityTestDtoThresholdStatusEnumTypeTransformer() => _instance ??= const DeliverabilityTestDtoThresholdStatusEnumTypeTransformer._();

  const DeliverabilityTestDtoThresholdStatusEnumTypeTransformer._();

  String encode(DeliverabilityTestDtoThresholdStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverabilityTestDtoThresholdStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverabilityTestDtoThresholdStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NOT_CONFIGURED': return DeliverabilityTestDtoThresholdStatusEnum.NOT_CONFIGURED;
        case r'PASSING': return DeliverabilityTestDtoThresholdStatusEnum.PASSING;
        case r'FAILING': return DeliverabilityTestDtoThresholdStatusEnum.FAILING;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverabilityTestDtoThresholdStatusEnumTypeTransformer] instance.
  static DeliverabilityTestDtoThresholdStatusEnumTypeTransformer? _instance;
}


