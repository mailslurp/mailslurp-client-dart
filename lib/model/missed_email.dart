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
    this.id,
    this.userId,
    this.subject,
    this.bodyExcerpt,
    this.attachmentCount,
    this.from,
    this.to = const [],
    this.cc = const [],
    this.bcc = const [],
    this.inboxIds = const [],
    this.createdAt,
    this.updatedAt,
  });

  String id;

  String userId;

  String subject;

  String bodyExcerpt;

  int attachmentCount;

  String from;

  List<String> to;

  List<String> cc;

  List<String> bcc;

  List<String> inboxIds;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MissedEmail &&
     other.id == id &&
     other.userId == userId &&
     other.subject == subject &&
     other.bodyExcerpt == bodyExcerpt &&
     other.attachmentCount == attachmentCount &&
     other.from == from &&
     other.to == to &&
     other.cc == cc &&
     other.bcc == bcc &&
     other.inboxIds == inboxIds &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (bodyExcerpt == null ? 0 : bodyExcerpt.hashCode) +
    (attachmentCount == null ? 0 : attachmentCount.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (bcc == null ? 0 : bcc.hashCode) +
    (inboxIds == null ? 0 : inboxIds.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'MissedEmail[id=$id, userId=$userId, subject=$subject, bodyExcerpt=$bodyExcerpt, attachmentCount=$attachmentCount, from=$from, to=$to, cc=$cc, bcc=$bcc, inboxIds=$inboxIds, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
    if (bodyExcerpt != null) {
      json[r'bodyExcerpt'] = bodyExcerpt;
    }
    if (attachmentCount != null) {
      json[r'attachmentCount'] = attachmentCount;
    }
    if (from != null) {
      json[r'from'] = from;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (cc != null) {
      json[r'cc'] = cc;
    }
    if (bcc != null) {
      json[r'bcc'] = bcc;
    }
    if (inboxIds != null) {
      json[r'inboxIds'] = inboxIds;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    }
    return json;
  }

  /// Returns a new [MissedEmail] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MissedEmail fromJson(Map<String, dynamic> json) => json == null
    ? null
    : MissedEmail(
        id: json[r'id'],
        userId: json[r'userId'],
        subject: json[r'subject'],
        bodyExcerpt: json[r'bodyExcerpt'],
        attachmentCount: json[r'attachmentCount'],
        from: json[r'from'],
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
        cc: json[r'cc'] == null
          ? null
          : (json[r'cc'] as List).cast<String>(),
        bcc: json[r'bcc'] == null
          ? null
          : (json[r'bcc'] as List).cast<String>(),
        inboxIds: json[r'inboxIds'] == null
          ? null
          : (json[r'inboxIds'] as List).cast<String>(),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
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

