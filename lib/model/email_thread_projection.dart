//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailThreadProjection {
  /// Returns a new [EmailThreadProjection] instance.
  EmailThreadProjection({
    this.sender,
    this.recipients,
    required this.userId,
    this.inboxId,
    required this.updatedAt,
    required this.createdAt,
    this.to = const [],
    this.cc = const [],
    this.bcc = const [],
    required this.hasAttachments,
    required this.unread,
    required this.messageCount,
    this.lastBodyExcerpt,
    this.lastTextExcerpt,
    this.lastCreatedAt,
    this.lastFrom,
    this.lastSender,
    this.subject,
    required this.id,
    this.from,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SenderProjection? sender;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EmailRecipientsProjection? recipients;

  /// User ID
  String userId;

  /// Inbox ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inboxId;

  /// Updated at DateTime
  DateTime updatedAt;

  /// Created at DateTime
  DateTime createdAt;

  /// To recipients
  List<String> to;

  /// CC recipients
  List<String> cc;

  /// BCC recipients
  List<String> bcc;

  /// Has attachments
  bool hasAttachments;

  /// Has unread
  bool unread;

  /// Number of messages in the thread
  int messageCount;

  /// Last body excerpt
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastBodyExcerpt;

  /// Last text excerpt
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastTextExcerpt;

  /// Last email created time
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastCreatedAt;

  /// Last sender
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastFrom;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SenderProjection? lastSender;

  /// Thread topic subject
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  /// ID of email thread
  String id;

  /// From sender
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailThreadProjection &&
     other.sender == sender &&
     other.recipients == recipients &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.updatedAt == updatedAt &&
     other.createdAt == createdAt &&
     other.to == to &&
     other.cc == cc &&
     other.bcc == bcc &&
     other.hasAttachments == hasAttachments &&
     other.unread == unread &&
     other.messageCount == messageCount &&
     other.lastBodyExcerpt == lastBodyExcerpt &&
     other.lastTextExcerpt == lastTextExcerpt &&
     other.lastCreatedAt == lastCreatedAt &&
     other.lastFrom == lastFrom &&
     other.lastSender == lastSender &&
     other.subject == subject &&
     other.id == id &&
     other.from == from;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sender == null ? 0 : sender!.hashCode) +
    (recipients == null ? 0 : recipients!.hashCode) +
    (userId.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (updatedAt.hashCode) +
    (createdAt.hashCode) +
    (to.hashCode) +
    (cc.hashCode) +
    (bcc.hashCode) +
    (hasAttachments.hashCode) +
    (unread.hashCode) +
    (messageCount.hashCode) +
    (lastBodyExcerpt == null ? 0 : lastBodyExcerpt!.hashCode) +
    (lastTextExcerpt == null ? 0 : lastTextExcerpt!.hashCode) +
    (lastCreatedAt == null ? 0 : lastCreatedAt!.hashCode) +
    (lastFrom == null ? 0 : lastFrom!.hashCode) +
    (lastSender == null ? 0 : lastSender!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (id.hashCode) +
    (from == null ? 0 : from!.hashCode);

  @override
  String toString() => 'EmailThreadProjection[sender=$sender, recipients=$recipients, userId=$userId, inboxId=$inboxId, updatedAt=$updatedAt, createdAt=$createdAt, to=$to, cc=$cc, bcc=$bcc, hasAttachments=$hasAttachments, unread=$unread, messageCount=$messageCount, lastBodyExcerpt=$lastBodyExcerpt, lastTextExcerpt=$lastTextExcerpt, lastCreatedAt=$lastCreatedAt, lastFrom=$lastFrom, lastSender=$lastSender, subject=$subject, id=$id, from=$from]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
      json[r'userId'] = this.userId;
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'to'] = this.to;
      json[r'cc'] = this.cc;
      json[r'bcc'] = this.bcc;
      json[r'hasAttachments'] = this.hasAttachments;
      json[r'unread'] = this.unread;
      json[r'messageCount'] = this.messageCount;
    if (this.lastBodyExcerpt != null) {
      json[r'lastBodyExcerpt'] = this.lastBodyExcerpt;
    } else {
      json[r'lastBodyExcerpt'] = null;
    }
    if (this.lastTextExcerpt != null) {
      json[r'lastTextExcerpt'] = this.lastTextExcerpt;
    } else {
      json[r'lastTextExcerpt'] = null;
    }
    if (this.lastCreatedAt != null) {
      json[r'lastCreatedAt'] = this.lastCreatedAt!.toUtc().toIso8601String();
    } else {
      json[r'lastCreatedAt'] = null;
    }
    if (this.lastFrom != null) {
      json[r'lastFrom'] = this.lastFrom;
    } else {
      json[r'lastFrom'] = null;
    }
    if (this.lastSender != null) {
      json[r'lastSender'] = this.lastSender;
    } else {
      json[r'lastSender'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
      json[r'id'] = this.id;
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    return json;
  }

  /// Returns a new [EmailThreadProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailThreadProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailThreadProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailThreadProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailThreadProjection(
        sender: SenderProjection.fromJson(json[r'sender']),
        recipients: EmailRecipientsProjection.fromJson(json[r'recipients']),
        userId: mapValueOfType<String>(json, r'userId')!,
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
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
        hasAttachments: mapValueOfType<bool>(json, r'hasAttachments')!,
        unread: mapValueOfType<bool>(json, r'unread')!,
        messageCount: mapValueOfType<int>(json, r'messageCount')!,
        lastBodyExcerpt: mapValueOfType<String>(json, r'lastBodyExcerpt'),
        lastTextExcerpt: mapValueOfType<String>(json, r'lastTextExcerpt'),
        lastCreatedAt: mapDateTime(json, r'lastCreatedAt', ''),
        lastFrom: mapValueOfType<String>(json, r'lastFrom'),
        lastSender: SenderProjection.fromJson(json[r'lastSender']),
        subject: mapValueOfType<String>(json, r'subject'),
        id: mapValueOfType<String>(json, r'id')!,
        from: mapValueOfType<String>(json, r'from'),
      );
    }
    return null;
  }

  static List<EmailThreadProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailThreadProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailThreadProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailThreadProjection> mapFromJson(dynamic json) {
    final map = <String, EmailThreadProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailThreadProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailThreadProjection-objects as value to a dart map
  static Map<String, List<EmailThreadProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailThreadProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailThreadProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'userId',
    'updatedAt',
    'createdAt',
    'to',
    'hasAttachments',
    'unread',
    'messageCount',
    'id',
  };
}

