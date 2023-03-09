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
    this.subject,
    @required this.userId,
    @required this.inboxId,
    this.attachments = const [],
    @required this.createdAt,
    this.to = const [],
    this.bcc = const [],
    this.cc = const [],
    this.bodyMD5Hash,
    @required this.virtualSend,
  });

  String id;

  String from;

  String subject;

  String userId;

  String inboxId;

  List<String> attachments;

  DateTime createdAt;

  List<String> to;

  List<String> bcc;

  List<String> cc;

  String bodyMD5Hash;

  bool virtualSend;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SentEmailProjection &&
     other.id == id &&
     other.from == from &&
     other.subject == subject &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.attachments == attachments &&
     other.createdAt == createdAt &&
     other.to == to &&
     other.bcc == bcc &&
     other.cc == cc &&
     other.bodyMD5Hash == bodyMD5Hash &&
     other.virtualSend == virtualSend;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (attachments == null ? 0 : attachments.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (bcc == null ? 0 : bcc.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (bodyMD5Hash == null ? 0 : bodyMD5Hash.hashCode) +
    (virtualSend == null ? 0 : virtualSend.hashCode);

  @override
  String toString() => 'SentEmailProjection[id=$id, from=$from, subject=$subject, userId=$userId, inboxId=$inboxId, attachments=$attachments, createdAt=$createdAt, to=$to, bcc=$bcc, cc=$cc, bodyMD5Hash=$bodyMD5Hash, virtualSend=$virtualSend]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (from != null) {
      json[r'from'] = from;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
      json[r'userId'] = userId;
      json[r'inboxId'] = inboxId;
      json[r'attachments'] = attachments;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'to'] = to;
      json[r'bcc'] = bcc;
      json[r'cc'] = cc;
    if (bodyMD5Hash != null) {
      json[r'bodyMD5Hash'] = bodyMD5Hash;
    }
      json[r'virtualSend'] = virtualSend;
    return json;
  }

  /// Returns a new [SentEmailProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SentEmailProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SentEmailProjection(
        id: json[r'id'],
        from: json[r'from'],
        subject: json[r'subject'],
        userId: json[r'userId'],
        inboxId: json[r'inboxId'],
        attachments: json[r'attachments'] == null
          ? null
          : (json[r'attachments'] as List).cast<String>(),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
        bcc: json[r'bcc'] == null
          ? null
          : (json[r'bcc'] as List).cast<String>(),
        cc: json[r'cc'] == null
          ? null
          : (json[r'cc'] as List).cast<String>(),
        bodyMD5Hash: json[r'bodyMD5Hash'],
        virtualSend: json[r'virtualSend'],
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

