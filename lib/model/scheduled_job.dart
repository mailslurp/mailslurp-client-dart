//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScheduledJob {
  /// Returns a new [ScheduledJob] instance.
  ScheduledJob({
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

  ScheduledJobStatusEnum status;

  DateTime sendAtTimestamp;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScheduledJob &&
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
  String toString() => 'ScheduledJob[id=$id, userId=$userId, inboxId=$inboxId, jobId=$jobId, groupId=$groupId, triggerId=$triggerId, status=$status, sendAtTimestamp=$sendAtTimestamp, createdAt=$createdAt, updatedAt=$updatedAt]';

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

  /// Returns a new [ScheduledJob] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScheduledJob? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScheduledJob[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScheduledJob[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScheduledJob(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        jobId: mapValueOfType<String>(json, r'jobId')!,
        groupId: mapValueOfType<String>(json, r'groupId')!,
        triggerId: mapValueOfType<String>(json, r'triggerId')!,
        status: ScheduledJobStatusEnum.fromJson(json[r'status'])!,
        sendAtTimestamp: mapDateTime(json, r'sendAtTimestamp', '')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<ScheduledJob> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduledJob>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduledJob.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScheduledJob> mapFromJson(dynamic json) {
    final map = <String, ScheduledJob>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScheduledJob.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScheduledJob-objects as value to a dart map
  static Map<String, List<ScheduledJob>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScheduledJob>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScheduledJob.listFromJson(entry.value, growable: growable,);
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


class ScheduledJobStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ScheduledJobStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUBMITTED = ScheduledJobStatusEnum._(r'SUBMITTED');
  static const COMPLETED = ScheduledJobStatusEnum._(r'COMPLETED');
  static const FAILED = ScheduledJobStatusEnum._(r'FAILED');
  static const CANCELLED = ScheduledJobStatusEnum._(r'CANCELLED');

  /// List of all possible values in this [enum][ScheduledJobStatusEnum].
  static const values = <ScheduledJobStatusEnum>[
    SUBMITTED,
    COMPLETED,
    FAILED,
    CANCELLED,
  ];

  static ScheduledJobStatusEnum? fromJson(dynamic value) => ScheduledJobStatusEnumTypeTransformer().decode(value);

  static List<ScheduledJobStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduledJobStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduledJobStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScheduledJobStatusEnum] to String,
/// and [decode] dynamic data back to [ScheduledJobStatusEnum].
class ScheduledJobStatusEnumTypeTransformer {
  factory ScheduledJobStatusEnumTypeTransformer() => _instance ??= const ScheduledJobStatusEnumTypeTransformer._();

  const ScheduledJobStatusEnumTypeTransformer._();

  String encode(ScheduledJobStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ScheduledJobStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScheduledJobStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUBMITTED': return ScheduledJobStatusEnum.SUBMITTED;
        case r'COMPLETED': return ScheduledJobStatusEnum.COMPLETED;
        case r'FAILED': return ScheduledJobStatusEnum.FAILED;
        case r'CANCELLED': return ScheduledJobStatusEnum.CANCELLED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScheduledJobStatusEnumTypeTransformer] instance.
  static ScheduledJobStatusEnumTypeTransformer? _instance;
}


