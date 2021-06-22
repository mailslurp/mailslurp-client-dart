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
    this.attachments = const [],
    this.bcc = const [],
    this.bodyMD5Hash,
    this.cc = const [],
    @required this.createdAt,
    this.from,
    @required this.id,
    @required this.inboxId,
    this.subject,
    this.to = const [],
    @required this.userId,
  });

  List<String> attachments;

  List<String> bcc;

  String bodyMD5Hash;

  List<String> cc;

  DateTime createdAt;

  String from;

  String id;

  String inboxId;

  String subject;

  List<String> to;

  String userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SentEmailProjection &&
     other.attachments == attachments &&
     other.bcc == bcc &&
     other.bodyMD5Hash == bodyMD5Hash &&
     other.cc == cc &&
     other.createdAt == createdAt &&
     other.from == from &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.subject == subject &&
     other.to == to &&
     other.userId == userId;

  @override
  int get hashCode =>
    (attachments == null ? 0 : attachments.hashCode) +
    (bcc == null ? 0 : bcc.hashCode) +
    (bodyMD5Hash == null ? 0 : bodyMD5Hash.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (userId == null ? 0 : userId.hashCode);

  @override
  String toString() => 'SentEmailProjection[attachments=$attachments, bcc=$bcc, bodyMD5Hash=$bodyMD5Hash, cc=$cc, createdAt=$createdAt, from=$from, id=$id, inboxId=$inboxId, subject=$subject, to=$to, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'attachments'] = attachments;
      json[r'bcc'] = bcc;
    if (bodyMD5Hash != null) {
      json[r'bodyMD5Hash'] = bodyMD5Hash;
    }
      json[r'cc'] = cc;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    if (from != null) {
      json[r'from'] = from;
    }
      json[r'id'] = id;
      json[r'inboxId'] = inboxId;
    if (subject != null) {
      json[r'subject'] = subject;
    }
      json[r'to'] = to;
      json[r'userId'] = userId;
    return json;
  }

  /// Returns a new [SentEmailProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SentEmailProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SentEmailProjection(
        attachments: json[r'attachments'] == null
          ? null
          : (json[r'attachments'] as List).cast<String>(),
        bcc: json[r'bcc'] == null
          ? null
          : (json[r'bcc'] as List).cast<String>(),
        bodyMD5Hash: json[r'bodyMD5Hash'],
        cc: json[r'cc'] == null
          ? null
          : (json[r'cc'] as List).cast<String>(),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        from: json[r'from'],
        id: json[r'id'],
        inboxId: json[r'inboxId'],
        subject: json[r'subject'],
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
        userId: json[r'userId'],
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

