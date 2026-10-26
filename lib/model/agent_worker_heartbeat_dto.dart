//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgentWorkerHeartbeatDto {
  /// Returns a new [AgentWorkerHeartbeatDto] instance.
  AgentWorkerHeartbeatDto({
    required this.id,
    required this.connectionId,
    required this.workerId,
    required this.instanceId,
    this.release,
    required this.firstSeenAt,
    required this.lastSeenAt,
    required this.staleAfter,
    required this.status,
  });

  String id;

  String connectionId;

  String workerId;

  String instanceId;

  String? release;

  DateTime firstSeenAt;

  DateTime lastSeenAt;

  DateTime staleAfter;

  AgentWorkerHeartbeatDtoStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentWorkerHeartbeatDto &&
     other.id == id &&
     other.connectionId == connectionId &&
     other.workerId == workerId &&
     other.instanceId == instanceId &&
     other.release == release &&
     other.firstSeenAt == firstSeenAt &&
     other.lastSeenAt == lastSeenAt &&
     other.staleAfter == staleAfter &&
     other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (connectionId.hashCode) +
    (workerId.hashCode) +
    (instanceId.hashCode) +
    (release == null ? 0 : release!.hashCode) +
    (firstSeenAt.hashCode) +
    (lastSeenAt.hashCode) +
    (staleAfter.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'AgentWorkerHeartbeatDto[id=$id, connectionId=$connectionId, workerId=$workerId, instanceId=$instanceId, release=$release, firstSeenAt=$firstSeenAt, lastSeenAt=$lastSeenAt, staleAfter=$staleAfter, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'connectionId'] = this.connectionId;
      json[r'workerId'] = this.workerId;
      json[r'instanceId'] = this.instanceId;
    if (this.release != null) {
      json[r'release'] = this.release;
    } else {
      json[r'release'] = null;
    }
      json[r'firstSeenAt'] = this.firstSeenAt.toUtc().toIso8601String();
      json[r'lastSeenAt'] = this.lastSeenAt.toUtc().toIso8601String();
      json[r'staleAfter'] = this.staleAfter.toUtc().toIso8601String();
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [AgentWorkerHeartbeatDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentWorkerHeartbeatDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentWorkerHeartbeatDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentWorkerHeartbeatDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentWorkerHeartbeatDto(
        id: mapValueOfType<String>(json, r'id')!,
        connectionId: mapValueOfType<String>(json, r'connectionId')!,
        workerId: mapValueOfType<String>(json, r'workerId')!,
        instanceId: mapValueOfType<String>(json, r'instanceId')!,
        release: mapValueOfType<String>(json, r'release'),
        firstSeenAt: mapDateTime(json, r'firstSeenAt', '')!,
        lastSeenAt: mapDateTime(json, r'lastSeenAt', '')!,
        staleAfter: mapDateTime(json, r'staleAfter', '')!,
        status: AgentWorkerHeartbeatDtoStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<AgentWorkerHeartbeatDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentWorkerHeartbeatDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentWorkerHeartbeatDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentWorkerHeartbeatDto> mapFromJson(dynamic json) {
    final map = <String, AgentWorkerHeartbeatDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentWorkerHeartbeatDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentWorkerHeartbeatDto-objects as value to a dart map
  static Map<String, List<AgentWorkerHeartbeatDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentWorkerHeartbeatDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentWorkerHeartbeatDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'connectionId',
    'workerId',
    'instanceId',
    'firstSeenAt',
    'lastSeenAt',
    'staleAfter',
    'status',
  };
}


class AgentWorkerHeartbeatDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AgentWorkerHeartbeatDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ONLINE = AgentWorkerHeartbeatDtoStatusEnum._(r'ONLINE');
  static const STALE = AgentWorkerHeartbeatDtoStatusEnum._(r'STALE');

  /// List of all possible values in this [enum][AgentWorkerHeartbeatDtoStatusEnum].
  static const values = <AgentWorkerHeartbeatDtoStatusEnum>[
    ONLINE,
    STALE,
  ];

  static AgentWorkerHeartbeatDtoStatusEnum? fromJson(dynamic value) => AgentWorkerHeartbeatDtoStatusEnumTypeTransformer().decode(value);

  static List<AgentWorkerHeartbeatDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentWorkerHeartbeatDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentWorkerHeartbeatDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AgentWorkerHeartbeatDtoStatusEnum] to String,
/// and [decode] dynamic data back to [AgentWorkerHeartbeatDtoStatusEnum].
class AgentWorkerHeartbeatDtoStatusEnumTypeTransformer {
  factory AgentWorkerHeartbeatDtoStatusEnumTypeTransformer() => _instance ??= const AgentWorkerHeartbeatDtoStatusEnumTypeTransformer._();

  const AgentWorkerHeartbeatDtoStatusEnumTypeTransformer._();

  String encode(AgentWorkerHeartbeatDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AgentWorkerHeartbeatDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AgentWorkerHeartbeatDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ONLINE': return AgentWorkerHeartbeatDtoStatusEnum.ONLINE;
        case r'STALE': return AgentWorkerHeartbeatDtoStatusEnum.STALE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AgentWorkerHeartbeatDtoStatusEnumTypeTransformer] instance.
  static AgentWorkerHeartbeatDtoStatusEnumTypeTransformer? _instance;
}


