//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailDraftDto {
  /// Returns a new [EmailDraftDto] instance.
  EmailDraftDto({
    required this.id,
    required this.userId,
    required this.inboxId,
    this.to = const [],
    this.cc = const [],
    this.bcc = const [],
    this.from,
    this.sender,
    this.recipients,
    this.subject,
    this.bodyExcerpt,
    this.textExcerpt,
    this.attachments = const [],
    required this.sendOptions,
    required this.createdAt,
    required this.updatedAt,
  });

  /// ID of the draft
  String id;

  /// User ID
  String userId;

  /// Inbox ID the draft will send from
  String inboxId;

  /// Draft recipients
  List<String>? to;

  /// Draft CC recipients
  List<String>? cc;

  /// Draft BCC recipients
  List<String>? bcc;

  /// Draft sender
  String? from;

  Sender? sender;

  EmailRecipients? recipients;

  /// Draft subject
  String? subject;

  /// Draft body preview
  String? bodyExcerpt;

  /// Draft text preview
  String? textExcerpt;

  /// Attachment IDs selected for the draft
  List<String>? attachments;

  SendEmailOptions sendOptions;

  /// Draft creation time
  DateTime createdAt;

  /// Draft last update time
  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailDraftDto &&
     other.id == id &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.to == to &&
     other.cc == cc &&
     other.bcc == bcc &&
     other.from == from &&
     other.sender == sender &&
     other.recipients == recipients &&
     other.subject == subject &&
     other.bodyExcerpt == bodyExcerpt &&
     other.textExcerpt == textExcerpt &&
     other.attachments == attachments &&
     other.sendOptions == sendOptions &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (inboxId.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (cc == null ? 0 : cc!.hashCode) +
    (bcc == null ? 0 : bcc!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (sender == null ? 0 : sender!.hashCode) +
    (recipients == null ? 0 : recipients!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (bodyExcerpt == null ? 0 : bodyExcerpt!.hashCode) +
    (textExcerpt == null ? 0 : textExcerpt!.hashCode) +
    (attachments == null ? 0 : attachments!.hashCode) +
    (sendOptions.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'EmailDraftDto[id=$id, userId=$userId, inboxId=$inboxId, to=$to, cc=$cc, bcc=$bcc, from=$from, sender=$sender, recipients=$recipients, subject=$subject, bodyExcerpt=$bodyExcerpt, textExcerpt=$textExcerpt, attachments=$attachments, sendOptions=$sendOptions, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'inboxId'] = this.inboxId;
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
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
    if (this.attachments != null) {
      json[r'attachments'] = this.attachments;
    } else {
      json[r'attachments'] = null;
    }
      json[r'sendOptions'] = this.sendOptions;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [EmailDraftDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailDraftDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailDraftDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailDraftDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailDraftDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
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
        from: mapValueOfType<String>(json, r'from'),
        sender: Sender.fromJson(json[r'sender']),
        recipients: EmailRecipients.fromJson(json[r'recipients']),
        subject: mapValueOfType<String>(json, r'subject'),
        bodyExcerpt: mapValueOfType<String>(json, r'bodyExcerpt'),
        textExcerpt: mapValueOfType<String>(json, r'textExcerpt'),
        attachments: json[r'attachments'] is List
            ? (json[r'attachments'] as List).cast<String>()
            : const [],
        sendOptions: SendEmailOptions.fromJson(json[r'sendOptions'])!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<EmailDraftDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailDraftDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailDraftDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailDraftDto> mapFromJson(dynamic json) {
    final map = <String, EmailDraftDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailDraftDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailDraftDto-objects as value to a dart map
  static Map<String, List<EmailDraftDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailDraftDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailDraftDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'inboxId',
    'sendOptions',
    'createdAt',
    'updatedAt',
  };
}

