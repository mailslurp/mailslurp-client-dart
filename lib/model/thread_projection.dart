//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ThreadProjection {
  /// Returns a new [ThreadProjection] instance.
  ThreadProjection({
    this.name,
    @required this.id,
    this.subject,
    @required this.inboxId,
    @required this.userId,
    this.to = const [],
    @required this.createdAt,
    @required this.updatedAt,
    this.bcc = const [],
    this.cc = const [],
    @required this.aliasId,
  });

  /// Name of thread
  String name;

  /// ID of email thread
  String id;

  /// Thread subject
  String subject;

  /// Inbox ID
  String inboxId;

  /// User ID
  String userId;

  /// To recipients
  List<String> to;

  /// Created at DateTime
  DateTime createdAt;

  /// Updated at DateTime
  DateTime updatedAt;

  /// BCC recipients
  List<String> bcc;

  /// CC recipients
  List<String> cc;

  /// Alias ID
  String aliasId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ThreadProjection &&
     other.name == name &&
     other.id == id &&
     other.subject == subject &&
     other.inboxId == inboxId &&
     other.userId == userId &&
     other.to == to &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.bcc == bcc &&
     other.cc == cc &&
     other.aliasId == aliasId;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (bcc == null ? 0 : bcc.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (aliasId == null ? 0 : aliasId.hashCode);

  @override
  String toString() => 'ThreadProjection[name=$name, id=$id, subject=$subject, inboxId=$inboxId, userId=$userId, to=$to, createdAt=$createdAt, updatedAt=$updatedAt, bcc=$bcc, cc=$cc, aliasId=$aliasId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'id'] = id;
    if (subject != null) {
      json[r'subject'] = subject;
    }
      json[r'inboxId'] = inboxId;
      json[r'userId'] = userId;
      json[r'to'] = to;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    if (bcc != null) {
      json[r'bcc'] = bcc;
    }
    if (cc != null) {
      json[r'cc'] = cc;
    }
      json[r'aliasId'] = aliasId;
    return json;
  }

  /// Returns a new [ThreadProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ThreadProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ThreadProjection(
        name: json[r'name'],
        id: json[r'id'],
        subject: json[r'subject'],
        inboxId: json[r'inboxId'],
        userId: json[r'userId'],
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        bcc: json[r'bcc'] == null
          ? null
          : (json[r'bcc'] as List).cast<String>(),
        cc: json[r'cc'] == null
          ? null
          : (json[r'cc'] as List).cast<String>(),
        aliasId: json[r'aliasId'],
    );

  static List<ThreadProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ThreadProjection>[]
      : json.map((v) => ThreadProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, ThreadProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ThreadProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ThreadProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ThreadProjection-objects as value to a dart map
  static Map<String, List<ThreadProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ThreadProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ThreadProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

