//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailPreview {
  /// Returns a new [EmailPreview] instance.
  EmailPreview({
    required this.id,
    this.inboxId,
    this.domainId,
    this.subject,
    this.to = const [],
    this.from,
    this.bcc = const [],
    this.cc = const [],
    required this.createdAt,
    required this.read,
    this.attachments = const [],
    this.threadId,
    this.messageId,
    this.inReplyTo,
    this.sender,
    this.recipients,
    this.favourite,
    this.bodyPartContentTypes = const [],
    this.plusAddress,
  });

  /// ID of the email entity
  String id;

  /// ID of the inbox that received the email
  String? inboxId;

  /// ID of the domain that received the email
  String? domainId;

  /// The subject line of the email message as specified by SMTP subject header
  String? subject;

  /// List of `To` recipient email addresses that the email was addressed to. See recipients object for names.
  List<String>? to;

  /// Who the email was sent from. An email address - see fromName for the sender name.
  String? from;

  /// List of `BCC` recipients email addresses that the email was addressed to. See recipients object for names.
  List<String>? bcc;

  /// List of `CC` recipients email addresses that the email was addressed to. See recipients object for names.
  List<String>? cc;

  /// When was the email received by MailSlurp
  DateTime createdAt;

  /// Read flag. Has the email ever been viewed in the dashboard or fetched via the API with a hydrated body? If so the email is marked as read. Paginated results do not affect read status. Read status is different to email opened event as it depends on your own account accessing the email. Email opened is determined by tracking pixels sent to other uses if enable during sending. You can listened for both email read and email opened events using webhooks.
  bool read;

  /// List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension.
  List<String>? attachments;

  /// MailSlurp thread ID for email chain that enables lookup for In-Reply-To and References fields.
  String? threadId;

  /// RFC 5322 Message-ID header value without angle brackets.
  String? messageId;

  /// Parsed value of In-Reply-To header. A Message-ID in a thread.
  String? inReplyTo;

  Sender? sender;

  EmailRecipients? recipients;

  bool? favourite;

  List<String>? bodyPartContentTypes;

  String? plusAddress;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailPreview &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.domainId == domainId &&
     other.subject == subject &&
     other.to == to &&
     other.from == from &&
     other.bcc == bcc &&
     other.cc == cc &&
     other.createdAt == createdAt &&
     other.read == read &&
     other.attachments == attachments &&
     other.threadId == threadId &&
     other.messageId == messageId &&
     other.inReplyTo == inReplyTo &&
     other.sender == sender &&
     other.recipients == recipients &&
     other.favourite == favourite &&
     other.bodyPartContentTypes == bodyPartContentTypes &&
     other.plusAddress == plusAddress;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (bcc == null ? 0 : bcc!.hashCode) +
    (cc == null ? 0 : cc!.hashCode) +
    (createdAt.hashCode) +
    (read.hashCode) +
    (attachments == null ? 0 : attachments!.hashCode) +
    (threadId == null ? 0 : threadId!.hashCode) +
    (messageId == null ? 0 : messageId!.hashCode) +
    (inReplyTo == null ? 0 : inReplyTo!.hashCode) +
    (sender == null ? 0 : sender!.hashCode) +
    (recipients == null ? 0 : recipients!.hashCode) +
    (favourite == null ? 0 : favourite!.hashCode) +
    (bodyPartContentTypes == null ? 0 : bodyPartContentTypes!.hashCode) +
    (plusAddress == null ? 0 : plusAddress!.hashCode);

  @override
  String toString() => 'EmailPreview[id=$id, inboxId=$inboxId, domainId=$domainId, subject=$subject, to=$to, from=$from, bcc=$bcc, cc=$cc, createdAt=$createdAt, read=$read, attachments=$attachments, threadId=$threadId, messageId=$messageId, inReplyTo=$inReplyTo, sender=$sender, recipients=$recipients, favourite=$favourite, bodyPartContentTypes=$bodyPartContentTypes, plusAddress=$plusAddress]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
    if (this.domainId != null) {
      json[r'domainId'] = this.domainId;
    } else {
      json[r'domainId'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
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
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'read'] = this.read;
    if (this.attachments != null) {
      json[r'attachments'] = this.attachments;
    } else {
      json[r'attachments'] = null;
    }
    if (this.threadId != null) {
      json[r'threadId'] = this.threadId;
    } else {
      json[r'threadId'] = null;
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
    if (this.recipients != null) {
      json[r'recipients'] = this.recipients;
    } else {
      json[r'recipients'] = null;
    }
    if (this.favourite != null) {
      json[r'favourite'] = this.favourite;
    } else {
      json[r'favourite'] = null;
    }
    if (this.bodyPartContentTypes != null) {
      json[r'bodyPartContentTypes'] = this.bodyPartContentTypes;
    } else {
      json[r'bodyPartContentTypes'] = null;
    }
    if (this.plusAddress != null) {
      json[r'plusAddress'] = this.plusAddress;
    } else {
      json[r'plusAddress'] = null;
    }
    return json;
  }

  /// Returns a new [EmailPreview] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailPreview? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailPreview[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailPreview[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailPreview(
        id: mapValueOfType<String>(json, r'id')!,
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        domainId: mapValueOfType<String>(json, r'domainId'),
        subject: mapValueOfType<String>(json, r'subject'),
        to: json[r'to'] is List
            ? (json[r'to'] as List).cast<String>()
            : const [],
        from: mapValueOfType<String>(json, r'from'),
        bcc: json[r'bcc'] is List
            ? (json[r'bcc'] as List).cast<String>()
            : const [],
        cc: json[r'cc'] is List
            ? (json[r'cc'] as List).cast<String>()
            : const [],
        createdAt: mapDateTime(json, r'createdAt', '')!,
        read: mapValueOfType<bool>(json, r'read')!,
        attachments: json[r'attachments'] is List
            ? (json[r'attachments'] as List).cast<String>()
            : const [],
        threadId: mapValueOfType<String>(json, r'threadId'),
        messageId: mapValueOfType<String>(json, r'messageId'),
        inReplyTo: mapValueOfType<String>(json, r'inReplyTo'),
        sender: Sender.fromJson(json[r'sender']),
        recipients: EmailRecipients.fromJson(json[r'recipients']),
        favourite: mapValueOfType<bool>(json, r'favourite'),
        bodyPartContentTypes: json[r'bodyPartContentTypes'] is List
            ? (json[r'bodyPartContentTypes'] as List).cast<String>()
            : const [],
        plusAddress: mapValueOfType<String>(json, r'plusAddress'),
      );
    }
    return null;
  }

  static List<EmailPreview> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailPreview>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailPreview.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailPreview> mapFromJson(dynamic json) {
    final map = <String, EmailPreview>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailPreview.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailPreview-objects as value to a dart map
  static Map<String, List<EmailPreview>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailPreview>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailPreview.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'to',
    'createdAt',
    'read',
  };
}

