//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Email {
  /// Returns a new [Email] instance.
  Email({
    required this.id,
    required this.userId,
    required this.inboxId,
    this.domainId,
    this.to = const [],
    this.from,
    this.sender,
    this.recipients,
    this.replyTo,
    this.cc = const [],
    this.bcc = const [],
    this.headers = const {},
    this.headersMap = const {},
    this.attachments = const [],
    this.subject,
    this.body,
    this.bodyExcerpt,
    this.textExcerpt,
    this.bodyMD5Hash,
    this.isHTML,
    this.charset,
    this.analysis,
    required this.createdAt,
    required this.updatedAt,
    required this.read,
    required this.teamAccess,
    this.isXAmpHtml,
    this.bodyPartContentTypes = const [],
    this.html,
    this.xampHtml,
  });

  /// ID of the email entity
  String id;

  /// ID of user that email belongs to
  String userId;

  /// ID of the inbox that received the email
  String inboxId;

  /// ID of the domain that received the email
  String? domainId;

  /// List of `To` recipient email addresses that the email was addressed to. See recipients object for names.
  List<String> to;

  /// Who the email was sent from. An email address - see fromName for the sender name.
  String? from;

  Sender? sender;

  EmailRecipients? recipients;

  /// The `replyTo` field on the received email message
  String? replyTo;

  /// List of `CC` recipients email addresses that the email was addressed to. See recipients object for names.
  List<String>? cc;

  /// List of `BCC` recipients email addresses that the email was addressed to. See recipients object for names.
  List<String>? bcc;

  /// Collection of SMTP headers attached to email
  Map<String, String>? headers;

  /// Multi-value map of SMTP headers attached to email
  Map<String, List<String>>? headersMap;

  /// List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension.
  List<String>? attachments;

  /// The subject line of the email message as specified by SMTP subject header
  String? subject;

  /// The body of the email message as text parsed from the SMTP message body (does not include attachments). Fetch the raw content to access the SMTP message and use the attachments property to access attachments. The body is stored separately to the email entity so the body is not returned in paginated results only in full single email or wait requests.
  String? body;

  /// An excerpt of the body of the email message for quick preview. Takes HTML content part if exists falls back to TEXT content part if not
  String? bodyExcerpt;

  /// An excerpt of the body of the email message for quick preview. Takes TEXT content part if exists
  String? textExcerpt;

  /// A hash signature of the email message using MD5. Useful for comparing emails without fetching full body.
  String? bodyMD5Hash;

  /// Is the email body content type HTML?
  bool? isHTML;

  /// Detected character set of the email body such as UTF-8
  String? charset;

  EmailAnalysis? analysis;

  /// When was the email received by MailSlurp
  DateTime createdAt;

  /// When was the email last updated
  DateTime updatedAt;

  /// Read flag. Has the email ever been viewed in the dashboard or fetched via the API with a hydrated body? If so the email is marked as read. Paginated results do not affect read status. Read status is different to email opened event as it depends on your own account accessing the email. Email opened is determined by tracking pixels sent to other uses if enable during sending. You can listened for both email read and email opened events using webhooks.
  bool read;

  /// Can the email be accessed by organization team members
  bool teamAccess;

  /// Is the email body content type x-amp-html Amp4Email?
  bool? isXAmpHtml;

  /// A list of detected multipart mime message body part content types such as text/plain and text/html. Can be used with email bodyPart endpoints to fetch individual body parts.
  List<String>? bodyPartContentTypes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? html;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? xampHtml;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Email &&
     other.id == id &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.domainId == domainId &&
     other.to == to &&
     other.from == from &&
     other.sender == sender &&
     other.recipients == recipients &&
     other.replyTo == replyTo &&
     other.cc == cc &&
     other.bcc == bcc &&
     other.headers == headers &&
     other.headersMap == headersMap &&
     other.attachments == attachments &&
     other.subject == subject &&
     other.body == body &&
     other.bodyExcerpt == bodyExcerpt &&
     other.textExcerpt == textExcerpt &&
     other.bodyMD5Hash == bodyMD5Hash &&
     other.isHTML == isHTML &&
     other.charset == charset &&
     other.analysis == analysis &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.read == read &&
     other.teamAccess == teamAccess &&
     other.isXAmpHtml == isXAmpHtml &&
     other.bodyPartContentTypes == bodyPartContentTypes &&
     other.html == html &&
     other.xampHtml == xampHtml;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (inboxId.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode) +
    (to.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (sender == null ? 0 : sender!.hashCode) +
    (recipients == null ? 0 : recipients!.hashCode) +
    (replyTo == null ? 0 : replyTo!.hashCode) +
    (cc == null ? 0 : cc!.hashCode) +
    (bcc == null ? 0 : bcc!.hashCode) +
    (headers == null ? 0 : headers!.hashCode) +
    (headersMap == null ? 0 : headersMap!.hashCode) +
    (attachments == null ? 0 : attachments!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (body == null ? 0 : body!.hashCode) +
    (bodyExcerpt == null ? 0 : bodyExcerpt!.hashCode) +
    (textExcerpt == null ? 0 : textExcerpt!.hashCode) +
    (bodyMD5Hash == null ? 0 : bodyMD5Hash!.hashCode) +
    (isHTML == null ? 0 : isHTML!.hashCode) +
    (charset == null ? 0 : charset!.hashCode) +
    (analysis == null ? 0 : analysis!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (read.hashCode) +
    (teamAccess.hashCode) +
    (isXAmpHtml == null ? 0 : isXAmpHtml!.hashCode) +
    (bodyPartContentTypes == null ? 0 : bodyPartContentTypes!.hashCode) +
    (html == null ? 0 : html!.hashCode) +
    (xampHtml == null ? 0 : xampHtml!.hashCode);

  @override
  String toString() => 'Email[id=$id, userId=$userId, inboxId=$inboxId, domainId=$domainId, to=$to, from=$from, sender=$sender, recipients=$recipients, replyTo=$replyTo, cc=$cc, bcc=$bcc, headers=$headers, headersMap=$headersMap, attachments=$attachments, subject=$subject, body=$body, bodyExcerpt=$bodyExcerpt, textExcerpt=$textExcerpt, bodyMD5Hash=$bodyMD5Hash, isHTML=$isHTML, charset=$charset, analysis=$analysis, createdAt=$createdAt, updatedAt=$updatedAt, read=$read, teamAccess=$teamAccess, isXAmpHtml=$isXAmpHtml, bodyPartContentTypes=$bodyPartContentTypes, html=$html, xampHtml=$xampHtml]';

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
      json[r'to'] = this.to;
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
    if (this.headers != null) {
      json[r'headers'] = this.headers;
    } else {
      json[r'headers'] = null;
    }
    if (this.headersMap != null) {
      json[r'headersMap'] = this.headersMap;
    } else {
      json[r'headersMap'] = null;
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
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
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
    if (this.isHTML != null) {
      json[r'isHTML'] = this.isHTML;
    } else {
      json[r'isHTML'] = null;
    }
    if (this.charset != null) {
      json[r'charset'] = this.charset;
    } else {
      json[r'charset'] = null;
    }
    if (this.analysis != null) {
      json[r'analysis'] = this.analysis;
    } else {
      json[r'analysis'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
      json[r'read'] = this.read;
      json[r'teamAccess'] = this.teamAccess;
    if (this.isXAmpHtml != null) {
      json[r'isXAmpHtml'] = this.isXAmpHtml;
    } else {
      json[r'isXAmpHtml'] = null;
    }
    if (this.bodyPartContentTypes != null) {
      json[r'bodyPartContentTypes'] = this.bodyPartContentTypes;
    } else {
      json[r'bodyPartContentTypes'] = null;
    }
    if (this.html != null) {
      json[r'html'] = this.html;
    } else {
      json[r'html'] = null;
    }
    if (this.xampHtml != null) {
      json[r'xampHtml'] = this.xampHtml;
    } else {
      json[r'xampHtml'] = null;
    }
    return json;
  }

  /// Returns a new [Email] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Email? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Email[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Email[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Email(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        domainId: mapValueOfType<String>(json, r'domainId'),
        to: json[r'to'] is List
            ? (json[r'to'] as List).cast<String>()
            : const [],
        from: mapValueOfType<String>(json, r'from'),
        sender: Sender.fromJson(json[r'sender']),
        recipients: EmailRecipients.fromJson(json[r'recipients']),
        replyTo: mapValueOfType<String>(json, r'replyTo'),
        cc: json[r'cc'] is List
            ? (json[r'cc'] as List).cast<String>()
            : const [],
        bcc: json[r'bcc'] is List
            ? (json[r'bcc'] as List).cast<String>()
            : const [],
        headers: mapCastOfType<String, String>(json, r'headers') ?? const {},
        headersMap: json[r'headersMap'] == null
          ? const {}
            : mapCastOfType<String, List>(json, r'headersMap'),
        attachments: json[r'attachments'] is List
            ? (json[r'attachments'] as List).cast<String>()
            : const [],
        subject: mapValueOfType<String>(json, r'subject'),
        body: mapValueOfType<String>(json, r'body'),
        bodyExcerpt: mapValueOfType<String>(json, r'bodyExcerpt'),
        textExcerpt: mapValueOfType<String>(json, r'textExcerpt'),
        bodyMD5Hash: mapValueOfType<String>(json, r'bodyMD5Hash'),
        isHTML: mapValueOfType<bool>(json, r'isHTML'),
        charset: mapValueOfType<String>(json, r'charset'),
        analysis: EmailAnalysis.fromJson(json[r'analysis']),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        read: mapValueOfType<bool>(json, r'read')!,
        teamAccess: mapValueOfType<bool>(json, r'teamAccess')!,
        isXAmpHtml: mapValueOfType<bool>(json, r'isXAmpHtml'),
        bodyPartContentTypes: json[r'bodyPartContentTypes'] is List
            ? (json[r'bodyPartContentTypes'] as List).cast<String>()
            : const [],
        html: mapValueOfType<bool>(json, r'html'),
        xampHtml: mapValueOfType<bool>(json, r'xampHtml'),
      );
    }
    return null;
  }

  static List<Email> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Email>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Email.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Email> mapFromJson(dynamic json) {
    final map = <String, Email>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Email.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Email-objects as value to a dart map
  static Map<String, List<Email>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Email>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Email.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'inboxId',
    'to',
    'createdAt',
    'updatedAt',
    'read',
    'teamAccess',
  };
}

