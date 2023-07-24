//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailProjection {
  /// Returns a new [EmailProjection] instance.
  EmailProjection({
    required this.id,
    this.from,
    this.subject,
    required this.inboxId,
    this.attachments = const [],
    required this.createdAt,
    this.to = const [],
    this.bcc = const [],
    this.cc = const [],
    required this.read,
    this.domainId,
    this.bodyExcerpt,
    required this.teamAccess,
    this.bodyMD5Hash,
  });

  String id;

  String? from;

  String? subject;

  String inboxId;

  List<String>? attachments;

  DateTime createdAt;

  List<String> to;

  List<String>? bcc;

  List<String>? cc;

  bool read;

  String? domainId;

  String? bodyExcerpt;

  bool teamAccess;

  String? bodyMD5Hash;

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
     other.read == read &&
     other.domainId == domainId &&
     other.bodyExcerpt == bodyExcerpt &&
     other.teamAccess == teamAccess &&
     other.bodyMD5Hash == bodyMD5Hash;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (inboxId.hashCode) +
    (attachments == null ? 0 : attachments!.hashCode) +
    (createdAt.hashCode) +
    (to.hashCode) +
    (bcc == null ? 0 : bcc!.hashCode) +
    (cc == null ? 0 : cc!.hashCode) +
    (read.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode) +
    (bodyExcerpt == null ? 0 : bodyExcerpt!.hashCode) +
    (teamAccess.hashCode) +
    (bodyMD5Hash == null ? 0 : bodyMD5Hash!.hashCode);

  @override
  String toString() => 'EmailProjection[id=$id, from=$from, subject=$subject, inboxId=$inboxId, attachments=$attachments, createdAt=$createdAt, to=$to, bcc=$bcc, cc=$cc, read=$read, domainId=$domainId, bodyExcerpt=$bodyExcerpt, teamAccess=$teamAccess, bodyMD5Hash=$bodyMD5Hash]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
      json[r'inboxId'] = this.inboxId;
    if (this.attachments != null) {
      json[r'attachments'] = this.attachments;
    } else {
      json[r'attachments'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'to'] = this.to;
    if (this.bcc != null) {
      json[r'bcc'] = this.bcc;
    } else {
      json[r'bcc'] = null;
    }
    if (this.cc != null) {
      json[r'cc'] = this.cc;
    } else {
      json[r'cc'] = null;
    }
      json[r'read'] = this.read;
    if (this.domainId != null) {
      json[r'domainId'] = this.domainId;
    } else {
      json[r'domainId'] = null;
    }
    if (this.bodyExcerpt != null) {
      json[r'bodyExcerpt'] = this.bodyExcerpt;
    } else {
      json[r'bodyExcerpt'] = null;
    }
      json[r'teamAccess'] = this.teamAccess;
    if (this.bodyMD5Hash != null) {
      json[r'bodyMD5Hash'] = this.bodyMD5Hash;
    } else {
      json[r'bodyMD5Hash'] = null;
    }
    return json;
  }

  /// Returns a new [EmailProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailProjection(
        id: mapValueOfType<String>(json, r'id')!,
        from: mapValueOfType<String>(json, r'from'),
        subject: mapValueOfType<String>(json, r'subject'),
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        attachments: json[r'attachments'] is List
            ? (json[r'attachments'] as List).cast<String>()
            : const [],
        createdAt: mapDateTime(json, r'createdAt', '')!,
        to: json[r'to'] is List
            ? (json[r'to'] as List).cast<String>()
            : const [],
        bcc: json[r'bcc'] is List
            ? (json[r'bcc'] as List).cast<String>()
            : const [],
        cc: json[r'cc'] is List
            ? (json[r'cc'] as List).cast<String>()
            : const [],
        read: mapValueOfType<bool>(json, r'read')!,
        domainId: mapValueOfType<String>(json, r'domainId'),
        bodyExcerpt: mapValueOfType<String>(json, r'bodyExcerpt'),
        teamAccess: mapValueOfType<bool>(json, r'teamAccess')!,
        bodyMD5Hash: mapValueOfType<String>(json, r'bodyMD5Hash'),
      );
    }
    return null;
  }

  static List<EmailProjection>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailProjection> mapFromJson(dynamic json) {
    final map = <String, EmailProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailProjection-objects as value to a dart map
  static Map<String, List<EmailProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailProjection>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailProjection.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'inboxId',
    'createdAt',
    'to',
    'read',
    'teamAccess',
  };
}

