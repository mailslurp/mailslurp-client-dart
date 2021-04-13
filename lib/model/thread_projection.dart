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
    @required this.aliasId,
    this.bcc = const [],
    this.cc = const [],
    @required this.createdAt,
    @required this.id,
    @required this.inboxId,
    this.name,
    this.subject,
    this.to = const [],
    @required this.updatedAt,
    @required this.userId,
  });

  String aliasId;

  List<String> bcc;

  List<String> cc;

  DateTime createdAt;

  String id;

  String inboxId;

  String name;

  String subject;

  List<String> to;

  DateTime updatedAt;

  String userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ThreadProjection &&
     other.aliasId == aliasId &&
     other.bcc == bcc &&
     other.cc == cc &&
     other.createdAt == createdAt &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.name == name &&
     other.subject == subject &&
     other.to == to &&
     other.updatedAt == updatedAt &&
     other.userId == userId;

  @override
  int get hashCode =>
    (aliasId == null ? 0 : aliasId.hashCode) +
    (bcc == null ? 0 : bcc.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (userId == null ? 0 : userId.hashCode);

  @override
  String toString() => 'ThreadProjection[aliasId=$aliasId, bcc=$bcc, cc=$cc, createdAt=$createdAt, id=$id, inboxId=$inboxId, name=$name, subject=$subject, to=$to, updatedAt=$updatedAt, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'aliasId'] = aliasId;
    if (bcc != null) {
      json[r'bcc'] = bcc;
    }
    if (cc != null) {
      json[r'cc'] = cc;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'id'] = id;
      json[r'inboxId'] = inboxId;
    if (name != null) {
      json[r'name'] = name;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
      json[r'to'] = to;
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
      json[r'userId'] = userId;
    return json;
  }

  /// Returns a new [ThreadProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ThreadProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ThreadProjection(
        aliasId: json[r'aliasId'],
        bcc: json[r'bcc'] == null
          ? null
          : (json[r'bcc'] as List).cast<String>(),
        cc: json[r'cc'] == null
          ? null
          : (json[r'cc'] as List).cast<String>(),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        id: json[r'id'],
        inboxId: json[r'inboxId'],
        name: json[r'name'],
        subject: json[r'subject'],
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        userId: json[r'userId'],
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

