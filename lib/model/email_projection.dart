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
    this.threadId,
    required this.from,
    this.subject,
    this.sender,
    this.recipients,
    required this.inboxId,
    this.attachments = const [],
    this.sizeBytes,
    required this.createdAt,
    this.to = const [],
    this.cc = const [],
    this.bcc = const [],
    this.messageId,
    this.favourite,
    this.domainId,
    this.plusAddress,
    this.imapUid,
    this.inReplyTo,
    required this.read,
    this.bodyExcerpt,
    this.textExcerpt,
    this.bodyPartContentTypes = const [],
    this.bodyMD5Hash,
    required this.teamAccess,
  });

  String id;

  String? threadId;

  String? from;

  String? subject;

  Sender? sender;

  EmailRecipients? recipients;

  String inboxId;

  List<String>? attachments;

  int? sizeBytes;

  DateTime createdAt;

  List<String> to;

  List<String>? cc;

  List<String>? bcc;

  String? messageId;

  bool? favourite;

  String? domainId;

  String? plusAddress;

  int? imapUid;

  String? inReplyTo;

  bool read;

  String? bodyExcerpt;

  String? textExcerpt;

  List<String>? bodyPartContentTypes;

  String? bodyMD5Hash;

  bool teamAccess;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailProjection &&
     other.id == id &&
     other.threadId == threadId &&
     other.from == from &&
     other.subject == subject &&
     other.sender == sender &&
     other.recipients == recipients &&
     other.inboxId == inboxId &&
     other.attachments == attachments &&
     other.sizeBytes == sizeBytes &&
     other.createdAt == createdAt &&
     other.to == to &&
     other.cc == cc &&
     other.bcc == bcc &&
     other.messageId == messageId &&
     other.favourite == favourite &&
     other.domainId == domainId &&
     other.plusAddress == plusAddress &&
     other.imapUid == imapUid &&
     other.inReplyTo == inReplyTo &&
     other.read == read &&
     other.bodyExcerpt == bodyExcerpt &&
     other.textExcerpt == textExcerpt &&
     other.bodyPartContentTypes == bodyPartContentTypes &&
     other.bodyMD5Hash == bodyMD5Hash &&
     other.teamAccess == teamAccess;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (threadId == null ? 0 : threadId!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (sender == null ? 0 : sender!.hashCode) +
    (recipients == null ? 0 : recipients!.hashCode) +
    (inboxId.hashCode) +
    (attachments == null ? 0 : attachments!.hashCode) +
    (sizeBytes == null ? 0 : sizeBytes!.hashCode) +
    (createdAt.hashCode) +
    (to.hashCode) +
    (cc == null ? 0 : cc!.hashCode) +
    (bcc == null ? 0 : bcc!.hashCode) +
    (messageId == null ? 0 : messageId!.hashCode) +
    (favourite == null ? 0 : favourite!.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode) +
    (plusAddress == null ? 0 : plusAddress!.hashCode) +
    (imapUid == null ? 0 : imapUid!.hashCode) +
    (inReplyTo == null ? 0 : inReplyTo!.hashCode) +
    (read.hashCode) +
    (bodyExcerpt == null ? 0 : bodyExcerpt!.hashCode) +
    (textExcerpt == null ? 0 : textExcerpt!.hashCode) +
    (bodyPartContentTypes == null ? 0 : bodyPartContentTypes!.hashCode) +
    (bodyMD5Hash == null ? 0 : bodyMD5Hash!.hashCode) +
    (teamAccess.hashCode);

  @override
  String toString() => 'EmailProjection[id=$id, threadId=$threadId, from=$from, subject=$subject, sender=$sender, recipients=$recipients, inboxId=$inboxId, attachments=$attachments, sizeBytes=$sizeBytes, createdAt=$createdAt, to=$to, cc=$cc, bcc=$bcc, messageId=$messageId, favourite=$favourite, domainId=$domainId, plusAddress=$plusAddress, imapUid=$imapUid, inReplyTo=$inReplyTo, read=$read, bodyExcerpt=$bodyExcerpt, textExcerpt=$textExcerpt, bodyPartContentTypes=$bodyPartContentTypes, bodyMD5Hash=$bodyMD5Hash, teamAccess=$teamAccess]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.threadId != null) {
      json[r'threadId'] = this.threadId;
    } else {
      json[r'threadId'] = null;
    }
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
      json[r'inboxId'] = this.inboxId;
    if (this.attachments != null) {
      json[r'attachments'] = this.attachments;
    } else {
      json[r'attachments'] = null;
    }
    if (this.sizeBytes != null) {
      json[r'sizeBytes'] = this.sizeBytes;
    } else {
      json[r'sizeBytes'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'to'] = this.to;
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
    if (this.favourite != null) {
      json[r'favourite'] = this.favourite;
    } else {
      json[r'favourite'] = null;
    }
    if (this.domainId != null) {
      json[r'domainId'] = this.domainId;
    } else {
      json[r'domainId'] = null;
    }
    if (this.plusAddress != null) {
      json[r'plusAddress'] = this.plusAddress;
    } else {
      json[r'plusAddress'] = null;
    }
    if (this.imapUid != null) {
      json[r'imapUid'] = this.imapUid;
    } else {
      json[r'imapUid'] = null;
    }
    if (this.inReplyTo != null) {
      json[r'inReplyTo'] = this.inReplyTo;
    } else {
      json[r'inReplyTo'] = null;
    }
      json[r'read'] = this.read;
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
    if (this.bodyPartContentTypes != null) {
      json[r'bodyPartContentTypes'] = this.bodyPartContentTypes;
    } else {
      json[r'bodyPartContentTypes'] = null;
    }
    if (this.bodyMD5Hash != null) {
      json[r'bodyMD5Hash'] = this.bodyMD5Hash;
    } else {
      json[r'bodyMD5Hash'] = null;
    }
      json[r'teamAccess'] = this.teamAccess;
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
        threadId: mapValueOfType<String>(json, r'threadId'),
        from: mapValueOfType<String>(json, r'from'),
        subject: mapValueOfType<String>(json, r'subject'),
        sender: Sender.fromJson(json[r'sender']),
        recipients: EmailRecipients.fromJson(json[r'recipients']),
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        attachments: json[r'attachments'] is List
            ? (json[r'attachments'] as List).cast<String>()
            : const [],
        sizeBytes: mapValueOfType<int>(json, r'sizeBytes'),
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
        favourite: mapValueOfType<bool>(json, r'favourite'),
        domainId: mapValueOfType<String>(json, r'domainId'),
        plusAddress: mapValueOfType<String>(json, r'plusAddress'),
        imapUid: mapValueOfType<int>(json, r'imapUid'),
        inReplyTo: mapValueOfType<String>(json, r'inReplyTo'),
        read: mapValueOfType<bool>(json, r'read')!,
        bodyExcerpt: mapValueOfType<String>(json, r'bodyExcerpt'),
        textExcerpt: mapValueOfType<String>(json, r'textExcerpt'),
        bodyPartContentTypes: json[r'bodyPartContentTypes'] is List
            ? (json[r'bodyPartContentTypes'] as List).cast<String>()
            : const [],
        bodyMD5Hash: mapValueOfType<String>(json, r'bodyMD5Hash'),
        teamAccess: mapValueOfType<bool>(json, r'teamAccess')!,
      );
    }
    return null;
  }

  static List<EmailProjection> listFromJson(dynamic json, {bool growable = false,}) {
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
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'from',
    'inboxId',
    'createdAt',
    'to',
    'read',
    'teamAccess',
  };
}

