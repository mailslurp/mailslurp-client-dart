//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainMonitorRunDto {
  /// Returns a new [DomainMonitorRunDto] instance.
  DomainMonitorRunDto({
    required this.id,
    required this.monitorId,
    required this.userId,
    required this.domain,
    required this.status,
    required this.triggerSource,
    required this.healthScore,
    required this.totalChecks,
    required this.passingChecks,
    required this.failingChecks,
    required this.spfOk,
    required this.dmarcOk,
    required this.dmarcEnforced,
    required this.mxOk,
    this.insights = const [],
    this.errorMessage,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String monitorId;

  String userId;

  String domain;

  DomainMonitorRunDtoStatusEnum status;

  DomainMonitorRunDtoTriggerSourceEnum triggerSource;

  int healthScore;

  int totalChecks;

  int passingChecks;

  int failingChecks;

  bool spfOk;

  bool dmarcOk;

  bool dmarcEnforced;

  bool mxOk;

  List<String> insights;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorMessage;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainMonitorRunDto &&
     other.id == id &&
     other.monitorId == monitorId &&
     other.userId == userId &&
     other.domain == domain &&
     other.status == status &&
     other.triggerSource == triggerSource &&
     other.healthScore == healthScore &&
     other.totalChecks == totalChecks &&
     other.passingChecks == passingChecks &&
     other.failingChecks == failingChecks &&
     other.spfOk == spfOk &&
     other.dmarcOk == dmarcOk &&
     other.dmarcEnforced == dmarcEnforced &&
     other.mxOk == mxOk &&
     other.insights == insights &&
     other.errorMessage == errorMessage &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (monitorId.hashCode) +
    (userId.hashCode) +
    (domain.hashCode) +
    (status.hashCode) +
    (triggerSource.hashCode) +
    (healthScore.hashCode) +
    (totalChecks.hashCode) +
    (passingChecks.hashCode) +
    (failingChecks.hashCode) +
    (spfOk.hashCode) +
    (dmarcOk.hashCode) +
    (dmarcEnforced.hashCode) +
    (mxOk.hashCode) +
    (insights.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'DomainMonitorRunDto[id=$id, monitorId=$monitorId, userId=$userId, domain=$domain, status=$status, triggerSource=$triggerSource, healthScore=$healthScore, totalChecks=$totalChecks, passingChecks=$passingChecks, failingChecks=$failingChecks, spfOk=$spfOk, dmarcOk=$dmarcOk, dmarcEnforced=$dmarcEnforced, mxOk=$mxOk, insights=$insights, errorMessage=$errorMessage, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'monitorId'] = this.monitorId;
      json[r'userId'] = this.userId;
      json[r'domain'] = this.domain;
      json[r'status'] = this.status;
      json[r'triggerSource'] = this.triggerSource;
      json[r'healthScore'] = this.healthScore;
      json[r'totalChecks'] = this.totalChecks;
      json[r'passingChecks'] = this.passingChecks;
      json[r'failingChecks'] = this.failingChecks;
      json[r'spfOk'] = this.spfOk;
      json[r'dmarcOk'] = this.dmarcOk;
      json[r'dmarcEnforced'] = this.dmarcEnforced;
      json[r'mxOk'] = this.mxOk;
      json[r'insights'] = this.insights;
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DomainMonitorRunDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainMonitorRunDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainMonitorRunDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainMonitorRunDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainMonitorRunDto(
        id: mapValueOfType<String>(json, r'id')!,
        monitorId: mapValueOfType<String>(json, r'monitorId')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        domain: mapValueOfType<String>(json, r'domain')!,
        status: DomainMonitorRunDtoStatusEnum.fromJson(json[r'status'])!,
        triggerSource: DomainMonitorRunDtoTriggerSourceEnum.fromJson(json[r'triggerSource'])!,
        healthScore: mapValueOfType<int>(json, r'healthScore')!,
        totalChecks: mapValueOfType<int>(json, r'totalChecks')!,
        passingChecks: mapValueOfType<int>(json, r'passingChecks')!,
        failingChecks: mapValueOfType<int>(json, r'failingChecks')!,
        spfOk: mapValueOfType<bool>(json, r'spfOk')!,
        dmarcOk: mapValueOfType<bool>(json, r'dmarcOk')!,
        dmarcEnforced: mapValueOfType<bool>(json, r'dmarcEnforced')!,
        mxOk: mapValueOfType<bool>(json, r'mxOk')!,
        insights: json[r'insights'] is List
            ? (json[r'insights'] as List).cast<String>()
            : const [],
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<DomainMonitorRunDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorRunDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorRunDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainMonitorRunDto> mapFromJson(dynamic json) {
    final map = <String, DomainMonitorRunDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainMonitorRunDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainMonitorRunDto-objects as value to a dart map
  static Map<String, List<DomainMonitorRunDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainMonitorRunDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainMonitorRunDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'monitorId',
    'userId',
    'domain',
    'status',
    'triggerSource',
    'healthScore',
    'totalChecks',
    'passingChecks',
    'failingChecks',
    'spfOk',
    'dmarcOk',
    'dmarcEnforced',
    'mxOk',
    'insights',
    'createdAt',
    'updatedAt',
  };
}


class DomainMonitorRunDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainMonitorRunDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HEALTHY = DomainMonitorRunDtoStatusEnum._(r'HEALTHY');
  static const DEGRADED = DomainMonitorRunDtoStatusEnum._(r'DEGRADED');
  static const CRITICAL = DomainMonitorRunDtoStatusEnum._(r'CRITICAL');
  static const FAILED = DomainMonitorRunDtoStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][DomainMonitorRunDtoStatusEnum].
  static const values = <DomainMonitorRunDtoStatusEnum>[
    HEALTHY,
    DEGRADED,
    CRITICAL,
    FAILED,
  ];

  static DomainMonitorRunDtoStatusEnum? fromJson(dynamic value) => DomainMonitorRunDtoStatusEnumTypeTransformer().decode(value);

  static List<DomainMonitorRunDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorRunDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorRunDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainMonitorRunDtoStatusEnum] to String,
/// and [decode] dynamic data back to [DomainMonitorRunDtoStatusEnum].
class DomainMonitorRunDtoStatusEnumTypeTransformer {
  factory DomainMonitorRunDtoStatusEnumTypeTransformer() => _instance ??= const DomainMonitorRunDtoStatusEnumTypeTransformer._();

  const DomainMonitorRunDtoStatusEnumTypeTransformer._();

  String encode(DomainMonitorRunDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainMonitorRunDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainMonitorRunDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HEALTHY': return DomainMonitorRunDtoStatusEnum.HEALTHY;
        case r'DEGRADED': return DomainMonitorRunDtoStatusEnum.DEGRADED;
        case r'CRITICAL': return DomainMonitorRunDtoStatusEnum.CRITICAL;
        case r'FAILED': return DomainMonitorRunDtoStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainMonitorRunDtoStatusEnumTypeTransformer] instance.
  static DomainMonitorRunDtoStatusEnumTypeTransformer? _instance;
}



class DomainMonitorRunDtoTriggerSourceEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainMonitorRunDtoTriggerSourceEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const API = DomainMonitorRunDtoTriggerSourceEnum._(r'API');
  static const USER_SCHEDULE = DomainMonitorRunDtoTriggerSourceEnum._(r'USER_SCHEDULE');
  static const CRON = DomainMonitorRunDtoTriggerSourceEnum._(r'CRON');
  static const SCHEDULER = DomainMonitorRunDtoTriggerSourceEnum._(r'SCHEDULER');

  /// List of all possible values in this [enum][DomainMonitorRunDtoTriggerSourceEnum].
  static const values = <DomainMonitorRunDtoTriggerSourceEnum>[
    API,
    USER_SCHEDULE,
    CRON,
    SCHEDULER,
  ];

  static DomainMonitorRunDtoTriggerSourceEnum? fromJson(dynamic value) => DomainMonitorRunDtoTriggerSourceEnumTypeTransformer().decode(value);

  static List<DomainMonitorRunDtoTriggerSourceEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorRunDtoTriggerSourceEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorRunDtoTriggerSourceEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainMonitorRunDtoTriggerSourceEnum] to String,
/// and [decode] dynamic data back to [DomainMonitorRunDtoTriggerSourceEnum].
class DomainMonitorRunDtoTriggerSourceEnumTypeTransformer {
  factory DomainMonitorRunDtoTriggerSourceEnumTypeTransformer() => _instance ??= const DomainMonitorRunDtoTriggerSourceEnumTypeTransformer._();

  const DomainMonitorRunDtoTriggerSourceEnumTypeTransformer._();

  String encode(DomainMonitorRunDtoTriggerSourceEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainMonitorRunDtoTriggerSourceEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainMonitorRunDtoTriggerSourceEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'API': return DomainMonitorRunDtoTriggerSourceEnum.API;
        case r'USER_SCHEDULE': return DomainMonitorRunDtoTriggerSourceEnum.USER_SCHEDULE;
        case r'CRON': return DomainMonitorRunDtoTriggerSourceEnum.CRON;
        case r'SCHEDULER': return DomainMonitorRunDtoTriggerSourceEnum.SCHEDULER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainMonitorRunDtoTriggerSourceEnumTypeTransformer] instance.
  static DomainMonitorRunDtoTriggerSourceEnumTypeTransformer? _instance;
}


