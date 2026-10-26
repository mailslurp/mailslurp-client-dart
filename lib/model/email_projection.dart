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
    this.subject,
    required this.from,
    required this.id,
    this.threadId,
    required this.inboxId,
    this.recipients,
    this.attachments = const [],
    required this.read,
    this.textExcerpt,
    this.bodyExcerpt,
    this.to = const [],
    required this.createdAt,
    this.cc = const [],
    this.bcc = const [],
    this.messageId,
    this.inReplyTo,
    this.favourite,
    this.sizeBytes,
    this.sender,
    this.domainId,
    this.bodyPartContentTypes = const [],
    this.bodyMD5Hash,
    this.plusAddress,
    this.imapUid,
    required this.teamAccess,
  });

  String? subject;

  String? from;

  String id;

  String? threadId;

  String inboxId;

  EmailRecipients? recipients;

  List<String>? attachments;

  bool read;

  String? textExcerpt;

  String? bodyExcerpt;

  List<String> to;

  DateTime createdAt;

  List<String>? cc;

  List<String>? bcc;

  String? messageId;

  String? inReplyTo;

  bool? favourite;

  int? sizeBytes;

  Sender? sender;

  String? domainId;

  List<String>? bodyPartContentTypes;

  String? bodyMD5Hash;

  String? plusAddress;

  int? imapUid;

  bool teamAccess;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailProjection &&
     other.subject == subject &&
     other.from == from &&
     other.id == id &&
     other.threadId == threadId &&
     other.inboxId == inboxId &&
     other.recipients == recipients &&
     other.attachments == attachments &&
     other.read == read &&
     other.textExcerpt == textExcerpt &&
     other.bodyExcerpt == bodyExcerpt &&
     other.to == to &&
     other.createdAt == createdAt &&
     other.cc == cc &&
     other.bcc == bcc &&
     other.messageId == messageId &&
     other.inReplyTo == inReplyTo &&
     other.favourite == favourite &&
     other.sizeBytes == sizeBytes &&
     other.sender == sender &&
     other.domainId == domainId &&
     other.bodyPartContentTypes == bodyPartContentTypes &&
     other.bodyMD5Hash == bodyMD5Hash &&
     other.plusAddress == plusAddress &&
     other.imapUid == imapUid &&
     other.teamAccess == teamAccess;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (subject == null ? 0 : subject!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (id.hashCode) +
    (threadId == null ? 0 : threadId!.hashCode) +
    (inboxId.hashCode) +
    (recipients == null ? 0 : recipients!.hashCode) +
    (attachments == null ? 0 : attachments!.hashCode) +
    (read.hashCode) +
    (textExcerpt == null ? 0 : textExcerpt!.hashCode) +
    (bodyExcerpt == null ? 0 : bodyExcerpt!.hashCode) +
    (to.hashCode) +
    (createdAt.hashCode) +
    (cc == null ? 0 : cc!.hashCode) +
    (bcc == null ? 0 : bcc!.hashCode) +
    (messageId == null ? 0 : messageId!.hashCode) +
    (inReplyTo == null ? 0 : inReplyTo!.hashCode) +
    (favourite == null ? 0 : favourite!.hashCode) +
    (sizeBytes == null ? 0 : sizeBytes!.hashCode) +
    (sender == null ? 0 : sender!.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode) +
    (bodyPartContentTypes == null ? 0 : bodyPartContentTypes!.hashCode) +
    (bodyMD5Hash == null ? 0 : bodyMD5Hash!.hashCode) +
    (plusAddress == null ? 0 : plusAddress!.hashCode) +
    (imapUid == null ? 0 : imapUid!.hashCode) +
    (teamAccess.hashCode);

  @override
  String toString() => 'EmailProjection[subject=$subject, from=$from, id=$id, threadId=$threadId, inboxId=$inboxId, recipients=$recipients, attachments=$attachments, read=$read, textExcerpt=$textExcerpt, bodyExcerpt=$bodyExcerpt, to=$to, createdAt=$createdAt, cc=$cc, bcc=$bcc, messageId=$messageId, inReplyTo=$inReplyTo, favourite=$favourite, sizeBytes=$sizeBytes, sender=$sender, domainId=$domainId, bodyPartContentTypes=$bodyPartContentTypes, bodyMD5Hash=$bodyMD5Hash, plusAddress=$plusAddress, imapUid=$imapUid, teamAccess=$teamAccess]';

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
      json[r'read'] = this.read;
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
      json[r'to'] = this.to;
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
    if (this.favourite != null) {
      json[r'favourite'] = this.favourite;
    } else {
      json[r'favourite'] = null;
    }
    if (this.sizeBytes != null) {
      json[r'sizeBytes'] = this.sizeBytes;
    } else {
      json[r'sizeBytes'] = null;
    }
    if (this.sender != null) {
      json[r'sender'] = this.sender;
    } else {
      json[r'sender'] = null;
    }
    if (this.domainId != null) {
      json[r'domainId'] = this.domainId;
    } else {
      json[r'domainId'] = null;
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
        subject: mapValueOfType<String>(json, r'subject'),
        from: mapValueOfType<String>(json, r'from'),
        id: mapValueOfType<String>(json, r'id')!,
        threadId: mapValueOfType<String>(json, r'threadId'),
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        recipients: EmailRecipients.fromJson(json[r'recipients']),
        attachments: json[r'attachments'] is List
            ? (json[r'attachments'] as List).cast<String>()
            : const [],
        read: mapValueOfType<bool>(json, r'read')!,
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
        favourite: mapValueOfType<bool>(json, r'favourite'),
        sizeBytes: mapValueOfType<int>(json, r'sizeBytes'),
        sender: Sender.fromJson(json[r'sender']),
        domainId: mapValueOfType<String>(json, r'domainId'),
        bodyPartContentTypes: json[r'bodyPartContentTypes'] is List
            ? (json[r'bodyPartContentTypes'] as List).cast<String>()
            : const [],
        bodyMD5Hash: mapValueOfType<String>(json, r'bodyMD5Hash'),
        plusAddress: mapValueOfType<String>(json, r'plusAddress'),
        imapUid: mapValueOfType<int>(json, r'imapUid'),
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
    'from',
    'id',
    'inboxId',
    'read',
    'to',
    'createdAt',
    'teamAccess',
  };
}

