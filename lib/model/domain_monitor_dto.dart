//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainMonitorDto {
  /// Returns a new [DomainMonitorDto] instance.
  DomainMonitorDto({
    required this.id,
    required this.userId,
    required this.domain,
    this.name,
    this.intervalSeconds,
    required this.enabled,
    required this.schedulingEnabled,
    this.lastStatus,
    this.healthScore,
    this.lastRunAt,
    this.nextRunAt,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String userId;

  String domain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? intervalSeconds;

  bool enabled;

  bool schedulingEnabled;

  DomainMonitorDtoLastStatusEnum? lastStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? healthScore;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastRunAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? nextRunAt;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainMonitorDto &&
     other.id == id &&
     other.userId == userId &&
     other.domain == domain &&
     other.name == name &&
     other.intervalSeconds == intervalSeconds &&
     other.enabled == enabled &&
     other.schedulingEnabled == schedulingEnabled &&
     other.lastStatus == lastStatus &&
     other.healthScore == healthScore &&
     other.lastRunAt == lastRunAt &&
     other.nextRunAt == nextRunAt &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (domain.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (intervalSeconds == null ? 0 : intervalSeconds!.hashCode) +
    (enabled.hashCode) +
    (schedulingEnabled.hashCode) +
    (lastStatus == null ? 0 : lastStatus!.hashCode) +
    (healthScore == null ? 0 : healthScore!.hashCode) +
    (lastRunAt == null ? 0 : lastRunAt!.hashCode) +
    (nextRunAt == null ? 0 : nextRunAt!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'DomainMonitorDto[id=$id, userId=$userId, domain=$domain, name=$name, intervalSeconds=$intervalSeconds, enabled=$enabled, schedulingEnabled=$schedulingEnabled, lastStatus=$lastStatus, healthScore=$healthScore, lastRunAt=$lastRunAt, nextRunAt=$nextRunAt, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'domain'] = this.domain;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.intervalSeconds != null) {
      json[r'intervalSeconds'] = this.intervalSeconds;
    } else {
      json[r'intervalSeconds'] = null;
    }
      json[r'enabled'] = this.enabled;
      json[r'schedulingEnabled'] = this.schedulingEnabled;
    if (this.lastStatus != null) {
      json[r'lastStatus'] = this.lastStatus;
    } else {
      json[r'lastStatus'] = null;
    }
    if (this.healthScore != null) {
      json[r'healthScore'] = this.healthScore;
    } else {
      json[r'healthScore'] = null;
    }
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

  /// Returns a new [DomainMonitorDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainMonitorDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainMonitorDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainMonitorDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainMonitorDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        domain: mapValueOfType<String>(json, r'domain')!,
        name: mapValueOfType<String>(json, r'name'),
        intervalSeconds: mapValueOfType<int>(json, r'intervalSeconds'),
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        schedulingEnabled: mapValueOfType<bool>(json, r'schedulingEnabled')!,
        lastStatus: DomainMonitorDtoLastStatusEnum.fromJson(json[r'lastStatus']),
        healthScore: mapValueOfType<int>(json, r'healthScore'),
        lastRunAt: mapDateTime(json, r'lastRunAt', ''),
        nextRunAt: mapDateTime(json, r'nextRunAt', ''),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<DomainMonitorDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainMonitorDto> mapFromJson(dynamic json) {
    final map = <String, DomainMonitorDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainMonitorDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainMonitorDto-objects as value to a dart map
  static Map<String, List<DomainMonitorDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainMonitorDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainMonitorDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'domain',
    'enabled',
    'schedulingEnabled',
    'createdAt',
    'updatedAt',
  };
}


class DomainMonitorDtoLastStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainMonitorDtoLastStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HEALTHY = DomainMonitorDtoLastStatusEnum._(r'HEALTHY');
  static const DEGRADED = DomainMonitorDtoLastStatusEnum._(r'DEGRADED');
  static const CRITICAL = DomainMonitorDtoLastStatusEnum._(r'CRITICAL');
  static const FAILED = DomainMonitorDtoLastStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][DomainMonitorDtoLastStatusEnum].
  static const values = <DomainMonitorDtoLastStatusEnum>[
    HEALTHY,
    DEGRADED,
    CRITICAL,
    FAILED,
  ];

  static DomainMonitorDtoLastStatusEnum? fromJson(dynamic value) => DomainMonitorDtoLastStatusEnumTypeTransformer().decode(value);

  static List<DomainMonitorDtoLastStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorDtoLastStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorDtoLastStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainMonitorDtoLastStatusEnum] to String,
/// and [decode] dynamic data back to [DomainMonitorDtoLastStatusEnum].
class DomainMonitorDtoLastStatusEnumTypeTransformer {
  factory DomainMonitorDtoLastStatusEnumTypeTransformer() => _instance ??= const DomainMonitorDtoLastStatusEnumTypeTransformer._();

  const DomainMonitorDtoLastStatusEnumTypeTransformer._();

  String encode(DomainMonitorDtoLastStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainMonitorDtoLastStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainMonitorDtoLastStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HEALTHY': return DomainMonitorDtoLastStatusEnum.HEALTHY;
        case r'DEGRADED': return DomainMonitorDtoLastStatusEnum.DEGRADED;
        case r'CRITICAL': return DomainMonitorDtoLastStatusEnum.CRITICAL;
        case r'FAILED': return DomainMonitorDtoLastStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainMonitorDtoLastStatusEnumTypeTransformer] instance.
  static DomainMonitorDtoLastStatusEnumTypeTransformer? _instance;
}


