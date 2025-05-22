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
    required this.id,
    this.from,
    this.sender,
    this.recipients,
    this.subject,
    required this.userId,
    this.attachments = const [],
    required this.inboxId,
    required this.createdAt,
    this.to = const [],
    this.cc = const [],
    this.bcc = const [],
    this.messageId,
    this.inReplyTo,
    this.bodyExcerpt,
    this.textExcerpt,
    this.bodyMD5Hash,
    required this.virtualSend,
    this.threadId,
  });

  String id;

  String? from;

  Sender? sender;

  EmailRecipients? recipients;

  String? subject;

  String userId;

  List<String>? attachments;

  String inboxId;

  DateTime createdAt;

  List<String> to;

  List<String> cc;

  List<String> bcc;

  String? messageId;

  String? inReplyTo;

  String? bodyExcerpt;

  String? textExcerpt;

  String? bodyMD5Hash;

  bool virtualSend;

  String? threadId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SentEmailProjection &&
     other.id == id &&
     other.from == from &&
     other.sender == sender &&
     other.recipients == recipients &&
     other.subject == subject &&
     other.userId == userId &&
     other.attachments == attachments &&
     other.inboxId == inboxId &&
     other.createdAt == createdAt &&
     other.to == to &&
     other.cc == cc &&
     other.bcc == bcc &&
     other.messageId == messageId &&
     other.inReplyTo == inReplyTo &&
     other.bodyExcerpt == bodyExcerpt &&
     other.textExcerpt == textExcerpt &&
     other.bodyMD5Hash == bodyMD5Hash &&
     other.virtualSend == virtualSend &&
     other.threadId == threadId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (sender == null ? 0 : sender!.hashCode) +
    (recipients == null ? 0 : recipients!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (userId.hashCode) +
    (attachments == null ? 0 : attachments!.hashCode) +
    (inboxId.hashCode) +
    (createdAt.hashCode) +
    (to.hashCode) +
    (cc.hashCode) +
    (bcc.hashCode) +
    (messageId == null ? 0 : messageId!.hashCode) +
    (inReplyTo == null ? 0 : inReplyTo!.hashCode) +
    (bodyExcerpt == null ? 0 : bodyExcerpt!.hashCode) +
    (textExcerpt == null ? 0 : textExcerpt!.hashCode) +
    (bodyMD5Hash == null ? 0 : bodyMD5Hash!.hashCode) +
    (virtualSend.hashCode) +
    (threadId == null ? 0 : threadId!.hashCode);

  @override
  String toString() => 'SentEmailProjection[id=$id, from=$from, sender=$sender, recipients=$recipients, subject=$subject, userId=$userId, attachments=$attachments, inboxId=$inboxId, createdAt=$createdAt, to=$to, cc=$cc, bcc=$bcc, messageId=$messageId, inReplyTo=$inReplyTo, bodyExcerpt=$bodyExcerpt, textExcerpt=$textExcerpt, bodyMD5Hash=$bodyMD5Hash, virtualSend=$virtualSend, threadId=$threadId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.sender != null) {
      json[r'sender'] = this.sender;
    } else {
      json[r'sender'] = null;
    }
    if (this.recipients != null) {
      json[r'recipients'] = this.recipients;
    } else {
      json[r'recipients'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
      json[r'userId'] = this.userId;
    if (this.attachments != null) {
      json[r'attachments'] = this.attachments;
    } else {
      json[r'attachments'] = null;
    }
      json[r'inboxId'] = this.inboxId;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'to'] = this.to;
      json[r'cc'] = this.cc;
      json[r'bcc'] = this.bcc;
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
    if (this.bodyExcerpt != null) {
      json[r'bodyExcerpt'] = this.bodyExcerpt;
    } else {
      json[r'bodyExcerpt'] = null;
    }
    if (this.textExcerpt != null) {
      json[r'textExcerpt'] = this.textExcerpt;
    } else {
      json[r'textExcerpt'] = null;
    }
    if (this.bodyMD5Hash != null) {
      json[r'bodyMD5Hash'] = this.bodyMD5Hash;
    } else {
      json[r'bodyMD5Hash'] = null;
    }
      json[r'virtualSend'] = this.virtualSend;
    if (this.threadId != null) {
      json[r'threadId'] = this.threadId;
    } else {
      json[r'threadId'] = null;
    }
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
        id: mapValueOfType<String>(json, r'id')!,
        from: mapValueOfType<String>(json, r'from'),
        sender: Sender.fromJson(json[r'sender']),
        recipients: EmailRecipients.fromJson(json[r'recipients']),
        subject: mapValueOfType<String>(json, r'subject'),
        userId: mapValueOfType<String>(json, r'userId')!,
        attachments: json[r'attachments'] is List
            ? (json[r'attachments'] as List).cast<String>()
            : const [],
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        to: json[r'to'] is List
            ? (json[r'to'] as List).cast<String>()
            : const [],
        cc: json[r'cc'] is List
            ? (json[r'cc'] as List).cast<String>()
            : const [],
        bcc: json[r'bcc'] is List
            ? (json[r'bcc'] as List).cast<String>()
            : const [],
        messageId: mapValueOfType<String>(json, r'messageId'),
        inReplyTo: mapValueOfType<String>(json, r'inReplyTo'),
        bodyExcerpt: mapValueOfType<String>(json, r'bodyExcerpt'),
        textExcerpt: mapValueOfType<String>(json, r'textExcerpt'),
        bodyMD5Hash: mapValueOfType<String>(json, r'bodyMD5Hash'),
        virtualSend: mapValueOfType<bool>(json, r'virtualSend')!,
        threadId: mapValueOfType<String>(json, r'threadId'),
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
    'to',
    'cc',
    'bcc',
    'virtualSend',
  };
}

