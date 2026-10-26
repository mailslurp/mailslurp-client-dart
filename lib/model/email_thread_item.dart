//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailThreadItem {
  /// Returns a new [EmailThreadItem] instance.
  EmailThreadItem({
    required this.itemType,
    required this.entityId,
    this.bodyExcerpt,
    this.textExcerpt,
    this.subject,
    this.to = const [],
    this.from,
    this.bcc = const [],
    this.cc = const [],
    this.attachments = const [],
    required this.createdAt,
    required this.read,
    this.inReplyTo,
    this.messageId,
    this.threadId,
    this.sender,
    this.recipients,
  });

  EmailThreadItemItemTypeEnum itemType;

  String entityId;

  String? bodyExcerpt;

  String? textExcerpt;

  String? subject;

  List<String> to;

  String? from;

  List<String>? bcc;

  List<String>? cc;

  List<String>? attachments;

  DateTime createdAt;

  bool read;

  String? inReplyTo;

  String? messageId;

  String? threadId;

  Sender? sender;

  EmailRecipients? recipients;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailThreadItem &&
     other.itemType == itemType &&
     other.entityId == entityId &&
     other.bodyExcerpt == bodyExcerpt &&
     other.textExcerpt == textExcerpt &&
     other.subject == subject &&
     other.to == to &&
     other.from == from &&
     other.bcc == bcc &&
     other.cc == cc &&
     other.attachments == attachments &&
     other.createdAt == createdAt &&
     other.read == read &&
     other.inReplyTo == inReplyTo &&
     other.messageId == messageId &&
     other.threadId == threadId &&
     other.sender == sender &&
     other.recipients == recipients;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (itemType.hashCode) +
    (entityId.hashCode) +
    (bodyExcerpt == null ? 0 : bodyExcerpt!.hashCode) +
    (textExcerpt == null ? 0 : textExcerpt!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (to.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (bcc == null ? 0 : bcc!.hashCode) +
    (cc == null ? 0 : cc!.hashCode) +
    (attachments == null ? 0 : attachments!.hashCode) +
    (createdAt.hashCode) +
    (read.hashCode) +
    (inReplyTo == null ? 0 : inReplyTo!.hashCode) +
    (messageId == null ? 0 : messageId!.hashCode) +
    (threadId == null ? 0 : threadId!.hashCode) +
    (sender == null ? 0 : sender!.hashCode) +
    (recipients == null ? 0 : recipients!.hashCode);

  @override
  String toString() => 'EmailThreadItem[itemType=$itemType, entityId=$entityId, bodyExcerpt=$bodyExcerpt, textExcerpt=$textExcerpt, subject=$subject, to=$to, from=$from, bcc=$bcc, cc=$cc, attachments=$attachments, createdAt=$createdAt, read=$read, inReplyTo=$inReplyTo, messageId=$messageId, threadId=$threadId, sender=$sender, recipients=$recipients]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'itemType'] = this.itemType;
      json[r'entityId'] = this.entityId;
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
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
      json[r'to'] = this.to;
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
    if (this.attachments != null) {
      json[r'attachments'] = this.attachments;
    } else {
      json[r'attachments'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'read'] = this.read;
    if (this.inReplyTo != null) {
      json[r'inReplyTo'] = this.inReplyTo;
    } else {
      json[r'inReplyTo'] = null;
    }
    if (this.messageId != null) {
      json[r'messageId'] = this.messageId;
    } else {
      json[r'messageId'] = null;
    }
    if (this.threadId != null) {
      json[r'threadId'] = this.threadId;
    } else {
      json[r'threadId'] = null;
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
    return json;
  }

  /// Returns a new [EmailThreadItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailThreadItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailThreadItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailThreadItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailThreadItem(
        itemType: EmailThreadItemItemTypeEnum.fromJson(json[r'itemType'])!,
        entityId: mapValueOfType<String>(json, r'entityId')!,
        bodyExcerpt: mapValueOfType<String>(json, r'bodyExcerpt'),
        textExcerpt: mapValueOfType<String>(json, r'textExcerpt'),
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
        attachments: json[r'attachments'] is List
            ? (json[r'attachments'] as List).cast<String>()
            : const [],
        createdAt: mapDateTime(json, r'createdAt', '')!,
        read: mapValueOfType<bool>(json, r'read')!,
        inReplyTo: mapValueOfType<String>(json, r'inReplyTo'),
        messageId: mapValueOfType<String>(json, r'messageId'),
        threadId: mapValueOfType<String>(json, r'threadId'),
        sender: Sender.fromJson(json[r'sender']),
        recipients: EmailRecipients.fromJson(json[r'recipients']),
      );
    }
    return null;
  }

  static List<EmailThreadItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailThreadItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailThreadItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailThreadItem> mapFromJson(dynamic json) {
    final map = <String, EmailThreadItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailThreadItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailThreadItem-objects as value to a dart map
  static Map<String, List<EmailThreadItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailThreadItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailThreadItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'itemType',
    'entityId',
    'to',
    'createdAt',
    'read',
  };
}


class EmailThreadItemItemTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailThreadItemItemTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RECEIVED_EMAIL = EmailThreadItemItemTypeEnum._(r'RECEIVED_EMAIL');
  static const SENT_EMAIL = EmailThreadItemItemTypeEnum._(r'SENT_EMAIL');

  /// List of all possible values in this [enum][EmailThreadItemItemTypeEnum].
  static const values = <EmailThreadItemItemTypeEnum>[
    RECEIVED_EMAIL,
    SENT_EMAIL,
  ];

  static EmailThreadItemItemTypeEnum? fromJson(dynamic value) => EmailThreadItemItemTypeEnumTypeTransformer().decode(value);

  static List<EmailThreadItemItemTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailThreadItemItemTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailThreadItemItemTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailThreadItemItemTypeEnum] to String,
/// and [decode] dynamic data back to [EmailThreadItemItemTypeEnum].
class EmailThreadItemItemTypeEnumTypeTransformer {
  factory EmailThreadItemItemTypeEnumTypeTransformer() => _instance ??= const EmailThreadItemItemTypeEnumTypeTransformer._();

  const EmailThreadItemItemTypeEnumTypeTransformer._();

  String encode(EmailThreadItemItemTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailThreadItemItemTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailThreadItemItemTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RECEIVED_EMAIL': return EmailThreadItemItemTypeEnum.RECEIVED_EMAIL;
        case r'SENT_EMAIL': return EmailThreadItemItemTypeEnum.SENT_EMAIL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailThreadItemItemTypeEnumTypeTransformer] instance.
  static EmailThreadItemItemTypeEnumTypeTransformer? _instance;
}


