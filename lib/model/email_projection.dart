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
    this.subject,
    @required this.inboxId,
    this.attachments,
    @required this.createdAt,
    this.to = const [],
    this.bcc,
    this.cc,
    this.domainId,
    @required this.read,
    this.bodyExcerpt,
    @required this.teamAccess,
    this.bodyMD5Hash,
  });

  String id;

  String from;

  String subject;

  String inboxId;

  List<String> attachments;

  DateTime createdAt;

  List<String> to;

  List<String> bcc;

  List<String> cc;

  String domainId;

  bool read;

  String bodyExcerpt;

  bool teamAccess;

  String bodyMD5Hash;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailProjection &&
     other.id == id &&
     other.from == from &&
     other.subject == subject &&
     other.inboxId == inboxId &&
     other.attachments == attachments &&
     other.createdAt == createdAt &&
     other.to == to &&
     other.bcc == bcc &&
     other.cc == cc &&
     other.domainId == domainId &&
     other.read == read &&
     other.bodyExcerpt == bodyExcerpt &&
     other.teamAccess == teamAccess &&
     other.bodyMD5Hash == bodyMD5Hash;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (attachments == null ? 0 : attachments.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (bcc == null ? 0 : bcc.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (domainId == null ? 0 : domainId.hashCode) +
    (read == null ? 0 : read.hashCode) +
    (bodyExcerpt == null ? 0 : bodyExcerpt.hashCode) +
    (teamAccess == null ? 0 : teamAccess.hashCode) +
    (bodyMD5Hash == null ? 0 : bodyMD5Hash.hashCode);

  @override
  String toString() => 'EmailProjection[id=$id, from=$from, subject=$subject, inboxId=$inboxId, attachments=$attachments, createdAt=$createdAt, to=$to, bcc=$bcc, cc=$cc, domainId=$domainId, read=$read, bodyExcerpt=$bodyExcerpt, teamAccess=$teamAccess, bodyMD5Hash=$bodyMD5Hash]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (from != null) {
      json[r'from'] = from;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
      json[r'inboxId'] = inboxId;
    if (attachments != null) {
      json[r'attachments'] = attachments;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'to'] = to;
    if (bcc != null) {
      json[r'bcc'] = bcc;
    }
    if (cc != null) {
      json[r'cc'] = cc;
    }
    if (domainId != null) {
      json[r'domainId'] = domainId;
    }
      json[r'read'] = read;
    if (bodyExcerpt != null) {
      json[r'bodyExcerpt'] = bodyExcerpt;
    }
      json[r'teamAccess'] = teamAccess;
    if (bodyMD5Hash != null) {
      json[r'bodyMD5Hash'] = bodyMD5Hash;
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
        subject: json[r'subject'],
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
        domainId: json[r'domainId'],
        read: json[r'read'],
        bodyExcerpt: json[r'bodyExcerpt'],
        teamAccess: json[r'teamAccess'],
        bodyMD5Hash: json[r'bodyMD5Hash'],
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

