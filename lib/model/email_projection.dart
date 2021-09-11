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
    this.attachments = const [],
    this.bcc = const [],
    this.bodyExcerpt,
    this.bodyMD5Hash,
    this.cc = const [],
    @required this.createdAt,
    this.from,
    @required this.id,
    @required this.inboxId,
    this.read,
    this.subject,
    this.teamAccess,
    this.to = const [],
  });

  List<String> attachments;

  List<String> bcc;

  String bodyExcerpt;

  String bodyMD5Hash;

  List<String> cc;

  DateTime createdAt;

  String from;

  String id;

  String inboxId;

  bool read;

  String subject;

  bool teamAccess;

  List<String> to;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailProjection &&
     other.attachments == attachments &&
     other.bcc == bcc &&
     other.bodyExcerpt == bodyExcerpt &&
     other.bodyMD5Hash == bodyMD5Hash &&
     other.cc == cc &&
     other.createdAt == createdAt &&
     other.from == from &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.read == read &&
     other.subject == subject &&
     other.teamAccess == teamAccess &&
     other.to == to;

  @override
  int get hashCode =>
    (attachments == null ? 0 : attachments.hashCode) +
    (bcc == null ? 0 : bcc.hashCode) +
    (bodyExcerpt == null ? 0 : bodyExcerpt.hashCode) +
    (bodyMD5Hash == null ? 0 : bodyMD5Hash.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (read == null ? 0 : read.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (teamAccess == null ? 0 : teamAccess.hashCode) +
    (to == null ? 0 : to.hashCode);

  @override
  String toString() => 'EmailProjection[attachments=$attachments, bcc=$bcc, bodyExcerpt=$bodyExcerpt, bodyMD5Hash=$bodyMD5Hash, cc=$cc, createdAt=$createdAt, from=$from, id=$id, inboxId=$inboxId, read=$read, subject=$subject, teamAccess=$teamAccess, to=$to]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (attachments != null) {
      json[r'attachments'] = attachments;
    }
    if (bcc != null) {
      json[r'bcc'] = bcc;
    }
    if (bodyExcerpt != null) {
      json[r'bodyExcerpt'] = bodyExcerpt;
    }
    if (bodyMD5Hash != null) {
      json[r'bodyMD5Hash'] = bodyMD5Hash;
    }
    if (cc != null) {
      json[r'cc'] = cc;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    if (from != null) {
      json[r'from'] = from;
    }
      json[r'id'] = id;
      json[r'inboxId'] = inboxId;
    if (read != null) {
      json[r'read'] = read;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
    if (teamAccess != null) {
      json[r'teamAccess'] = teamAccess;
    }
      json[r'to'] = to;
    return json;
  }

  /// Returns a new [EmailProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EmailProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : EmailProjection(
        attachments: json[r'attachments'] == null
          ? null
          : (json[r'attachments'] as List).cast<String>(),
        bcc: json[r'bcc'] == null
          ? null
          : (json[r'bcc'] as List).cast<String>(),
        bodyExcerpt: json[r'bodyExcerpt'],
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
        read: json[r'read'],
        subject: json[r'subject'],
        teamAccess: json[r'teamAccess'],
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
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

