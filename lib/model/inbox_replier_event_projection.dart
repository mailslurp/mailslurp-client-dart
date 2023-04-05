//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxReplierEventProjection {
  /// Returns a new [InboxReplierEventProjection] instance.
  InboxReplierEventProjection({
    this.message,
    this.id,
    this.status,
    this.userId,
    this.recipients,
    this.emailId,
    this.inboxId,
    @required this.createdAt,
    this.sentId,
    this.replierId,
  });

  String message;

  String id;

  InboxReplierEventProjectionStatusEnum status;

  String userId;

  List<String> recipients;

  String emailId;

  String inboxId;

  DateTime createdAt;

  String sentId;

  String replierId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxReplierEventProjection &&
     other.message == message &&
     other.id == id &&
     other.status == status &&
     other.userId == userId &&
     other.recipients == recipients &&
     other.emailId == emailId &&
     other.inboxId == inboxId &&
     other.createdAt == createdAt &&
     other.sentId == sentId &&
     other.replierId == replierId;

  @override
  int get hashCode =>
    (message == null ? 0 : message.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (recipients == null ? 0 : recipients.hashCode) +
    (emailId == null ? 0 : emailId.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (sentId == null ? 0 : sentId.hashCode) +
    (replierId == null ? 0 : replierId.hashCode);

  @override
  String toString() => 'InboxReplierEventProjection[message=$message, id=$id, status=$status, userId=$userId, recipients=$recipients, emailId=$emailId, inboxId=$inboxId, createdAt=$createdAt, sentId=$sentId, replierId=$replierId]';

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
    if (userId != null) {
      json[r'userId'] = userId;
    }
    if (recipients != null) {
      json[r'recipients'] = recipients;
    }
    if (emailId != null) {
      json[r'emailId'] = emailId;
    }
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    if (sentId != null) {
      json[r'sentId'] = sentId;
    }
    if (replierId != null) {
      json[r'replierId'] = replierId;
    }
    return json;
  }

  /// Returns a new [InboxReplierEventProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InboxReplierEventProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InboxReplierEventProjection(
        message: json[r'message'],
        id: json[r'id'],
        status: InboxReplierEventProjectionStatusEnum.fromJson(json[r'status']),
        userId: json[r'userId'],
        recipients: json[r'recipients'] == null
          ? null
          : (json[r'recipients'] as List).cast<String>(),
        emailId: json[r'emailId'],
        inboxId: json[r'inboxId'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        sentId: json[r'sentId'],
        replierId: json[r'replierId'],
    );

  static List<InboxReplierEventProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxReplierEventProjection>[]
      : json.map((v) => InboxReplierEventProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, InboxReplierEventProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InboxReplierEventProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InboxReplierEventProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InboxReplierEventProjection-objects as value to a dart map
  static Map<String, List<InboxReplierEventProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InboxReplierEventProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InboxReplierEventProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class InboxReplierEventProjectionStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxReplierEventProjectionStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUCCESS = InboxReplierEventProjectionStatusEnum._(r'SUCCESS');
  static const FAILURE = InboxReplierEventProjectionStatusEnum._(r'FAILURE');

  /// List of all possible values in this [enum][InboxReplierEventProjectionStatusEnum].
  static const values = <InboxReplierEventProjectionStatusEnum>[
    SUCCESS,
    FAILURE,
  ];

  static InboxReplierEventProjectionStatusEnum fromJson(dynamic value) =>
    InboxReplierEventProjectionStatusEnumTypeTransformer().decode(value);

  static List<InboxReplierEventProjectionStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxReplierEventProjectionStatusEnum>[]
      : json
          .map((value) => InboxReplierEventProjectionStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [InboxReplierEventProjectionStatusEnum] to String,
/// and [decode] dynamic data back to [InboxReplierEventProjectionStatusEnum].
class InboxReplierEventProjectionStatusEnumTypeTransformer {
  const InboxReplierEventProjectionStatusEnumTypeTransformer._();

  factory InboxReplierEventProjectionStatusEnumTypeTransformer() => _instance ??= InboxReplierEventProjectionStatusEnumTypeTransformer._();

  String encode(InboxReplierEventProjectionStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxReplierEventProjectionStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxReplierEventProjectionStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'SUCCESS': return InboxReplierEventProjectionStatusEnum.SUCCESS;
      case r'FAILURE': return InboxReplierEventProjectionStatusEnum.FAILURE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [InboxReplierEventProjectionStatusEnumTypeTransformer] instance.
  static InboxReplierEventProjectionStatusEnumTypeTransformer _instance;
}

