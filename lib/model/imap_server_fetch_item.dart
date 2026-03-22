//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImapServerFetchItem {
  /// Returns a new [ImapServerFetchItem] instance.
  ImapServerFetchItem({
    required this.content,
    required this.id,
    required this.uid,
    required this.seqNum,
    required this.read,
  });

  /// Content of the email
  String content;

  /// ID of the email
  String id;

  /// UID of the email
  int uid;

  /// Sequence number of the email
  int seqNum;

  /// Read status of the email
  bool read;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImapServerFetchItem &&
     other.content == content &&
     other.id == id &&
     other.uid == uid &&
     other.seqNum == seqNum &&
     other.read == read;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (content.hashCode) +
    (id.hashCode) +
    (uid.hashCode) +
    (seqNum.hashCode) +
    (read.hashCode);

  @override
  String toString() => 'ImapServerFetchItem[content=$content, id=$id, uid=$uid, seqNum=$seqNum, read=$read]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'content'] = this.content;
      json[r'id'] = this.id;
      json[r'uid'] = this.uid;
      json[r'seqNum'] = this.seqNum;
      json[r'read'] = this.read;
    return json;
  }

  /// Returns a new [ImapServerFetchItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImapServerFetchItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImapServerFetchItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImapServerFetchItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImapServerFetchItem(
        content: mapValueOfType<String>(json, r'content')!,
        id: mapValueOfType<String>(json, r'id')!,
        uid: mapValueOfType<int>(json, r'uid')!,
        seqNum: mapValueOfType<int>(json, r'seqNum')!,
        read: mapValueOfType<bool>(json, r'read')!,
      );
    }
    return null;
  }

  static List<ImapServerFetchItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImapServerFetchItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImapServerFetchItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImapServerFetchItem> mapFromJson(dynamic json) {
    final map = <String, ImapServerFetchItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImapServerFetchItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImapServerFetchItem-objects as value to a dart map
  static Map<String, List<ImapServerFetchItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImapServerFetchItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImapServerFetchItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'content',
    'id',
    'uid',
    'seqNum',
    'read',
  };
}

