//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxForwarderEventProjection {
  /// Returns a new [InboxForwarderEventProjection] instance.
  InboxForwarderEventProjection({
    this.message,
    this.id,
    this.status,
    this.emailId,
    this.inboxId,
    this.userId,
    @required this.createdAt,
    this.forwarderId,
  });

  String message;

  String id;

  InboxForwarderEventProjectionStatusEnum status;

  String emailId;

  String inboxId;

  String userId;

  DateTime createdAt;

  String forwarderId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxForwarderEventProjection &&
     other.message == message &&
     other.id == id &&
     other.status == status &&
     other.emailId == emailId &&
     other.inboxId == inboxId &&
     other.userId == userId &&
     other.createdAt == createdAt &&
     other.forwarderId == forwarderId;

  @override
  int get hashCode =>
    (message == null ? 0 : message.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (emailId == null ? 0 : emailId.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (forwarderId == null ? 0 : forwarderId.hashCode);

  @override
  String toString() => 'InboxForwarderEventProjection[message=$message, id=$id, status=$status, emailId=$emailId, inboxId=$inboxId, userId=$userId, createdAt=$createdAt, forwarderId=$forwarderId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (message != null) {
      json[r'message'] = message;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (emailId != null) {
      json[r'emailId'] = emailId;
    }
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    if (forwarderId != null) {
      json[r'forwarderId'] = forwarderId;
    }
    return json;
  }

  /// Returns a new [InboxForwarderEventProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InboxForwarderEventProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InboxForwarderEventProjection(
        message: json[r'message'],
        id: json[r'id'],
        status: InboxForwarderEventProjectionStatusEnum.fromJson(json[r'status']),
        emailId: json[r'emailId'],
        inboxId: json[r'inboxId'],
        userId: json[r'userId'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        forwarderId: json[r'forwarderId'],
    );

  static List<InboxForwarderEventProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxForwarderEventProjection>[]
      : json.map((v) => InboxForwarderEventProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, InboxForwarderEventProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InboxForwarderEventProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InboxForwarderEventProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InboxForwarderEventProjection-objects as value to a dart map
  static Map<String, List<InboxForwarderEventProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InboxForwarderEventProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InboxForwarderEventProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class InboxForwarderEventProjectionStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxForwarderEventProjectionStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUCCESS = InboxForwarderEventProjectionStatusEnum._(r'SUCCESS');
  static const FAILURE = InboxForwarderEventProjectionStatusEnum._(r'FAILURE');

  /// List of all possible values in this [enum][InboxForwarderEventProjectionStatusEnum].
  static const values = <InboxForwarderEventProjectionStatusEnum>[
    SUCCESS,
    FAILURE,
  ];

  static InboxForwarderEventProjectionStatusEnum fromJson(dynamic value) =>
    InboxForwarderEventProjectionStatusEnumTypeTransformer().decode(value);

  static List<InboxForwarderEventProjectionStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxForwarderEventProjectionStatusEnum>[]
      : json
          .map((value) => InboxForwarderEventProjectionStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [InboxForwarderEventProjectionStatusEnum] to String,
/// and [decode] dynamic data back to [InboxForwarderEventProjectionStatusEnum].
class InboxForwarderEventProjectionStatusEnumTypeTransformer {
  const InboxForwarderEventProjectionStatusEnumTypeTransformer._();

  factory InboxForwarderEventProjectionStatusEnumTypeTransformer() => _instance ??= InboxForwarderEventProjectionStatusEnumTypeTransformer._();

  String encode(InboxForwarderEventProjectionStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxForwarderEventProjectionStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxForwarderEventProjectionStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'SUCCESS': return InboxForwarderEventProjectionStatusEnum.SUCCESS;
      case r'FAILURE': return InboxForwarderEventProjectionStatusEnum.FAILURE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [InboxForwarderEventProjectionStatusEnumTypeTransformer] instance.
  static InboxForwarderEventProjectionStatusEnumTypeTransformer _instance;
}

