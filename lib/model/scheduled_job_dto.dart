//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScheduledJobDto {
  /// Returns a new [ScheduledJobDto] instance.
  ScheduledJobDto({
    required this.id,
    required this.userId,
    required this.inboxId,
    required this.jobId,
    required this.groupId,
    required this.triggerId,
    required this.status,
    required this.sendAtTimestamp,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String userId;

  String inboxId;

  String jobId;

  String groupId;

  String triggerId;

  ScheduledJobDtoStatusEnum status;

  DateTime sendAtTimestamp;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScheduledJobDto &&
     other.id == id &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.jobId == jobId &&
     other.groupId == groupId &&
     other.triggerId == triggerId &&
     other.status == status &&
     other.sendAtTimestamp == sendAtTimestamp &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (inboxId.hashCode) +
    (jobId.hashCode) +
    (groupId.hashCode) +
    (triggerId.hashCode) +
    (status.hashCode) +
    (sendAtTimestamp.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'ScheduledJobDto[id=$id, userId=$userId, inboxId=$inboxId, jobId=$jobId, groupId=$groupId, triggerId=$triggerId, status=$status, sendAtTimestamp=$sendAtTimestamp, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'inboxId'] = this.inboxId;
      json[r'jobId'] = this.jobId;
      json[r'groupId'] = this.groupId;
      json[r'triggerId'] = this.triggerId;
      json[r'status'] = this.status;
      json[r'sendAtTimestamp'] = this.sendAtTimestamp.toUtc().toIso8601String();
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ScheduledJobDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScheduledJobDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScheduledJobDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScheduledJobDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScheduledJobDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        jobId: mapValueOfType<String>(json, r'jobId')!,
        groupId: mapValueOfType<String>(json, r'groupId')!,
        triggerId: mapValueOfType<String>(json, r'triggerId')!,
        status: ScheduledJobDtoStatusEnum.fromJson(json[r'status'])!,
        sendAtTimestamp: mapDateTime(json, r'sendAtTimestamp', '')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<ScheduledJobDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduledJobDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduledJobDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScheduledJobDto> mapFromJson(dynamic json) {
    final map = <String, ScheduledJobDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScheduledJobDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScheduledJobDto-objects as value to a dart map
  static Map<String, List<ScheduledJobDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScheduledJobDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScheduledJobDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'inboxId',
    'jobId',
    'groupId',
    'triggerId',
    'status',
    'sendAtTimestamp',
    'createdAt',
    'updatedAt',
  };
}


class ScheduledJobDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ScheduledJobDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUBMITTED = ScheduledJobDtoStatusEnum._(r'SUBMITTED');
  static const COMPLETED = ScheduledJobDtoStatusEnum._(r'COMPLETED');
  static const ABORTED = ScheduledJobDtoStatusEnum._(r'ABORTED');
  static const FAILED = ScheduledJobDtoStatusEnum._(r'FAILED');
  static const CANCELLED = ScheduledJobDtoStatusEnum._(r'CANCELLED');

  /// List of all possible values in this [enum][ScheduledJobDtoStatusEnum].
  static const values = <ScheduledJobDtoStatusEnum>[
    SUBMITTED,
    COMPLETED,
    ABORTED,
    FAILED,
    CANCELLED,
  ];

  static ScheduledJobDtoStatusEnum? fromJson(dynamic value) => ScheduledJobDtoStatusEnumTypeTransformer().decode(value);

  static List<ScheduledJobDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduledJobDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduledJobDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScheduledJobDtoStatusEnum] to String,
/// and [decode] dynamic data back to [ScheduledJobDtoStatusEnum].
class ScheduledJobDtoStatusEnumTypeTransformer {
  factory ScheduledJobDtoStatusEnumTypeTransformer() => _instance ??= const ScheduledJobDtoStatusEnumTypeTransformer._();

  const ScheduledJobDtoStatusEnumTypeTransformer._();

  String encode(ScheduledJobDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ScheduledJobDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScheduledJobDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUBMITTED': return ScheduledJobDtoStatusEnum.SUBMITTED;
        case r'COMPLETED': return ScheduledJobDtoStatusEnum.COMPLETED;
        case r'ABORTED': return ScheduledJobDtoStatusEnum.ABORTED;
        case r'FAILED': return ScheduledJobDtoStatusEnum.FAILED;
        case r'CANCELLED': return ScheduledJobDtoStatusEnum.CANCELLED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScheduledJobDtoStatusEnumTypeTransformer] instance.
  static ScheduledJobDtoStatusEnumTypeTransformer? _instance;
}


