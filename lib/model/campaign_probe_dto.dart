//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CampaignProbeDto {
  /// Returns a new [CampaignProbeDto] instance.
  CampaignProbeDto({
    required this.id,
    required this.userId,
    this.name,
    required this.localPart,
    required this.emailAddress,
    required this.enabled,
    this.intervalSeconds,
    required this.schedulingEnabled,
    this.nextRunAt,
    this.lastRunStatus,
    this.lastHealthScore,
    this.lastIngestAt,
    required this.totalIngestCount,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  String localPart;

  String emailAddress;

  bool enabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? intervalSeconds;

  bool schedulingEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? nextRunAt;

  CampaignProbeDtoLastRunStatusEnum? lastRunStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastHealthScore;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastIngestAt;

  int totalIngestCount;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CampaignProbeDto &&
     other.id == id &&
     other.userId == userId &&
     other.name == name &&
     other.localPart == localPart &&
     other.emailAddress == emailAddress &&
     other.enabled == enabled &&
     other.intervalSeconds == intervalSeconds &&
     other.schedulingEnabled == schedulingEnabled &&
     other.nextRunAt == nextRunAt &&
     other.lastRunStatus == lastRunStatus &&
     other.lastHealthScore == lastHealthScore &&
     other.lastIngestAt == lastIngestAt &&
     other.totalIngestCount == totalIngestCount &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (localPart.hashCode) +
    (emailAddress.hashCode) +
    (enabled.hashCode) +
    (intervalSeconds == null ? 0 : intervalSeconds!.hashCode) +
    (schedulingEnabled.hashCode) +
    (nextRunAt == null ? 0 : nextRunAt!.hashCode) +
    (lastRunStatus == null ? 0 : lastRunStatus!.hashCode) +
    (lastHealthScore == null ? 0 : lastHealthScore!.hashCode) +
    (lastIngestAt == null ? 0 : lastIngestAt!.hashCode) +
    (totalIngestCount.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'CampaignProbeDto[id=$id, userId=$userId, name=$name, localPart=$localPart, emailAddress=$emailAddress, enabled=$enabled, intervalSeconds=$intervalSeconds, schedulingEnabled=$schedulingEnabled, nextRunAt=$nextRunAt, lastRunStatus=$lastRunStatus, lastHealthScore=$lastHealthScore, lastIngestAt=$lastIngestAt, totalIngestCount=$totalIngestCount, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'localPart'] = this.localPart;
      json[r'emailAddress'] = this.emailAddress;
      json[r'enabled'] = this.enabled;
    if (this.intervalSeconds != null) {
      json[r'intervalSeconds'] = this.intervalSeconds;
    } else {
      json[r'intervalSeconds'] = null;
    }
      json[r'schedulingEnabled'] = this.schedulingEnabled;
    if (this.nextRunAt != null) {
      json[r'nextRunAt'] = this.nextRunAt!.toUtc().toIso8601String();
    } else {
      json[r'nextRunAt'] = null;
    }
    if (this.lastRunStatus != null) {
      json[r'lastRunStatus'] = this.lastRunStatus;
    } else {
      json[r'lastRunStatus'] = null;
    }
    if (this.lastHealthScore != null) {
      json[r'lastHealthScore'] = this.lastHealthScore;
    } else {
      json[r'lastHealthScore'] = null;
    }
    if (this.lastIngestAt != null) {
      json[r'lastIngestAt'] = this.lastIngestAt!.toUtc().toIso8601String();
    } else {
      json[r'lastIngestAt'] = null;
    }
      json[r'totalIngestCount'] = this.totalIngestCount;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [CampaignProbeDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CampaignProbeDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CampaignProbeDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CampaignProbeDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CampaignProbeDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        name: mapValueOfType<String>(json, r'name'),
        localPart: mapValueOfType<String>(json, r'localPart')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        intervalSeconds: mapValueOfType<int>(json, r'intervalSeconds'),
        schedulingEnabled: mapValueOfType<bool>(json, r'schedulingEnabled')!,
        nextRunAt: mapDateTime(json, r'nextRunAt', ''),
        lastRunStatus: CampaignProbeDtoLastRunStatusEnum.fromJson(json[r'lastRunStatus']),
        lastHealthScore: mapValueOfType<int>(json, r'lastHealthScore'),
        lastIngestAt: mapDateTime(json, r'lastIngestAt', ''),
        totalIngestCount: mapValueOfType<int>(json, r'totalIngestCount')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<CampaignProbeDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignProbeDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignProbeDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CampaignProbeDto> mapFromJson(dynamic json) {
    final map = <String, CampaignProbeDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CampaignProbeDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CampaignProbeDto-objects as value to a dart map
  static Map<String, List<CampaignProbeDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CampaignProbeDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CampaignProbeDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'localPart',
    'emailAddress',
    'enabled',
    'schedulingEnabled',
    'totalIngestCount',
    'createdAt',
    'updatedAt',
  };
}


class CampaignProbeDtoLastRunStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const CampaignProbeDtoLastRunStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HEALTHY = CampaignProbeDtoLastRunStatusEnum._(r'HEALTHY');
  static const WARNING = CampaignProbeDtoLastRunStatusEnum._(r'WARNING');
  static const FAILED = CampaignProbeDtoLastRunStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][CampaignProbeDtoLastRunStatusEnum].
  static const values = <CampaignProbeDtoLastRunStatusEnum>[
    HEALTHY,
    WARNING,
    FAILED,
  ];

  static CampaignProbeDtoLastRunStatusEnum? fromJson(dynamic value) => CampaignProbeDtoLastRunStatusEnumTypeTransformer().decode(value);

  static List<CampaignProbeDtoLastRunStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignProbeDtoLastRunStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignProbeDtoLastRunStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CampaignProbeDtoLastRunStatusEnum] to String,
/// and [decode] dynamic data back to [CampaignProbeDtoLastRunStatusEnum].
class CampaignProbeDtoLastRunStatusEnumTypeTransformer {
  factory CampaignProbeDtoLastRunStatusEnumTypeTransformer() => _instance ??= const CampaignProbeDtoLastRunStatusEnumTypeTransformer._();

  const CampaignProbeDtoLastRunStatusEnumTypeTransformer._();

  String encode(CampaignProbeDtoLastRunStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CampaignProbeDtoLastRunStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CampaignProbeDtoLastRunStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HEALTHY': return CampaignProbeDtoLastRunStatusEnum.HEALTHY;
        case r'WARNING': return CampaignProbeDtoLastRunStatusEnum.WARNING;
        case r'FAILED': return CampaignProbeDtoLastRunStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CampaignProbeDtoLastRunStatusEnumTypeTransformer] instance.
  static CampaignProbeDtoLastRunStatusEnumTypeTransformer? _instance;
}


