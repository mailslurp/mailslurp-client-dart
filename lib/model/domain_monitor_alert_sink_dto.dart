//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainMonitorAlertSinkDto {
  /// Returns a new [DomainMonitorAlertSinkDto] instance.
  DomainMonitorAlertSinkDto({
    required this.id,
    required this.monitorId,
    required this.userId,
    required this.type,
    required this.target,
    required this.severityThreshold,
    required this.enabled,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String monitorId;

  String userId;

  DomainMonitorAlertSinkDtoTypeEnum type;

  String target;

  DomainMonitorAlertSinkDtoSeverityThresholdEnum severityThreshold;

  bool enabled;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainMonitorAlertSinkDto &&
     other.id == id &&
     other.monitorId == monitorId &&
     other.userId == userId &&
     other.type == type &&
     other.target == target &&
     other.severityThreshold == severityThreshold &&
     other.enabled == enabled &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (monitorId.hashCode) +
    (userId.hashCode) +
    (type.hashCode) +
    (target.hashCode) +
    (severityThreshold.hashCode) +
    (enabled.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'DomainMonitorAlertSinkDto[id=$id, monitorId=$monitorId, userId=$userId, type=$type, target=$target, severityThreshold=$severityThreshold, enabled=$enabled, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'monitorId'] = this.monitorId;
      json[r'userId'] = this.userId;
      json[r'type'] = this.type;
      json[r'target'] = this.target;
      json[r'severityThreshold'] = this.severityThreshold;
      json[r'enabled'] = this.enabled;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DomainMonitorAlertSinkDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainMonitorAlertSinkDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainMonitorAlertSinkDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainMonitorAlertSinkDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainMonitorAlertSinkDto(
        id: mapValueOfType<String>(json, r'id')!,
        monitorId: mapValueOfType<String>(json, r'monitorId')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        type: DomainMonitorAlertSinkDtoTypeEnum.fromJson(json[r'type'])!,
        target: mapValueOfType<String>(json, r'target')!,
        severityThreshold: DomainMonitorAlertSinkDtoSeverityThresholdEnum.fromJson(json[r'severityThreshold'])!,
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<DomainMonitorAlertSinkDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorAlertSinkDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorAlertSinkDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainMonitorAlertSinkDto> mapFromJson(dynamic json) {
    final map = <String, DomainMonitorAlertSinkDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainMonitorAlertSinkDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainMonitorAlertSinkDto-objects as value to a dart map
  static Map<String, List<DomainMonitorAlertSinkDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainMonitorAlertSinkDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainMonitorAlertSinkDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'monitorId',
    'userId',
    'type',
    'target',
    'severityThreshold',
    'enabled',
    'createdAt',
    'updatedAt',
  };
}


class DomainMonitorAlertSinkDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainMonitorAlertSinkDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL = DomainMonitorAlertSinkDtoTypeEnum._(r'EMAIL');
  static const WEBHOOK = DomainMonitorAlertSinkDtoTypeEnum._(r'WEBHOOK');
  static const SLACK = DomainMonitorAlertSinkDtoTypeEnum._(r'SLACK');
  static const TEAMS = DomainMonitorAlertSinkDtoTypeEnum._(r'TEAMS');

  /// List of all possible values in this [enum][DomainMonitorAlertSinkDtoTypeEnum].
  static const values = <DomainMonitorAlertSinkDtoTypeEnum>[
    EMAIL,
    WEBHOOK,
    SLACK,
    TEAMS,
  ];

  static DomainMonitorAlertSinkDtoTypeEnum? fromJson(dynamic value) => DomainMonitorAlertSinkDtoTypeEnumTypeTransformer().decode(value);

  static List<DomainMonitorAlertSinkDtoTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorAlertSinkDtoTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorAlertSinkDtoTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainMonitorAlertSinkDtoTypeEnum] to String,
/// and [decode] dynamic data back to [DomainMonitorAlertSinkDtoTypeEnum].
class DomainMonitorAlertSinkDtoTypeEnumTypeTransformer {
  factory DomainMonitorAlertSinkDtoTypeEnumTypeTransformer() => _instance ??= const DomainMonitorAlertSinkDtoTypeEnumTypeTransformer._();

  const DomainMonitorAlertSinkDtoTypeEnumTypeTransformer._();

  String encode(DomainMonitorAlertSinkDtoTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainMonitorAlertSinkDtoTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainMonitorAlertSinkDtoTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EMAIL': return DomainMonitorAlertSinkDtoTypeEnum.EMAIL;
        case r'WEBHOOK': return DomainMonitorAlertSinkDtoTypeEnum.WEBHOOK;
        case r'SLACK': return DomainMonitorAlertSinkDtoTypeEnum.SLACK;
        case r'TEAMS': return DomainMonitorAlertSinkDtoTypeEnum.TEAMS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainMonitorAlertSinkDtoTypeEnumTypeTransformer] instance.
  static DomainMonitorAlertSinkDtoTypeEnumTypeTransformer? _instance;
}



class DomainMonitorAlertSinkDtoSeverityThresholdEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainMonitorAlertSinkDtoSeverityThresholdEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LOW = DomainMonitorAlertSinkDtoSeverityThresholdEnum._(r'LOW');
  static const MEDIUM = DomainMonitorAlertSinkDtoSeverityThresholdEnum._(r'MEDIUM');
  static const HIGH = DomainMonitorAlertSinkDtoSeverityThresholdEnum._(r'HIGH');
  static const CRITICAL = DomainMonitorAlertSinkDtoSeverityThresholdEnum._(r'CRITICAL');

  /// List of all possible values in this [enum][DomainMonitorAlertSinkDtoSeverityThresholdEnum].
  static const values = <DomainMonitorAlertSinkDtoSeverityThresholdEnum>[
    LOW,
    MEDIUM,
    HIGH,
    CRITICAL,
  ];

  static DomainMonitorAlertSinkDtoSeverityThresholdEnum? fromJson(dynamic value) => DomainMonitorAlertSinkDtoSeverityThresholdEnumTypeTransformer().decode(value);

  static List<DomainMonitorAlertSinkDtoSeverityThresholdEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorAlertSinkDtoSeverityThresholdEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorAlertSinkDtoSeverityThresholdEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainMonitorAlertSinkDtoSeverityThresholdEnum] to String,
/// and [decode] dynamic data back to [DomainMonitorAlertSinkDtoSeverityThresholdEnum].
class DomainMonitorAlertSinkDtoSeverityThresholdEnumTypeTransformer {
  factory DomainMonitorAlertSinkDtoSeverityThresholdEnumTypeTransformer() => _instance ??= const DomainMonitorAlertSinkDtoSeverityThresholdEnumTypeTransformer._();

  const DomainMonitorAlertSinkDtoSeverityThresholdEnumTypeTransformer._();

  String encode(DomainMonitorAlertSinkDtoSeverityThresholdEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainMonitorAlertSinkDtoSeverityThresholdEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainMonitorAlertSinkDtoSeverityThresholdEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LOW': return DomainMonitorAlertSinkDtoSeverityThresholdEnum.LOW;
        case r'MEDIUM': return DomainMonitorAlertSinkDtoSeverityThresholdEnum.MEDIUM;
        case r'HIGH': return DomainMonitorAlertSinkDtoSeverityThresholdEnum.HIGH;
        case r'CRITICAL': return DomainMonitorAlertSinkDtoSeverityThresholdEnum.CRITICAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainMonitorAlertSinkDtoSeverityThresholdEnumTypeTransformer] instance.
  static DomainMonitorAlertSinkDtoSeverityThresholdEnumTypeTransformer? _instance;
}


