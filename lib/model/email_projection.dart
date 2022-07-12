//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailProjection {
  /// Returns a new [EmailProjection] instance.
  EmailProjection({
    @required this.id,
    this.from,
    @required this.inboxId,
    this.subject,
    this.attachments = const [],
    this.to = const [],
    @required this.createdAt,
    this.bcc = const [],
    this.cc = const [],
    @required this.teamAccess,
    @required this.read,
    this.bodyMD5Hash,
    this.bodyExcerpt,
  });

  String id;

  String from;

  String inboxId;

  String subject;

  List<String> attachments;

  List<String> to;

  DateTime createdAt;

  List<String> bcc;

  List<String> cc;

  bool teamAccess;

  bool read;

  String bodyMD5Hash;

  String bodyExcerpt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailProjection &&
     other.id == id &&
     other.from == from &&
     other.inboxId == inboxId &&
     other.subject == subject &&
     other.attachments == attachments &&
     other.to == to &&
     other.createdAt == createdAt &&
     other.bcc == bcc &&
     other.cc == cc &&
     other.teamAccess == teamAccess &&
     other.read == read &&
     other.bodyMD5Hash == bodyMD5Hash &&
     other.bodyExcerpt == bodyExcerpt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (attachments == null ? 0 : attachments.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (bcc == null ? 0 : bcc.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (teamAccess == null ? 0 : teamAccess.hashCode) +
    (read == null ? 0 : read.hashCode) +
    (bodyMD5Hash == null ? 0 : bodyMD5Hash.hashCode) +
    (bodyExcerpt == null ? 0 : bodyExcerpt.hashCode);

  @override
  String toString() => 'EmailProjection[id=$id, from=$from, inboxId=$inboxId, subject=$subject, attachments=$attachments, to=$to, createdAt=$createdAt, bcc=$bcc, cc=$cc, teamAccess=$teamAccess, read=$read, bodyMD5Hash=$bodyMD5Hash, bodyExcerpt=$bodyExcerpt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (from != null) {
      json[r'from'] = from;
    }
      json[r'inboxId'] = inboxId;
    if (subject != null) {
      json[r'subject'] = subject;
    }
    if (attachments != null) {
      json[r'attachments'] = attachments;
    }
      json[r'to'] = to;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    if (bcc != null) {
      json[r'bcc'] = bcc;
    }
    if (cc != null) {
      json[r'cc'] = cc;
    }
      json[r'teamAccess'] = teamAccess;
      json[r'read'] = read;
    if (bodyMD5Hash != null) {
      json[r'bodyMD5Hash'] = bodyMD5Hash;
    }
    if (bodyExcerpt != null) {
      json[r'bodyExcerpt'] = bodyExcerpt;
    }
    return json;
  }

  /// Returns a new [EmailProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EmailProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : EmailProjection(
        id: json[r'id'],
        from: json[r'from'],
        inboxId: json[r'inboxId'],
        subject: json[r'subject'],
        attachments: json[r'attachments'] == null
          ? null
          : (json[r'attachments'] as List).cast<String>(),
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        bcc: json[r'bcc'] == null
          ? null
          : (json[r'bcc'] as List).cast<String>(),
        cc: json[r'cc'] == null
          ? null
          : (json[r'cc'] as List).cast<String>(),
        teamAccess: json[r'teamAccess'],
        read: json[r'read'],
        bodyMD5Hash: json[r'bodyMD5Hash'],
        bodyExcerpt: json[r'bodyExcerpt'],
    );

  static List<EmailProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <EmailProjection>[]
      : json.map((v) => EmailProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, EmailProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EmailProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = EmailProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of EmailProjection-objects as value to a dart map
  static Map<String, List<EmailProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EmailProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = EmailProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

