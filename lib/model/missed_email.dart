//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MissedEmail {
  /// Returns a new [MissedEmail] instance.
  MissedEmail({
    @required this.attachmentCount,
    this.bcc = const [],
    this.bodyExcerpt,
    this.cc = const [],
    @required this.createdAt,
    this.from,
    this.id,
    this.inboxIds = const [],
    this.subject,
    this.to = const [],
    @required this.updatedAt,
    this.userId,
  });

  int attachmentCount;

  List<String> bcc;

  String bodyExcerpt;

  List<String> cc;

  DateTime createdAt;

  String from;

  String id;

  List<String> inboxIds;

  String subject;

  List<String> to;

  DateTime updatedAt;

  String userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MissedEmail &&
     other.attachmentCount == attachmentCount &&
     other.bcc == bcc &&
     other.bodyExcerpt == bodyExcerpt &&
     other.cc == cc &&
     other.createdAt == createdAt &&
     other.from == from &&
     other.id == id &&
     other.inboxIds == inboxIds &&
     other.subject == subject &&
     other.to == to &&
     other.updatedAt == updatedAt &&
     other.userId == userId;

  @override
  int get hashCode =>
    (attachmentCount == null ? 0 : attachmentCount.hashCode) +
    (bcc == null ? 0 : bcc.hashCode) +
    (bodyExcerpt == null ? 0 : bodyExcerpt.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxIds == null ? 0 : inboxIds.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (userId == null ? 0 : userId.hashCode);

  @override
  String toString() => 'MissedEmail[attachmentCount=$attachmentCount, bcc=$bcc, bodyExcerpt=$bodyExcerpt, cc=$cc, createdAt=$createdAt, from=$from, id=$id, inboxIds=$inboxIds, subject=$subject, to=$to, updatedAt=$updatedAt, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'attachmentCount'] = attachmentCount;
      json[r'bcc'] = bcc;
    if (bodyExcerpt != null) {
      json[r'bodyExcerpt'] = bodyExcerpt;
    }
      json[r'cc'] = cc;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    if (from != null) {
      json[r'from'] = from;
    }
    if (id != null) {
      json[r'id'] = id;
    }
      json[r'inboxIds'] = inboxIds;
    if (subject != null) {
      json[r'subject'] = subject;
    }
      json[r'to'] = to;
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    if (userId != null) {
      json[r'userId'] = userId;
    }
    return json;
  }

  /// Returns a new [MissedEmail] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MissedEmail fromJson(Map<String, dynamic> json) => json == null
    ? null
    : MissedEmail(
        attachmentCount: json[r'attachmentCount'],
        bcc: json[r'bcc'] == null
          ? null
          : (json[r'bcc'] as List).cast<String>(),
        bodyExcerpt: json[r'bodyExcerpt'],
        cc: json[r'cc'] == null
          ? null
          : (json[r'cc'] as List).cast<String>(),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        from: json[r'from'],
        id: json[r'id'],
        inboxIds: json[r'inboxIds'] == null
          ? null
          : (json[r'inboxIds'] as List).cast<String>(),
        subject: json[r'subject'],
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        userId: json[r'userId'],
    );

  static List<MissedEmail> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <MissedEmail>[]
      : json.map((v) => MissedEmail.fromJson(v)).toList(growable: true == growable);

  static Map<String, MissedEmail> mapFromJson(Map<String, dynamic> json) {
    final map = <String, MissedEmail>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = MissedEmail.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of MissedEmail-objects as value to a dart map
  static Map<String, List<MissedEmail>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MissedEmail>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = MissedEmail.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

