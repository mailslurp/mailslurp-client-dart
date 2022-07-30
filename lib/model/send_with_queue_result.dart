//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendWithQueueResult {
  /// Returns a new [SendWithQueueResult] instance.
  SendWithQueueResult({
    @required this.id,
    @required this.userId,
    this.subject,
    this.inboxId,
    @required this.headerId,
    @required this.delivered,
    this.exceptionName,
    this.message,
    @required this.createdAt,
    @required this.updatedAt,
  });

  String id;

  String userId;

  String subject;

  String inboxId;

  String headerId;

  bool delivered;

  String exceptionName;

  String message;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendWithQueueResult &&
     other.id == id &&
     other.userId == userId &&
     other.subject == subject &&
     other.inboxId == inboxId &&
     other.headerId == headerId &&
     other.delivered == delivered &&
     other.exceptionName == exceptionName &&
     other.message == message &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (headerId == null ? 0 : headerId.hashCode) +
    (delivered == null ? 0 : delivered.hashCode) +
    (exceptionName == null ? 0 : exceptionName.hashCode) +
    (message == null ? 0 : message.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'SendWithQueueResult[id=$id, userId=$userId, subject=$subject, inboxId=$inboxId, headerId=$headerId, delivered=$delivered, exceptionName=$exceptionName, message=$message, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'userId'] = userId;
    if (subject != null) {
      json[r'subject'] = subject;
    }
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
      json[r'headerId'] = headerId;
      json[r'delivered'] = delivered;
    if (exceptionName != null) {
      json[r'exceptionName'] = exceptionName;
    }
    if (message != null) {
      json[r'message'] = message;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [SendWithQueueResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SendWithQueueResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SendWithQueueResult(
        id: json[r'id'],
        userId: json[r'userId'],
        subject: json[r'subject'],
        inboxId: json[r'inboxId'],
        headerId: json[r'headerId'],
        delivered: json[r'delivered'],
        exceptionName: json[r'exceptionName'],
        message: json[r'message'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
    );

  static List<SendWithQueueResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SendWithQueueResult>[]
      : json.map((v) => SendWithQueueResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, SendWithQueueResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SendWithQueueResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = SendWithQueueResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SendWithQueueResult-objects as value to a dart map
  static Map<String, List<SendWithQueueResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SendWithQueueResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SendWithQueueResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

