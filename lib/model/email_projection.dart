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
    required this.createdAt,
    this.sender,
    this.recipients,
    this.attachments = const [],
    required this.inboxId,
    this.to = const [],
    this.cc = const [],
    this.bcc = const [],
    this.messageId,
    this.domainId,
    this.favourite,
    this.plusAddress,
    this.inReplyTo,
    required this.read,
    this.bodyExcerpt,
    this.textExcerpt,
    this.bodyPartContentTypes = const [],
    this.bodyMD5Hash,
    required this.teamAccess,
    required this.id,
    this.threadId,
    required this.from,
  });

  String? subject;

  DateTime createdAt;

  Sender? sender;

  EmailRecipients? recipients;

  List<String>? attachments;

  String inboxId;

  List<String> to;

  List<String>? cc;

  List<String>? bcc;

  String? messageId;

  String? domainId;

  bool? favourite;

  String? plusAddress;

  String? inReplyTo;

  bool read;

  String? bodyExcerpt;

  String? textExcerpt;

  List<String>? bodyPartContentTypes;

  String? bodyMD5Hash;

  bool teamAccess;

  String id;

  String? threadId;

  String? from;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailProjection &&
     other.subject == subject &&
     other.createdAt == createdAt &&
     other.sender == sender &&
     other.recipients == recipients &&
     other.attachments == attachments &&
     other.inboxId == inboxId &&
     other.to == to &&
     other.cc == cc &&
     other.bcc == bcc &&
     other.messageId == messageId &&
     other.domainId == domainId &&
     other.favourite == favourite &&
     other.plusAddress == plusAddress &&
     other.inReplyTo == inReplyTo &&
     other.read == read &&
     other.bodyExcerpt == bodyExcerpt &&
     other.textExcerpt == textExcerpt &&
     other.bodyPartContentTypes == bodyPartContentTypes &&
     other.bodyMD5Hash == bodyMD5Hash &&
     other.teamAccess == teamAccess &&
     other.id == id &&
     other.threadId == threadId &&
     other.from == from;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (subject == null ? 0 : subject!.hashCode) +
    (createdAt.hashCode) +
    (sender == null ? 0 : sender!.hashCode) +
    (recipients == null ? 0 : recipients!.hashCode) +
    (attachments == null ? 0 : attachments!.hashCode) +
    (inboxId.hashCode) +
    (to.hashCode) +
    (cc == null ? 0 : cc!.hashCode) +
    (bcc == null ? 0 : bcc!.hashCode) +
    (messageId == null ? 0 : messageId!.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode) +
    (favourite == null ? 0 : favourite!.hashCode) +
    (plusAddress == null ? 0 : plusAddress!.hashCode) +
    (inReplyTo == null ? 0 : inReplyTo!.hashCode) +
    (read.hashCode) +
    (bodyExcerpt == null ? 0 : bodyExcerpt!.hashCode) +
    (textExcerpt == null ? 0 : textExcerpt!.hashCode) +
    (bodyPartContentTypes == null ? 0 : bodyPartContentTypes!.hashCode) +
    (bodyMD5Hash == null ? 0 : bodyMD5Hash!.hashCode) +
    (teamAccess.hashCode) +
    (id.hashCode) +
    (threadId == null ? 0 : threadId!.hashCode) +
    (from == null ? 0 : from!.hashCode);

  @override
  String toString() => 'EmailProjection[subject=$subject, createdAt=$createdAt, sender=$sender, recipients=$recipients, attachments=$attachments, inboxId=$inboxId, to=$to, cc=$cc, bcc=$bcc, messageId=$messageId, domainId=$domainId, favourite=$favourite, plusAddress=$plusAddress, inReplyTo=$inReplyTo, read=$read, bodyExcerpt=$bodyExcerpt, textExcerpt=$textExcerpt, bodyPartContentTypes=$bodyPartContentTypes, bodyMD5Hash=$bodyMD5Hash, teamAccess=$teamAccess, id=$id, threadId=$threadId, from=$from]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
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
    if (this.attachments != null) {
      json[r'attachments'] = this.attachments;
    } else {
      json[r'attachments'] = null;
    }
      json[r'inboxId'] = this.inboxId;
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
    if (this.domainId != null) {
      json[r'domainId'] = this.domainId;
    } else {
      json[r'domainId'] = null;
    }
    if (this.favourite != null) {
      json[r'favourite'] = this.favourite;
    } else {
      json[r'favourite'] = null;
    }
    if (this.plusAddress != null) {
      json[r'plusAddress'] = this.plusAddress;
    } else {
      json[r'plusAddress'] = null;
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
        createdAt: mapDateTime(json, r'createdAt', '')!,
        sender: Sender.fromJson(json[r'sender']),
        recipients: EmailRecipients.fromJson(json[r'recipients']),
        attachments: json[r'attachments'] is List
            ? (json[r'attachments'] as List).cast<String>()
            : const [],
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
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
        domainId: mapValueOfType<String>(json, r'domainId'),
        favourite: mapValueOfType<bool>(json, r'favourite'),
        plusAddress: mapValueOfType<String>(json, r'plusAddress'),
        inReplyTo: mapValueOfType<String>(json, r'inReplyTo'),
        read: mapValueOfType<bool>(json, r'read')!,
        bodyExcerpt: mapValueOfType<String>(json, r'bodyExcerpt'),
        textExcerpt: mapValueOfType<String>(json, r'textExcerpt'),
        bodyPartContentTypes: json[r'bodyPartContentTypes'] is List
            ? (json[r'bodyPartContentTypes'] as List).cast<String>()
            : const [],
        bodyMD5Hash: mapValueOfType<String>(json, r'bodyMD5Hash'),
        teamAccess: mapValueOfType<bool>(json, r'teamAccess')!,
        id: mapValueOfType<String>(json, r'id')!,
        threadId: mapValueOfType<String>(json, r'threadId'),
        from: mapValueOfType<String>(json, r'from'),
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
    'createdAt',
    'inboxId',
    'to',
    'read',
    'teamAccess',
    'id',
    'from',
  };
}

