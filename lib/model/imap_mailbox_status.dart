//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImapMailboxStatus {
  /// Returns a new [ImapMailboxStatus] instance.
  ImapMailboxStatus({
    required this.name,
    required this.readOnly,
    this.items = const {},
    this.flags = const [],
    this.permanentFlags = const [],
    required this.unseenSeqNum,
    required this.messages,
    required this.recent,
    required this.unseen,
    required this.uidNext,
    required this.uidValidity,
    this.appendLimit,
  });

  /// The mailbox name.
  String name;

  /// True if the mailbox is open in read-only mode.
  bool readOnly;

  /// The mailbox items that are currently filled in. This map's values should not be used directly, they must only be used by libraries implementing extensions of the IMAP protocol.
  Map<String, Object>? items;

  /// The mailbox flags.
  List<String>? flags;

  /// The mailbox permanent flags.
  List<String>? permanentFlags;

  /// The sequence number of the first unseen message in the mailbox.
  int unseenSeqNum;

  /// The number of messages in this mailbox.
  int messages;

  /// The number of messages not seen since the last time the mailbox was opened.
  int recent;

  /// The number of unread messages.
  int unseen;

  /// The next UID.
  int uidNext;

  /// Together with a UID, it is a unique identifier for a message. Must be greater than or equal to 1.
  int uidValidity;

  /// Per-mailbox limit of message size. Set only if server supports the APPENDLIMIT extension
  int? appendLimit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImapMailboxStatus &&
     other.name == name &&
     other.readOnly == readOnly &&
     other.items == items &&
     other.flags == flags &&
     other.permanentFlags == permanentFlags &&
     other.unseenSeqNum == unseenSeqNum &&
     other.messages == messages &&
     other.recent == recent &&
     other.unseen == unseen &&
     other.uidNext == uidNext &&
     other.uidValidity == uidValidity &&
     other.appendLimit == appendLimit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (readOnly.hashCode) +
    (items == null ? 0 : items!.hashCode) +
    (flags == null ? 0 : flags!.hashCode) +
    (permanentFlags == null ? 0 : permanentFlags!.hashCode) +
    (unseenSeqNum.hashCode) +
    (messages.hashCode) +
    (recent.hashCode) +
    (unseen.hashCode) +
    (uidNext.hashCode) +
    (uidValidity.hashCode) +
    (appendLimit == null ? 0 : appendLimit!.hashCode);

  @override
  String toString() => 'ImapMailboxStatus[name=$name, readOnly=$readOnly, items=$items, flags=$flags, permanentFlags=$permanentFlags, unseenSeqNum=$unseenSeqNum, messages=$messages, recent=$recent, unseen=$unseen, uidNext=$uidNext, uidValidity=$uidValidity, appendLimit=$appendLimit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'readOnly'] = this.readOnly;
    if (this.items != null) {
      json[r'items'] = this.items;
    } else {
      json[r'items'] = null;
    }
    if (this.flags != null) {
      json[r'flags'] = this.flags;
    } else {
      json[r'flags'] = null;
    }
    if (this.permanentFlags != null) {
      json[r'permanentFlags'] = this.permanentFlags;
    } else {
      json[r'permanentFlags'] = null;
    }
      json[r'unseenSeqNum'] = this.unseenSeqNum;
      json[r'messages'] = this.messages;
      json[r'recent'] = this.recent;
      json[r'unseen'] = this.unseen;
      json[r'uidNext'] = this.uidNext;
      json[r'uidValidity'] = this.uidValidity;
    if (this.appendLimit != null) {
      json[r'appendLimit'] = this.appendLimit;
    } else {
      json[r'appendLimit'] = null;
    }
    return json;
  }

  /// Returns a new [ImapMailboxStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImapMailboxStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImapMailboxStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImapMailboxStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImapMailboxStatus(
        name: mapValueOfType<String>(json, r'name')!,
        readOnly: mapValueOfType<bool>(json, r'readOnly')!,
        items: mapCastOfType<String, Object>(json, r'items'),
        flags: json[r'flags'] is List
            ? (json[r'flags'] as List).cast<String>()
            : const [],
        permanentFlags: json[r'permanentFlags'] is List
            ? (json[r'permanentFlags'] as List).cast<String>()
            : const [],
        unseenSeqNum: mapValueOfType<int>(json, r'unseenSeqNum')!,
        messages: mapValueOfType<int>(json, r'messages')!,
        recent: mapValueOfType<int>(json, r'recent')!,
        unseen: mapValueOfType<int>(json, r'unseen')!,
        uidNext: mapValueOfType<int>(json, r'uidNext')!,
        uidValidity: mapValueOfType<int>(json, r'uidValidity')!,
        appendLimit: mapValueOfType<int>(json, r'appendLimit'),
      );
    }
    return null;
  }

  static List<ImapMailboxStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImapMailboxStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImapMailboxStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImapMailboxStatus> mapFromJson(dynamic json) {
    final map = <String, ImapMailboxStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImapMailboxStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImapMailboxStatus-objects as value to a dart map
  static Map<String, List<ImapMailboxStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImapMailboxStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImapMailboxStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'readOnly',
    'items',
    'flags',
    'permanentFlags',
    'unseenSeqNum',
    'messages',
    'recent',
    'unseen',
    'uidNext',
    'uidValidity',
  };
}

