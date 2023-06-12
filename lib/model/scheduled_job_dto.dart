//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScheduledJobDto {
  /// Returns a new [ScheduledJobDto] instance.
  ScheduledJobDto({
    @required this.id,
    @required this.userId,
    @required this.inboxId,
    @required this.jobId,
    @required this.groupId,
    @required this.triggerId,
    @required this.status,
    @required this.sendAtTimestamp,
    @required this.createdAt,
    @required this.updatedAt,
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
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (jobId == null ? 0 : jobId.hashCode) +
    (groupId == null ? 0 : groupId.hashCode) +
    (triggerId == null ? 0 : triggerId.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (sendAtTimestamp == null ? 0 : sendAtTimestamp.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'ScheduledJobDto[id=$id, userId=$userId, inboxId=$inboxId, jobId=$jobId, groupId=$groupId, triggerId=$triggerId, status=$status, sendAtTimestamp=$sendAtTimestamp, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'userId'] = userId;
      json[r'inboxId'] = inboxId;
      json[r'jobId'] = jobId;
      json[r'groupId'] = groupId;
      json[r'triggerId'] = triggerId;
      json[r'status'] = status;
      json[r'sendAtTimestamp'] = sendAtTimestamp.toUtc().toIso8601String();
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ScheduledJobDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ScheduledJobDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ScheduledJobDto(
        id: json[r'id'],
        userId: json[r'userId'],
        inboxId: json[r'inboxId'],
        jobId: json[r'jobId'],
        groupId: json[r'groupId'],
        triggerId: json[r'triggerId'],
        status: ScheduledJobDtoStatusEnum.fromJson(json[r'status']),
        sendAtTimestamp: json[r'sendAtTimestamp'] == null
          ? null
          : DateTime.parse(json[r'sendAtTimestamp']),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
    );

  static List<ScheduledJobDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ScheduledJobDto>[]
      : json.map((v) => ScheduledJobDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, ScheduledJobDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ScheduledJobDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ScheduledJobDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ScheduledJobDto-objects as value to a dart map
  static Map<String, List<ScheduledJobDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ScheduledJobDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ScheduledJobDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
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
  static const FAILED = ScheduledJobDtoStatusEnum._(r'FAILED');
  static const CANCELLED = ScheduledJobDtoStatusEnum._(r'CANCELLED');

  /// List of all possible values in this [enum][ScheduledJobDtoStatusEnum].
  static const values = <ScheduledJobDtoStatusEnum>[
    SUBMITTED,
    COMPLETED,
    FAILED,
    CANCELLED,
  ];

  static ScheduledJobDtoStatusEnum fromJson(dynamic value) =>
    ScheduledJobDtoStatusEnumTypeTransformer().decode(value);

  static List<ScheduledJobDtoStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ScheduledJobDtoStatusEnum>[]
      : json
          .map((value) => ScheduledJobDtoStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ScheduledJobDtoStatusEnum] to String,
/// and [decode] dynamic data back to [ScheduledJobDtoStatusEnum].
class ScheduledJobDtoStatusEnumTypeTransformer {
  const ScheduledJobDtoStatusEnumTypeTransformer._();

  factory ScheduledJobDtoStatusEnumTypeTransformer() => _instance ??= ScheduledJobDtoStatusEnumTypeTransformer._();

  String encode(ScheduledJobDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ScheduledJobDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScheduledJobDtoStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'SUBMITTED': return ScheduledJobDtoStatusEnum.SUBMITTED;
      case r'COMPLETED': return ScheduledJobDtoStatusEnum.COMPLETED;
      case r'FAILED': return ScheduledJobDtoStatusEnum.FAILED;
      case r'CANCELLED': return ScheduledJobDtoStatusEnum.CANCELLED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ScheduledJobDtoStatusEnumTypeTransformer] instance.
  static ScheduledJobDtoStatusEnumTypeTransformer _instance;
}

