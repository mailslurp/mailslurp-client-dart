//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImapServerSearchOptions {
  /// Returns a new [ImapServerSearchOptions] instance.
  ImapServerSearchOptions({
    this.seqNum,
    this.uid,
    this.since,
    this.before,
    this.sentSince,
    this.sentBefore,
    this.header = const {},
    this.body = const [],
    this.text = const [],
    this.withFlags = const [],
    this.withoutFlags = const [],
  });

  String? seqNum;

  String? uid;

  DateTime? since;

  DateTime? before;

  DateTime? sentSince;

  DateTime? sentBefore;

  Map<String, List<String>>? header;

  List<String>? body;

  List<String>? text;

  List<String>? withFlags;

  List<String>? withoutFlags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImapServerSearchOptions &&
     other.seqNum == seqNum &&
     other.uid == uid &&
     other.since == since &&
     other.before == before &&
     other.sentSince == sentSince &&
     other.sentBefore == sentBefore &&
     other.header == header &&
     other.body == body &&
     other.text == text &&
     other.withFlags == withFlags &&
     other.withoutFlags == withoutFlags;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (seqNum == null ? 0 : seqNum!.hashCode) +
    (uid == null ? 0 : uid!.hashCode) +
    (since == null ? 0 : since!.hashCode) +
    (before == null ? 0 : before!.hashCode) +
    (sentSince == null ? 0 : sentSince!.hashCode) +
    (sentBefore == null ? 0 : sentBefore!.hashCode) +
    (header == null ? 0 : header!.hashCode) +
    (body == null ? 0 : body!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (withFlags == null ? 0 : withFlags!.hashCode) +
    (withoutFlags == null ? 0 : withoutFlags!.hashCode);

  @override
  String toString() => 'ImapServerSearchOptions[seqNum=$seqNum, uid=$uid, since=$since, before=$before, sentSince=$sentSince, sentBefore=$sentBefore, header=$header, body=$body, text=$text, withFlags=$withFlags, withoutFlags=$withoutFlags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.seqNum != null) {
      json[r'seqNum'] = this.seqNum;
    } else {
      json[r'seqNum'] = null;
    }
    if (this.uid != null) {
      json[r'uid'] = this.uid;
    } else {
      json[r'uid'] = null;
    }
    if (this.since != null) {
      json[r'since'] = this.since!.toUtc().toIso8601String();
    } else {
      json[r'since'] = null;
    }
    if (this.before != null) {
      json[r'before'] = this.before!.toUtc().toIso8601String();
    } else {
      json[r'before'] = null;
    }
    if (this.sentSince != null) {
      json[r'sentSince'] = this.sentSince!.toUtc().toIso8601String();
    } else {
      json[r'sentSince'] = null;
    }
    if (this.sentBefore != null) {
      json[r'sentBefore'] = this.sentBefore!.toUtc().toIso8601String();
    } else {
      json[r'sentBefore'] = null;
    }
    if (this.header != null) {
      json[r'header'] = this.header;
    } else {
      json[r'header'] = null;
    }
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.withFlags != null) {
      json[r'withFlags'] = this.withFlags;
    } else {
      json[r'withFlags'] = null;
    }
    if (this.withoutFlags != null) {
      json[r'withoutFlags'] = this.withoutFlags;
    } else {
      json[r'withoutFlags'] = null;
    }
    return json;
  }

  /// Returns a new [ImapServerSearchOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImapServerSearchOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImapServerSearchOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImapServerSearchOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImapServerSearchOptions(
        seqNum: mapValueOfType<String>(json, r'seqNum'),
        uid: mapValueOfType<String>(json, r'uid'),
        since: mapDateTime(json, r'since', ''),
        before: mapDateTime(json, r'before', ''),
        sentSince: mapDateTime(json, r'sentSince', ''),
        sentBefore: mapDateTime(json, r'sentBefore', ''),
        header: json[r'header'] == null
          ? const {}
            : mapCastOfType<String, List<String>>(json, r'header'),
        body: json[r'body'] is List
            ? (json[r'body'] as List).cast<String>()
            : const [],
        text: json[r'text'] is List
            ? (json[r'text'] as List).cast<String>()
            : const [],
        withFlags: json[r'withFlags'] is List
            ? (json[r'withFlags'] as List).cast<String>()
            : const [],
        withoutFlags: json[r'withoutFlags'] is List
            ? (json[r'withoutFlags'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<ImapServerSearchOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImapServerSearchOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImapServerSearchOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImapServerSearchOptions> mapFromJson(dynamic json) {
    final map = <String, ImapServerSearchOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImapServerSearchOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImapServerSearchOptions-objects as value to a dart map
  static Map<String, List<ImapServerSearchOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImapServerSearchOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImapServerSearchOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

