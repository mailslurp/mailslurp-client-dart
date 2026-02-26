//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailThreadDto {
  /// Returns a new [EmailThreadDto] instance.
  EmailThreadDto({
    required this.id,
    required this.userId,
    this.inboxId,
    this.from,
    this.to = const [],
    this.cc = const [],
    this.bcc = const [],
    this.sender,
    this.recipients,
    this.subject,
    required this.createdAt,
    required this.updatedAt,
  });

  /// ID of email thread
  String id;

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

  /// From sender
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  /// To recipients
  List<String> to;

  /// CC recipients
  List<String> cc;

  /// BCC recipients
  List<String> bcc;

  Sender? sender;

  EmailRecipients? recipients;

  /// Thread topic subject
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  /// Created at DateTime
  DateTime createdAt;

  /// Updated at DateTime
  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailThreadDto &&
     other.id == id &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.from == from &&
     other.to == to &&
     other.cc == cc &&
     other.bcc == bcc &&
     other.sender == sender &&
     other.recipients == recipients &&
     other.subject == subject &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (to.hashCode) +
    (cc.hashCode) +
    (bcc.hashCode) +
    (sender == null ? 0 : sender!.hashCode) +
    (recipients == null ? 0 : recipients!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'EmailThreadDto[id=$id, userId=$userId, inboxId=$inboxId, from=$from, to=$to, cc=$cc, bcc=$bcc, sender=$sender, recipients=$recipients, subject=$subject, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
      json[r'to'] = this.to;
      json[r'cc'] = this.cc;
      json[r'bcc'] = this.bcc;
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
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [EmailThreadDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailThreadDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailThreadDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailThreadDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailThreadDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        from: mapValueOfType<String>(json, r'from'),
        to: json[r'to'] is List
            ? (json[r'to'] as List).cast<String>()
            : const [],
        cc: json[r'cc'] is List
            ? (json[r'cc'] as List).cast<String>()
            : const [],
        bcc: json[r'bcc'] is List
            ? (json[r'bcc'] as List).cast<String>()
            : const [],
        sender: Sender.fromJson(json[r'sender']),
        recipients: EmailRecipients.fromJson(json[r'recipients']),
        subject: mapValueOfType<String>(json, r'subject'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<EmailThreadDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailThreadDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailThreadDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailThreadDto> mapFromJson(dynamic json) {
    final map = <String, EmailThreadDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailThreadDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailThreadDto-objects as value to a dart map
  static Map<String, List<EmailThreadDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailThreadDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailThreadDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'to',
    'createdAt',
    'updatedAt',
  };
}

