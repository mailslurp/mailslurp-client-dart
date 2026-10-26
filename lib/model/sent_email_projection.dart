//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SentEmailProjection {
  /// Returns a new [SentEmailProjection] instance.
  SentEmailProjection({
    this.subject,
    this.from,
    required this.id,
    this.threadId,
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
    this.messageId,
    this.inReplyTo,
    this.sender,
    this.bodyMD5Hash,
    required this.virtualSend,
  });

  String? subject;

  String? from;

  String id;

  String? threadId;

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

  String? messageId;

  String? inReplyTo;

  Sender? sender;

  String? bodyMD5Hash;

  bool virtualSend;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SentEmailProjection &&
     other.subject == subject &&
     other.from == from &&
     other.id == id &&
     other.threadId == threadId &&
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
     other.messageId == messageId &&
     other.inReplyTo == inReplyTo &&
     other.sender == sender &&
     other.bodyMD5Hash == bodyMD5Hash &&
     other.virtualSend == virtualSend;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (subject == null ? 0 : subject!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (id.hashCode) +
    (threadId == null ? 0 : threadId!.hashCode) +
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
    (messageId == null ? 0 : messageId!.hashCode) +
    (inReplyTo == null ? 0 : inReplyTo!.hashCode) +
    (sender == null ? 0 : sender!.hashCode) +
    (bodyMD5Hash == null ? 0 : bodyMD5Hash!.hashCode) +
    (virtualSend.hashCode);

  @override
  String toString() => 'SentEmailProjection[subject=$subject, from=$from, id=$id, threadId=$threadId, userId=$userId, inboxId=$inboxId, recipients=$recipients, attachments=$attachments, textExcerpt=$textExcerpt, bodyExcerpt=$bodyExcerpt, to=$to, createdAt=$createdAt, cc=$cc, bcc=$bcc, messageId=$messageId, inReplyTo=$inReplyTo, sender=$sender, bodyMD5Hash=$bodyMD5Hash, virtualSend=$virtualSend]';

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
    if (this.threadId != null) {
      json[r'threadId'] = this.threadId;
    } else {
      json[r'threadId'] = null;
    }
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
    if (this.messageId != null) {
      json[r'messageId'] = this.messageId;
    } else {
      json[r'messageId'] = null;
    }
    if (this.inReplyTo != null) {
      json[r'inReplyTo'] = this.inReplyTo;
    } else {
      json[r'inReplyTo'] = null;
    }
    if (this.sender != null) {
      json[r'sender'] = this.sender;
    } else {
      json[r'sender'] = null;
    }
    if (this.bodyMD5Hash != null) {
      json[r'bodyMD5Hash'] = this.bodyMD5Hash;
    } else {
      json[r'bodyMD5Hash'] = null;
    }
      json[r'virtualSend'] = this.virtualSend;
    return json;
  }

  /// Returns a new [SentEmailProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SentEmailProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SentEmailProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SentEmailProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SentEmailProjection(
        subject: mapValueOfType<String>(json, r'subject'),
        from: mapValueOfType<String>(json, r'from'),
        id: mapValueOfType<String>(json, r'id')!,
        threadId: mapValueOfType<String>(json, r'threadId'),
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
        messageId: mapValueOfType<String>(json, r'messageId'),
        inReplyTo: mapValueOfType<String>(json, r'inReplyTo'),
        sender: Sender.fromJson(json[r'sender']),
        bodyMD5Hash: mapValueOfType<String>(json, r'bodyMD5Hash'),
        virtualSend: mapValueOfType<bool>(json, r'virtualSend')!,
      );
    }
    return null;
  }

  static List<SentEmailProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SentEmailProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SentEmailProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SentEmailProjection> mapFromJson(dynamic json) {
    final map = <String, SentEmailProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SentEmailProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SentEmailProjection-objects as value to a dart map
  static Map<String, List<SentEmailProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SentEmailProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SentEmailProjection.listFromJson(entry.value, growable: growable,);
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
    'virtualSend',
  };
}

