//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailDraftProjection {
  /// Returns a new [EmailDraftProjection] instance.
  EmailDraftProjection({
    this.subject,
    this.from,
    required this.id,
    required this.userId,
    required this.inboxId,
    this.recipients,
    this.attachments = const [],
    this.textExcerpt,
    this.bodyExcerpt,
    this.to = const [],
    required this.createdAt,
    this.cc = const [],
    this.bcc = const [],
    required this.updatedAt,
    this.sender,
  });

  String? subject;

  String? from;

  String id;

  String userId;

  String inboxId;

  EmailRecipients? recipients;

  List<String>? attachments;

  String? textExcerpt;

  String? bodyExcerpt;

  List<String>? to;

  DateTime createdAt;

  List<String>? cc;

  List<String>? bcc;

  DateTime updatedAt;

  Sender? sender;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailDraftProjection &&
     other.subject == subject &&
     other.from == from &&
     other.id == id &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.recipients == recipients &&
     other.attachments == attachments &&
     other.textExcerpt == textExcerpt &&
     other.bodyExcerpt == bodyExcerpt &&
     other.to == to &&
     other.createdAt == createdAt &&
     other.cc == cc &&
     other.bcc == bcc &&
     other.updatedAt == updatedAt &&
     other.sender == sender;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (subject == null ? 0 : subject!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (id.hashCode) +
    (userId.hashCode) +
    (inboxId.hashCode) +
    (recipients == null ? 0 : recipients!.hashCode) +
    (attachments == null ? 0 : attachments!.hashCode) +
    (textExcerpt == null ? 0 : textExcerpt!.hashCode) +
    (bodyExcerpt == null ? 0 : bodyExcerpt!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (createdAt.hashCode) +
    (cc == null ? 0 : cc!.hashCode) +
    (bcc == null ? 0 : bcc!.hashCode) +
    (updatedAt.hashCode) +
    (sender == null ? 0 : sender!.hashCode);

  @override
  String toString() => 'EmailDraftProjection[subject=$subject, from=$from, id=$id, userId=$userId, inboxId=$inboxId, recipients=$recipients, attachments=$attachments, textExcerpt=$textExcerpt, bodyExcerpt=$bodyExcerpt, to=$to, createdAt=$createdAt, cc=$cc, bcc=$bcc, updatedAt=$updatedAt, sender=$sender]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'inboxId'] = this.inboxId;
    if (this.recipients != null) {
      json[r'recipients'] = this.recipients;
    } else {
      json[r'recipients'] = null;
    }
    if (this.attachments != null) {
      json[r'attachments'] = this.attachments;
    } else {
      json[r'attachments'] = null;
    }
    if (this.textExcerpt != null) {
      json[r'textExcerpt'] = this.textExcerpt;
    } else {
      json[r'textExcerpt'] = null;
    }
    if (this.bodyExcerpt != null) {
      json[r'bodyExcerpt'] = this.bodyExcerpt;
    } else {
      json[r'bodyExcerpt'] = null;
    }
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.cc != null) {
      json[r'cc'] = this.cc;
    } else {
      json[r'cc'] = null;
    }
    if (this.bcc != null) {
      json[r'bcc'] = this.bcc;
    } else {
      json[r'bcc'] = null;
    }
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    if (this.sender != null) {
      json[r'sender'] = this.sender;
    } else {
      json[r'sender'] = null;
    }
    return json;
  }

  /// Returns a new [EmailDraftProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailDraftProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailDraftProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailDraftProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailDraftProjection(
        subject: mapValueOfType<String>(json, r'subject'),
        from: mapValueOfType<String>(json, r'from'),
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        recipients: EmailRecipients.fromJson(json[r'recipients']),
        attachments: json[r'attachments'] is List
            ? (json[r'attachments'] as List).cast<String>()
            : const [],
        textExcerpt: mapValueOfType<String>(json, r'textExcerpt'),
        bodyExcerpt: mapValueOfType<String>(json, r'bodyExcerpt'),
        to: json[r'to'] is List
            ? (json[r'to'] as List).cast<String>()
            : const [],
        createdAt: mapDateTime(json, r'createdAt', '')!,
        cc: json[r'cc'] is List
            ? (json[r'cc'] as List).cast<String>()
            : const [],
        bcc: json[r'bcc'] is List
            ? (json[r'bcc'] as List).cast<String>()
            : const [],
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        sender: Sender.fromJson(json[r'sender']),
      );
    }
    return null;
  }

  static List<EmailDraftProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailDraftProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailDraftProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailDraftProjection> mapFromJson(dynamic json) {
    final map = <String, EmailDraftProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailDraftProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailDraftProjection-objects as value to a dart map
  static Map<String, List<EmailDraftProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailDraftProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailDraftProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'inboxId',
    'createdAt',
    'updatedAt',
  };
}

