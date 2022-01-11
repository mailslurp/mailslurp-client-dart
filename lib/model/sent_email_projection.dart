//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SentEmailProjection {
  /// Returns a new [SentEmailProjection] instance.
  SentEmailProjection({
    @required this.id,
    this.from,
    @required this.userId,
    this.subject,
    @required this.createdAt,
    @required this.inboxId,
    this.to = const [],
    this.attachments = const [],
    this.bcc = const [],
    this.cc = const [],
    this.bodyMD5Hash,
  });

  String id;

  String from;

  String userId;

  String subject;

  DateTime createdAt;

  String inboxId;

  List<String> to;

  List<String> attachments;

  List<String> bcc;

  List<String> cc;

  String bodyMD5Hash;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SentEmailProjection &&
     other.id == id &&
     other.from == from &&
     other.userId == userId &&
     other.subject == subject &&
     other.createdAt == createdAt &&
     other.inboxId == inboxId &&
     other.to == to &&
     other.attachments == attachments &&
     other.bcc == bcc &&
     other.cc == cc &&
     other.bodyMD5Hash == bodyMD5Hash;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (attachments == null ? 0 : attachments.hashCode) +
    (bcc == null ? 0 : bcc.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (bodyMD5Hash == null ? 0 : bodyMD5Hash.hashCode);

  @override
  String toString() => 'SentEmailProjection[id=$id, from=$from, userId=$userId, subject=$subject, createdAt=$createdAt, inboxId=$inboxId, to=$to, attachments=$attachments, bcc=$bcc, cc=$cc, bodyMD5Hash=$bodyMD5Hash]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (from != null) {
      json[r'from'] = from;
    }
      json[r'userId'] = userId;
    if (subject != null) {
      json[r'subject'] = subject;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'inboxId'] = inboxId;
      json[r'to'] = to;
      json[r'attachments'] = attachments;
      json[r'bcc'] = bcc;
      json[r'cc'] = cc;
    if (bodyMD5Hash != null) {
      json[r'bodyMD5Hash'] = bodyMD5Hash;
    }
    return json;
  }

  /// Returns a new [SentEmailProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SentEmailProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SentEmailProjection(
        id: json[r'id'],
        from: json[r'from'],
        userId: json[r'userId'],
        subject: json[r'subject'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        inboxId: json[r'inboxId'],
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
        attachments: json[r'attachments'] == null
          ? null
          : (json[r'attachments'] as List).cast<String>(),
        bcc: json[r'bcc'] == null
          ? null
          : (json[r'bcc'] as List).cast<String>(),
        cc: json[r'cc'] == null
          ? null
          : (json[r'cc'] as List).cast<String>(),
        bodyMD5Hash: json[r'bodyMD5Hash'],
    );

  static List<SentEmailProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SentEmailProjection>[]
      : json.map((v) => SentEmailProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, SentEmailProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SentEmailProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = SentEmailProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SentEmailProjection-objects as value to a dart map
  static Map<String, List<SentEmailProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SentEmailProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SentEmailProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

