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
    @required this.inboxId,
    this.subject,
    @required this.userId,
    this.to = const [],
    this.bcc = const [],
    this.cc = const [],
    @required this.createdAt,
    @required this.updatedAt,
    @required this.aliasId,
  });

  String name;

  String id;

  String inboxId;

  String subject;

  String userId;

  List<String> to;

  List<String> bcc;

  List<String> cc;

  DateTime createdAt;

  DateTime updatedAt;

  String aliasId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ThreadProjection &&
     other.name == name &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.subject == subject &&
     other.userId == userId &&
     other.to == to &&
     other.bcc == bcc &&
     other.cc == cc &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.aliasId == aliasId;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (bcc == null ? 0 : bcc.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (aliasId == null ? 0 : aliasId.hashCode);

  @override
  String toString() => 'ThreadProjection[name=$name, id=$id, inboxId=$inboxId, subject=$subject, userId=$userId, to=$to, bcc=$bcc, cc=$cc, createdAt=$createdAt, updatedAt=$updatedAt, aliasId=$aliasId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'id'] = id;
      json[r'inboxId'] = inboxId;
    if (subject != null) {
      json[r'subject'] = subject;
    }
      json[r'userId'] = userId;
      json[r'to'] = to;
    if (bcc != null) {
      json[r'bcc'] = bcc;
    }
    if (cc != null) {
      json[r'cc'] = cc;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
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
        inboxId: json[r'inboxId'],
        subject: json[r'subject'],
        userId: json[r'userId'],
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
        bcc: json[r'bcc'] == null
          ? null
          : (json[r'bcc'] as List).cast<String>(),
        cc: json[r'cc'] == null
          ? null
          : (json[r'cc'] as List).cast<String>(),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
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

