//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SentEmailDto {
  /// Returns a new [SentEmailDto] instance.
  SentEmailDto({
    required this.id,
    required this.userId,
    required this.inboxId,
    this.domainId,
    this.to = const [],
    this.from,
    this.replyTo,
    this.cc = const [],
    this.bcc = const [],
    this.attachments = const [],
    this.subject,
    this.bodyMD5Hash,
    this.body,
    this.toContacts = const [],
    this.toGroup,
    this.charset,
    this.isHTML,
    required this.sentAt,
    this.pixelIds = const [],
    this.messageId,
    this.messageIds = const [],
    this.virtualSend,
    this.templateId,
    this.templateVariables = const {},
    this.headers = const {},
    this.html,
  });

  /// ID of sent email
  String id;

  /// User ID
  String userId;

  /// Inbox ID email was sent from
  String inboxId;

  /// Domain ID
  String? domainId;

  /// Recipients email was sent to
  List<String>? to;

  /// Sent from address
  String? from;

  String? replyTo;

  List<String>? cc;

  List<String>? bcc;

  /// Array of IDs of attachments that were sent with this email
  List<String>? attachments;

  String? subject;

  /// MD5 Hash
  String? bodyMD5Hash;

  /// Sent email body
  String? body;

  List<String>? toContacts;

  String? toGroup;

  String? charset;

  bool? isHTML;

  DateTime sentAt;

  List<String>? pixelIds;

  String? messageId;

  List<String>? messageIds;

  bool? virtualSend;

  String? templateId;

  Map<String, Object>? templateVariables;

  Map<String, String>? headers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? html;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SentEmailDto &&
     other.id == id &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.domainId == domainId &&
     other.to == to &&
     other.from == from &&
     other.replyTo == replyTo &&
     other.cc == cc &&
     other.bcc == bcc &&
     other.attachments == attachments &&
     other.subject == subject &&
     other.bodyMD5Hash == bodyMD5Hash &&
     other.body == body &&
     other.toContacts == toContacts &&
     other.toGroup == toGroup &&
     other.charset == charset &&
     other.isHTML == isHTML &&
     other.sentAt == sentAt &&
     other.pixelIds == pixelIds &&
     other.messageId == messageId &&
     other.messageIds == messageIds &&
     other.virtualSend == virtualSend &&
     other.templateId == templateId &&
     other.templateVariables == templateVariables &&
     other.headers == headers &&
     other.html == html;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (inboxId.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (replyTo == null ? 0 : replyTo!.hashCode) +
    (cc == null ? 0 : cc!.hashCode) +
    (bcc == null ? 0 : bcc!.hashCode) +
    (attachments == null ? 0 : attachments!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (bodyMD5Hash == null ? 0 : bodyMD5Hash!.hashCode) +
    (body == null ? 0 : body!.hashCode) +
    (toContacts == null ? 0 : toContacts!.hashCode) +
    (toGroup == null ? 0 : toGroup!.hashCode) +
    (charset == null ? 0 : charset!.hashCode) +
    (isHTML == null ? 0 : isHTML!.hashCode) +
    (sentAt.hashCode) +
    (pixelIds == null ? 0 : pixelIds!.hashCode) +
    (messageId == null ? 0 : messageId!.hashCode) +
    (messageIds == null ? 0 : messageIds!.hashCode) +
    (virtualSend == null ? 0 : virtualSend!.hashCode) +
    (templateId == null ? 0 : templateId!.hashCode) +
    (templateVariables == null ? 0 : templateVariables!.hashCode) +
    (headers == null ? 0 : headers!.hashCode) +
    (html == null ? 0 : html!.hashCode);

  @override
  String toString() => 'SentEmailDto[id=$id, userId=$userId, inboxId=$inboxId, domainId=$domainId, to=$to, from=$from, replyTo=$replyTo, cc=$cc, bcc=$bcc, attachments=$attachments, subject=$subject, bodyMD5Hash=$bodyMD5Hash, body=$body, toContacts=$toContacts, toGroup=$toGroup, charset=$charset, isHTML=$isHTML, sentAt=$sentAt, pixelIds=$pixelIds, messageId=$messageId, messageIds=$messageIds, virtualSend=$virtualSend, templateId=$templateId, templateVariables=$templateVariables, headers=$headers, html=$html]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'inboxId'] = this.inboxId;
    if (this.domainId != null) {
      json[r'domainId'] = this.domainId;
    } else {
      json[r'domainId'] = null;
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
    if (this.replyTo != null) {
      json[r'replyTo'] = this.replyTo;
    } else {
      json[r'replyTo'] = null;
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
    if (this.attachments != null) {
      json[r'attachments'] = this.attachments;
    } else {
      json[r'attachments'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.bodyMD5Hash != null) {
      json[r'bodyMD5Hash'] = this.bodyMD5Hash;
    } else {
      json[r'bodyMD5Hash'] = null;
    }
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
    if (this.toContacts != null) {
      json[r'toContacts'] = this.toContacts;
    } else {
      json[r'toContacts'] = null;
    }
    if (this.toGroup != null) {
      json[r'toGroup'] = this.toGroup;
    } else {
      json[r'toGroup'] = null;
    }
    if (this.charset != null) {
      json[r'charset'] = this.charset;
    } else {
      json[r'charset'] = null;
    }
    if (this.isHTML != null) {
      json[r'isHTML'] = this.isHTML;
    } else {
      json[r'isHTML'] = null;
    }
      json[r'sentAt'] = this.sentAt.toUtc().toIso8601String();
    if (this.pixelIds != null) {
      json[r'pixelIds'] = this.pixelIds;
    } else {
      json[r'pixelIds'] = null;
    }
    if (this.messageId != null) {
      json[r'messageId'] = this.messageId;
    } else {
      json[r'messageId'] = null;
    }
    if (this.messageIds != null) {
      json[r'messageIds'] = this.messageIds;
    } else {
      json[r'messageIds'] = null;
    }
    if (this.virtualSend != null) {
      json[r'virtualSend'] = this.virtualSend;
    } else {
      json[r'virtualSend'] = null;
    }
    if (this.templateId != null) {
      json[r'templateId'] = this.templateId;
    } else {
      json[r'templateId'] = null;
    }
    if (this.templateVariables != null) {
      json[r'templateVariables'] = this.templateVariables;
    } else {
      json[r'templateVariables'] = null;
    }
    if (this.headers != null) {
      json[r'headers'] = this.headers;
    } else {
      json[r'headers'] = null;
    }
    if (this.html != null) {
      json[r'html'] = this.html;
    } else {
      json[r'html'] = null;
    }
    return json;
  }

  /// Returns a new [SentEmailDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SentEmailDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SentEmailDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SentEmailDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SentEmailDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        domainId: mapValueOfType<String>(json, r'domainId'),
        to: json[r'to'] is List
            ? (json[r'to'] as List).cast<String>()
            : const [],
        from: mapValueOfType<String>(json, r'from'),
        replyTo: mapValueOfType<String>(json, r'replyTo'),
        cc: json[r'cc'] is List
            ? (json[r'cc'] as List).cast<String>()
            : const [],
        bcc: json[r'bcc'] is List
            ? (json[r'bcc'] as List).cast<String>()
            : const [],
        attachments: json[r'attachments'] is List
            ? (json[r'attachments'] as List).cast<String>()
            : const [],
        subject: mapValueOfType<String>(json, r'subject'),
        bodyMD5Hash: mapValueOfType<String>(json, r'bodyMD5Hash'),
        body: mapValueOfType<String>(json, r'body'),
        toContacts: json[r'toContacts'] is List
            ? (json[r'toContacts'] as List).cast<String>()
            : const [],
        toGroup: mapValueOfType<String>(json, r'toGroup'),
        charset: mapValueOfType<String>(json, r'charset'),
        isHTML: mapValueOfType<bool>(json, r'isHTML'),
        sentAt: mapDateTime(json, r'sentAt', '')!,
        pixelIds: json[r'pixelIds'] is List
            ? (json[r'pixelIds'] as List).cast<String>()
            : const [],
        messageId: mapValueOfType<String>(json, r'messageId'),
        messageIds: json[r'messageIds'] is List
            ? (json[r'messageIds'] as List).cast<String>()
            : const [],
        virtualSend: mapValueOfType<bool>(json, r'virtualSend'),
        templateId: mapValueOfType<String>(json, r'templateId'),
        templateVariables: mapCastOfType<String, Object>(json, r'templateVariables') ?? const {},
        headers: mapCastOfType<String, String>(json, r'headers') ?? const {},
        html: mapValueOfType<bool>(json, r'html'),
      );
    }
    return null;
  }

  static List<SentEmailDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SentEmailDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SentEmailDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SentEmailDto> mapFromJson(dynamic json) {
    final map = <String, SentEmailDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SentEmailDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SentEmailDto-objects as value to a dart map
  static Map<String, List<SentEmailDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SentEmailDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SentEmailDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'inboxId',
    'sentAt',
  };
}

